@interface HUQuickControlFaucetValveItemLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)size;
@end

@implementation HUQuickControlFaucetValveItemLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)size
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HUQuickControlFaucetValveItemLayoutOptions;
  v3 = objc_msgSendSuper2(&v5, sel_defaultOptionsForViewSize_, size.width, size.height);
  [v3 setPreferredLayoutStyle:0];
  [v3 setTitlePosition:1];
  [v3 setInteritemSpacingForSmallControlSize:36.0];
  [v3 setInteritemSpacingForRegularControlSize:48.0];

  return v3;
}

@end