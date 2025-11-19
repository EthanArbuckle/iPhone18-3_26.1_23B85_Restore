@interface HUMediaServiceDefaultAccountsItemModuleController
- (HUMediaServiceDefaultAccountsItemModuleController)initWithModule:(id)a3 delegate:(id)a4 host:(id)a5;
- (HUMediaServiceDefaultAccountsItemModuleControllerDelegate)delegate;
- (id)_indexPathForItem:(id)a3;
- (id)host;
- (id)updateDefaultAccount:(id)a3;
- (unint64_t)didSelectItem:(id)a3;
- (void)setSelectedMediaServiceIndex:(int64_t)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUMediaServiceDefaultAccountsItemModuleController

- (HUMediaServiceDefaultAccountsItemModuleController)initWithModule:(id)a3 delegate:(id)a4 host:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUMediaServiceDefaultAccountsItemModuleController;
  v10 = [(HUItemModuleController *)&v13 initWithModule:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    objc_storeWeak(&v11->_host, v9);
    v11->_selectedMediaServiceIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11->_shouldClearSpinnerOnNextUpdate = 0;
  }

  return v11;
}

- (id)updateDefaultAccount:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 updateDefaultAccount:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HUMediaServiceDefaultAccountsItemModuleController_updateDefaultAccount___block_invoke;
  v10[3] = &unk_277DB8620;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = [v6 addCompletionBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __74__HUMediaServiceDefaultAccountsItemModuleController_updateDefaultAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HUMediaServiceDefaultAccountsItemModuleController_updateDefaultAccount___block_invoke_2;
  block[3] = &unk_277DB8810;
  v8 = v4;
  v9 = WeakRetained;
  v10 = *(a1 + 32);
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __74__HUMediaServiceDefaultAccountsItemModuleController_updateDefaultAccount___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    [v2 _clearSpinner];
    v6 = [MEMORY[0x277D14640] sharedHandler];
    [v6 handleError:*(a1 + 32)];
  }

  else
  {
    v4 = [v2 delegate];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    [*(a1 + 40) setShouldClearSpinnerOnNextUpdate:1];
    v6 = [*(a1 + 40) delegate];
    [v6 mediaServiceDefaultAccountsItemModuleController:*(a1 + 40) didUpdateDefaultAccount:*(a1 + 48)];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if ([(HUMediaServiceDefaultAccountsItemModuleController *)self shouldClearSpinnerOnNextUpdate])
  {
    [(HUMediaServiceDefaultAccountsItemModuleController *)self setShouldClearSpinnerOnNextUpdate:0];
    [(HUMediaServiceDefaultAccountsItemModuleController *)self _clearSpinner];
  }

  objc_opt_class();
  v21 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v8 latestResults];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v10 setTitleText:v12];

  v13 = [v8 latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v10 setAccessoryType:v16];
  v17 = [(HUMediaServiceDefaultAccountsItemModuleController *)self _indexPathForItem:v8];
  v18 = v17;
  if (v17 && (v19 = [v17 row] - 1, v19 == -[HUMediaServiceDefaultAccountsItemModuleController selectedMediaServiceIndex](self, "selectedMediaServiceIndex")))
  {
    v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v20 startAnimating];
    [v21 setAccessoryView:v20];
  }

  else
  {
    [v21 setAccessoryView:0];
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self module];
  v6 = [v5 mediaServiceItemProvider];
  v7 = [v6 items];
  v8 = [v7 containsObject:v4];

  if (v8)
  {
    objc_opt_class();
    v9 = v4;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [(HUMediaServiceDefaultAccountsItemModuleController *)self _indexPathForItem:v9];
      v13 = v12;
      if (v12)
      {
        -[HUMediaServiceDefaultAccountsItemModuleController setSelectedMediaServiceIndex:](self, "setSelectedMediaServiceIndex:", [v12 row] - 1);
        v14 = [v11 mediaService];
        v15 = [(HUMediaServiceDefaultAccountsItemModuleController *)self updateDefaultAccount:v14];
      }
    }
  }

  return 0;
}

- (void)setSelectedMediaServiceIndex:(int64_t)a3
{
  if (self->_selectedMediaServiceIndex != a3)
  {
    v18 = objc_opt_new();
    v5 = [(HUItemModuleController *)self module];
    v6 = [v5 mediaServiceItemProvider];
    v7 = [v6 items];
    v8 = [v7 count];

    selectedMediaServiceIndex = self->_selectedMediaServiceIndex;
    if (selectedMediaServiceIndex != 0x7FFFFFFFFFFFFFFFLL && selectedMediaServiceIndex + 1 < v8)
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v18 addObject:v11];
    }

    if (a3 != 0x7FFFFFFFFFFFFFFFLL && a3 + 1 < v8)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v18 addObject:v12];
    }

    self->_selectedMediaServiceIndex = a3;
    if ([v18 count])
    {
      v13 = [(HUMediaServiceDefaultAccountsItemModuleController *)self host];
      v14 = [(HUItemModuleController *)self module];
      v15 = [v14 mediaServiceItemProvider];
      v16 = [v15 items];
      v17 = [v16 allObjects];
      [v13 updateCellForItems:v17];
    }
  }
}

- (id)_indexPathForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUMediaServiceDefaultAccountsItemModuleController *)self host];
  v6 = [v5 presentingViewControllerForModuleController:self];

  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 itemManager];
    v11 = [v10 indexPathForItem:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (HUMediaServiceDefaultAccountsItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end