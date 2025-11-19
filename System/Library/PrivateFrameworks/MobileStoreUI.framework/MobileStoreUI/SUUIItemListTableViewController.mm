@interface SUUIItemListTableViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (CGRect)frameForItemAtIndex:(int64_t)a3;
- (CGSize)imageBoundingSize;
- (NSString)visibleMetricsImpressions;
- (SUUIItemArtworkContext)artworkContext;
- (SUUIItemListTableDelegate)delegate;
- (SUUIItemListTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SUUIStyledImageDataConsumer)iconDataConsumer;
- (_NSRange)itemCollectionController:(id)a3 itemPageRangeForOffset:(CGPoint)a4;
- (_NSRange)visibleItemRangeForItemCollectionController:(id)a3;
- (id)_itemCollectionController;
- (id)itemCollectionController:(id)a3 cellLayoutForItemIndex:(int64_t)a4;
- (id)popIconImageViewForItemAtIndex:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_finishLoadMoreOperationWithItems:(id)a3 error:(id)a4;
- (void)_loadRemainingItemsWithPriority:(int64_t)a3;
- (void)addItems:(id)a3;
- (void)dealloc;
- (void)deleteRowsAtIndexPaths:(id)a3;
- (void)itemTableView:(id)a3 didConfirmItemOfferForTableViewCell:(id)a4;
- (void)itemTableView:(id)a3 didRemoveCell:(id)a4;
- (void)loadNextPageOfArtworkWithReason:(int64_t)a3;
- (void)loadView;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setArtworkLoader:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setIconDataConsumer:(id)a3;
- (void)setItemArtworkContext:(id)a3;
- (void)setItemCellClass:(Class)a3;
- (void)setItemList:(id)a3;
- (void)setRowHeight:(double)a3;
- (void)setSeparatorStyle:(int64_t)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)unhideIcons;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SUUIItemListTableViewController

- (SUUIItemListTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = SUUIItemListTableViewController;
  v4 = [(SUUIItemListTableViewController *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v7 = 95.0;
    if (v6 != 1)
    {
      v7 = 84.0;
    }

    v4->_rowHeight = v7;
    v4->_selectionStyle = v6 != 1;
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIItemCollectionController *)self->_itemCollectionController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v3 dealloc];
}

- (void)addItems:(id)a3
{
  v14 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(SUUIItemList *)self->_itemList items];
  v6 = [v5 count];

  if ([v14 count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 + v7 inSection:0];
      [v4 addObject:v8];

      itemList = self->_itemList;
      v10 = [v14 objectAtIndex:v7];
      [(SUUIItemList *)itemList addItem:v10];

      ++v7;
    }

    while (v7 < [v14 count]);
  }

  itemCollectionController = self->_itemCollectionController;
  v12 = [(SUUIItemList *)self->_itemList items];
  [(SUUIItemCollectionController *)itemCollectionController setItems:v12];

  v13 = [(SUUIItemListTableViewController *)self tableView];
  [v13 beginUpdates];
  [v13 insertRowsAtIndexPaths:v4 withRowAnimation:5];
  [v13 endUpdates];
}

- (SUUIItemArtworkContext)artworkContext
{
  v2 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  v3 = [v2 artworkContext];

  return v3;
}

