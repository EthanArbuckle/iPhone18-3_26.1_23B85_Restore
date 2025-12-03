@interface HUGridServiceCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridServiceCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v22[5] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___HUGridServiceCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v14, sel_defaultOptionsForCellSizeSubclass_);
  v21[0] = &unk_282492288;
  v21[1] = &unk_282492270;
  v22[0] = &unk_282493660;
  v22[1] = &unk_282493680;
  v21[2] = &unk_2824922A0;
  v21[3] = &unk_282492330;
  v22[2] = &unk_282493780;
  v22[3] = &unk_282493670;
  v21[4] = &unk_2824922B8;
  v22[4] = &unk_282493660;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];
  v6 = HUConstantForCellSizeSubclass(subclass, v5);

  v7 = [MEMORY[0x277D74300] systemFontOfSize:v6 weight:*MEMORY[0x277D743F8]];
  [v4 setFont:v7];

  v19[0] = &unk_282492288;
  v19[1] = &unk_282492270;
  v20[0] = &unk_282493780;
  v20[1] = &unk_282493740;
  v19[2] = &unk_2824922A0;
  v19[3] = &unk_282492330;
  v20[2] = &unk_282493790;
  v20[3] = &unk_2824937A0;
  v19[4] = &unk_2824922B8;
  v20[4] = &unk_282493740;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  [v4 setLineSpacing:{HUConstantForCellSizeSubclass(subclass, v8)}];

  [v4 setIconToTitleSpacing:6.0];
  [v4 setCellCornerRadius:24.0];
  [v4 setShowDescription:1];
  [v4 setShowAccessoryView:1];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v9 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
    v10 = [MEMORY[0x277D74300] fontWithDescriptor:v9 size:v6];
    [v4 setFont:v10];

    v17[0] = &unk_282492288;
    v17[1] = &unk_282492270;
    v18[0] = &unk_282493780;
    v18[1] = &unk_282493670;
    v17[2] = &unk_2824922A0;
    v17[3] = &unk_282492330;
    v18[2] = &unk_282493740;
    v18[3] = &unk_282493750;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    [v4 setLineSpacing:{HUConstantForCellSizeSubclass(subclass, v11)}];

    v15[0] = &unk_282492288;
    v15[1] = &unk_282492270;
    v16[0] = &unk_282493650;
    v16[1] = &unk_282493660;
    v15[2] = &unk_2824922A0;
    v15[3] = &unk_282492330;
    v16[2] = &unk_282493680;
    v16[3] = &unk_282493650;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
    [v4 setCellInnerMargin:{HUConstantForCellSizeSubclass(subclass, v12)}];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUGridServiceCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v6 copyWithZone:zone];
  [(HUGridServiceCellLayoutOptions *)self lineSpacing];
  [v4 setLineSpacing:?];
  [(HUGridServiceCellLayoutOptions *)self iconToTitleSpacing];
  [v4 setIconToTitleSpacing:?];
  [v4 setShowIconOnly:{-[HUGridServiceCellLayoutOptions shouldShowIconOnly](self, "shouldShowIconOnly")}];
  [v4 setShowDescription:{-[HUGridServiceCellLayoutOptions shouldShowDescription](self, "shouldShowDescription")}];
  [v4 setShowAccessoryView:{-[HUGridServiceCellLayoutOptions shouldShowAccessoryView](self, "shouldShowAccessoryView")}];
  return v4;
}

@end