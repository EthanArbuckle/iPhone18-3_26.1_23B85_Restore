@interface UIView(JU_UITraitCollectionOverrides_Private)
- (unint64_t)_juLayoutDirectionFromLayoutDirectionValue:()JU_UITraitCollectionOverrides_Private;
@end

@implementation UIView(JU_UITraitCollectionOverrides_Private)

- (unint64_t)_juLayoutDirectionFromLayoutDirectionValue:()JU_UITraitCollectionOverrides_Private
{
  if (!a3)
  {
    return -1;
  }

  result = [a3 integerValue];
  if (result >= 2)
  {
    return -1;
  }

  return result;
}

@end