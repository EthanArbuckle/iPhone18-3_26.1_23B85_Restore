@interface NSURLRequest(DAExtensions)
- (id)DARequestByApplyingStorageSession:()DAExtensions;
@end

@implementation NSURLRequest(DAExtensions)

- (id)DARequestByApplyingStorageSession:()DAExtensions
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 138412546;
    v12 = a3;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24844D000, v5, v6, "Applying storage session %@ to request %@", &v11, 0x16u);
  }

  [self _CFURLRequest];
  MutableCopy = CFURLRequestCreateMutableCopy();
  _CFURLRequestSetStorageSession();
  v8 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];
  CFRelease(MutableCopy);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end