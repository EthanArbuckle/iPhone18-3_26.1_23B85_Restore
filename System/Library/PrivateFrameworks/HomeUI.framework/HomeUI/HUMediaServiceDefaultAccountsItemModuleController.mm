@interface HUMediaServiceDefaultAccountsItemModuleController
- (HUMediaServiceDefaultAccountsItemModuleController)initWithModule:(id)module delegate:(id)delegate host:(id)host;
- (HUMediaServiceDefaultAccountsItemModuleControllerDelegate)delegate;
- (id)_indexPathForItem:(id)item;
- (id)host;
- (id)updateDefaultAccount:(id)account;
- (unint64_t)didSelectItem:(id)item;
- (void)setSelectedMediaServiceIndex:(int64_t)index;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUMediaServiceDefaultAccountsItemModuleController

- (HUMediaServiceDefaultAccountsItemModuleController)initWithModule:(id)module delegate:(id)delegate host:(id)host
{
  delegateCopy = delegate;
  hostCopy = host;
  v13.receiver = self;
  v13.super_class = HUMediaServiceDefaultAccountsItemModuleController;
  v10 = [(HUItemModuleController *)&v13 initWithModule:module];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    objc_storeWeak(&v11->_host, hostCopy);
    v11->_selectedMediaServiceIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11->_shouldClearSpinnerOnNextUpdate = 0;
  }

  return v11;
}

- (id)updateDefaultAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  module = [(HUItemModuleController *)self module];
  v6 = [module updateDefaultAccount:accountCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HUMediaServiceDefaultAccountsItemModuleController_updateDefaultAccount___block_invoke;
  v10[3] = &unk_277DB8620;
  objc_copyWeak(&v12, &location);
  v7 = accountCopy;
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

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  if ([(HUMediaServiceDefaultAccountsItemModuleController *)self shouldClearSpinnerOnNextUpdate])
  {
    [(HUMediaServiceDefaultAccountsItemModuleController *)self setShouldClearSpinnerOnNextUpdate:0];
    [(HUMediaServiceDefaultAccountsItemModuleController *)self _clearSpinner];
  }

  objc_opt_class();
  v21 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v9 = v21;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  latestResults = [itemCopy latestResults];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v10 setTitleText:v12];

  latestResults2 = [itemCopy latestResults];
  v14 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  bOOLValue = [v14 BOOLValue];

  if (bOOLValue)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v10 setAccessoryType:v16];
  v17 = [(HUMediaServiceDefaultAccountsItemModuleController *)self _indexPathForItem:itemCopy];
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

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  module = [(HUItemModuleController *)self module];
  mediaServiceItemProvider = [module mediaServiceItemProvider];
  items = [mediaServiceItemProvider items];
  v8 = [items containsObject:itemCopy];

  if (v8)
  {
    objc_opt_class();
    v9 = itemCopy;
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
        mediaService = [v11 mediaService];
        v15 = [(HUMediaServiceDefaultAccountsItemModuleController *)self updateDefaultAccount:mediaService];
      }
    }
  }

  return 0;
}

- (void)setSelectedMediaServiceIndex:(int64_t)index
{
  if (self->_selectedMediaServiceIndex != index)
  {
    v18 = objc_opt_new();
    module = [(HUItemModuleController *)self module];
    mediaServiceItemProvider = [module mediaServiceItemProvider];
    items = [mediaServiceItemProvider items];
    v8 = [items count];

    selectedMediaServiceIndex = self->_selectedMediaServiceIndex;
    if (selectedMediaServiceIndex != 0x7FFFFFFFFFFFFFFFLL && selectedMediaServiceIndex + 1 < v8)
    {
      v11 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v18 addObject:v11];
    }

    if (index != 0x7FFFFFFFFFFFFFFFLL && index + 1 < v8)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
      [v18 addObject:v12];
    }

    self->_selectedMediaServiceIndex = index;
    if ([v18 count])
    {
      host = [(HUMediaServiceDefaultAccountsItemModuleController *)self host];
      module2 = [(HUItemModuleController *)self module];
      mediaServiceItemProvider2 = [module2 mediaServiceItemProvider];
      items2 = [mediaServiceItemProvider2 items];
      allObjects = [items2 allObjects];
      [host updateCellForItems:allObjects];
    }
  }
}

- (id)_indexPathForItem:(id)item
{
  itemCopy = item;
  host = [(HUMediaServiceDefaultAccountsItemModuleController *)self host];
  v6 = [host presentingViewControllerForModuleController:self];

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
    itemManager = [v9 itemManager];
    v11 = [itemManager indexPathForItem:itemCopy];
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