@interface _HKSectionedContextViewConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _HKSectionedContextViewConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      LOBYTE(v9) = 1;
      goto LABEL_8;
    }

    isHorizontalInTwoOverlaysMode = [(_HKSectionedContextViewConfiguration *)equalCopy isHorizontalInTwoOverlaysMode];
    if (isHorizontalInTwoOverlaysMode == [(_HKSectionedContextViewConfiguration *)self isHorizontalInTwoOverlaysMode])
    {
      bottomInsetsEnabled = [(_HKSectionedContextViewConfiguration *)v5 bottomInsetsEnabled];
      if (bottomInsetsEnabled == [(_HKSectionedContextViewConfiguration *)self bottomInsetsEnabled])
      {
        horizontalInsetsEnabled = [(_HKSectionedContextViewConfiguration *)v5 horizontalInsetsEnabled];
        if (horizontalInsetsEnabled == [(_HKSectionedContextViewConfiguration *)self horizontalInsetsEnabled])
        {
          topInsetsWithNoHeaderEnabled = [(_HKSectionedContextViewConfiguration *)v5 topInsetsWithNoHeaderEnabled];
          v9 = topInsetsWithNoHeaderEnabled ^ [(_HKSectionedContextViewConfiguration *)self topInsetsWithNoHeaderEnabled]^ 1;
          goto LABEL_8;
        }
      }
    }
  }

  LOBYTE(v9) = 0;
LABEL_8:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_HKSectionedContextViewConfiguration);
  [(_HKSectionedContextViewConfiguration *)v4 setIsHorizontalInTwoOverlaysMode:[(_HKSectionedContextViewConfiguration *)self isHorizontalInTwoOverlaysMode]];
  [(_HKSectionedContextViewConfiguration *)v4 setBottomInsetsEnabled:[(_HKSectionedContextViewConfiguration *)self bottomInsetsEnabled]];
  [(_HKSectionedContextViewConfiguration *)v4 setHorizontalInsetsEnabled:[(_HKSectionedContextViewConfiguration *)self horizontalInsetsEnabled]];
  [(_HKSectionedContextViewConfiguration *)v4 setTopInsetsWithNoHeaderEnabled:[(_HKSectionedContextViewConfiguration *)self topInsetsWithNoHeaderEnabled]];
  return v4;
}

@end