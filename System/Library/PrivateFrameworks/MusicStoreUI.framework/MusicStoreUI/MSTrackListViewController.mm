@interface MSTrackListViewController
- (MSTrackListViewController)init;
- (id)_headerArtworkImage;
- (id)_headerArtworkItemImage;
- (id)_newImageDataProvider;
- (id)_newPlaceholderImage;
- (id)purchasableItemsForHeaderView:(id)view;
- (void)_delayedReloadForWebViews;
- (void)_reloadFooterView;
- (void)_reloadHeaderView;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_webViewsLoaded:(id)loaded;
- (void)dealloc;
- (void)loadView;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)reloadData;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MSTrackListViewController

- (MSTrackListViewController)init
{
  v5.receiver = self;
  v5.super_class = MSTrackListViewController;
  v2 = [(MSStructuredPageViewController *)&v5 init];
  if (v2)
  {
    [(SUStructuredPageViewController *)v2 setDataSourceClass:objc_opt_class()];
    [(SUTableViewController *)v2 setTableViewStyle:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x277D25CA0] object:0];
    [defaultCenter addObserver:v2 selector:sel__webViewsLoaded_ name:*MEMORY[0x277D7FF20] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D25CA0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FF20] object:0];
  [(MSTrackListHeaderView *)self->_headerView setDelegate:0];

  self->_headerView = 0;
  v4.receiver = self;
  v4.super_class = MSTrackListViewController;
  [(MSStructuredPageViewController *)&v4 dealloc];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MSTrackListViewController;
  [(SUTableViewController *)&v9 loadView];
  tableView = [(SUTableViewController *)self tableView];
  [(UITableView *)tableView setBackgroundColor:MSGetTrackListOddRowColor()];
  [(UITableView *)tableView setSeparatorColor:MSGetTrackListBorderColor()];
  [(UITableView *)tableView setSeparatorStyle:0];
  headerView = self->_headerView;
  if (headerView)
  {
    [(MSTrackListHeaderView *)headerView frame];
    v6 = v5;
    v8 = v7;
    [(UITableView *)tableView frame];
    [(MSTrackListHeaderView *)self->_headerView setFrame:v6, v8];
    [(UITableView *)tableView setTableHeaderView:self->_headerView];
  }
}

- (void)reloadData
{
  v3 = [objc_msgSend(*(&self->super.super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D7FF08]) "structuredPage")];
  item = [[(SUStructuredPageViewController *)self structuredPage] item];
  v5 = [item firstItemLinkForType:9];
  if ([v5 URL])
  {
    v6 = objc_alloc_init(MEMORY[0x277D7FDE8]);
    [v6 setItemDisplayType:10000];
    [v6 setItemType:3];
    [v6 setReviewStatistics:{objc_msgSend(item, "reviewStatistics")}];
    v7 = [v5 copy];
    [v7 setLinkType:0];
    [v6 setItemLinks:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v7)}];

    if ([v3 numberOfItems] && objc_msgSend(objc_msgSend(objc_msgSend(v3, "itemsForSectionAtIndex:", 0), "objectAtIndex:", 0), "itemDisplayType") == 10000)
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      [v3 replaceItemAtIndexPath:v8 withItems:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v6)}];
    }

    else
    {
      v9 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
      [v3 insertItems:v9 atIndexPath:{objc_msgSend(MEMORY[0x277CCAA70], "indexPathForRow:inSection:", 0, 0)}];
    }
  }

  v10.receiver = self;
  v10.super_class = MSTrackListViewController;
  [(SUStructuredPageViewController *)&v10 reloadData];
  -[UITableView setSeparatorStyle:](-[SUTableViewController tableView](self, "tableView"), "setSeparatorStyle:", [v3 numberOfItems] > 0);
  [(MSTrackListViewController *)self _reloadHeaderView];
  [(MSTrackListViewController *)self _reloadFooterView];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedReloadForWebViews object:0];
  v5.receiver = self;
  v5.super_class = MSTrackListViewController;
  [(MSStructuredPageViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  if ([objc_msgSend(-[MSTrackListViewController _headerArtworkItemImage](self "_headerArtworkItemImage")])
  {
    [(MSTrackListHeaderView *)self->_headerView setArtworkImage:output];
    headerView = self->_headerView;

    [(MSTrackListHeaderView *)headerView reloadView];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MSTrackListViewController;
    [(SUStructuredPageViewController *)&v8 operation:operation finishedWithOutput:output];
  }
}

- (id)purchasableItemsForHeaderView:(id)view
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [objc_msgSend(objc_msgSend(*(&self->super.super.super.super.super.super.super.super.super.isa + *MEMORY[0x277D7FF08]) "structuredPage")];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isDownloadable])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_delayedReloadForWebViews
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];

  [(MSTrackListViewController *)self reloadData];
}

- (void)_restrictionsChangedNotification:(id)notification
{
  mainThreadProxy = [(MSTrackListViewController *)self mainThreadProxy];

  [mainThreadProxy reloadData];
}

- (void)_webViewsLoaded:(id)loaded
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedReloadForWebViews object:0];

  [(MSTrackListViewController *)self performSelector:sel__delayedReloadForWebViews withObject:0 afterDelay:0.0];
}