- (void)deleteRowsAtIndexPaths:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 addIndex:{objc_msgSend(*(*(&v14 + 1) + 8 * v10++), "row", v14)}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(SUUIItemList *)self->_itemList removeItemsAtIndexes:v5];
  itemCollectionController = self->_itemCollectionController;
  v12 = [(SUUIItemList *)self->_itemList items];
  [(SUUIItemCollectionController *)itemCollectionController setItems:v12];

  v13 = [(SUUIItemListTableViewController *)self tableView];
  [v13 deleteRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (CGRect)frameForItemAtIndex:(int64_t)a3
{
  v4 = [(SUUIItemListTableViewController *)self tableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  v6 = [v4 cellForRowAtIndexPath:v5];

  if (v6)
  {
    [v6 bounds];
    [v6 convertRect:0 toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277CBF398];
    v10 = *(MEMORY[0x277CBF398] + 8);
    v12 = *(MEMORY[0x277CBF398] + 16);
    v14 = *(MEMORY[0x277CBF398] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (SUUIStyledImageDataConsumer)iconDataConsumer
{
  v2 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  v3 = [v2 iconDataConsumer];

  return v3;
}

- (void)loadNextPageOfArtworkWithReason:(int64_t)a3
{
  v4 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [v4 loadNextPageOfArtworkWithReason:a3];
}

- (id)popIconImageViewForItemAtIndex:(int64_t)a3
{
  v5 = [(SUUIItemListTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  v7 = [v5 cellForRowAtIndexPath:v6];

  if (v7)
  {
    v8 = [v7 layout];
    v9 = [v8 iconImageView];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [v8 iconImage];
    v20 = [v18 initWithImage:v19];

    v21 = [(SUUIItemListTableViewController *)self view];
    [v21 convertRect:v7 fromView:{v11, v13, v15, v17}];
    [v20 setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v24 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v23;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:a3];
    [v8 setIconImageHidden:1];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setArtworkLoader:(id)a3
{
  v4 = a3;
  v5 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [v5 setArtworkLoader:v4];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateWantsCanRemove = objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateWantsDidRemove = objc_opt_respondsToSelector() & 1;

    self->_delegateWantsWillDisplay = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setIconDataConsumer:(id)a3
{
  v4 = a3;
  v5 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [v5 setIconDataConsumer:v4];
}

- (void)setItemArtworkContext:(id)a3
{
  v4 = a3;
  v5 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [v5 setArtworkContext:v4];
}

- (void)setItemCellClass:(Class)a3
{
  v4 = [(SUUIItemListTableViewController *)self tableView];
  [v4 registerClass:a3 forCellReuseIdentifier:@"ItemCellReuseIdentifier"];
}

- (void)setItemList:(id)a3
{
  v5 = a3;
  if (self->_itemList != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_itemList, a3);
    self->_didLoadMore = 0;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      v6 = [(SUUIItemListTableViewController *)self tableView];
    }

    else
    {
      v6 = 0;
    }

    loadMoreOperation = self->_loadMoreOperation;
    if (loadMoreOperation)
    {
      [(SSVLoadURLOperation *)loadMoreOperation setOutputBlock:0];
      [(SSVLoadURLOperation *)self->_loadMoreOperation cancel];
      v8 = self->_loadMoreOperation;
      self->_loadMoreOperation = 0;

      v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [v6 deleteSections:v9 withRowAnimation:5];
    }

    itemCollectionController = self->_itemCollectionController;
    v11 = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)itemCollectionController setItems:v11];

    if (v6)
    {
      [v6 reloadData];
      v12 = self->_itemCollectionController;
      [v6 contentOffset];
      [SUUIItemCollectionController precacheNextPageArtworkForOffset:v12 direction:"precacheNextPageArtworkForOffset:direction:"];
    }

    v5 = v13;
  }
}

- (void)setRowHeight:(double)a3
{
  if (self->_rowHeight != a3)
  {
    self->_rowHeight = a3;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      v4 = [(SUUIItemListTableViewController *)self tableView];
      [v4 setRowHeight:self->_rowHeight];
    }
  }
}

- (void)setSeparatorStyle:(int64_t)a3
{
  if (self->_separatorStyle != a3)
  {
    self->_separatorStyle = a3;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      v4 = [(SUUIItemListTableViewController *)self tableView];
      [v4 reloadData];
    }
  }
}

- (void)unhideIcons
{
  if (self->_hiddenIconIndexSet)
  {
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      v3 = [(SUUIItemListTableViewController *)self tableView];
      hiddenIconIndexSet = self->_hiddenIconIndexSet;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__SUUIItemListTableViewController_unhideIcons__block_invoke;
      v7[3] = &unk_2798F6230;
      v8 = v3;
      v5 = v3;
      [(NSMutableIndexSet *)hiddenIconIndexSet enumerateIndexesWithOptions:0 usingBlock:v7];
    }

    v6 = self->_hiddenIconIndexSet;
    self->_hiddenIconIndexSet = 0;
  }
}

void __46__SUUIItemListTableViewController_unhideIcons__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v3 = [*(a1 + 32) cellForRowAtIndexPath:v5];
  v4 = [v3 layout];
  [v4 setIconImageHidden:0];
}

- (NSString)visibleMetricsImpressions
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SUUIMetricsImpressionSession);
  v4 = [(SUUIItemListTableViewController *)self tableView];
  v5 = [v4 indexPathsForVisibleRows];

  v6 = [(SUUIItemList *)self->_itemList items];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 row];
        if ([v12 section] || v13 >= objc_msgSend(v6, "count"))
        {
          v15 = 0;
        }

        else
        {
          v14 = [v6 objectAtIndex:v13];
          v15 = [v14 itemIdentifier];
        }

        [(SUUIMetricsImpressionSession *)v3 addItemIdentifier:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [(SUUIMetricsImpressionSession *)v3 impressionsString];

  return v16;
}

