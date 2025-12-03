@interface UIControl(advertising)
- (void)setAdPrivacyData:()advertising;
@end

@implementation UIControl(advertising)

- (void)setAdPrivacyData:()advertising
{
  value = a3;
  adPrivacyData = [self adPrivacyData];
  if (adPrivacyData)
  {
    [self removeTarget:0 action:sel_suuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }

  objc_setAssociatedObject(self, sel_adPrivacyData, value, 3);
  if (value)
  {
    [self addTarget:0 action:sel_suuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }
}

@end