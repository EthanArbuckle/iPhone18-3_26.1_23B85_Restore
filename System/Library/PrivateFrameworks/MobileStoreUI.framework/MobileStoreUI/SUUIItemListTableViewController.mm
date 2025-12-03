@interface SUUIItemListTableViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (CGRect)frameForItemAtIndex:(int64_t)index;
- (CGSize)imageBoundingSize;
- (NSString)visibleMetricsImpressions;
- (SUUIItemArtworkContext)artworkContext;
- (SUUIItemListTableDelegate)delegate;
- (SUUIItemListTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SUUIStyledImageDataConsumer)iconDataConsumer;
- (_NSRange)itemCollectionController:(id)controller itemPageRangeForOffset:(CGPoint)offset;
- (_NSRange)visibleItemRangeForItemCollectionController:(id)controller;
- (id)_itemCollectionController;
- (id)itemCollectionController:(id)controller cellLayoutForItemIndex:(int64_t)index;
- (id)popIconImageViewForItemAtIndex:(int64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_finishLoadMoreOperationWithItems:(id)items error:(id)error;
- (void)_loadRemainingItemsWithPriority:(int64_t)priority;
- (void)addItems:(id)items;
- (void)dealloc;
- (void)deleteRowsAtIndexPaths:(id)paths;
- (void)itemTableView:(id)view didConfirmItemOfferForTableViewCell:(id)cell;
- (void)itemTableView:(id)view didRemoveCell:(id)cell;
- (void)loadNextPageOfArtworkWithReason:(int64_t)reason;
- (void)loadView;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setArtworkLoader:(id)loader;
- (void)setDelegate:(id)delegate;
- (void)setIconDataConsumer:(id)consumer;
- (void)setItemArtworkContext:(id)context;
- (void)setItemCellClass:(Class)class;
- (void)setItemList:(id)list;
- (void)setRowHeight:(double)height;
- (void)setSeparatorStyle:(int64_t)style;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)unhideIcons;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SUUIItemListTableViewController

