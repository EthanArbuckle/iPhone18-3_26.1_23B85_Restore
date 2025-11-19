@interface CKOperationConfiguration
+ (id)bds_defaultConfiguration;
@end

@implementation CKOperationConfiguration

+ (id)bds_defaultConfiguration
{
  v2 = objc_opt_new();
  [v2 setQualityOfService:17];
  [v2 setDiscretionaryNetworkBehavior:0];
  [v2 setAutomaticallyRetryNetworkFailures:0];

  return v2;
}

@end