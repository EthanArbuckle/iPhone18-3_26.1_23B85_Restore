@interface NSError(MessageContentView)
- (id)mf_markupString;
- (void)mf_markupString;
@end

@implementation NSError(MessageContentView)

- (id)mf_markupString
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = messageForFragment(self);
  if (!v2)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [self ef_publicDescription];
      [(NSError(MessageContentView) *)ef_publicDescription mf_markupString];
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [mainBundle localizedStringForKey:@"MESSAGE_CAUSED_PROBLEM" value:&stru_2826D1AD8 table:@"Main"];
  }

  v6 = MEMORY[0x277CCACA8];
  mf_stringByEscapingHTMLCodes = [v2 mf_stringByEscapingHTMLCodes];
  v8 = [v6 localizedStringWithFormat:@"<html dir=auto><body><i><font color=#888>%@</font></i></body></html>", mf_stringByEscapingHTMLCodes];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)mf_markupString
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_2149C9000, log, OS_LOG_TYPE_ERROR, "Failed to find a message for error: %{public}@", buf, 0xCu);
}

@end