@interface NSKeyedArchiver(LegacySupport)
+ (id)dnds_secureLegacyArchiver;
@end

@implementation NSKeyedArchiver(LegacySupport)

+ (id)dnds_secureLegacyArchiver
{
  v0 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v0 setClassName:@"BBBehaviorOverride" forClass:objc_opt_class()];
  [v0 setClassName:@"BBBehaviorOverrideEffectiveInterval" forClass:objc_opt_class()];

  return v0;
}

@end