- (id)itemCollectionController:(id)a3 cellLayoutForItemIndex:(int64_t)a4
{
  v5 = [(SUUIItemListTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a4 inSection:0];
  v7 = [v5 cellForRowAtIndexPath:v6];

  v8 = [v7 layout];

  return v8;
}

- (_NSRange)itemCollectionController:(id)a3 itemPageRangeForOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = [(SUUIItemListTableViewController *)self tableView];
  v7 = SUUIItemCollectionItemPageRangeForTableView(v6, x, y);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)visibleItemRangeForItemCollectionController:(id)a3
{
  v3 = [(SUUIItemListTableViewController *)self tableView];
  v4 = SUUIItemCollectionVisibleItemRangeForTableView(v3);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v6 loadView];
  v3 = [(SUUIItemListTableViewController *)self tableView];
  [v3 setRowHeight:self->_rowHeight];
  [v3 setSeparatorStyle:0];
  v4 = [MEMORY[0x277D75418] currentDevice];
  [v3 setShowsVerticalScrollIndicator:{objc_msgSend(v4, "userInterfaceIdiom") == 0}];

  v5 = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:v5];

  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"LoadMoreCellReuseIdentifier"];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIItemCollectionController *)self->_itemCollectionController enterForeground];
  v5 = [(SUUIItemListTableViewController *)self _itemCollectionController];
  v6 = [(SUUIItemListTableViewController *)self tableView];
  [v6 contentOffset];
  [v5 precacheNextPageArtworkForOffset:? direction:?];

  v7.receiver = self;
  v7.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v7 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v4 viewDidDisappear:a3];
  [(SUUIItemCollectionController *)self->_itemCollectionController enterBackground];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 itemListWillBeginDragging:self];
  }

  [(SUUIItemCollectionController *)self->_itemCollectionController scrollViewWillBeginDragging:v7];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5->y;
  v12 = v9;
  [v9 contentSize];
  if (v10 >= v11 * 0.33)
  {
    [(SUUIItemListTableViewController *)self _loadRemainingItemsWithPriority:0];
  }

  [(SUUIItemCollectionController *)self->_itemCollectionController scrollViewWillEndDragging:v12 withVelocity:a5 targetContentOffset:x, y];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_loadMoreOperation)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  if (!self->_delegateWantsCanRemove)
  {
    return self->_delegateWantsDidRemove;
  }

  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained itemList:self canRemoveItemAtIndexPath:v5];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = [v7 dequeueReusableCellWithIdentifier:@"LoadMoreCellReuseIdentifier" forIndexPath:v6];
  }

  else
  {
    v8 = [v7 dequeueReusableCellWithIdentifier:@"ItemCellReuseIdentifier" forIndexPath:v6];

    [v8 setSelectionStyle:self->_selectionStyle];
    v9 = [v8 multipleSelectionBackgroundView];

    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D75D18]);
      v11 = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:v11];

      [v8 setMultipleSelectionBackgroundView:v10];
    }

    v7 = [v8 layout];
    [v7 setClientContext:self->_clientContext];
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 1;
  }

  v5 = [(SUUIItemList *)self->_itemList items];
  v6 = [v5 count];

  return v6;
}

