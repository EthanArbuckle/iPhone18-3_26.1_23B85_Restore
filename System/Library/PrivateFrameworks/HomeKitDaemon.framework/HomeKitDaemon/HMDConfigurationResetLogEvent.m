@interface HMDConfigurationResetLogEvent
+ (id)configurationReset;
@end

@implementation HMDConfigurationResetLogEvent

+ (id)configurationReset
{
  v2 = objc_alloc_init(HMDConfigurationResetLogEvent);

  return v2;
}

@end