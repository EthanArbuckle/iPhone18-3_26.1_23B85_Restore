@interface HUGridSceneCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUGridSceneCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v43[2] = *MEMORY[0x277D85DE8];
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___HUGridSceneCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v31, sel_defaultOptionsForCellSizeSubclass_);
  v42[0] = &unk_282492288;
  v42[1] = &unk_282492270;
  v43[0] = &unk_282493650;
  v43[1] = &unk_282493660;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v4 setIconInnerHorizontalMargin:{HUConstantForCellSizeSubclass(a3, v5)}];

  v40[0] = &unk_282492288;
  v40[1] = &unk_282492270;
  v41[0] = &unk_282493740;
  v41[1] = &unk_282493750;
  v40[2] = &unk_2824922B8;
  v41[2] = &unk_282493680;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  v7 = HUConstantForCellSizeSubclass(a3, v6);

  v8 = *MEMORY[0x277D76988];
  v9 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76988]];
  v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v8 weight:*MEMORY[0x277D743F8]];
  [v9 scaledValueForValue:v7];
  v11 = [v10 fontWithSize:?];
  [v4 setFont:v11];

  v38[0] = &unk_282492288;
  v38[1] = &unk_282492270;
  v39[0] = &unk_282493660;
  v39[1] = &unk_282493680;
  v38[2] = &unk_2824922B8;
  v39[2] = &unk_282493760;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v13 = HUConstantForCellSizeSubclass(a3, v12);

  v14 = *MEMORY[0x277D76968];
  v15 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76968]];
  v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v14 weight:*MEMORY[0x277D74420]];
  [v15 scaledValueForValue:v13];
  v17 = [v16 fontWithSize:?];
  [v4 setDescriptionFont:v17];

  v18 = [v4 font];
  [v18 lineHeight];
  [v4 setTitleInterLineSpacing:?];

  v36[0] = &unk_282492288;
  v36[1] = &unk_282492270;
  v37[0] = &unk_282493610;
  v37[1] = &unk_2824936C0;
  v36[2] = &unk_282492330;
  v36[3] = &unk_2824922B8;
  v37[2] = &unk_282493730;
  v37[3] = &unk_282493770;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  [v4 setCellHeight:{HUConstantForCellSizeSubclass(a3, v19)}];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    MEMORY[0x20F31E320]();
    [v4 setCellHeight:?];
    v34[0] = &unk_282492288;
    v34[1] = &unk_282492270;
    v35[0] = &unk_282493660;
    v35[1] = &unk_282493680;
    v34[2] = &unk_2824922A0;
    v34[3] = &unk_282492330;
    v35[2] = &unk_282493780;
    v35[3] = &unk_282493670;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v21 = HUConstantForCellSizeSubclass(a3, v20);

    v22 = *MEMORY[0x277D76938];
    v23 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938]];
    v24 = [MEMORY[0x277D74300] fontWithDescriptor:v23 size:v21];
    [v4 setFont:v24];

    v25 = [MEMORY[0x277D75520] metricsForTextStyle:v22];
    v26 = MEMORY[0x277D74300];
    [v25 scaledValueForValue:v13];
    v27 = [v26 systemFontOfSize:? weight:?];
    [v4 setDescriptionFont:v27];

    v28 = [v4 font];
    [v28 lineHeight];
    [v4 setTitleInterLineSpacing:?];

    v32[0] = &unk_282492288;
    v32[1] = &unk_282492270;
    v33[0] = &unk_282493740;
    v33[1] = &unk_282493750;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v4 setTitleDescriptionLineSpacing:{HUConstantForCellSizeSubclass(a3, v29)}];

    [v4 setIconSize:38.0];
    [v4 setIconInnerHorizontalMargin:20.0];
    [v4 setCellInnerMargin:20.0];
  }

  [v4 setNumberOfTitleLines:2];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HUGridSceneCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v7 copyWithZone:a3];
  [(HUGridSceneCellLayoutOptions *)self iconInnerHorizontalMargin];
  [v4 setIconInnerHorizontalMargin:?];
  v5 = [(HUGridSceneCellLayoutOptions *)self descriptionFont];
  [v4 setDescriptionFont:v5];

  [(HUGridSceneCellLayoutOptions *)self titleInterLineSpacing];
  [v4 setTitleInterLineSpacing:?];
  [(HUGridSceneCellLayoutOptions *)self titleDescriptionLineSpacing];
  [v4 setTitleDescriptionLineSpacing:?];
  [(HUGridSceneCellLayoutOptions *)self cellHeight];
  [v4 setCellHeight:?];
  [v4 setNumberOfTitleLines:{-[HUGridSceneCellLayoutOptions numberOfTitleLines](self, "numberOfTitleLines")}];
  return v4;
}

@end