@interface NDContentVariantProvider
- (int64_t)preferredContentVariant;
@end

@implementation NDContentVariantProvider

- (int64_t)preferredContentVariant
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey];

  return v3;
}

@end