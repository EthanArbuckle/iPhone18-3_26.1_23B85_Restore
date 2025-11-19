@interface CNAutocompleteNetworkActivityPolicy
+ (id)policyWithNoDelay;
+ (id)policyWithThrottlingDelayForString:(id)a3;
@end

@implementation CNAutocompleteNetworkActivityPolicy

+ (id)policyWithNoDelay
{
  v2 = objc_alloc_init(CNAutocompleteNetworkActivityPolicy);

  return v2;
}

+ (id)policyWithThrottlingDelayForString:(id)a3
{
  v3 = a3;
  v4 = [[CNAutocompleteNetworkActivityThrottlingPolicy alloc] initWithString:v3];

  return v4;
}

@end