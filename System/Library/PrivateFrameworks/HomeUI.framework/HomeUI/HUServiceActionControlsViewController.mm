@interface HUServiceActionControlsViewController
- (BOOL)itemManager:(id)manager shouldShowControlPanelItem:(id)item;
- (BOOL)itemManager:(id)manager shouldShowSectionTitleForControlPanelItem:(id)item;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceActionControlsViewController)initWithServiceActionItem:(id)item mode:(unint64_t)mode;
- (HUServiceActionControlsViewControllerDelegate)serviceActionControlsDelegate;
- (void)_done:(id)_done;
- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load;
- (void)itemManager:(id)manager performUpdateRequest:(id)request;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUServiceActionControlsViewController

- (HUServiceActionControlsViewController)initWithServiceActionItem:(id)item mode:(unint64_t)mode
{
  itemCopy = item;
  v7 = [[HUServiceActionControlsItemManager alloc] initWithServiceActionItem:itemCopy mode:mode delegate:self];
  v13.receiver = self;
  v13.super_class = HUServiceActionControlsViewController;
  v8 = [(HUItemTableViewController *)&v13 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    [(HUServiceActionControlsViewController *)v8 setServiceActionItem:itemCopy];
    v10 = [[HUControlPanelController alloc] initWithDelegate:v9];
    [(HUServiceActionControlsViewController *)v9 setControlPanelController:v10];

    v9->_mode = mode;
    overrideCellColor = v9->_overrideCellColor;
    v9->_overrideCellColor = 0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUServiceActionControlsViewController;
  [(HUItemTableViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__done_];
  navigationItem = [(HUServiceActionControlsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

- (void)_done:(id)_done
{
  presentationDelegate = [(HUServiceActionControlsViewController *)self presentationDelegate];
  v4 = [presentationDelegate finishPresentation:self animated:1];
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
    v8 = [controlPanelController cellClassForItem:itemCopy];
  }

  else
  {
    controlPanelController = [MEMORY[0x277CCA890] currentHandler];
    [controlPanelController handleFailureInMethod:a2 object:self file:@"HUServiceActionControlsViewController.m" lineNumber:75 description:{@"Couldn't find a cell class for item: %@", itemCopy}];
    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
      [controlPanelController setupCell:cellCopy forItem:itemCopy];
    }
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUServiceActionControlsViewController;
  [(HUItemTableViewController *)&v15 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
    [controlPanelController updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [cellCopy setDestructive:1];
    }
  }

  overrideCellColor = [(HUServiceActionControlsViewController *)self overrideCellColor];

  if (overrideCellColor)
  {
    overrideCellColor2 = [(HUServiceActionControlsViewController *)self overrideCellColor];
    [cellCopy setBackgroundColor:overrideCellColor2];
  }
}

- (void)itemManager:(id)manager performUpdateRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  requestCopy = request;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  changes = [requestCopy changes];
  itemOperations = [changes itemOperations];

  v9 = [itemOperations countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(itemOperations);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
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
            controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
            [controlPanelController addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
            [controlPanelController removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [itemOperations countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v19.receiver = self;
  v19.super_class = HUServiceActionControlsViewController;
  [(HUItemTableViewController *)&v19 itemManager:managerCopy performUpdateRequest:requestCopy];
}

- (BOOL)itemManager:(id)manager shouldShowControlPanelItem:(id)item
{
  itemCopy = item;
  controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
  v7 = [controlPanelController shouldDisplayItem:itemCopy];

  return v7;
}

- (BOOL)itemManager:(id)manager shouldShowSectionTitleForControlPanelItem:(id)item
{
  itemCopy = item;
  controlPanelController = [(HUServiceActionControlsViewController *)self controlPanelController];
  v7 = [controlPanelController shouldShowSectionTitleForItem:itemCopy];

  return v7;
}

- (void)diffableDataItemManager:(id)manager willUpdateItems:(id)items addItems:(id)addItems removeItems:(id)removeItems isInitialLoad:(BOOL)load
{
  loadCopy = load;
  v16.receiver = self;
  v16.super_class = HUServiceActionControlsViewController;
  removeItemsCopy = removeItems;
  addItemsCopy = addItems;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:manager willUpdateItems:items addItems:addItemsCopy removeItems:removeItemsCopy isInitialLoad:loadCopy];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [addItemsCopy na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [removeItemsCopy na_each:v14];
}

void __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) controlPanelController];
    v7 = [v6 allItems];
    v8 = [v7 containsObject:v5];

    if ((v8 & 1) == 0)
    {
      v9 = [*(a1 + 32) controlPanelController];
      [v9 addItem:v5];
    }
  }
}

void __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) controlPanelController];
    [v6 removeItem:v5];
  }
}

- (HUPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (HUServiceActionControlsViewControllerDelegate)serviceActionControlsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceActionControlsDelegate);

  return WeakRetained;
}

@end