@interface HUFirmwareUpdateItemModuleController
- (Class)cellClassForItem:(id)a3;
- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate;
- (HUFirmwareUpdateItemModuleController)initWithModule:(id)a3 expandableTextViewCellDelegate:(id)a4;
- (void)lockupView:(id)a3 downloadControlTapped:(id)a4;
- (void)lockupView:(id)a3 expandableTextViewDidExpand:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUFirmwareUpdateItemModuleController

- (HUFirmwareUpdateItemModuleController)initWithModule:(id)a3 expandableTextViewCellDelegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HUFirmwareUpdateItemModuleController;
  v7 = [(HUItemModuleController *)&v11 initWithModule:a3];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    expandedStateByItems = v7->_expandedStateByItems;
    v7->_expandedStateByItems = v8;

    objc_storeWeak(&v7->_expandableTextViewCellDelegate, v6);
  }

  return v7;
}

- (Class)cellClassForItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 sourceItem], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass))
  {
    v8 = objc_opt_class();
  }

  else
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"HUFirmwareUpdateItemModuleController.m" lineNumber:46 description:{@"Unknown item %@", v5}];

    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HUFirmwareUpdateItemModuleController;
  [(HUItemModuleController *)&v19 setupCell:v6 forItem:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [(HUFirmwareUpdateItemModuleController *)self expandedStateByItems];
    v10 = [v9 objectForKey:v7];
    v11 = [v10 BOOLValue];

    v12 = [v8 lockupView];
    v13 = [v12 descriptionExpandableTextView];
    [v13 setDelegate:0];

    v14 = [v8 lockupView];
    v15 = [v14 descriptionExpandableTextView];
    [v15 setExpanded:v11];

    v16 = [v8 lockupView];
    v17 = [v8 lockupView];

    v18 = [v17 descriptionExpandableTextView];
    [v18 setDelegate:v16];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HUFirmwareUpdateItemModuleController;
  [(HUItemModuleController *)&v16 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      objc_opt_class();
      v12 = v8;
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [v14 lockupView];

      [v15 setDelegate:self];
    }
  }
}

- (void)lockupView:(id)a3 downloadControlTapped:(id)a4
{
  v4 = [a3 item];
  v11 = [v4 latestResults];

  if (v11)
  {
    v5 = objc_alloc(MEMORY[0x277D143E8]);
    v6 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v7 = [v11 objectForKeyedSubscript:@"HFResultApplicationBundleIdentifier"];
    v8 = [v11 objectForKeyedSubscript:@"HFResultApplicationStoreURL"];
    v9 = [v5 initWithName:v6 bundleID:v7 payloadURL:0 storeURL:v8];

    v10 = [MEMORY[0x277D143E8] handleRequest:v9];
  }
}

- (void)lockupView:(id)a3 expandableTextViewDidExpand:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUFirmwareUpdateItemModuleController *)self expandedStateByItems];
  v9 = [v7 item];

  [v8 setObject:MEMORY[0x277CBEC38] forKey:v9];
  v10 = [(HUFirmwareUpdateItemModuleController *)self expandableTextViewCellDelegate];
  [v10 expandableTextViewCellStateDidChange:v6];
}

- (HUExpandableTextViewCellDelegate)expandableTextViewCellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandableTextViewCellDelegate);

  return WeakRetained;
}

@end