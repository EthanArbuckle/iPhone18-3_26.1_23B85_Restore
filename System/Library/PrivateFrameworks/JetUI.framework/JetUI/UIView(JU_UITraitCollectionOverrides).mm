@interface UIView(JU_UITraitCollectionOverrides)
- (uint64_t)juLayoutDirection;
- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides;
@end

@implementation UIView(JU_UITraitCollectionOverrides)

- (uint64_t)juLayoutDirection
{
  _juLayoutDirectionValue = [self _juLayoutDirectionValue];
  v3 = [self _juLayoutDirectionFromLayoutDirectionValue:_juLayoutDirectionValue];

  return v3;
}

- (void)setJuLayoutDirection:()JU_UITraitCollectionOverrides
{
  if ([self juLayoutDirection] != a3)
  {
    if (sOriginal_UIView_traitCollection)
    {
      traitCollection = [self traitCollection];
    }

    else
    {
      traitCollection = 0;
    }

    v7 = traitCollection;
    if (a3 > 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    }

    objc_setAssociatedObject(self, sel_juLayoutDirection, v6, 0x303);
    if (sOriginal_UIView_traitCollection)
    {
      [self setNeedsLayout];
      [self traitCollectionDidChange:v7];
    }
  }
}

@end