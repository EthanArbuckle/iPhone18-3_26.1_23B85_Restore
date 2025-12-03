@interface AMSBagKeySet(MetricsKit)
+ (void)registerBagKeySetForMetricsConfiguration:()MetricsKit;
+ (void)registerBagKeySetForMetricsRecorder:()MetricsKit;
@end

@implementation AMSBagKeySet(MetricsKit)

+ (void)registerBagKeySetForMetricsConfiguration:()MetricsKit
{
  v3 = a3;
  v7 = objc_opt_new();
  [v7 addBagKey:@"metrics" valueType:6];
  v4 = MEMORY[0x277CEE400];
  profile = [v3 profile];
  profileVersion = [v3 profileVersion];

  [v4 registerBagKeySet:v7 forProfile:profile profileVersion:profileVersion];
}

+ (void)registerBagKeySetForMetricsRecorder:()MetricsKit
{
  v3 = MEMORY[0x277CEE590];
  v4 = a3;
  bagKeySet = [v3 bagKeySet];
  v5 = MEMORY[0x277CEE400];
  profile = [v4 profile];
  profileVersion = [v4 profileVersion];

  [v5 registerBagKeySet:bagKeySet forProfile:profile profileVersion:profileVersion];
}

@end