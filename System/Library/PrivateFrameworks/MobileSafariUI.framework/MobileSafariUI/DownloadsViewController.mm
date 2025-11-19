@interface DownloadsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)preferredContentSize;
- (DownloadOpenHandler)downloadOpenHandler;
- (DownloadsViewController)initWithStyle:(int64_t)a3;
- (id)quickLookTransitionViewForDownload:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)_tableView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5;
- (int64_t)maximumNumberOfRows;
- (void)_clearAllDownloads;
- (void)_dismiss;
- (void)_downloadsDidChange:(id)a3;
- (void)_updateDoneButton;
- (void)revealDownload:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DownloadsViewController

- (DownloadsViewController)initWithStyle:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = DownloadsViewController;
  v3 = [(DownloadsViewController *)&v18 initWithStyle:0];
  if (v3)
  {
    v4 = [MEMORY[0x277CDB7A8] sharedManager];
    downloadManager = v3->_downloadManager;
    v3->_downloadManager = v4;

    v6 = [(_SFDownloadManager *)v3->_downloadManager downloads];
    v7 = [v6 mutableCopy];
    downloads = v3->_downloads;
    v3->_downloads = v7;

    v9 = [(DownloadsViewController *)v3 navigationItem];
    v10 = _WBSLocalizedString();
    [v9 setTitle:v10];

    v11 = objc_alloc(MEMORY[0x277D751E0]);
    v12 = _WBSLocalizedString();
    v13 = [v11 initWithTitle:v12 style:0 target:v3 action:sel__clearAllDownloads];
    [v9 setRightBarButtonItem:v13];

    v14 = [v9 rightBarButtonItem];
    [v14 setAccessibilityIdentifier:@"ClearDownloads"];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v3 selector:sel__downloadsDidChange_ name:*MEMORY[0x277CDB9C0] object:0];

    v16 = v3;
  }

  return v3;
}

- (void)_clearAllDownloads
{
  downloadManager = self->_downloadManager;
  v4 = [(_SFDownloadManager *)downloadManager downloads];
  v3 = [v4 safari_filterObjectsUsingBlock:&__block_literal_global_19];
  [(_SFDownloadManager *)downloadManager removeDownloads:v3];
}

- (int64_t)maximumNumberOfRows
{
  v2 = [(DownloadsViewController *)self presentingViewController];
  v3 = [v2 traitCollection];
  if ([v3 horizontalSizeClass] == 2)
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
  v3 = [(DownloadsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"DownloadCell"];
  [v3 setDragDelegate:self];
  [v3 setAccessibilityIdentifier:@"Downloads"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v4 viewWillAppear:a3];
  [(DownloadsViewController *)self _updateDoneButton];
  [(_SFDownloadManager *)self->_downloadManager didBeginViewingDownloads];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = DownloadsViewController;
  [(DownloadsViewController *)&v4 viewWillDisappear:a3];
  [(_SFDownloadManager *)self->_downloadManager didEndViewingDownloads];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = DownloadsViewController;
  [(SFPopoverSizingTableViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
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
  v3 = [(DownloadsViewController *)self _isInPopoverPresentation];
  v8 = [(DownloadsViewController *)self navigationItem];
  v4 = [v8 leftBarButtonItem];

  if (v3)
  {
    if (v4)
    {
      [v8 setLeftBarButtonItem:0];
    }
  }

  else if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277D751E0]);
    v6 = [v5 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x277D751E0] target:"_sf_popoverDoneButtonItem") action:{self, sel__dismiss}];
    [v8 setLeftBarButtonItem:v6];

    v7 = [v8 leftBarButtonItem];
    [v7 setAccessibilityIdentifier:@"DoneButton"];
  }
}