- (void)itemTableView:(id)a3 didConfirmItemOfferForTableViewCell:(id)a4
{
  v14 = a4;
  v6 = [a3 indexPathForCell:?];
  if (![v6 section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SUUIItemCollectionController *)self->_itemCollectionController items];
      v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];

      v11 = objc_loadWeakRetained(&self->_delegate);
      v12 = [v11 itemList:self didConfirmItemOfferForItem:v10 atIndexPath:v6];

      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = -[SUUIItemCollectionController performActionForItemAtIndex:](self->_itemCollectionController, "performActionForItemAtIndex:", [v6 row]);
      if (!v12)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v13 = [v14 layout];
    [v13 setItemState:v12 animated:1];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)itemTableView:(id)a3 didRemoveCell:(id)a4
{
  v5 = [a3 indexPathForCell:a4];
  if (v5)
  {
    v9 = v5;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    v5 = v9;
    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 itemList:self didRemoveItemAtIndexPath:v9];

      v5 = v9;
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v10 = a5;
  v8 = [(SUUIItemListTableViewController *)self tableView:a3 canEditRowAtIndexPath:?];
  if (a4 == 1 && v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained itemList:self didRemoveItemAtIndexPath:v10];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v10 = a4;
  if (![v10 section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SUUIItemList *)self->_itemList items];
      v8 = [v7 objectAtIndex:{objc_msgSend(v10, "row")}];

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemList:self didDeselectItem:v8 atIndexPath:v10];
    }
  }
}

- (void)tableView:(id)a3 didEndDisplayingCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v7 = a5;
  if ([v7 section] == 1)
  {
    [v8 stopAnimating];
  }

  else
  {
    -[SUUIItemCollectionController didEndDisplayingItemAtIndex:](self->_itemCollectionController, "didEndDisplayingItemAtIndex:", [v7 row]);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  if (![v10 section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(SUUIItemList *)self->_itemList items];
      v8 = [v7 objectAtIndex:{objc_msgSend(v10, "row")}];

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemList:self didSelectItem:v8 atIndexPath:v10];
    }
  }
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(SUUIItemListTableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 itemList:self titleForDeleteConfirmationButtonForRowAtIndexPath:v5];
  }

  else
  {
    v8 = [(SUUIItemListTableViewController *)self clientContext];
    v9 = v8;
    if (v8)
    {
      [v8 localizedStringForKey:@"SWIPE_TO_DELETE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SWIPE_TO_DELETE_BUTTON" inBundles:0];
    }
    v7 = ;
  }

  return v7;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SUUIUber *)self->_uber colorScheme];
  v11 = [v10 backgroundColor];

  if (v11)
  {
    [v8 setBackgroundColor:v11];
  }

  else
  {
    v12 = [v25 backgroundColor];
    [v8 setBackgroundColor:v12];
  }

  if (self->_separatorStyle == 1)
  {
    [v8 setBottomBorderColor:0];
  }

  else
  {
    v13 = [(SUUIUber *)self->_uber colorScheme];
    v14 = [v13 primaryTextColor];
    if (v14)
    {
      [v8 setBottomBorderColor:v14];
    }

    else
    {
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.75 alpha:1.0];
      [v8 setBottomBorderColor:v15];
    }
  }

  if ([v9 section] == 1)
  {
    [v8 startAnimating];
  }

  else
  {
    v16 = [v8 layout];
    v17 = [v9 row];
    v18 = [(SUUIItemList *)self->_itemList items];
    v19 = [v18 objectAtIndex:v17];

    [v8 configureForItem:v19 clientContext:self->_clientContext rowIndex:v17];
    v20 = [(SUUIItemListTableViewController *)self _itemCollectionController];
    [v20 configureCellLayout:v16 forIndex:v17];

    [v16 setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", v17)}];
    v21 = [(SUUIUber *)self->_uber colorScheme];
    [v16 setColoringWithColorScheme:v21];

    if (self->_imageBoundingSize.width != *MEMORY[0x277CBF3A8] || self->_imageBoundingSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      [v16 setImageBoundingSize:?];
    }

    if (self->_delegateWantsWillDisplay)
    {
      v22 = [(SUUIItemList *)self->_itemList items];
      v23 = [v22 objectAtIndex:{objc_msgSend(v9, "row")}];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained itemList:self willDisplayCellForItem:v23 atIndexPath:v9];
    }
  }
}

