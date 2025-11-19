@interface UIResponder(SUUIExtensions)
- (uint64_t)_SUUIView;
@end

@implementation UIResponder(SUUIExtensions)

- (uint64_t)_SUUIView
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D69B38] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  NSStringFromSelector(a2);
  v11 = 138412546;
  v12 = a1;
  v14 = v13 = 2112;
  LODWORD(v10) = 22;
  v8 = _os_log_send_and_compose_impl();

  if (v8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:{4, &v11, v10}];
    free(v8);
    SSFileLog();
LABEL_9:
  }

  return 0;
}

@end