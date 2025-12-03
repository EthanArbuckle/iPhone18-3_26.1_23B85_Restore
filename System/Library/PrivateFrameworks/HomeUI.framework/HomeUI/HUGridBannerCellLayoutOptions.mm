@interface HUGridBannerCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (double)bannerCellHeightForWidth:(double)width title:(id)title description:(id)description footer:(id)footer forContentSizeCategory:(id)category;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridBannerCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v55[2] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = &OBJC_METACLASS___HUGridBannerCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v29, sel_defaultOptionsForCellSizeSubclass_);
  [v4 setDismissButtonTrailingInset:12.0];
  [v4 setDismissButtonTopInset:12.0];
  [v4 setDismissButtonHeightAndWidth:32.0];
  v54[0] = &unk_282492288;
  v54[1] = &unk_282492270;
  v55[0] = &unk_282493680;
  v55[1] = &unk_282493740;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v4 setLeadingInset:{HUConstantForCellSizeSubclass(subclass, v5)}];

  v52[0] = &unk_282492288;
  v52[1] = &unk_282492270;
  v53[0] = &unk_282493680;
  v53[1] = &unk_282493740;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v4 setIconTopInset:{HUConstantForCellSizeSubclass(subclass, v6)}];

  v50[0] = &unk_282492288;
  v50[1] = &unk_282492270;
  v51[0] = &unk_2824937B0;
  v51[1] = &unk_2824937B0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v4 setIconWidth:{HUConstantForCellSizeSubclass(subclass, v7)}];

  v48[0] = &unk_282492288;
  v48[1] = &unk_282492270;
  v49[0] = &unk_2824937B0;
  v49[1] = &unk_2824937B0;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v4 setIconHeight:{HUConstantForCellSizeSubclass(subclass, v8)}];

  v46[0] = &unk_282492288;
  v46[1] = &unk_282492270;
  v47[0] = &unk_282493680;
  v47[1] = &unk_282493660;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v4 setIconTrailingInset:{HUConstantForCellSizeSubclass(subclass, v9)}];

  v10 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76A20]];
  v44 = *MEMORY[0x277D74380];
  v42 = *MEMORY[0x277D74430];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v43 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v45 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v14 = [v10 fontDescriptorByAddingAttributes:v13];
  v28 = [v14 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v28 size:0.0];
  [v4 setIconDescriptionFont:v15];

  [v4 setIconDescriptionInset:6.0];
  v40[0] = &unk_282492288;
  v40[1] = &unk_282492270;
  v41[0] = &unk_282493660;
  v41[1] = &unk_282493660;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v4 setTitleTopInset:{HUConstantForCellSizeSubclass(subclass, v16)}];

  v38[0] = &unk_282492288;
  v38[1] = &unk_282492270;
  v39[0] = &unk_282493740;
  v39[1] = &unk_282493740;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v4 setTrailingInset:{HUConstantForCellSizeSubclass(subclass, v17)}];

  v36[0] = &unk_282492288;
  v36[1] = &unk_282492270;
  v37[0] = &unk_282493650;
  v37[1] = &unk_282493660;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v4 setHorizontalItemSpacing:{HUConstantForCellSizeSubclass(subclass, v18)}];

  font = [v4 font];
  [font lineHeight];
  [v4 setTitleInterLineSpacing:?];

  v20 = *MEMORY[0x277D76918];
  v21 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D76918] traits:32770];
  [v4 setFont:v21];

  v22 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769C0] traits:0x8000];
  [v4 setDescriptionFont:v22];

  v34[0] = &unk_282492288;
  v34[1] = &unk_282492270;
  v35[0] = &unk_282493610;
  v35[1] = &unk_2824937C0;
  v34[2] = &unk_282492330;
  v34[3] = &unk_2824922B8;
  v35[2] = &unk_282493730;
  v35[3] = &unk_2824937C0;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
  [v4 setCellHeight:{HUConstantForCellSizeSubclass(subclass, v23)}];

  [v4 setVerticalLabelSpacing:0.0];
  v32[0] = &unk_282492288;
  v32[1] = &unk_282492270;
  v33[0] = &unk_282493660;
  v33[1] = &unk_282493660;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v4 setVerticalSpacingForLineView:{HUConstantForCellSizeSubclass(subclass, v24)}];

  v30[0] = &unk_282492288;
  v30[1] = &unk_282492270;
  v31[0] = &unk_282493740;
  v31[1] = &unk_282493740;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v4 setVerticalSpacingForLipElements:{HUConstantForCellSizeSubclass(subclass, v25)}];

  v26 = [MEMORY[0x277D180C8] preferredFontForTextStyle:v20 traits:0x8000];
  [v4 setFooterViewLabelFont:v26];

  [v4 setMaxNumberOfTitleLines:0];
  [v4 setMaxNumberOfDescriptionLines:0];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = HUGridBannerCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v9 copyWithZone:zone];
  [(HUGridBannerCellLayoutOptions *)self dismissButtonTrailingInset];
  [v4 setDismissButtonTrailingInset:?];
  [(HUGridBannerCellLayoutOptions *)self dismissButtonTopInset];
  [v4 setDismissButtonTopInset:?];
  [(HUGridBannerCellLayoutOptions *)self dismissButtonHeightAndWidth];
  [v4 setDismissButtonHeightAndWidth:?];
  [(HUGridBannerCellLayoutOptions *)self titleInterLineSpacing];
  [v4 setTitleInterLineSpacing:?];
  [(HUGridBannerCellLayoutOptions *)self titleTopInset];
  [v4 setTitleTopInset:?];
  [(HUGridBannerCellLayoutOptions *)self trailingInset];
  [v4 setTrailingInset:?];
  [(HUGridBannerCellLayoutOptions *)self iconTopInset];
  [v4 setIconTopInset:?];
  [(HUGridBannerCellLayoutOptions *)self iconTrailingInset];
  [v4 setIconTrailingInset:?];
  [(HUGridBannerCellLayoutOptions *)self iconHeight];
  [v4 setIconHeight:?];
  [(HUGridBannerCellLayoutOptions *)self iconWidth];
  [v4 setIconWidth:?];
  iconDescriptionFont = [(HUGridBannerCellLayoutOptions *)self iconDescriptionFont];
  [v4 setIconDescriptionFont:iconDescriptionFont];

  [(HUGridBannerCellLayoutOptions *)self iconDescriptionInset];
  [v4 setIconDescriptionInset:?];
  [(HUGridBannerCellLayoutOptions *)self leadingInset];
  [v4 setLeadingInset:?];
  [(HUGridBannerCellLayoutOptions *)self titleTopInset];
  [v4 setTitleTopInset:?];
  descriptionFont = [(HUGridBannerCellLayoutOptions *)self descriptionFont];
  [v4 setDescriptionFont:descriptionFont];

  [(HUGridBannerCellLayoutOptions *)self cellHeight];
  [v4 setCellHeight:?];
  [v4 setMaxNumberOfDescriptionLines:{-[HUGridBannerCellLayoutOptions maxNumberOfDescriptionLines](self, "maxNumberOfDescriptionLines")}];
  [v4 setMaxNumberOfTitleLines:{-[HUGridBannerCellLayoutOptions maxNumberOfTitleLines](self, "maxNumberOfTitleLines")}];
  [(HUGridBannerCellLayoutOptions *)self horizontalItemSpacing];
  [v4 setHorizontalItemSpacing:?];
  [(HUGridBannerCellLayoutOptions *)self verticalLabelSpacing];
  [v4 setVerticalLabelSpacing:?];
  [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLineView];
  [v4 setVerticalSpacingForLineView:?];
  [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLipElements];
  [v4 setVerticalSpacingForLipElements:?];
  footerViewLabelFont = [(HUGridBannerCellLayoutOptions *)self footerViewLabelFont];
  [v4 setFooterViewLabelFont:footerViewLabelFont];

  return v4;
}