- (void)_finishLoadMoreOperationWithItems:(id)a3 error:(id)a4
{
  v18 = a3;
  self->_didLoadMore = 1;
  [(SSVLoadURLOperation *)self->_loadMoreOperation setOutputBlock:0];
  loadMoreOperation = self->_loadMoreOperation;
  self->_loadMoreOperation = 0;

  v6 = 0;
  if ([(SUUIItemListTableViewController *)self isViewLoaded])
  {
    v6 = [(SUUIItemListTableViewController *)self tableView];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [(SUUIItemList *)self->_itemList items];
    v9 = [v8 count];

    v10 = [v18 count];
    if (v9 < v10)
    {
      v11 = v10;
      do
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
        [v7 addObject:v12];

        itemList = self->_itemList;
        v14 = [v18 objectAtIndex:v9];
        [(SUUIItemList *)itemList addItem:v14];

        ++v9;
      }

      while (v11 != v9);
    }

    itemCollectionController = self->_itemCollectionController;
    v16 = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)itemCollectionController setItems:v16];

    [v6 beginUpdates];
    v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v6 deleteSections:v17 withRowAnimation:5];

    [v6 insertRowsAtIndexPaths:v7 withRowAnimation:5];
    [v6 endUpdates];
    [(SUUIItemListTableViewController *)self loadNextPageOfArtworkWithReason:-1];
  }

  else
  {
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v6 deleteSections:v7 withRowAnimation:5];
  }
}

- (id)_itemCollectionController
{
  itemCollectionController = self->_itemCollectionController;
  if (!itemCollectionController)
  {
    v4 = [[SUUIItemCollectionController alloc] initWithClientContext:self->_clientContext];
    v5 = self->_itemCollectionController;
    self->_itemCollectionController = v4;

    [(SUUIItemCollectionController *)self->_itemCollectionController setDelegate:self];
    v6 = self->_itemCollectionController;
    v7 = +[SUUIStyledImageDataConsumer listIconConsumer];
    [(SUUIItemCollectionController *)v6 setIconDataConsumer:v7];

    [(SUUIItemCollectionController *)self->_itemCollectionController setArtworkContext:self->_artworkContext];
    v8 = self->_itemCollectionController;
    v9 = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)v8 setItems:v9];

    [(SUUIItemCollectionController *)self->_itemCollectionController setNumberOfItemsPerPage:10];
    [(SUUIItemCollectionController *)self->_itemCollectionController setNumberOfPagesToCacheAhead:1.5];
    itemCollectionController = self->_itemCollectionController;
  }

  return itemCollectionController;
}

- (void)_loadRemainingItemsWithPriority:(int64_t)a3
{
  if (!self->_didLoadMore && self->_loadsMoreItems && !self->_loadMoreOperation)
  {
    v5 = [(SUUIItemList *)self->_itemList seeAllURLString];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v7 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
      loadMoreOperation = self->_loadMoreOperation;
      self->_loadMoreOperation = v7;

      [(SSVLoadURLOperation *)self->_loadMoreOperation setQueuePriority:a3];
      v9 = self->_loadMoreOperation;
      v10 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [(SSVLoadURLOperation *)v9 setStoreFrontSuffix:v10];

      v11 = +[(SSVURLDataConsumer *)SUUILoadMoreDataConsumer];
      v12 = [(SUUIItemList *)self->_itemList unavailableItemIdentifiers];
      [v11 setUnavailableItemIdentifiers:v12];

      [(SSVLoadURLOperation *)self->_loadMoreOperation setDataConsumer:v11];
      objc_initWeak(&location, self);
      v13 = self->_loadMoreOperation;
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __67__SUUIItemListTableViewController__loadRemainingItemsWithPriority___block_invoke;
      v19 = &unk_2798F6CB8;
      objc_copyWeak(&v20, &location);
      [(SSVLoadURLOperation *)v13 setOutputBlock:&v16];
      if ([(SUUIItemListTableViewController *)self isViewLoaded:v16])
      {
        v14 = [(SUUIItemListTableViewController *)self tableView];
        v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
        [v14 insertSections:v15 withRowAnimation:5];
      }

      [(NSOperationQueue *)self->_operationQueue addOperation:self->_loadMoreOperation];
      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

void __67__SUUIItemListTableViewController__loadRemainingItemsWithPriority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SUUIItemListTableViewController__loadRemainingItemsWithPriority___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __67__SUUIItemListTableViewController__loadRemainingItemsWithPriority___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishLoadMoreOperationWithItems:*(a1 + 32) error:*(a1 + 40)];
}

- (SUUIItemListTableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)imageBoundingSize
{
  width = self->_imageBoundingSize.width;
  height = self->_imageBoundingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end