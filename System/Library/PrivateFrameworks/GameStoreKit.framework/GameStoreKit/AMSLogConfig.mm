@interface AMSLogConfig
@end

@implementation AMSLogConfig

void __49__AMSLogConfig_AppStoreKit__ask_generalLogConfig__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277CEE5F8]);
  [v2 setSubsystem:@"com.apple.GameStoreKit"];
  [v2 setCategory:@"ASK General"];
  v0 = [v2 copy];
  v1 = ask_generalLogConfig_logConfig;
  ask_generalLogConfig_logConfig = v0;
}

@end