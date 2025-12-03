@interface EDFetchController
+ (OS_os_log)log;
- (EDFetchController)initWithAccountsProvider:(id)provider;
@end

@implementation EDFetchController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__EDFetchController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_38 != -1)
  {
    dispatch_once(&log_onceToken_38, block);
  }

  v2 = log_log_38;

  return v2;
}

void __24__EDFetchController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_38;
  log_log_38 = v1;
}

- (EDFetchController)initWithAccountsProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = EDFetchController;
  v6 = [(EDFetchController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountsProvider, provider);
  }

  return v7;
}

@end