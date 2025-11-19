@interface UIBarButtonItem(MailUI)
+ (id)_mui_capsuleConfigurationWithTitle:()MailUI titleColor:image:;
+ (id)mui_capsuleButtonItemWithTitle:()MailUI titleColor:imageName:action:;
+ (id)mui_capsuleButtonItemWithTitle:()MailUI titleColor:imageName:menu:;
@end

@implementation UIBarButtonItem(MailUI)

+ (id)mui_capsuleButtonItemWithTitle:()MailUI titleColor:imageName:action:
{
  v9 = MEMORY[0x277D751E0];
  v10 = MEMORY[0x277D755B8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 systemImageNamed:a5];
  v15 = [v9 _mui_capsuleConfigurationWithTitle:v13 titleColor:v12 image:v14];

  v16 = [MEMORY[0x277D75220] buttonWithConfiguration:v15 primaryAction:v11];

  v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v16];

  return v17;
}

+ (id)mui_capsuleButtonItemWithTitle:()MailUI titleColor:imageName:menu:
{
  v9 = MEMORY[0x277D751E0];
  v10 = MEMORY[0x277D755B8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v10 systemImageNamed:a5];
  v15 = [v9 _mui_capsuleConfigurationWithTitle:v13 titleColor:v12 image:v14];

  v16 = [MEMORY[0x277D75220] buttonWithConfiguration:v15 primaryAction:0];
  [v16 setMenu:v11];

  [v16 setShowsMenuAsPrimaryAction:1];
  v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v16];

  return v17;
}

+ (id)_mui_capsuleConfigurationWithTitle:()MailUI titleColor:image:
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277D75230];
  v10 = a5;
  v11 = [v9 filledButtonConfiguration];
  v12 = [MEMORY[0x277D75348] secondarySystemFillColor];
  [v11 setBaseBackgroundColor:v12];

  [v11 setCornerStyle:4];
  if (v8)
  {
    [v11 setBaseForegroundColor:v8];
  }

  if (v7)
  {
    [v11 setContentInsets:{7.33333333, 12.0, 7.33333333, 12.0}];
    [v11 setTitle:v7];
  }

  else
  {
    [v11 setContentInsets:{5.0, 5.0, 5.0, 5.0}];
  }

  v13 = *MEMORY[0x277D74358];
  v14 = *MEMORY[0x277D76820];
  v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76968] design:*MEMORY[0x277D74358] variant:1024 weight:*MEMORY[0x277D76820] maximumContentSizeCategory:0 compatibleWithTraitCollection:*MEMORY[0x277D74420]];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] design:v13 variant:0 weight:v14 maximumContentSizeCategory:0 compatibleWithTraitCollection:*MEMORY[0x277D74410]];
  v17 = [MEMORY[0x277D755D0] configurationWithFont:v16 scale:-1];
  [v11 setPreferredSymbolConfigurationForImage:v17];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __79__UIBarButtonItem_MailUI___mui_capsuleConfigurationWithTitle_titleColor_image___block_invoke;
  v20[3] = &unk_27818B328;
  v21 = v15;
  v18 = v15;
  [v11 setTitleTextAttributesTransformer:v20];
  [v11 setImage:v10];

  return v11;
}

@end