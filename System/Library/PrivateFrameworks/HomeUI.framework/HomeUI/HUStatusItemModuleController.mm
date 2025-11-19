@interface HUStatusItemModuleController
+ (id)_layoutOptionsForEnvironment:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)configureCell:(id)a3 forItem:(id)a4;
@end

@implementation HUStatusItemModuleController

- (Class)collectionCellClassForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = objc_opt_class();

  return v4;
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [objc_opt_class() _layoutOptionsForEnvironment:v4];

  v6 = MEMORY[0x277CFB860];
  v7 = MEMORY[0x277CFB870];
  v8 = MEMORY[0x277CFB840];
  v9 = [v5 statusCellOptions];
  [v9 estimatedCellWidth];
  v10 = [v8 estimatedDimension:?];
  v11 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];
  v13 = [v6 itemWithLayoutSize:v12];

  v14 = MEMORY[0x277CFB870];
  v15 = MEMORY[0x277CFB840];
  v16 = [v5 statusCellOptions];
  [v16 estimatedCellWidth];
  v17 = [v15 estimatedDimension:?];
  v18 = MEMORY[0x277CFB840];
  v19 = [v5 statusCellOptions];
  [v19 cellHeight];
  v20 = [v18 estimatedDimension:?];
  v21 = [v14 sizeWithWidthDimension:v17 heightDimension:v20];

  v22 = MEMORY[0x277CFB850];
  v35[0] = v13;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v24 = [v22 horizontalGroupWithLayoutSize:v21 subitems:v23];

  v25 = [MEMORY[0x277CFB868] sectionWithGroup:v24];
  v26 = [v5 statusCellOptions];
  [v26 cellSpacing];
  [v25 setInterGroupSpacing:?];

  [v25 setOrthogonalScrollingBehavior:1];
  [v25 setContentInsetsReference:3];
  [v5 sectionTopMargin];
  v28 = v27;
  [v5 sectionLeadingMargin];
  v30 = v29;
  [v5 sectionBottomMargin];
  v32 = v31;
  [v5 sectionTrailingMargin];
  [v25 setContentInsets:{v28, v30, v32, v33}];

  return v25;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HUStatusItemModuleController;
  [(HUItemModuleController *)&v10 configureCell:v6 forItem:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HUStatusItemModuleController *)self cellLayoutOptions];
    v8 = [v7 statusCellOptions];
    [v6 setLayoutOptions:v8];
  }

  else
  {
    v9 = [MEMORY[0x277D756E0] cellConfiguration];
    [v6 setContentConfiguration:v9];

    v7 = [MEMORY[0x277D751C0] clearConfiguration];
    [v6 setBackgroundConfiguration:v7];
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([v5 supportsInvalidation])
    {
      v6 = [v5 latestResults];
      v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14068]];
      v8 = [v7 integerValue];

      v9 = [v5 latestResults];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
      v11 = [v10 integerValue];

      v13 = v8 == 2 || v11 == 2;
      v14 = [(HUItemModuleController *)self module];
      [v14 updateNeedsInvalidation:v13 forStatusItem:v5];
    }
  }

  return 0;
}

- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [MEMORY[0x277D14CE8] isAMac];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v6 = &unk_282491310;
  }

  else
  {
    v6 = 0;
  }

  v7 = [HUGridLayoutOptions defaultOptionsForViewSize:v5 columnStyle:v6 overrideSizeSubclass:width, height];
  [v7 setStatusHidden:0];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v9 = [v8 preferredContentSizeCategory];
  [v7 setContentSizeCategory:v9];

  [v7 setEditing:0];

  return v7;
}

+ (id)_layoutOptionsForEnvironment:(id)a3
{
  v3 = MEMORY[0x277D14CE8];
  v4 = a3;
  v5 = [v3 isAMac];
  v6 = [MEMORY[0x277D14CE8] useMacIdiom];
  v7 = &unk_282491310;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v4 container];
  [v9 effectiveContentSize];
  v10 = [HUGridLayoutOptions defaultOptionsForViewSize:v5 columnStyle:v8 overrideSizeSubclass:?];

  v11 = [v4 traitCollection];

  v12 = [v11 preferredContentSizeCategory];
  [v10 setContentSizeCategory:v12];

  [v10 setSectionLeadingMargin:0.0];
  [v10 setSectionTrailingMargin:0.0];

  return v10;
}

@end