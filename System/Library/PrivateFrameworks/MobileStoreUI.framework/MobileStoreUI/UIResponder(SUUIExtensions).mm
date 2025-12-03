@interface UIResponder(SUUIExtensions)
- (uint64_t)_SUUIView;
@end

@implementation UIResponder(SUUIExtensions)

- (uint64_t)_SUUIView
{
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  NSStringFromSelector(a2);
  v11 = 138412546;
  selfCopy = self;
  v14 = v13 = 2112;
  LODWORD(v10) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v11, v10}];
    free(v8);
    SSFileLog();
LABEL_9:
  }

  return 0;
}

@end