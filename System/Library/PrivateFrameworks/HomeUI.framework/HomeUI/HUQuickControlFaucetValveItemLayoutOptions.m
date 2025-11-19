@interface HUQuickControlFaucetValveItemLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)a3;
@end

@implementation HUQuickControlFaucetValveItemLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HUQuickControlFaucetValveItemLayoutOptions;
  v3 = objc_msgSendSuper2(&v5, sel_defaultOptionsForViewSize_, a3.width, a3.height);
  [v3 setPreferredLayoutStyle:0];
  [v3 setTitlePosition:1];
  [v3 setInteritemSpacingForSmallControlSize:36.0];
  [v3 setInteritemSpacingForRegularControlSize:48.0];

  return v3;
}

@end