@interface DownloadsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (DownloadOpenHandler)downloadOpenHandler;
- (DownloadsViewController)initWithStyle:(int64_t)style;
- (id)quickLookTransitionViewForDownload:(id)download;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path;
- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (int64_t)_tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path;
- (int64_t)maximumNumberOfRows;
- (void)_clearAllDownloads;
- (void)_dismiss;
- (void)_downloadsDidChange:(id)change;
- (void)_updateDoneButton;
- (void)revealDownload:(id)download;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DownloadsViewController

- (DownloadsViewController)initWithStyle:(int64_t)style
{
  v18.receiver = self;
  v18.super_class = DownloadsViewController;
  v3 = [(DownloadsViewController *)&v18 initWithStyle:0];
  if (v3)
  {
    mEMORY[0x277CDB7A8] = [MEMORY[0x277CDB7A8] sharedManager];
    downloadManager = v3->_downloadManager;
    v3->_downloadManager = mEMORY[0x277CDB7A8];

    downloads = [(_SFDownloadManager *)v3->_downloadManager downloads];
    v7 = [downloads mutableCopy];
    downloads = v3->_downloads;
    v3->_downloads = v7;

    navigationItem = [(DownloadsViewController *)v3 navigationItem];
    v10 = _WBSLocalizedString();
    [navigationItem setTitle:v10];

    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = _WBSLocalizedString();
    v13 = [v11 initWithTitle:v12 style:0 target:v3 action:sel__clearAllDownloads];
    [navigationItem setRightBarButtonItem:v13];

    rightBarButtonItem = [navigationItem rightBarButtonItem];
    [rightBarButtonItem setAccessibilityIdentifier:@"ClearDownloads"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__downloadsDidChange_ name:*MEMORY[0x277CDB9C0] object:0];

    v16 = v3;
  }

  return v3;
}

- (void)_clearAllDownloads
{
  downloadManager = self->_downloadManager;
  downloads = [(_SFDownloadManager *)downloadManager downloads];
  v3 = [downloads safari_filterObjectsUsingBlock:&__block_literal_global_19];
  [(_SFDownloadManager *)downloadManager removeDownloads:v3];
}

- (int64_t)maximumNumberOfRows
{
  presentingViewController = [(DownloadsViewController *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    v4 = 10;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewDidLoad];
  tableView = [(DownloadsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"DownloadCell"];
  [tableView setDragDelegate:self];
  [tableView setAccessibilityIdentifier:@"Downloads"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewWillAppear:appear];
  [(DownloadsViewController *)self _updateDoneButton];
  [(_SFDownloadManager *)self->_downloadManager didBeginViewingDownloads];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(DownloadsViewController *)&v4 viewWillDisappear:disappear];
  [(_SFDownloadManager *)self->_downloadManager didEndViewingDownloads];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(DownloadsViewController *)self _updateDoneButton];
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v4 preferredContentSize];
  v3 = 360.0;
  result.height = v2;
  result.width = v3;
  return result;
}

- (void)_updateDoneButton
{
  _isInPopoverPresentation = [(DownloadsViewController *)self _isInPopoverPresentation];
  navigationItem = [(DownloadsViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];

  if (_isInPopoverPresentation)
  {
    if (leftBarButtonItem)
    {
      [navigationItem setLeftBarButtonItem:0];
    }
  }

  else if (!leftBarButtonItem)
  {
    v5 = objc_alloc(MEMORY[0x277D751E0]);
    v6 = [v5 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x277D751E0] target:"_sf_popoverDoneButtonItem") action:{self, sel__dismiss}];
    [navigationItem setLeftBarButtonItem:v6];

    leftBarButtonItem2 = [navigationItem leftBarButtonItem];
    [leftBarButtonItem2 setAccessibilityIdentifier:@"DoneButton"];
  }
}

- (void)_dismiss
{
  presentingViewController = [(DownloadsViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_downloadsDidChange:(id)change
{
  downloads = [(_SFDownloadManager *)self->_downloadManager downloads];
  v5 = [(NSMutableArray *)self->_downloads copy];
  if ([downloads count])
  {
    tableView = [(DownloadsViewController *)self tableView];
    v7 = [downloads differenceFromArray:v5 withOptions:4];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __47__DownloadsViewController__downloadsDidChange___block_invoke;
    v18 = &unk_2781D5A50;
    v19 = v7;
    v20 = tableView;
    selfCopy = self;
    v22 = downloads;
    v8 = tableView;
    v9 = v7;
    [v8 performBatchUpdates:&v15 completion:0];
    [(DownloadsViewController *)self preferredContentSize:v15];
    v11 = v10;
    v13 = v12;
    navigationController = [(DownloadsViewController *)self navigationController];
    [navigationController setPreferredContentSize:{v11, v13}];
  }

  else
  {
    [(DownloadsViewController *)self _dismiss];
  }
}

void __47__DownloadsViewController__downloadsDidChange___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = [*(a1 + 32) insertions];
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        if ([v7 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = *(a1 + 40);
          v9 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"index"), 0}];
          v33 = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
          [v8 insertRowsAtIndexPaths:v10 withRowAnimation:100];
        }

        else
        {
          v9 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"associatedIndex"), 0}];
          v10 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"index"), 0}];
          [*(a1 + 40) moveRowAtIndexPath:v9 toIndexPath:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v4);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [*(a1 + 32) removals];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        if ([v16 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = *(a1 + 40);
          v18 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v16 inSection:{"index"), 0}];
          v31 = v18;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          [v17 deleteRowsAtIndexPaths:v19 withRowAnimation:100];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v13);
  }

  v20 = [*(a1 + 56) mutableCopy];
  v21 = *(a1 + 48);
  v22 = *(v21 + 1088);
  *(v21 + 1088) = v20;
}

