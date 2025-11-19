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
  v5 = [v3 profile];
  v6 = [v3 profileVersion];

  [v4 registerBagKeySet:v7 forProfile:v5 profileVersion:v6];
}

+ (void)registerBagKeySetForMetricsRecorder:()MetricsKit
{
  v3 = MEMORY[0x277CEE590];
  v4 = a3;
  v8 = [v3 bagKeySet];
  v5 = MEMORY[0x277CEE400];
  v6 = [v4 profile];
  v7 = [v4 profileVersion];

  [v5 registerBagKeySet:v8 forProfile:v6 profileVersion:v7];
}

@end