- (SUUIItemListTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = SUUIItemListTableViewController;
  v4 = [(SUUIItemListTableViewController *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v7 = 95.0;
    if (userInterfaceIdiom != 1)
    {
      v7 = 84.0;
    }

    v4->_rowHeight = v7;
    v4->_selectionStyle = userInterfaceIdiom != 1;
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

- (void)addItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = [(SUUIItemList *)self->_itemList items];
  v6 = [items count];

  if ([itemsCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 + v7 inSection:0];
      [v4 addObject:v8];

      itemList = self->_itemList;
      v10 = [itemsCopy objectAtIndex:v7];
      [(SUUIItemList *)itemList addItem:v10];

      ++v7;
    }

    while (v7 < [itemsCopy count]);
  }

  itemCollectionController = self->_itemCollectionController;
  items2 = [(SUUIItemList *)self->_itemList items];
  [(SUUIItemCollectionController *)itemCollectionController setItems:items2];

  tableView = [(SUUIItemListTableViewController *)self tableView];
  [tableView beginUpdates];
  [tableView insertRowsAtIndexPaths:v4 withRowAnimation:5];
  [tableView endUpdates];
}

- (SUUIItemArtworkContext)artworkContext
{
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  artworkContext = [_itemCollectionController artworkContext];

  return artworkContext;
}

- (void)deleteRowsAtIndexPaths:(id)paths
{
  v19 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = pathsCopy;
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
  items = [(SUUIItemList *)self->_itemList items];
  [(SUUIItemCollectionController *)itemCollectionController setItems:items];

  tableView = [(SUUIItemListTableViewController *)self tableView];
  [tableView deleteRowsAtIndexPaths:v6 withRowAnimation:100];
}

- (CGRect)frameForItemAtIndex:(int64_t)index
{
  tableView = [(SUUIItemListTableViewController *)self tableView];
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
  v6 = [tableView cellForRowAtIndexPath:v5];

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
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  iconDataConsumer = [_itemCollectionController iconDataConsumer];

  return iconDataConsumer;
}

- (void)loadNextPageOfArtworkWithReason:(int64_t)reason
{
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [_itemCollectionController loadNextPageOfArtworkWithReason:reason];
}

- (id)popIconImageViewForItemAtIndex:(int64_t)index
{
  tableView = [(SUUIItemListTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
  v7 = [tableView cellForRowAtIndexPath:v6];

  if (v7)
  {
    layout = [v7 layout];
    iconImageView = [layout iconImageView];
    [iconImageView frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = objc_alloc(MEMORY[0x277D755E8]);
    iconImage = [layout iconImage];
    v20 = [v18 initWithImage:iconImage];

    view = [(SUUIItemListTableViewController *)self view];
    [view convertRect:v7 fromView:{v11, v13, v15, v17}];
    [v20 setFrame:?];

    hiddenIconIndexSet = self->_hiddenIconIndexSet;
    if (!hiddenIconIndexSet)
    {
      v23 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v24 = self->_hiddenIconIndexSet;
      self->_hiddenIconIndexSet = v23;

      hiddenIconIndexSet = self->_hiddenIconIndexSet;
    }

    [(NSMutableIndexSet *)hiddenIconIndexSet addIndex:index];
    [layout setIconImageHidden:1];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)setArtworkLoader:(id)loader
{
  loaderCopy = loader;
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [_itemCollectionController setArtworkLoader:loaderCopy];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setIconDataConsumer:(id)consumer
{
  consumerCopy = consumer;
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [_itemCollectionController setIconDataConsumer:consumerCopy];
}

- (void)setItemArtworkContext:(id)context
{
  contextCopy = context;
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  [_itemCollectionController setArtworkContext:contextCopy];
}

- (void)setItemCellClass:(Class)class
{
  tableView = [(SUUIItemListTableViewController *)self tableView];
  [tableView registerClass:class forCellReuseIdentifier:@"ItemCellReuseIdentifier"];
}

- (void)setItemList:(id)list
{
  listCopy = list;
  if (self->_itemList != listCopy)
  {
    v13 = listCopy;
    objc_storeStrong(&self->_itemList, list);
    self->_didLoadMore = 0;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      tableView = [(SUUIItemListTableViewController *)self tableView];
    }

    else
    {
      tableView = 0;
    }

    loadMoreOperation = self->_loadMoreOperation;
    if (loadMoreOperation)
    {
      [(SSVLoadURLOperation *)loadMoreOperation setOutputBlock:0];
      [(SSVLoadURLOperation *)self->_loadMoreOperation cancel];
      v8 = self->_loadMoreOperation;
      self->_loadMoreOperation = 0;

      v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
      [tableView deleteSections:v9 withRowAnimation:5];
    }

    itemCollectionController = self->_itemCollectionController;
    items = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)itemCollectionController setItems:items];

    if (tableView)
    {
      [tableView reloadData];
      v12 = self->_itemCollectionController;
      [tableView contentOffset];
      [SUUIItemCollectionController precacheNextPageArtworkForOffset:v12 direction:"precacheNextPageArtworkForOffset:direction:"];
    }

    listCopy = v13;
  }
}

- (void)setRowHeight:(double)height
{
  if (self->_rowHeight != height)
  {
    self->_rowHeight = height;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      tableView = [(SUUIItemListTableViewController *)self tableView];
      [tableView setRowHeight:self->_rowHeight];
    }
  }
}

- (void)setSeparatorStyle:(int64_t)style
{
  if (self->_separatorStyle != style)
  {
    self->_separatorStyle = style;
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      tableView = [(SUUIItemListTableViewController *)self tableView];
      [tableView reloadData];
    }
  }
}

- (void)unhideIcons
{
  if (self->_hiddenIconIndexSet)
  {
    if ([(SUUIItemListTableViewController *)self isViewLoaded])
    {
      tableView = [(SUUIItemListTableViewController *)self tableView];
      hiddenIconIndexSet = self->_hiddenIconIndexSet;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__SUUIItemListTableViewController_unhideIcons__block_invoke;
      v7[3] = &unk_2798F6230;
      v8 = tableView;
      v5 = tableView;
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
  tableView = [(SUUIItemListTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  items = [(SUUIItemList *)self->_itemList items];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = indexPathsForVisibleRows;
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
        if ([v12 section] || v13 >= objc_msgSend(items, "count"))
        {
          itemIdentifier = 0;
        }

        else
        {
          v14 = [items objectAtIndex:v13];
          itemIdentifier = [v14 itemIdentifier];
        }

        [(SUUIMetricsImpressionSession *)v3 addItemIdentifier:itemIdentifier];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  impressionsString = [(SUUIMetricsImpressionSession *)v3 impressionsString];

  return impressionsString;
}

- (id)itemCollectionController:(id)controller cellLayoutForItemIndex:(int64_t)index
{
  tableView = [(SUUIItemListTableViewController *)self tableView];
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
  v7 = [tableView cellForRowAtIndexPath:v6];

  layout = [v7 layout];

  return layout;
}

- (_NSRange)itemCollectionController:(id)controller itemPageRangeForOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  tableView = [(SUUIItemListTableViewController *)self tableView];
  v7 = SUUIItemCollectionItemPageRangeForTableView(tableView, x, y);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)visibleItemRangeForItemCollectionController:(id)controller
{
  tableView = [(SUUIItemListTableViewController *)self tableView];
  v4 = SUUIItemCollectionVisibleItemRangeForTableView(tableView);
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
  tableView = [(SUUIItemListTableViewController *)self tableView];
  [tableView setRowHeight:self->_rowHeight];
  [tableView setSeparatorStyle:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [tableView setShowsVerticalScrollIndicator:{objc_msgSend(currentDevice, "userInterfaceIdiom") == 0}];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [tableView setBackgroundColor:whiteColor];

  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"LoadMoreCellReuseIdentifier"];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIItemCollectionController *)self->_itemCollectionController enterForeground];
  _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
  tableView = [(SUUIItemListTableViewController *)self tableView];
  [tableView contentOffset];
  [_itemCollectionController precacheNextPageArtworkForOffset:? direction:?];

  v7.receiver = self;
  v7.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v7 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUUIItemListTableViewController;
  [(SUUIItemListTableViewController *)&v4 viewDidDisappear:disappear];
  [(SUUIItemCollectionController *)self->_itemCollectionController enterBackground];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 itemListWillBeginDragging:self];
  }

  [(SUUIItemCollectionController *)self->_itemCollectionController scrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  v10 = offset->y;
  v12 = draggingCopy;
  [draggingCopy contentSize];
  if (v10 >= v11 * 0.33)
  {
    [(SUUIItemListTableViewController *)self _loadRemainingItemsWithPriority:0];
  }

  [(SUUIItemCollectionController *)self->_itemCollectionController scrollViewWillEndDragging:v12 withVelocity:offset targetContentOffset:x, y];
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  if (!self->_delegateWantsCanRemove)
  {
    return self->_delegateWantsDidRemove;
  }

  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained itemList:self canRemoveItemAtIndexPath:pathCopy];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"LoadMoreCellReuseIdentifier" forIndexPath:pathCopy];
  }

  else
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"ItemCellReuseIdentifier" forIndexPath:pathCopy];

    [v8 setSelectionStyle:self->_selectionStyle];
    multipleSelectionBackgroundView = [v8 multipleSelectionBackgroundView];

    if (!multipleSelectionBackgroundView)
    {
      v10 = objc_alloc_init(MEMORY[0x277D75D18]);
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v10 setBackgroundColor:clearColor];

      [v8 setMultipleSelectionBackgroundView:v10];
    }

    viewCopy = [v8 layout];
    [viewCopy setClientContext:self->_clientContext];
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 1;
  }

  items = [(SUUIItemList *)self->_itemList items];
  v6 = [items count];

  return v6;
}

