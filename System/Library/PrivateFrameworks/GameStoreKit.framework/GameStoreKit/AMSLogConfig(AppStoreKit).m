@interface AMSLogConfig(AppStoreKit)
+ (id)ask_generalLogConfig;
@end

@implementation AMSLogConfig(AppStoreKit)

+ (id)ask_generalLogConfig
{
  if (ask_generalLogConfig_onceToken != -1)
  {
    +[AMSLogConfig(AppStoreKit) ask_generalLogConfig];
  }

  v1 = ask_generalLogConfig_logConfig;

  return v1;
}

@end