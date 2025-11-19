@interface UIControl(advertising)
- (void)setAdPrivacyData:()advertising;
@end

@implementation UIControl(advertising)

- (void)setAdPrivacyData:()advertising
{
  value = a3;
  v4 = [a1 adPrivacyData];
  if (v4)
  {
    [a1 removeTarget:0 action:sel_suuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }

  objc_setAssociatedObject(a1, sel_adPrivacyData, value, 3);
  if (value)
  {
    [a1 addTarget:0 action:sel_suuiadvertising_adTransparencyButtonTapped_ forControlEvents:64];
  }
}

@end