- (void)itemTableView:(id)view didConfirmItemOfferForTableViewCell:(id)cell
{
  cellCopy = cell;
  v6 = [view indexPathForCell:?];
  if (![v6 section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      items = [(SUUIItemCollectionController *)self->_itemCollectionController items];
      v10 = [items objectAtIndex:{objc_msgSend(v6, "row")}];

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

    layout = [cellCopy layout];
    [layout setItemState:v12 animated:1];

    goto LABEL_7;
  }

LABEL_8:
}

- (void)itemTableView:(id)view didRemoveCell:(id)cell
{
  v5 = [view indexPathForCell:cell];
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

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = [(SUUIItemListTableViewController *)self tableView:view canEditRowAtIndexPath:?];
  if (style == 1 && v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained itemList:self didRemoveItemAtIndexPath:pathCopy];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      items = [(SUUIItemList *)self->_itemList items];
      v8 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemList:self didDeselectItem:v8 atIndexPath:pathCopy];
    }
  }
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    [cellCopy stopAnimating];
  }

  else
  {
    -[SUUIItemCollectionController didEndDisplayingItemAtIndex:](self->_itemCollectionController, "didEndDisplayingItemAtIndex:", [pathCopy row]);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      items = [(SUUIItemList *)self->_itemList items];
      v8 = [items objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 itemList:self didSelectItem:v8 atIndexPath:pathCopy];
    }
  }
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SUUIItemListTableViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate itemList:self titleForDeleteConfirmationButtonForRowAtIndexPath:pathCopy];
  }

  else
  {
    clientContext = [(SUUIItemListTableViewController *)self clientContext];
    v9 = clientContext;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"SWIPE_TO_DELETE_BUTTON"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"SWIPE_TO_DELETE_BUTTON" inBundles:0];
    }
    v7 = ;
  }

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  colorScheme = [(SUUIUber *)self->_uber colorScheme];
  backgroundColor = [colorScheme backgroundColor];

  if (backgroundColor)
  {
    [cellCopy setBackgroundColor:backgroundColor];
  }

  else
  {
    backgroundColor2 = [viewCopy backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor2];
  }

  if (self->_separatorStyle == 1)
  {
    [cellCopy setBottomBorderColor:0];
  }

  else
  {
    colorScheme2 = [(SUUIUber *)self->_uber colorScheme];
    primaryTextColor = [colorScheme2 primaryTextColor];
    if (primaryTextColor)
    {
      [cellCopy setBottomBorderColor:primaryTextColor];
    }

    else
    {
      v15 = [MEMORY[0x277D75348] colorWithWhite:0.75 alpha:1.0];
      [cellCopy setBottomBorderColor:v15];
    }
  }

  if ([pathCopy section] == 1)
  {
    [cellCopy startAnimating];
  }

  else
  {
    layout = [cellCopy layout];
    v17 = [pathCopy row];
    items = [(SUUIItemList *)self->_itemList items];
    v19 = [items objectAtIndex:v17];

    [cellCopy configureForItem:v19 clientContext:self->_clientContext rowIndex:v17];
    _itemCollectionController = [(SUUIItemListTableViewController *)self _itemCollectionController];
    [_itemCollectionController configureCellLayout:layout forIndex:v17];

    [layout setIconImageHidden:{-[NSMutableIndexSet containsIndex:](self->_hiddenIconIndexSet, "containsIndex:", v17)}];
    colorScheme3 = [(SUUIUber *)self->_uber colorScheme];
    [layout setColoringWithColorScheme:colorScheme3];

    if (self->_imageBoundingSize.width != *MEMORY[0x277CBF3A8] || self->_imageBoundingSize.height != *(MEMORY[0x277CBF3A8] + 8))
    {
      [layout setImageBoundingSize:?];
    }

    if (self->_delegateWantsWillDisplay)
    {
      items2 = [(SUUIItemList *)self->_itemList items];
      v23 = [items2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained itemList:self willDisplayCellForItem:v23 atIndexPath:pathCopy];
    }
  }
}

