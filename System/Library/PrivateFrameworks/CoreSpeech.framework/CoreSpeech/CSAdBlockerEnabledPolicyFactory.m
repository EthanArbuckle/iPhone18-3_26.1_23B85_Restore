@interface CSAdBlockerEnabledPolicyFactory
+ (id)adBlockerEnabledPolicy;
@end

@implementation CSAdBlockerEnabledPolicyFactory

+ (id)adBlockerEnabledPolicy
{
  v2 = objc_alloc_init(CSAdBlockerEnabledPolicy);

  return v2;
}

@end