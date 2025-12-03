@interface MLRExtensionPrincipalClass
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation MLRExtensionPrincipalClass

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    coreChannel = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(coreChannel, OS_LOG_TYPE_ERROR))
    {
      [(MLRExtensionPrincipalClass *)contextCopy beginRequestWithExtensionContext:coreChannel];
    }
  }
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_2577CB000, a2, OS_LOG_TYPE_ERROR, "Failed to get correct context with context class=%@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end