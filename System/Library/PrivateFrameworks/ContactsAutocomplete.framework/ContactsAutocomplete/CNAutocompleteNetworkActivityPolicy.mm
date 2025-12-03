@interface CNAutocompleteNetworkActivityPolicy
+ (id)policyWithNoDelay;
+ (id)policyWithThrottlingDelayForString:(id)string;
@end

@implementation CNAutocompleteNetworkActivityPolicy

+ (id)policyWithNoDelay
{
  v2 = objc_alloc_init(CNAutocompleteNetworkActivityPolicy);

  return v2;
}

+ (id)policyWithThrottlingDelayForString:(id)string
{
  stringCopy = string;
  v4 = [[CNAutocompleteNetworkActivityThrottlingPolicy alloc] initWithString:stringCopy];

  return v4;
}

@end