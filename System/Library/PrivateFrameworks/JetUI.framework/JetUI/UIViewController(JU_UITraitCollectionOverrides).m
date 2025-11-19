@interface UIViewController(JU_UITraitCollectionOverrides)
- (uint64_t)juLayoutDirection;
- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides;
@end

@implementation UIViewController(JU_UITraitCollectionOverrides)

- (uint64_t)juLayoutDirection
{
  v1 = [a1 traitCollection];
  v2 = [v1 layoutDirection];

  return v2;
}

- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = [a1 traitCollection];
  if ([v5 layoutDirection] != a3)
  {
    v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithLayoutDirection:a3];
    v7 = MEMORY[0x1E69DD1B8];
    v10[0] = v5;
    v10[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v9 = [v7 traitCollectionWithTraitsFromCollections:v8];

    [a1 setOverrideTraitCollection:v9];
  }
}

@end