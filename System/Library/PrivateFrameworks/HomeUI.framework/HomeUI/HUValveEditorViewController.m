@interface HUValveEditorViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUValveEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUValveEditorViewController)initWithSourceItem:(id)a3 editorMode:(unint64_t)a4;
- (id)itemModuleControllers;
- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7;
- (void)itemManager:(id)a3 performUpdateRequest:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 item:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUValveEditorViewController

- (HUValveEditorViewController)initWithSourceItem:(id)a3 editorMode:(unint64_t)a4
{
  v6 = a3;
  v7 = [[HUValveEditorItemManager alloc] initWithDelegate:self sourceItem:v6 editorMode:a4];

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

- (HUValveEditorViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithSourceItem_editorMode_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUValveEditorViewController.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUValveEditorViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = [(HUValveEditorViewController *)self valveEditorItemManager];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 controlPanelController];
    v10 = [v9 cellClassForItem:v5];
  }

  else
  {
    v11 = [v7 identifyItem];
    [v5 isEqual:v11];

    v10 = objc_opt_class();
  }

  return v10;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v10 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(HUValveEditorViewController *)self valveEditorItemManager];
    v9 = [v8 controlPanelController];
    [v9 setupCell:v10 forItem:v7];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v14.receiver = self;
  v14.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v14 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(HUValveEditorViewController *)self valveEditorItemManager];
    v13 = [v12 controlPanelController];
    [v13 updateCell:v10 forItem:v11 animated:1];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v21 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUItemTableViewController *)self itemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUValveEditorViewController *)self valveEditorItemManager];
  v11 = [v10 identifyItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    objc_opt_class();
    v13 = [(HUValveEditorViewController *)self valveEditorItemManager];
    v14 = [v13 sourceItem];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    objc_opt_class();
    v17 = [v16 service];

    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 accessory];

    [v20 identifyWithCompletionHandler:&__block_literal_global_154];
    [v6 deselectRowAtIndexPath:v7 animated:1];
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
  v3 = [(HUValveEditorViewController *)self nameModuleController];
  if (!v3 || (v4 = v3, -[HUValveEditorViewController valveEditorItemManager](self, "valveEditorItemManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 nameModule], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = [HUNameItemModuleController alloc];
    v8 = [(HUValveEditorViewController *)self valveEditorItemManager];
    v9 = [v8 nameModule];
    v10 = [(HUNameItemModuleController *)v7 initWithModule:v9 host:self];
    [(HUValveEditorViewController *)self setNameModuleController:v10];

    v11 = [(HUValveEditorViewController *)self nameModuleController];
    [v11 setNameFieldHasClearButton:1];

    v12 = [(HUValveEditorViewController *)self nameModuleController];
    [v12 setShowIcon:0];

    v13 = [(HUValveEditorViewController *)self moduleControllers];
    v14 = [(HUValveEditorViewController *)self nameModuleController];
    [v13 addObject:v14];
  }

  return [(HUValveEditorViewController *)self moduleControllers];
}

- (void)textFieldDidEndEditing:(id)a3 item:(id)a4
{
  v5 = [a3 text];
  v6 = [(HUValveEditorViewController *)self nameModuleController];
  v7 = [v6 prepareForCommit];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUValveEditorViewController_textFieldDidEndEditing_item___block_invoke;
  v10[3] = &unk_277DB7E68;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
  v9 = [v7 addSuccessBlock:v10];
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

- (void)itemManager:(id)a3 performUpdateRequest:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 changes];
  v8 = [v7 itemOperations];

  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
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
            v17 = [(HUValveEditorViewController *)self valveEditorItemManager];
            v18 = [v17 controlPanelController];
            [v18 addItem:v16];
          }

          else
          {
            if ([v13 type] != 2)
            {
              goto LABEL_15;
            }

            v17 = [(HUValveEditorViewController *)self valveEditorItemManager];
            v18 = [v17 controlPanelController];
            [v18 removeItem:v16];
          }
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v20.receiver = self;
  v20.super_class = HUValveEditorViewController;
  [(HUItemTableViewController *)&v20 itemManager:v19 performUpdateRequest:v6];
}

- (void)diffableDataItemManager:(id)a3 willUpdateItems:(id)a4 addItems:(id)a5 removeItems:(id)a6 isInitialLoad:(BOOL)a7
{
  v7 = a7;
  v16.receiver = self;
  v16.super_class = HUValveEditorViewController;
  v12 = a6;
  v13 = a5;
  [(HUItemTableViewController *)&v16 diffableDataItemManager:a3 willUpdateItems:a4 addItems:v13 removeItems:v12 isInitialLoad:v7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke;
  v15[3] = &unk_277DBAF68;
  v15[4] = self;
  [v13 na_each:v15];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__HUValveEditorViewController_diffableDataItemManager_willUpdateItems_addItems_removeItems_isInitialLoad___block_invoke_2;
  v14[3] = &unk_277DBAF68;
  v14[4] = self;
  [v12 na_each:v14];
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