- (void)_finishLoadMoreOperationWithItems:(id)items error:(id)error
{
  itemsCopy = items;
  self->_didLoadMore = 1;
  [(SSVLoadURLOperation *)self->_loadMoreOperation setOutputBlock:0];
  loadMoreOperation = self->_loadMoreOperation;
  self->_loadMoreOperation = 0;

  tableView = 0;
  if ([(SUUIItemListTableViewController *)self isViewLoaded])
  {
    tableView = [(SUUIItemListTableViewController *)self tableView];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemsCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    items = [(SUUIItemList *)self->_itemList items];
    v9 = [items count];

    v10 = [itemsCopy count];
    if (v9 < v10)
    {
      v11 = v10;
      do
      {
        v12 = [MEMORY[0x277CCAA70] indexPathForRow:v9 inSection:0];
        [v7 addObject:v12];

        itemList = self->_itemList;
        v14 = [itemsCopy objectAtIndex:v9];
        [(SUUIItemList *)itemList addItem:v14];

        ++v9;
      }

      while (v11 != v9);
    }

    itemCollectionController = self->_itemCollectionController;
    items2 = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)itemCollectionController setItems:items2];

    [tableView beginUpdates];
    v17 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [tableView deleteSections:v17 withRowAnimation:5];

    [tableView insertRowsAtIndexPaths:v7 withRowAnimation:5];
    [tableView endUpdates];
    [(SUUIItemListTableViewController *)self loadNextPageOfArtworkWithReason:-1];
  }

  else
  {
    v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [tableView deleteSections:v7 withRowAnimation:5];
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
    items = [(SUUIItemList *)self->_itemList items];
    [(SUUIItemCollectionController *)v8 setItems:items];

    [(SUUIItemCollectionController *)self->_itemCollectionController setNumberOfItemsPerPage:10];
    [(SUUIItemCollectionController *)self->_itemCollectionController setNumberOfPagesToCacheAhead:1.5];
    itemCollectionController = self->_itemCollectionController;
  }

  return itemCollectionController;
}

- (void)_loadRemainingItemsWithPriority:(int64_t)priority
{
  if (!self->_didLoadMore && self->_loadsMoreItems && !self->_loadMoreOperation)
  {
    seeAllURLString = [(SUUIItemList *)self->_itemList seeAllURLString];
    if (seeAllURLString)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:seeAllURLString];
      v7 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v6];
      loadMoreOperation = self->_loadMoreOperation;
      self->_loadMoreOperation = v7;

      [(SSVLoadURLOperation *)self->_loadMoreOperation setQueuePriority:priority];
      v9 = self->_loadMoreOperation;
      v10 = [(SUUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
      [(SSVLoadURLOperation *)v9 setStoreFrontSuffix:v10];

      v11 = +[(SSVURLDataConsumer *)SUUILoadMoreDataConsumer];
      unavailableItemIdentifiers = [(SUUIItemList *)self->_itemList unavailableItemIdentifiers];
      [v11 setUnavailableItemIdentifiers:unavailableItemIdentifiers];

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
        tableView = [(SUUIItemListTableViewController *)self tableView];
        v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
        [tableView insertSections:v15 withRowAnimation:5];
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