@interface HUGridWelcomeUIBannerCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridWelcomeUIBannerCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___HUGridWelcomeUIBannerCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v14, sel_defaultOptionsForCellSizeSubclass_);
  v5 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76A28] traits:2];
  [v4 setFont:v5];

  v6 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769C0] traits:2];
  [v4 setDescriptionFont:v6];

  v7 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76988] traits:0x8000];
  [v4 setFooterViewLabelFont:v7];

  [v4 setVerticalSpacingForLineView:48.0];
  v15[0] = &unk_282492288;
  v15[1] = &unk_282492270;
  v16[0] = &unk_282493800;
  v16[1] = &unk_282493800;
  v15[2] = &unk_2824922A0;
  v15[3] = &unk_282492330;
  v16[2] = &unk_282493800;
  v16[3] = &unk_282493730;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  [v4 setTrailingInset:{HUConstantForCellSizeSubclass(subclass, v8)}];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v4 setFooterLabelColor:labelColor];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v4 setTitleLabelColor:systemWhiteColor];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  [v4 setDescriptionLabelColor:systemWhiteColor2];

  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  [v4 setContinueButtonColor:systemFillColor];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HUGridWelcomeUIBannerCellLayoutOptions;
  v4 = [(HUGridBannerCellLayoutOptions *)&v9 copyWithZone:zone];
  footerLabelColor = [(HUGridWelcomeUIBannerCellLayoutOptions *)self footerLabelColor];
  [v4 setFooterLabelColor:footerLabelColor];

  titleLabelColor = [(HUGridWelcomeUIBannerCellLayoutOptions *)self titleLabelColor];
  [v4 setTitleLabelColor:titleLabelColor];

  descriptionLabelColor = [(HUGridWelcomeUIBannerCellLayoutOptions *)self descriptionLabelColor];
  [v4 setDescriptionLabelColor:descriptionLabelColor];

  return v4;
}

@end