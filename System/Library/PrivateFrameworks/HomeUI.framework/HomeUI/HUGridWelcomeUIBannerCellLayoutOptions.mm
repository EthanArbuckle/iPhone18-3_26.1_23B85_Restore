@interface HUGridWelcomeUIBannerCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUGridWelcomeUIBannerCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v16[4] = *MEMORY[0x277D85DE8];
  v14.receiver = a1;
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
  [v4 setTrailingInset:{HUConstantForCellSizeSubclass(a3, v8)}];

  v9 = [MEMORY[0x277D75348] labelColor];
  [v4 setFooterLabelColor:v9];

  v10 = [MEMORY[0x277D75348] systemWhiteColor];
  [v4 setTitleLabelColor:v10];

  v11 = [MEMORY[0x277D75348] systemWhiteColor];
  [v4 setDescriptionLabelColor:v11];

  v12 = [MEMORY[0x277D75348] systemFillColor];
  [v4 setContinueButtonColor:v12];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = HUGridWelcomeUIBannerCellLayoutOptions;
  v4 = [(HUGridBannerCellLayoutOptions *)&v9 copyWithZone:a3];
  v5 = [(HUGridWelcomeUIBannerCellLayoutOptions *)self footerLabelColor];
  [v4 setFooterLabelColor:v5];

  v6 = [(HUGridWelcomeUIBannerCellLayoutOptions *)self titleLabelColor];
  [v4 setTitleLabelColor:v6];

  v7 = [(HUGridWelcomeUIBannerCellLayoutOptions *)self descriptionLabelColor];
  [v4 setDescriptionLabelColor:v7];

  return v4;
}

@end