- (void)_dismiss
{
  v2 = [(DownloadsViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_downloadsDidChange:(id)a3
{
  v4 = [(_SFDownloadManager *)self->_downloadManager downloads];
  v5 = [(NSMutableArray *)self->_downloads copy];
  if ([v4 count])
  {
    v6 = [(DownloadsViewController *)self tableView];
    v7 = [v4 differenceFromArray:v5 withOptions:4];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __47__DownloadsViewController__downloadsDidChange___block_invoke;
    v18 = &unk_2781D5A50;
    v19 = v7;
    v20 = v6;
    v21 = self;
    v22 = v4;
    v8 = v6;
    v9 = v7;
    [v8 performBatchUpdates:&v15 completion:0];
    [(DownloadsViewController *)self preferredContentSize:v15];
    v11 = v10;
    v13 = v12;
    v14 = [(DownloadsViewController *)self navigationController];
    [v14 setPreferredContentSize:{v11, v13}];
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

- (id)quickLookTransitionViewForDownload:(id)a3
{
  v4 = [(NSMutableArray *)self->_downloads indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(DownloadsViewController *)self tableView];
    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v6 inSection:0];
    v9 = [v7 cellForRowAtIndexPath:v8];

    v5 = [v9 iconView];
  }

  return v5;
}

- (void)revealDownload:(id)a3
{
  v3 = a3;
  [v3 reveal];
  v6 = [MEMORY[0x277D499B8] sharedLogger];
  v4 = [v3 mimeType];
  v5 = [v3 uti];

  [v6 didRevealDownloadWithMIMEType:v4 uti:v5 result:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"DownloadCell"];
  v8 = [(DownloadsViewController *)self _isInPopoverPresentation];
  if (v8)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [MEMORY[0x277D75348] tableCellPlainBackgroundColor];
  }
  v9 = ;
  [v7 setBackgroundColor:v9];

  [v7 sf_setUsesVibrantSelection:v8];
  downloads = self->_downloads;
  v11 = [v6 row];

  v12 = [(NSMutableArray *)downloads objectAtIndexedSubscript:v11];
  v13 = [(_SFDownloadManager *)self->_downloadManager iconCache];
  [v7 setIconCache:v13];

  [v7 setDownload:v12];
  [v7 setDelegate:self];

  return v7;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v4 state] != 1;

  return v5;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [a5 row]);
  downloadManager = self->_downloadManager;
  v9[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [(_SFDownloadManager *)downloadManager removeDownloads:v8];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [a4 row]);
  v5 = [v4 state] == 4;

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  downloads = self->_downloads;
  v7 = a4;
  v8 = a3;
  v10 = -[NSMutableArray objectAtIndexedSubscript:](downloads, "objectAtIndexedSubscript:", [v7 row]);
  [v8 deselectRowAtIndexPath:v7 animated:1];

  WeakRetained = objc_loadWeakRetained(&self->_downloadOpenHandler);
  [WeakRetained openDownload:v10];
}

- (id)tableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [a5 row]);
  if ([v5 state] == 4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA88]);
    v7 = [v5 filename];
    [v6 setSuggestedName:v7];

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

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v4 = [MEMORY[0x277D499B8] sharedLogger];
  [v4 didStartDragWithDragContentType:7];
}

- (id)tableView:(id)a3 dragPreviewParametersForRowAtIndexPath:(id)a4
{
  v4 = objc_alloc_init(MEMORY[0x277D75480]);
  v5 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

- (id)tableView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [v11 row]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [v10 items];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * i) localObject];

        if (v18 == v12)
        {

          v19 = MEMORY[0x277CBEBF8];
          goto LABEL_11;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [(DownloadsViewController *)self tableView:v9 itemsForBeginningDragSession:v10 atIndexPath:v11];
LABEL_11:

  return v19;
}

- (int64_t)_tableView:(id)a3 dataOwnerForDragSession:(id)a4 atIndexPath:(id)a5
{
  v5 = -[NSMutableArray objectAtIndexedSubscript:](self->_downloads, "objectAtIndexedSubscript:", [a5 row]);
  v6 = [v5 dataOwner];

  return v6;
}

- (DownloadOpenHandler)downloadOpenHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadOpenHandler);

  return WeakRetained;
}

@end