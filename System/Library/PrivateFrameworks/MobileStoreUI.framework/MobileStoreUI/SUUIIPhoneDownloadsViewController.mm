@interface SUUIIPhoneDownloadsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (SUUIDownloadsChildViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_reload;
- (void)loadView;
- (void)reloadDownloadsAtIndexes:(id)indexes;
- (void)setDownloads:(id)downloads;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation SUUIIPhoneDownloadsViewController

- (void)reloadDownloadsAtIndexes:(id)indexes
{
  downloads = self->_downloads;
  indexesCopy = indexes;
  v6 = [(NSArray *)downloads copy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SUUIIPhoneDownloadsViewController_reloadDownloadsAtIndexes___block_invoke;
  v8[3] = &unk_2798F7068;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:v8];
}

void __62__SUUIIPhoneDownloadsViewController_reloadDownloadsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(*(a1 + 32) + 992);
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:a2 inSection:0];
  v10 = [v4 cellForRowAtIndexPath:v5];

  v6 = 0;
  if ([*(a1 + 40) count] > a2)
  {
    v6 = [*(a1 + 40) objectAtIndex:a2];
  }

  v7 = [v10 cellView];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1008));
  v9 = [WeakRetained childViewController:*(a1 + 32) artworkForDownload:v6];
  SUUIConfigureDownloadsCellView(v7, v6, v9, 0, *(*(a1 + 32) + 1024));
}

- (void)setDownloads:(id)downloads
{
  downloadsCopy = downloads;
  if (self->_downloads != downloadsCopy)
  {
    v6 = downloadsCopy;
    objc_storeStrong(&self->_downloads, downloads);
    [(SUUIIPhoneDownloadsViewController *)self _reload];
    downloadsCopy = v6;
  }
}

- (void)loadView
{
  v7 = objc_alloc_init(SUUIDownloadsView);
  [(SUUIIPhoneDownloadsViewController *)self setView:v7];
  v3 = objc_alloc_init(MEMORY[0x277D75B40]);
  tableView = self->_tableView;
  self->_tableView = v3;

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAlwaysBounceVertical:1];
  v5 = self->_tableView;
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UITableView *)v5 setBackgroundColor:systemBackgroundColor];

  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"a"];
  [(SUUIDownloadsView *)v7 setContentView:self->_tableView];
}

- (void)viewDidLayoutSubviews
{
  tableView = self->_tableView;
  v4 = SUUILayoutGuideInsets(self);
  SUUIScrollViewSetDefaultContentInsets(tableView, v4, v5, v6, v7);
  v8.receiver = self;
  v8.super_class = SUUIIPhoneDownloadsViewController;
  [(SUUIIPhoneDownloadsViewController *)&v8 viewDidLayoutSubviews];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [pathCopy row]);
  [WeakRetained childViewController:self performActionForDownload:v6];

  [(UITableView *)self->_tableView deselectRowAtIndexPath:pathCopy animated:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  downloads = self->_downloads;
  pathCopy = path;
  v7 = -[NSArray objectAtIndex:](downloads, "objectAtIndex:", [pathCopy item]);
  v8 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"a" forIndexPath:pathCopy];

  cellView = [v8 cellView];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [WeakRetained childViewController:self artworkForDownload:v7];
  SUUIConfigureDownloadsCellView(cellView, v7, v11, 0, self->_clientContext);

  [v8 setSelectionStyle:0];

  return v8;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  if (v6 >= [(NSArray *)self->_downloads count])
  {
    isCancelable = 0;
  }

  else
  {
    v7 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [pathCopy row]);
    isCancelable = [v7 isCancelable];
  }

  return isCancelable;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (style == 1)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    downloads = self->_downloads;
    v9 = [pathCopy row];

    v10 = [(NSArray *)downloads objectAtIndex:v9];
    v12[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    [WeakRetained childViewController:self removeDownloads:v11];
  }
}

- (void)_reload
{
  if ([(NSArray *)self->_downloads count])
  {
    [(UITableView *)self->_tableView reloadData];
    view = [(SUUIIPhoneDownloadsViewController *)self view];
    v14 = view;
    v4 = 0;
  }

  else
  {
    if (!self->_noContentView)
    {
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SUUIClientContext *)clientContext localizedStringForKey:@"NO_CONTENT_TITLE" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"NO_CONTENT_TITLE" inBundles:0 inTable:@"Download"];
      }
      v6 = ;
      v7 = self->_clientContext;
      if (v7)
      {
        [(SUUIClientContext *)v7 localizedStringForKey:@"NO_CONTENT_MESSAGE" inTable:@"Download"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"NO_CONTENT_MESSAGE" inBundles:0 inTable:@"Download"];
      }
      v8 = ;
      v9 = objc_alloc(MEMORY[0x277D75E78]);
      v10 = [v9 initWithFrame:v6 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      noContentView = self->_noContentView;
      self->_noContentView = v10;

      v12 = self->_noContentView;
      systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
      [(_UIContentUnavailableView *)v12 setBackgroundColor:systemBackgroundColor];

      [(_UIContentUnavailableView *)self->_noContentView setMessage:v8];
    }

    [(UITableView *)self->_tableView reloadData];
    view = [(SUUIIPhoneDownloadsViewController *)self view];
    v4 = self->_noContentView;
    v14 = view;
  }

  [view setOverlayView:v4];
}

- (SUUIDownloadsChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end