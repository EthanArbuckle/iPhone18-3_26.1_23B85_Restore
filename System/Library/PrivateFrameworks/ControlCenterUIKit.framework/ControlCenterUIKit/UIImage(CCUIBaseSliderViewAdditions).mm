@interface UIImage(CCUIBaseSliderViewAdditions)
- (id)ccui_systemImageName;
@end

@implementation UIImage(CCUIBaseSliderViewAdditions)

- (id)ccui_systemImageName
{
  if (MEMORY[0x1D388ECD0]())
  {
    v2 = MEMORY[0x1D388ECC0](self);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end