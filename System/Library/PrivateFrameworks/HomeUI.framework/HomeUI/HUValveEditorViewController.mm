@interface HUValveEditorViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUValveEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUValveEditorViewController)initWithSourceItem:(id)item editorMode:(unint64_t)mode;
- (id)itemModuleControllers;
- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing item:(id)item;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUValveEditorViewController

- (HUValveEditorViewController)initWithSourceItem:(id)item editorMode:(unint64_t)mode
{
  itemCopy = item;
  v7 = [[HUValveEditorItemManager alloc] initWithDelegate:self sourceItem:itemCopy editorMode:mode];

  v13.receiver = self;
  v13.super_class = HUValveEditorViewController;
  v8 = [(HUItemTableViewController *)&v13 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_valveEditorItemManager, v7);
    v10 = [MEMORY[0x277CBEB58] setWithCapacity:1];
    moduleControllers = v9->_moduleControllers;
    v9->_moduleControllers = v10;
  }

  return v9;
}

- (HUValveEditorViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSourceItem_editorMode_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUValveEditorViewController.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUValveEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
  v8 = valveEditorItemManager;
  if (isKindOfClass)
  {
    controlPanelController = [valveEditorItemManager controlPanelController];
    v10 = [controlPanelController cellClassForItem:itemCopy];
  }

  else
  {
    identifyItem = [valveEditorItemManager identifyItem];
    [itemCopy isEqual:identifyItem];

    v10 = objc_opt_class();
  }

  return v10;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
    controlPanelController = [valveEditorItemManager controlPanelController];
    [controlPanelController setupCell:cellCopy forItem:itemCopy];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v14 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
    controlPanelController = [valveEditorItemManager controlPanelController];
    [controlPanelController updateCell:cellCopy forItem:itemCopy animated:1];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v21 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v9 = [itemManager displayedItemAtIndexPath:pathCopy];

  valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
  identifyItem = [valveEditorItemManager identifyItem];
  v12 = [v9 isEqual:identifyItem];

  if (v12)
  {
    objc_opt_class();
    valveEditorItemManager2 = [(HUValveEditorViewController *)self valveEditorItemManager];
    sourceItem = [valveEditorItemManager2 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v15 = sourceItem;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    objc_opt_class();
    service = [v16 service];

    if (objc_opt_isKindOfClass())
    {
      v18 = service;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    accessory = [v19 accessory];

    [accessory identifyWithCompletionHandler:&__block_literal_global_154];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

void __65__HUValveEditorViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277D14640];
    v3 = a2;
    v4 = [v2 sharedHandler];
    [v4 handleError:v3];
  }
}

- (id)itemModuleControllers
{
  nameModuleController = [(HUValveEditorViewController *)self nameModuleController];
  if (!nameModuleController || (v4 = nameModuleController, -[HUValveEditorViewController valveEditorItemManager](self, "valveEditorItemManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 nameModule], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = [HUNameItemModuleController alloc];
    valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
    nameModule = [valveEditorItemManager nameModule];
    v10 = [(HUNameItemModuleController *)v7 initWithModule:nameModule host:self];
    [(HUValveEditorViewController *)self setNameModuleController:v10];

    nameModuleController2 = [(HUValveEditorViewController *)self nameModuleController];
    [nameModuleController2 setNameFieldHasClearButton:1];

    nameModuleController3 = [(HUValveEditorViewController *)self nameModuleController];
    [nameModuleController3 setShowIcon:0];

    moduleControllers = [(HUValveEditorViewController *)self moduleControllers];
    nameModuleController4 = [(HUValveEditorViewController *)self nameModuleController];
    [moduleControllers addObject:nameModuleController4];
  }

  return [(HUValveEditorViewController *)self moduleControllers];
}

- (void)textFieldDidEndEditing:(id)editing item:(id)item
{
  text = [editing text];
  nameModuleController = [(HUValveEditorViewController *)self nameModuleController];
  prepareForCommit = [nameModuleController prepareForCommit];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUValveEditorViewController_textFieldDidEndEditing_item___block_invoke;
  v10[3] = &unk_277DB7E68;
  v10[4] = self;
  v11 = text;
  v8 = text;
  v9 = [prepareForCommit addSuccessBlock:v10];
}

void __59__HUValveEditorViewController_textFieldDidEndEditing_item___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valveEditorItemManager];
  v3 = [v2 serviceBuilder];
  v4 = [v3 commitItem];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HUValveEditorViewController_textFieldDidEndEditing_item___block_invoke_2;
  v6[3] = &unk_277DB8C00;
  v7 = *(a1 + 40);
  v5 = [v4 addFailureBlock:v6];
}

void __59__HUValveEditorViewController_textFieldDidEndEditing_item___block_invoke_2(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D14640];
  v4 = a2;
  v5 = [v3 sharedHandler];
  v6 = *MEMORY[0x277D13C10];
  v7 = *(a1 + 32);
  v9 = *MEMORY[0x277D13860];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 handleError:v4 operationType:v6 options:v8 retryBlock:0 cancelBlock:0];
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  requestCopy = request;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  changes = [requestCopy changes];
  itemOperations = [changes itemOperations];

  v9 = [itemOperations countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(itemOperations);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        objc_opt_class();
        item = [v13 item];
        if (objc_opt_isKindOfClass())
        {
          v15 = item;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        if (v16)
        {
          if ([v13 type] == 1)
          {
            valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
            controlPanelController = [valveEditorItemManager controlPanelController];
            [controlPanelController addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            valveEditorItemManager = [(HUValveEditorViewController *)self valveEditorItemManager];
            controlPanelController = [valveEditorItemManager controlPanelController];
            [controlPanelController removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [itemOperations countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v20.receiver = self;
  v20.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v20 itemManager:managerCopy performUpdateRequest:requestCopy];
}

- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load
{
  loadCopy = load;
  v16.receiver = self;
  v16.super_class = HUValveEditorViewController;
  removeItemsCopy = removeItems;
  addItemsCopy = addItems;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:manager willUpdateItems:items addItems:addItemsCopy removeItems:removeItemsCopy isInitialLoad:loadCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [addItemsCopy na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [removeItemsCopy na_each:v14];
}

void __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v12 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) valveEditorItemManager];
    v7 = [v6 controlPanelController];
    v8 = [v7 allItems];
    v9 = [v8 containsObject:v5];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 32) valveEditorItemManager];
      v11 = [v10 controlPanelController];
      [v11 addItem:v5];
    }
  }
}

void __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v8 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) valveEditorItemManager];
    v7 = [v6 controlPanelController];
    [v7 removeItem:v5];
  }
}

@end