all : commands

## site  : Build website locally for checking.
site :
	jekyll build -t -d _site

## commands : Display available commands.
commands : Makefile
	@sed -n 's/^##//p' $<

## clean : Clean up temporary and intermediate files.
clean :
	@rm -rf $$(find . -name '*~' -print)
