@interface UIViewController(AMP_UITraitCollectionOverrides)
- (uint64_t)layoutDirection;
- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides;
@end

@implementation UIViewController(AMP_UITraitCollectionOverrides)

- (uint64_t)layoutDirection
{
  traitCollection = [self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  return layoutDirection;
}

- (void)setLayoutDirection:()AMP_UITraitCollectionOverrides
{
  v10[2] = *MEMORY[0x277D85DE8];
  traitCollection = [self traitCollection];
  if ([traitCollection layoutDirection] != a3)
  {
    v6 = [MEMORY[0x277D75C80] traitCollectionWithLayoutDirection:a3];
    v7 = MEMORY[0x277D75C80];
    v10[0] = traitCollection;
    v10[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    v9 = [v7 traitCollectionWithTraitsFromCollections:v8];

    [self setOverrideTraitCollection:v9];
  }
}

@end