@interface ICEditingTextView(PasteUtilities)
@end

@implementation ICEditingTextView(PasteUtilities)

- (void)pasteNotePasteboardData:()PasteUtilities session:error:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2151A1000, log, OS_LOG_TYPE_ERROR, "Error parsing attributed string with data %@", buf, 0xCu);
}

@end