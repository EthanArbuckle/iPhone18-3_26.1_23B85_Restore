@interface NSString(MOEventCategory)
- (uint64_t)associatedEventPermission;
@end

@implementation NSString(MOEventCategory)

- (uint64_t)associatedEventPermission
{
  if ([a1 isEqualToString:MOEventBundleSourceTypeContact])
  {
    return 10;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypeMedia])
  {
    return 4;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypePeopleContext])
  {
    return 23;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypePhoto])
  {
    return 5;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypeThirdPartyMedia])
  {
    return 4;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypeStateOfMind])
  {
    return 24;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypeVisitLocation])
  {
    return 1;
  }

  if ([a1 isEqualToString:MOEventBundleSourceTypeActivity])
  {
    return 2;
  }

  return 0;
}

@end