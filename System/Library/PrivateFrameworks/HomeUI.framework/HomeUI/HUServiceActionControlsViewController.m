@interface HUServiceActionControlsViewController
- (BOOL)itemManager:(id)a3 shouldShowControlPanelItem:(id)a4;
- (BOOL)itemManager:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUPresentationDelegate)presentationDelegate;
- (HUServiceActionControlsViewController)initWithServiceActionItem:(id)a3 mode:(unint64_t)a4;
- (HUServiceActionControlsViewControllerDelegate)serviceActionControlsDelegate;
- (void)_done:(id)a3;
- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewDidLoad;
@end

@implementation HUServiceActionControlsViewController

- (HUServiceActionControlsViewController)initWithServiceActionItem:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = [[HUServiceActionControlsItemManager alloc] initWithServiceActionItem:v6 mode:a4 delegate:self];
  v13.receiver = self;
  v13.super_class = HUServiceActionControlsViewController;
  v8 = [(HUItemTableViewController *)&v13 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    [(HUServiceActionControlsViewController *)v8 setServiceActionItem:v6];
    v10 = [[HUControlPanelController alloc] initWithDelegate:v9];
    [(HUServiceActionControlsViewController *)v9 setControlPanelController:v10];

    v9->_mode = a4;
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
  v4 = [(HUServiceActionControlsViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];
}

- (void)_done:(id)a3
{
  v5 = [(HUServiceActionControlsViewController *)self presentationDelegate];
  v4 = [v5 finishPresentation:self animated:1];
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(HUServiceActionControlsViewController *)self controlPanelController];
    v8 = [v7 cellClassForItem:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUServiceActionControlsViewController.m" lineNumber:75 description:{@"Couldn't find a cell class for item: %@", v6}];
    v8 = 0;
  }

  return v8;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v9 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(HUServiceActionControlsViewController *)self controlPanelController];
      [v8 setupCell:v9 forItem:v7];
    }
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = HUServiceActionControlsViewController;
  [(HUItemTableViewController *)&v15 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [(HUServiceActionControlsViewController *)self controlPanelController];
    [v12 updateCell:v10 forItem:v11 animated:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setDestructive:1];
    }
  }

  v13 = [(HUServiceActionControlsViewController *)self overrideCellColor];

  if (v13)
  {
    v14 = [(HUServiceActionControlsViewController *)self overrideCellColor];
    [v10 setBackgroundColor:v14];
  }
}

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 changes];
  v8 = [v7 itemOperations];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        v14 = [v13 item];
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
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
            v17 = [(HUServiceActionControlsViewController *)self controlPanelController];
            [v17 addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            v17 = [(HUServiceActionControlsViewController *)self controlPanelController];
            [v17 removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v19.receiver = self;
  v19.super_class = HUServiceActionControlsViewController;
  [(HUItemTableViewController *)&v19 itemManager:v18 performUpdateRequest:v6];
}

- (BOOL)itemManager:(id)a3 shouldShowControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceActionControlsViewController *)self controlPanelController];
  v7 = [v6 shouldDisplayItem:v5];

  return v7;
}

- (BOOL)itemManager:(id)a3 shouldShowSectionTitleForControlPanelItem:(id)a4
{
  v5 = a4;
  v6 = [(HUServiceActionControlsViewController *)self controlPanelController];
  v7 = [v6 shouldShowSectionTitleForItem:v5];

  return v7;
}

- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7
{
  v7 = a7;
  v16.receiver = self;
  v16.super_class = HUServiceActionControlsViewController;
  v12 = a6;
  v13 = a5;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:a3 willUpdateItems:a4 addItems:v13 removeItems:v12 isInitialLoad:v7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [v13 na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__HUServiceActionControlsViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [v12 na_each:v14];
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