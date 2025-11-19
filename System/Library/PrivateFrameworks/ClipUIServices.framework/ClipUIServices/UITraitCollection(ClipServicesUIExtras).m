@interface UITraitCollection(ClipServicesUIExtras)
- (NSString)cps_invocationCardPreferredContentSizeCategory;
@end

@implementation UITraitCollection(ClipServicesUIExtras)

- (NSString)cps_invocationCardPreferredContentSizeCategory
{
  v2 = *MEMORY[0x277D76800];
  v3 = [a1 preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(v2, v3) == NSOrderedAscending)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

@end