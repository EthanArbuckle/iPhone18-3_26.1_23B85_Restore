@interface OBFeatureFlags
+ (BOOL)isNaturalUIEnabled;
@end

@implementation OBFeatureFlags

+ (BOOL)isNaturalUIEnabled
{
  if (isNaturalUIEnabled_predicate != -1)
  {
    +[OBFeatureFlags isNaturalUIEnabled];
  }

  return isNaturalUIEnabled_allowFeature;
}

uint64_t __36__OBFeatureFlags_isNaturalUIEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isNaturalUIEnabled_allowFeature = result;
  if (result)
  {
    result = _UISolariumEnabled();
  }

  isNaturalUIEnabled_allowFeature = result;
  return result;
}

@end