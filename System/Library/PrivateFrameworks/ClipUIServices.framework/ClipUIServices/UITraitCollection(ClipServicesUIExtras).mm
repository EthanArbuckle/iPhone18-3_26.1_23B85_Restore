@interface UITraitCollection(ClipServicesUIExtras)
- (NSString)cps_invocationCardPreferredContentSizeCategory;
@end

@implementation UITraitCollection(ClipServicesUIExtras)

- (NSString)cps_invocationCardPreferredContentSizeCategory
{
  v2 = *MEMORY[0x277D76800];
  preferredContentSizeCategory = [self preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(v2, preferredContentSizeCategory) == NSOrderedAscending)
  {
    v4 = v2;
  }

  else
  {
    v4 = preferredContentSizeCategory;
  }

  v5 = v4;

  return v4;
}

@end