@interface HUStatusItemModuleController
+ (id)_layoutOptionsForEnvironment:(id)environment;
- (Class)collectionCellClassForItem:(id)item;
- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)size;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (unint64_t)didSelectItem:(id)item;
- (void)configureCell:(id)cell forItem:(id)item;
@end

@implementation HUStatusItemModuleController

- (Class)collectionCellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  objc_opt_isKindOfClass();

  v4 = objc_opt_class();

  return v4;
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v35[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [objc_opt_class() _layoutOptionsForEnvironment:environmentCopy];

  v6 = MEMORY[0x277CFB860];
  v7 = MEMORY[0x277CFB870];
  v8 = MEMORY[0x277CFB840];
  statusCellOptions = [v5 statusCellOptions];
  [statusCellOptions estimatedCellWidth];
  v10 = [v8 estimatedDimension:?];
  v11 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];
  v13 = [v6 itemWithLayoutSize:v12];

  v14 = MEMORY[0x277CFB870];
  v15 = MEMORY[0x277CFB840];
  statusCellOptions2 = [v5 statusCellOptions];
  [statusCellOptions2 estimatedCellWidth];
  v17 = [v15 estimatedDimension:?];
  v18 = MEMORY[0x277CFB840];
  statusCellOptions3 = [v5 statusCellOptions];
  [statusCellOptions3 cellHeight];
  v20 = [v18 estimatedDimension:?];
  v21 = [v14 sizeWithWidthDimension:v17 heightDimension:v20];

  v22 = MEMORY[0x277CFB850];
  v35[0] = v13;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v24 = [v22 horizontalGroupWithLayoutSize:v21 subitems:v23];

  v25 = [MEMORY[0x277CFB868] sectionWithGroup:v24];
  statusCellOptions4 = [v5 statusCellOptions];
  [statusCellOptions4 cellSpacing];
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

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v10.receiver = self;
  v10.super_class = HUStatusItemModuleController;
  [(HUItemModuleController *)&v10 configureCell:cellCopy forItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cellLayoutOptions = [(HUStatusItemModuleController *)self cellLayoutOptions];
    statusCellOptions = [cellLayoutOptions statusCellOptions];
    [cellCopy setLayoutOptions:statusCellOptions];
  }

  else
  {
    cellConfiguration = [MEMORY[0x277D756E0] cellConfiguration];
    [cellCopy setContentConfiguration:cellConfiguration];

    cellLayoutOptions = [MEMORY[0x277D751C0] clearConfiguration];
    [cellCopy setBackgroundConfiguration:cellLayoutOptions];
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = itemCopy;
    if ([v5 supportsInvalidation])
    {
      latestResults = [v5 latestResults];
      v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
      integerValue = [v7 integerValue];

      latestResults2 = [v5 latestResults];
      v10 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
      integerValue2 = [v10 integerValue];

      v13 = integerValue == 2 || integerValue2 == 2;
      module = [(HUItemModuleController *)self module];
      [module updateNeedsInvalidation:v13 forStatusItem:v5];
    }
  }

  return 0;
}

- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  isAMac = [MEMORY[0x277D14CE8] isAMac];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v6 = &unk_282491310;
  }

  else
  {
    v6 = 0;
  }

  height = [HUGridLayoutOptions defaultOptionsForViewSize:isAMac columnStyle:v6 overrideSizeSubclass:width, height];
  [height setStatusHidden:0];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  [height setContentSizeCategory:preferredContentSizeCategory];

  [height setEditing:0];

  return height;
}

+ (id)_layoutOptionsForEnvironment:(id)environment
{
  v3 = MEMORY[0x277D14CE8];
  environmentCopy = environment;
  isAMac = [v3 isAMac];
  useMacIdiom = [MEMORY[0x277D14CE8] useMacIdiom];
  v7 = &unk_282491310;
  if (!useMacIdiom)
  {
    v7 = 0;
  }

  v8 = v7;
  container = [environmentCopy container];
  [container effectiveContentSize];
  v10 = [HUGridLayoutOptions defaultOptionsForViewSize:isAMac columnStyle:v8 overrideSizeSubclass:?];

  traitCollection = [environmentCopy traitCollection];

  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v10 setContentSizeCategory:preferredContentSizeCategory];

  [v10 setSectionLeadingMargin:0.0];
  [v10 setSectionTrailingMargin:0.0];

  return v10;
}

@end