- (id)quickLookTransitionViewForDownload:(id)download
{
  v4 = [(NSMutableArray *)self->_downloads indexOfObject:download];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    iconView = 0;
  }

  else
  {
    v6 = v4;
    tableView = [(DownloadsViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
    v9 = [tableView cellForRowAtIndexPath:v8];

    iconView = [v9 iconView];
  }

  return iconView;
}

- (void)revealDownload:(id)download
{
  downloadCopy = download;
  [downloadCopy reveal];
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  mimeType = [downloadCopy mimeType];
  v5 = [downloadCopy uti];

  [mEMORY[0x277D499B8] didRevealDownloadWithMIMEType:mimeType uti:v5 result:0];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"DownloadCell"];
  _isInPopoverPresentation = [(DownloadsViewController *)self _isInPopoverPresentation];
  if (_isInPopoverPresentation)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableCellPlainBackgroundColor];
  }
  v9 = ;
  [v7 setBackgroundColor:v9];

  [v7 sf_setUsesVibrantSelection:_isInPopoverPresentation];
  downloads = self->_downloads;
  v11 = [pathCopy row];

  v12 = [(NSMutableArray *)downloads objectAtIndexedSubscript:v11];
  iconCache = [(_SFDownloadManager *)self->_downloadManager iconCache];
  [v7 setIconCache:iconCache];

  [v7 setDownload:v12];
  [v7 setDelegate:self];

  return v7;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [path row]);
  v5 = [v4 state] != 1;

  return v5;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [path row]);
  downloadManager = self->_downloadManager;
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(_SFDownloadManager *)downloadManager removeDownloads:v8];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [path row]);
  v5 = [v4 state] == 4;

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  downloads = self->_downloads;
  pathCopy = path;
  viewCopy = view;
  v10 = -[NSMutableArray objectAtIndexedSubscript:](downloads, "objectAtIndexedSubscript:", [pathCopy row]);
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  WeakRetained = objc_loadWeakRetained(&self->_downloadOpenHandler);
  [WeakRetained openDownload:v10];
}

- (id)tableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [path row]);
  if ([v5 state] == 4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA88]);
    filename = [v5 filename];
    [v6 setSuggestedName:filename];

    v8 = [v5 uti];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__DownloadsViewController_tableView_itemsForBeginningDragSession_atIndexPath___block_invoke;
    v13[3] = &unk_2781D7FD8;
    v9 = v5;
    v14 = v9;
    [v6 registerFileRepresentationForTypeIdentifier:v8 fileOptions:1 visibility:0 loadHandler:v13];

    v10 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v6];
    [v10 setLocalObject:v9];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __78__DownloadsViewController_tableView_itemsForBeginningDragSession_atIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 completedFileURL:&v6];
  (*(v3 + 2))(v3, v4, v6, 0);

  return 0;
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
  [mEMORY[0x277D499B8] didStartDragWithDragContentType:7];
}

- (id)tableView:(id)view dragPreviewParametersForRowAtIndexPath:(id)path
{
  v4 = objc_alloc_init(MEMORY[0x277D75480]);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  return v4;
}

- (id)tableView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v26 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  sessionCopy = session;
  pathCopy = path;
  v12 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [pathCopy row]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  items = [sessionCopy items];
  v14 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(items);
        }

        localObject = [*(*(&v21 + 1) + 8 * i) localObject];

        if (localObject == v12)
        {

          v19 = MEMORY[0x277CBEBF8];
          goto LABEL_11;
        }
      }

      v15 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [(DownloadsViewController *)self tableView:viewCopy itemsForBeginningDragSession:sessionCopy atIndexPath:pathCopy];
LABEL_11:

  return v19;
}

- (int64_t)_tableView:(id)view dataOwnerForDragSession:(id)session atIndexPath:(id)path
{
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [path row]);
  dataOwner = [v5 dataOwner];

  return dataOwner;
}

- (DownloadOpenHandler)downloadOpenHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadOpenHandler);

  return WeakRetained;
}

@end