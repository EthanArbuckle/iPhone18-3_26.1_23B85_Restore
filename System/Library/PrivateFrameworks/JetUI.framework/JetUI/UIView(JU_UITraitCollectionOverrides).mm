@interface UIView(JU_UITraitCollectionOverrides)
- (uint64_t)juLayoutDirection;
- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides;
@end

@implementation UIView(JU_UITraitCollectionOverrides)

- (uint64_t)juLayoutDirection
{
  v2 = [a1 _juLayoutDirectionValue];
  v3 = [a1 _juLayoutDirectionFromLayoutDirectionValue:v2];

  return v3;
}

- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides
{
  if ([a1 juLayoutDirection] != a3)
  {
    if (sOriginal_UIView_traitCollection)
    {
      v5 = [a1 traitCollection];
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;
    if (a3 > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    }

    objc_setAssociatedObject(a1, sel_juLayoutDirection, v6, 0x303);
    if (sOriginal_UIView_traitCollection)
    {
      [a1 setNeedsLayout];
      [a1 traitCollectionDidChange:v7];
    }
  }
}

@end