- (double)bannerCellHeightForWidth:(double)width title:(id)title description:(id)description footer:(id)footer forContentSizeCategory:(id)category
{
  v57[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  descriptionCopy = description;
  footerCopy = footer;
  categoryCopy = category;
  v16 = *MEMORY[0x277D767F8];
  [(HUGridBannerCellLayoutOptions *)self leadingInset];
  v18 = v17;
  if (v16 > categoryCopy)
  {
    [(HUGridBannerCellLayoutOptions *)self iconWidth];
    v20 = v18 + v19;
    [(HUGridBannerCellLayoutOptions *)self horizontalItemSpacing];
    v18 = v20 + v21;
  }

  [(HUGridBannerCellLayoutOptions *)self trailingInset];
  v23 = width - (v18 + v22);
  v56 = *MEMORY[0x277D740A8];
  v24 = v56;
  font = [(HUGridCellLayoutOptions *)self font];
  v57[0] = font;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
  [titleCopy boundingRectWithSize:1 options:v26 attributes:0 context:{v23, 3.40282347e38}];
  v28 = v27;

  [(HUGridBannerCellLayoutOptions *)self verticalLabelSpacing];
  v30 = v29 + ceil(v28) + 0.0;
  v54 = v24;
  descriptionFont = [(HUGridBannerCellLayoutOptions *)self descriptionFont];
  v55 = descriptionFont;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [descriptionCopy boundingRectWithSize:1 options:v32 attributes:0 context:{v23, 3.40282347e38}];
  v34 = v33;

  v35 = v30 + ceil(v34);
  if (v16 <= categoryCopy)
  {
    [(HUGridBannerCellLayoutOptions *)self titleTopInset];
    v43 = v35 + v42;
    [(HUGridBannerCellLayoutOptions *)self iconHeight];
    v45 = v44;
    [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLipElements];
    v39 = v43 + v45 + v46;
    if (![footerCopy length])
    {
      goto LABEL_12;
    }

LABEL_11:
    [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLineView];
    v48 = v39 + v47 + 1.0;
    [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLipElements];
    v50 = v49;
    footerViewLabelFont = [(HUGridBannerCellLayoutOptions *)self footerViewLabelFont];
    [footerViewLabelFont lineHeight];
    v39 = v48 + ceil(v52) + v50 * 2.0;

    goto LABEL_12;
  }

  if (![footerCopy length])
  {
    [(HUGridBannerCellLayoutOptions *)self iconHeight];
    if (v36 > v35)
    {
      [(HUGridBannerCellLayoutOptions *)self iconHeight];
      v35 = v37;
    }
  }

  [(HUGridBannerCellLayoutOptions *)self titleTopInset];
  v39 = v35 + v38;
  if ([footerCopy length])
  {
    goto LABEL_11;
  }

  [(HUGridBannerCellLayoutOptions *)self iconHeight];
  if (v35 >= v40)
  {
    [(HUGridBannerCellLayoutOptions *)self verticalSpacingForLineView];
    v39 = v39 + v41 + 1.0;
  }

LABEL_12:

  return v39;
}

@end