@interface HUGridStatusCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
- (CGPoint)badgeOffsetForUserInterfaceLayoutDirection:(int64_t)direction;
- (double)cellHeight;
- (double)cellWidthForAttributedTitle:(id)title shortTitle:(id)shortTitle;
- (double)cellWidthForTitle:(id)title shortTitle:(id)shortTitle;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUGridStatusCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v12[2] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___HUGridStatusCellLayoutOptions;
  v4 = objc_msgSendSuper2(&v10, sel_defaultOptionsForCellSizeSubclass_);
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [v4 setFont:v5];

  v6 = __67__HUGridStatusCellLayoutOptions_defaultOptionsForCellSizeSubclass___block_invoke(*MEMORY[0x277D76988]);
  [v4 setDescriptionFont:v6];

  v7 = __67__HUGridStatusCellLayoutOptions_defaultOptionsForCellSizeSubclass___block_invoke(*MEMORY[0x277D76A20]);
  [v4 setLargeDescriptionFont:v7];

  [v4 setCellCornerRadius:0.0];
  v11[0] = &unk_282492288;
  v11[1] = &unk_282492330;
  v12[0] = &unk_2824936C0;
  v12[1] = &unk_282493730;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v4 setBackgroundSize:{HUConstantForCellSizeSubclass(subclass, v8)}];

  [v4 setIconSize:36.0];
  [v4 setDescriptionInnerMargin:6.0];
  [v4 setNumberOfTitleLines:2];
  [v4 setBadgeSize:20.0];
  [v4 setEstimatedCellWidth:150.0];

  return v4;
}

id __67__HUGridStatusCellLayoutOptions_defaultOptionsForCellSizeSubclass___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:a1];
  v11 = *MEMORY[0x277D74380];
  v9 = *MEMORY[0x277D74430];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v10 = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [v1 fontDescriptorByAddingAttributes:v4];
  v6 = [v5 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HUGridStatusCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v8 copyWithZone:zone];
  descriptionFont = [(HUGridStatusCellLayoutOptions *)self descriptionFont];
  [v4 setDescriptionFont:descriptionFont];

  largeDescriptionFont = [(HUGridStatusCellLayoutOptions *)self largeDescriptionFont];
  [v4 setLargeDescriptionFont:largeDescriptionFont];

  [(HUGridStatusCellLayoutOptions *)self descriptionInnerMargin];
  [v4 setDescriptionInnerMargin:?];
  [v4 setNumberOfTitleLines:{-[HUGridStatusCellLayoutOptions numberOfTitleLines](self, "numberOfTitleLines")}];
  [(HUGridStatusCellLayoutOptions *)self backgroundSize];
  [v4 setBackgroundSize:?];
  [(HUGridStatusCellLayoutOptions *)self badgeSize];
  [v4 setBadgeSize:?];
  [(HUGridStatusCellLayoutOptions *)self estimatedCellWidth];
  [v4 setEstimatedCellWidth:?];
  return v4;
}

- (double)cellHeight
{
  numberOfTitleLines = [(HUGridStatusCellLayoutOptions *)self numberOfTitleLines];
  font = [(HUGridCellLayoutOptions *)self font];
  [font lineHeight];
  v6 = v5;
  font2 = [(HUGridCellLayoutOptions *)self font];
  [font2 leading];
  v9 = v8 + numberOfTitleLines * v6 + 1.0;

  [(HUGridCellLayoutOptions *)self iconSize];
  if (result < v9)
  {
    return v9;
  }

  return result;
}

- (double)cellWidthForTitle:(id)title shortTitle:(id)shortTitle
{
  shortTitleCopy = shortTitle;
  if (title)
  {
    v7 = MEMORY[0x277CCA898];
    titleCopy = title;
    title = [[v7 alloc] initWithString:titleCopy];
  }

  [(HUGridStatusCellLayoutOptions *)self cellWidthForAttributedTitle:title shortTitle:shortTitleCopy];
  v10 = v9;

  return v10;
}

- (double)cellWidthForAttributedTitle:(id)title shortTitle:(id)shortTitle
{
  titleCopy = title;
  shortTitleCopy = shortTitle;
  if (shortTitleCopy)
  {
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:shortTitleCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = HUGridStatusCell_legacyParseTextLines(titleCopy, v8);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HUGridStatusCellLayoutOptions_cellWidthForAttributedTitle_shortTitle___block_invoke;
  v17[3] = &unk_277DC3060;
  v17[4] = self;
  v17[5] = v18;
  [v9 na_each:v17];
  [(HUGridStatusCellLayoutOptions *)self backgroundSize];
  v11 = v10;
  [(HUGridStatusCellLayoutOptions *)self backgroundToTitleSpacing];
  v13 = v12;
  UICeilToViewScale();
  v15 = v11 + v13 + v14;
  _Block_object_dispose(v18, 8);

  return v15;
}

void __72__HUGridStatusCellLayoutOptions_cellWidthForAttributedTitle_shortTitle___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D740A8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 font];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v7 = [v4 hf_attributedStringWithDefaultAttributes:v6];

  [v7 boundingRectWithSize:1 options:0 context:{*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)}];
  v9 = v8;
  v10 = MEMORY[0x277D180C8];
  v11 = [v4 string];

  v12 = [*(a1 + 32) font];
  [v10 languageAwareOutsetsForString:v11 withFont:v12];
  v14 = v13;
  v16 = v15;

  v17 = v9 + v14 + v16;
  v18 = *(*(a1 + 40) + 8);
  if (v17 > *(v18 + 24))
  {
    *(v18 + 24) = v17;
  }
}

- (CGPoint)badgeOffsetForUserInterfaceLayoutDirection:(int64_t)direction
{
  if (direction == 1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 3;
  }

  [(HUGridStatusCellLayoutOptions *)self backgroundSize];
  v6 = v5;
  [(HUGridStatusCellLayoutOptions *)self backgroundSize];

  Point = HUCircleGetPoint(v4, 0.0 - v6 * 0.5, 0.0 - v7 * 0.5, v6, v7);
  result.y = v9;
  result.x = Point;
  return result;
}

@end