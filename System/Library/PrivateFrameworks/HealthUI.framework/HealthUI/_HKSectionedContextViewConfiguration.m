@interface _HKSectionedContextViewConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _HKSectionedContextViewConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }

    v6 = [(_HKSectionedContextViewConfiguration *)v4 isHorizontalInTwoOverlaysMode];
    if (v6 == [(_HKSectionedContextViewConfiguration *)self isHorizontalInTwoOverlaysMode])
    {
      v7 = [(_HKSectionedContextViewConfiguration *)v5 bottomInsetsEnabled];
      if (v7 == [(_HKSectionedContextViewConfiguration *)self bottomInsetsEnabled])
      {
        v8 = [(_HKSectionedContextViewConfiguration *)v5 horizontalInsetsEnabled];
        if (v8 == [(_HKSectionedContextViewConfiguration *)self horizontalInsetsEnabled])
        {
          v11 = [(_HKSectionedContextViewConfiguration *)v5 topInsetsWithNoHeaderEnabled];
          v9 = v11 ^ [(_HKSectionedContextViewConfiguration *)self topInsetsWithNoHeaderEnabled]^ 1;
          goto LABEL_8;
        }
      }
    }
  }

  LOBYTE(v9) = 0;
LABEL_8:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_HKSectionedContextViewConfiguration);
  [(_HKSectionedContextViewConfiguration *)v4 setIsHorizontalInTwoOverlaysMode:[(_HKSectionedContextViewConfiguration *)self isHorizontalInTwoOverlaysMode]];
  [(_HKSectionedContextViewConfiguration *)v4 setBottomInsetsEnabled:[(_HKSectionedContextViewConfiguration *)self bottomInsetsEnabled]];
  [(_HKSectionedContextViewConfiguration *)v4 setHorizontalInsetsEnabled:[(_HKSectionedContextViewConfiguration *)self horizontalInsetsEnabled]];
  [(_HKSectionedContextViewConfiguration *)v4 setTopInsetsWithNoHeaderEnabled:[(_HKSectionedContextViewConfiguration *)self topInsetsWithNoHeaderEnabled]];
  return v4;
}

@end