- (id)_headerArtworkImage
{
  artworkImage = [(MSTrackListHeaderView *)self->_headerView artworkImage];
  _headerArtworkItemImage = [(MSTrackListViewController *)self _headerArtworkItemImage];
  if (artworkImage)
  {
    v5 = 1;
  }

  else
  {
    v5 = _headerArtworkItemImage == 0;
  }

  if (v5)
  {
    if (artworkImage)
    {
      return artworkImage;
    }
  }

  else
  {
    v7 = _headerArtworkItemImage;
    v8 = objc_alloc_init(MEMORY[0x277D7FD48]);
    _newImageDataProvider = [(MSTrackListViewController *)self _newImageDataProvider];
    [v7 imageScale];
    [_newImageDataProvider setInputImageScale:?];
    [v8 setDataProvider:_newImageDataProvider];
    v10 = [objc_alloc(MEMORY[0x277D69CA0]) initWithURL:{objc_msgSend(v7, "URL")}];
    [v8 setRequestProperties:v10];

    [(SUViewController *)self trackOperation:v8 cancelOnDealloc:1];
    [objc_msgSend(objc_msgSend(MEMORY[0x277D7FDB8] "sharedController")];
  }

  _newPlaceholderImage = [(MSTrackListViewController *)self _newPlaceholderImage];

  return _newPlaceholderImage;
}

- (id)_headerArtworkItemImage
{
  v2 = [-[SUStructuredPage item](-[SUStructuredPageViewController structuredPage](self "structuredPage")];

  return [v2 bestImageForSize:{88.0, 88.0}];
}

- (id)_newImageDataProvider
{
  v2 = objc_alloc_init(MEMORY[0x277D7FDE0]);
  [v2 setFillColor:{objc_msgSend(MEMORY[0x277D75348], "whiteColor")}];
  [v2 setFinalSize:{88.0, 88.0}];
  v3 = objc_alloc_init(MEMORY[0x277D7FE90]);
  [v3 setEdgeInsets:{1.0, 1.0, 1.0, 1.0}];
  [v3 setStrokeColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.0, 0.200000003)}];
  v4 = objc_alloc_init(MEMORY[0x277D7FDD0]);
  [v4 setShouldSizeDownToFit:1];
  [v4 setSizingMask:45];
  v5 = objc_alloc_init(MEMORY[0x277D7FD98]);
  [v5 setModifiers:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v4, v3, 0)}];
  [v2 setModifier:v5];

  return v2;
}

- (id)_newPlaceholderImage
{
  _newImageDataProvider = [(MSTrackListViewController *)self _newImageDataProvider];
  v3 = [_newImageDataProvider newImageFromImage:{objc_msgSend(MEMORY[0x277D755B8], "imageNamed:inBundle:", @"PlaceholderBig.png", objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()))}];

  return v3;
}

- (void)_reloadFooterView
{
  structuredPage = [(SUStructuredPageViewController *)self structuredPage];
  v4 = [-[SUStructuredPage item](structuredPage "item")];
  if (v4 || (v4 = [-[SUStructuredPage protocol](structuredPage "protocol")]) != 0)
  {
    v5 = v4;
    v6 = [MSTrackListCopyrightFooterView alloc];
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    v8 = [(MSTrackListCopyrightFooterView *)v6 initWithFrame:0.0, 0.0];
    [(MSTrackListCopyrightFooterView *)v8 setBackgroundColor:MSGetTrackListOddRowColor()];
    [(MSTrackListCopyrightFooterView *)v8 setText:v5];
    [(MSTrackListCopyrightFooterView *)v8 sizeToFit];
    [(UITableView *)[(SUTableViewController *)self tableView] setTableFooterView:v8];
  }

  else
  {
    tableView = [(SUTableViewController *)self tableView];

    [(UITableView *)tableView setTableFooterView:0];
  }
}

- (void)_reloadHeaderView
{
  item = [[(SUStructuredPageViewController *)self structuredPage] item];
  tableView = [(SUTableViewController *)self tableView];
  headerView = self->_headerView;
  if (item)
  {
    if (headerView)
    {
      goto LABEL_16;
    }

    v6 = [MSTrackListHeaderView alloc];
    if (tableView)
    {
      [(UITableView *)tableView bounds];
    }

    else
    {
      v7 = *MEMORY[0x277CBF3A0];
      v8 = *(MEMORY[0x277CBF3A0] + 8);
      v9 = *(MEMORY[0x277CBF3A0] + 16);
      v10 = *(MEMORY[0x277CBF3A0] + 24);
    }

    v11 = [(MSTrackListHeaderView *)v6 initWithFrame:v7, v8, v9, v10];
    self->_headerView = v11;
    [(MSTrackListHeaderView *)v11 setAutoresizingMask:2];
    [(MSTrackListHeaderView *)self->_headerView setBackgroundColor:MSGetTrackListOddRowColor()];
    [(MSTrackListHeaderView *)self->_headerView setClipsToBounds:1];
    [(MSTrackListHeaderView *)self->_headerView setDelegate:self];
    if (self->_headerView)
    {
LABEL_16:
      [(MSTrackListHeaderView *)self->_headerView setArtworkImage:[(MSTrackListViewController *)self _headerArtworkImage]];
      [(MSTrackListHeaderView *)self->_headerView setItem:item];
      [(MSTrackListHeaderView *)self->_headerView reloadView];
      [(MSTrackListHeaderView *)self->_headerView sizeToFit];
      v12 = self->_headerView;
      if (v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    [(MSTrackListHeaderView *)headerView setDelegate:0];

    self->_headerView = 0;
  }

  [(UITableView *)tableView tableHeaderView];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v12 = self->_headerView;
LABEL_11:

  [(UITableView *)tableView setTableHeaderView:v12];
}

@end