@interface NSString(MOEventCategory)
- (uint64_t)associatedEventPermission;
@end

@implementation NSString(MOEventCategory)

- (uint64_t)associatedEventPermission
{
  if ([self isEqualToString:MOEventBundleSourceTypeContact])
  {
    return 10;
  }

  if ([self isEqualToString:MOEventBundleSourceTypeMedia])
  {
    return 4;
  }

  if ([self isEqualToString:MOEventBundleSourceTypePeopleContext])
  {
    return 23;
  }

  if ([self isEqualToString:MOEventBundleSourceTypePhoto])
  {
    return 5;
  }

  if ([self isEqualToString:MOEventBundleSourceTypeThirdPartyMedia])
  {
    return 4;
  }

  if ([self isEqualToString:MOEventBundleSourceTypeStateOfMind])
  {
    return 24;
  }

  if ([self isEqualToString:MOEventBundleSourceTypeVisitLocation])
  {
    return 1;
  }

  if ([self isEqualToString:MOEventBundleSourceTypeActivity])
  {
    return 2;
  }

  return 0;
}

@end