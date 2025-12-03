@interface HUFirmwareUpdateItemModuleController
- (Class)cellClassForItem:(id)item;
- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate;
- (HUFirmwareUpdateItemModuleController)initWithModule:(id)module expandableTextViewCellDelegate:(id)delegate;
- (void)lockupView:(id)view downloadControlTapped:(id)tapped;
- (void)lockupView:(id)view expandableTextViewDidExpand:(id)expand;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUFirmwareUpdateItemModuleController

- (HUFirmwareUpdateItemModuleController)initWithModule:(id)module expandableTextViewCellDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = HUFirmwareUpdateItemModuleController;
  v7 = [(HUItemModuleController *)&v11 initWithModule:module];
  if (v7)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    expandedStateByItems = v7->_expandedStateByItems;
    v7->_expandedStateByItems = weakToStrongObjectsMapTable;

    objc_storeWeak(&v7->_expandableTextViewCellDelegate, delegateCopy);
  }

  return v7;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([itemCopy sourceItem], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass))
  {
    v8 = objc_opt_class();
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUFirmwareUpdateItemModuleController.m" lineNumber:46 description:{@"Unknown item %@", itemCopy}];

    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v19.receiver = self;
  v19.super_class = HUFirmwareUpdateItemModuleController;
  [(HUItemModuleController *)&v19 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    expandedStateByItems = [(HUFirmwareUpdateItemModuleController *)self expandedStateByItems];
    v10 = [expandedStateByItems objectForKey:itemCopy];
    bOOLValue = [v10 BOOLValue];

    lockupView = [v8 lockupView];
    descriptionExpandableTextView = [lockupView descriptionExpandableTextView];
    [descriptionExpandableTextView setDelegate:0];

    lockupView2 = [v8 lockupView];
    descriptionExpandableTextView2 = [lockupView2 descriptionExpandableTextView];
    [descriptionExpandableTextView2 setExpanded:bOOLValue];

    lockupView3 = [v8 lockupView];
    lockupView4 = [v8 lockupView];

    descriptionExpandableTextView3 = [lockupView4 descriptionExpandableTextView];
    [descriptionExpandableTextView3 setDelegate:lockupView3];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = HUFirmwareUpdateItemModuleController;
  [(HUItemModuleController *)&v16 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceItem = [itemCopy sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_opt_class();
      v12 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      lockupView = [v14 lockupView];

      [lockupView setDelegate:self];
    }
  }
}

- (void)lockupView:(id)view downloadControlTapped:(id)tapped
{
  item = [view item];
  latestResults = [item latestResults];

  if (latestResults)
  {
    v5 = objc_alloc(MEMORY[0x277D143E8]);
    v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v7 = [latestResults objectForKeyedSubscript:@"HFResultApplicationBundleIdentifier"];
    v8 = [latestResults objectForKeyedSubscript:@"HFResultApplicationStoreURL"];
    v9 = [v5 initWithName:v6 bundleID:v7 payloadURL:0 storeURL:v8];

    v10 = [MEMORY[0x277D143E8] handleRequest:v9];
  }
}

- (void)lockupView:(id)view expandableTextViewDidExpand:(id)expand
{
  expandCopy = expand;
  viewCopy = view;
  expandedStateByItems = [(HUFirmwareUpdateItemModuleController *)self expandedStateByItems];
  item = [viewCopy item];

  [expandedStateByItems setObject:MEMORY[0x277CBEC38] forKey:item];
  expandableTextViewCellDelegate = [(HUFirmwareUpdateItemModuleController *)self expandableTextViewCellDelegate];
  [expandableTextViewCellDelegate expandableTextViewCellStateDidChange:expandCopy];
}

- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableTextViewCellDelegate);

  return WeakRetained;
}

@end