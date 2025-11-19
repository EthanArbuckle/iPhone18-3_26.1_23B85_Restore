@interface SUUIDownloadsViewController
+ (int64_t)_sizeClassForSize:(CGSize)a3;
- (SUUIDownloadsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewController:(id)a3 artworkForDownload:(id)a4;
- (void)_reloadBadge;
- (void)_reloadView;
- (void)_reloadViewControllerWithSize:(CGSize)a3;
- (void)_setArtwork:(id)a3 forURLString:(id)a4;
- (void)childViewController:(id)a3 performActionForDownload:(id)a4;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4;
- (void)downloadManagerDownloadsDidChange:(id)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation SUUIDownloadsViewController

- (void)_reloadBadge
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SUUIDownloadsViewController__reloadBadge__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__SUUIDownloadsViewController__reloadBadge__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1072) downloads];
  [*(a1 + 32) setDownloads:v2];

  v3 = [*(a1 + 32) downloads];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v5 setNumberStyle:1];
    v6 = MEMORY[0x277CCABB0];
    v7 = [*(a1 + 32) downloads];
    v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v9 = [v5 stringFromNumber:v8];
  }

  else
  {
    v9 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SUUIDownloadsViewController__reloadBadge__block_invoke_2;
  v11[3] = &unk_2798F5AF8;
  v11[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __43__SUUIDownloadsViewController__reloadBadge__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBarItem];
  [v2 setBadgeValue:*(a1 + 40)];
}

- (SUUIDownloadsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v36[5] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = SUUIDownloadsViewController;
  v4 = [(SUUIDownloadsViewController *)&v34 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D69AC8]);
    v6 = [MEMORY[0x277D69AB8] ITunesDownloadKinds];
    [v5 setDownloadKinds:v6];

    v7 = *MEMORY[0x277D69E80];
    v36[0] = *MEMORY[0x277D69E78];
    v36[1] = v7;
    v8 = *MEMORY[0x277D69E90];
    v36[2] = *MEMORY[0x277D69E88];
    v36[3] = v8;
    v36[4] = *MEMORY[0x277D69E98];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
    [v5 setPrefetchedDownloadExternalProperties:v9];

    v10 = *MEMORY[0x277D69FA0];
    v35[0] = *MEMORY[0x277D69F70];
    v35[1] = v10;
    v11 = *MEMORY[0x277D69FD8];
    v35[2] = *MEMORY[0x277D69FC8];
    v35[3] = v11;
    v12 = *MEMORY[0x277D6A0E0];
    v35[4] = *MEMORY[0x277D6A0D0];
    v35[5] = v12;
    v13 = *MEMORY[0x277D6A068];
    v35[6] = *MEMORY[0x277D69F90];
    v35[7] = v13;
    v14 = *MEMORY[0x277D6A0B8];
    v35[8] = *MEMORY[0x277D69FE8];
    v35[9] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:10];
    [v5 setPrefetchedDownloadProperties:v15];

    v16 = [objc_alloc(MEMORY[0x277D69AB8]) initWithManagerOptions:v5];
    downloadManager = v4->_downloadManager;
    v4->_downloadManager = v16;

    [(SSDownloadManager *)v4->_downloadManager addObserver:v4];
    [(SUUIDownloadsViewController *)v4 setAutomaticallyAdjustsScrollViewInsets:0];
    v18 = +[(SSVURLDataConsumer *)SUUIImageDataConsumer];
    consumer = v4->_consumer;
    v4->_consumer = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    imageOperations = v4->_imageOperations;
    v4->_imageOperations = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEA78]);
    images = v4->_images;
    v4->_images = v22;

    v24 = objc_alloc_init(MEMORY[0x277D755B8]);
    nullImage = v4->_nullImage;
    v4->_nullImage = v24;

    objc_initWeak(&location, v4);
    v26 = dispatch_time(0, 60000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SUUIDownloadsViewController_initWithNibName_bundle___block_invoke;
    block[3] = &unk_2798F67A0;
    objc_copyWeak(&v32, &location);
    v27 = MEMORY[0x277D85CD0];
    dispatch_after(v26, MEMORY[0x277D85CD0], block);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __54__SUUIDownloadsViewController_initWithNibName_bundle___block_invoke_2;
    v29[3] = &unk_2798F5BE8;
    v30 = v4;
    dispatch_async(v27, v29);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __54__SUUIDownloadsViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadManagerFromServer];
}

- (void)dealloc
{
  [(SSDownloadManager *)self->_downloadManager removeObserver:self];
  v3.receiver = self;
  v3.super_class = SUUIDownloadsViewController;
  [(SUUIViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(SUUIDownloadsViewController *)self setView:v3];
  [(SUUIDownloadsViewController *)self _reloadView];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SUUIDownloadsViewController *)self view];
  [v3 frame];
  [(SUUIDownloadsViewController *)self _reloadViewControllerWithSize:v4, v5];

  v6.receiver = self;
  v6.super_class = SUUIDownloadsViewController;
  [(SUUIDownloadsViewController *)&v6 viewDidLayoutSubviews];
}

- (void)childViewController:(id)a3 performActionForDownload:(id)a4
{
  v8 = a4;
  v4 = [v8 valueForProperty:*MEMORY[0x277D69FC8]];
  v5 = [v8 valueForProperty:*MEMORY[0x277D69FA0]];
  if ([v5 BOOLValue])
  {
    v6 = [v4 isEqual:*MEMORY[0x277D69F30]];
  }

  else
  {
    v6 = 0;
  }

  if (([v4 isEqualToString:*MEMORY[0x277D69F40]] & 1) == 0)
  {
    v7 = [v4 isEqualToString:*MEMORY[0x277D69F60]];
    if ((v6 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_8:
    [v8 pause];
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_10:
  [v8 resume];
LABEL_11:
}

- (id)childViewController:(id)a3 artworkForDownload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForProperty:*MEMORY[0x277D6A0D0]];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [(NSCache *)self->_images objectForKey:v8];
  v10 = v9;
  if (v9 == self->_nullImage)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v11 = [(NSMutableDictionary *)self->_imageOperations objectForKey:v8];

  if (!v11)
  {
    v10 = [MEMORY[0x277CBEBC0] URLWithString:v8];
    objc_initWeak(&location, self);
    v12 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v10];
    [v12 setDataConsumer:self->_consumer];
    [v12 setITunesStoreRequest:0];
    [v12 setRecordsMetrics:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__SUUIDownloadsViewController_childViewController_artworkForDownload___block_invoke;
    v16[3] = &unk_2798F7460;
    objc_copyWeak(&v18, &location);
    v13 = v8;
    v17 = v13;
    [v12 setOutputBlock:v16];
    [(NSMutableDictionary *)self->_imageOperations setObject:v12 forKey:v13];
    v14 = [(SUUIViewController *)self operationQueue];
    [v14 addOperation:v12];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
LABEL_6:
  }

LABEL_7:
  v10 = 0;
LABEL_8:

  return v10;
}

void __70__SUUIDownloadsViewController_childViewController_artworkForDownload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SUUIDownloadsViewController_childViewController_artworkForDownload___block_invoke_2;
  block[3] = &unk_2798F6530;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

void __70__SUUIDownloadsViewController_childViewController_artworkForDownload___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setArtwork:*(a1 + 32) forURLString:*(a1 + 40)];
}

- (void)downloadManager:(id)a3 downloadStatesDidChange:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SUUIDownloadsViewController_downloadManager_downloadStatesDidChange___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __71__SUUIDownloadsViewController_downloadManager_downloadStatesDidChange___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB58] indexSet];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [*(a1 + 40) downloads];
        v10 = [v9 indexOfObject:v8];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v2 addIndex:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 40) + 1104) reloadDownloadsAtIndexes:v2];
  [*(*(a1 + 40) + 1096) reloadDownloadsAtIndexes:v2];
}

- (void)downloadManagerDownloadsDidChange:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUUIDownloadsViewController_downloadManagerDownloadsDidChange___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__SUUIDownloadsViewController_downloadManagerDownloadsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [v1 view];
  [v4 frame];
  [v1 _reloadViewControllerWithSize:{v2, v3}];
}

- (void)_reloadViewControllerWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SUUIDownloadsViewController *)self _reloadBadge];
  v6 = [objc_opt_class() _sizeClassForSize:{width, height}];
  if (v6 == 2)
  {
    iphoneViewController = self->_iphoneViewController;
    if (iphoneViewController)
    {
      v16 = [(SUUIIPhoneDownloadsViewController *)iphoneViewController view];
      [v16 removeFromSuperview];

      [(SUUIIPhoneDownloadsViewController *)self->_iphoneViewController removeFromParentViewController];
      [(SUUIIPhoneDownloadsViewController *)self->_iphoneViewController setDelegate:0];
      v17 = self->_iphoneViewController;
      self->_iphoneViewController = 0;

      v18 = [(SUUIDownloadsViewController *)self navigationItem];
      [v18 setLeftBarButtonItems:0];

      v19 = [(SUUIDownloadsViewController *)self navigationItem];
      [v19 setRightBarButtonItems:0];
    }

    p_ipadViewController = &self->_ipadViewController;
    ipadViewController = self->_ipadViewController;
    if (!ipadViewController)
    {
      v14 = off_2798F3ED0;
      goto LABEL_11;
    }
  }

  else
  {
    if (v6 == 1)
    {
      v7 = self->_ipadViewController;
      if (v7)
      {
        v8 = [(SUUIIPadDownloadsViewController *)v7 view];
        [v8 removeFromSuperview];

        [(SUUIIPadDownloadsViewController *)self->_ipadViewController removeFromParentViewController];
        [(SUUIIPadDownloadsViewController *)self->_ipadViewController setDelegate:0];
        v9 = self->_ipadViewController;
        self->_ipadViewController = 0;

        v10 = [(SUUIDownloadsViewController *)self navigationItem];
        [v10 setLeftBarButtonItems:0];

        v11 = [(SUUIDownloadsViewController *)self navigationItem];
        [v11 setRightBarButtonItems:0];
      }
    }

    p_ipadViewController = &self->_iphoneViewController;
    ipadViewController = self->_iphoneViewController;
    if (!ipadViewController)
    {
      v14 = off_2798F3EE8;
LABEL_11:
      v20 = objc_alloc_init(*v14);
      v21 = *p_ipadViewController;
      *p_ipadViewController = v20;

      v22 = *p_ipadViewController;
      v23 = [(SUUIDownloadsViewController *)self navigationItem];
      [v22 _setExistingNavigationItem:v23];

      [*p_ipadViewController setDelegate:self];
      v24 = *p_ipadViewController;
      v25 = [(SUUIViewController *)self clientContext];
      [v24 setClientContext:v25];

      [(SUUIDownloadsViewController *)self addChildViewController:*p_ipadViewController];
      ipadViewController = *p_ipadViewController;
    }
  }

  v26 = [(SUUIDownloadsViewController *)self downloads];
  [ipadViewController setDownloads:v26];

  [(SUUIDownloadsViewController *)self _reloadView];
}

- (void)_reloadView
{
  if ([(SUUIDownloadsViewController *)self isViewLoaded])
  {
    v5 = [(SUUIDownloadsViewController *)self view];
    ipadViewController = self->_ipadViewController;
    if (!ipadViewController)
    {
      ipadViewController = self->_iphoneViewController;
    }

    v4 = [ipadViewController view];
    [v5 frame];
    [v4 setFrame:?];
    [v4 setAutoresizingMask:18];
    [v5 addSubview:v4];
  }
}

- (void)_setArtwork:(id)a3 forURLString:(id)a4
{
  v18 = a3;
  v6 = a4;
  [(NSMutableDictionary *)self->_imageOperations removeObjectForKey:v6];
  nullImage = v18;
  if (!v18)
  {
    nullImage = self->_nullImage;
  }

  [(NSCache *)self->_images setObject:nullImage forKey:v6];
  v8 = [MEMORY[0x277CCAB58] indexSet];
  v9 = [(SUUIDownloadsViewController *)self downloads];
  v10 = [v9 count];

  if (v10)
  {
    v11 = 0;
    v12 = *MEMORY[0x277D6A0D0];
    do
    {
      v13 = [(SUUIDownloadsViewController *)self downloads];
      v14 = [v13 objectAtIndex:v11];
      v15 = [v14 valueForProperty:v12];

      if ([v15 isEqualToString:v6])
      {
        [v8 addIndex:v11];
      }

      ++v11;
      v16 = [(SUUIDownloadsViewController *)self downloads];
      v17 = [v16 count];
    }

    while (v11 < v17);
  }

  [(SUUIIPadDownloadsViewController *)self->_ipadViewController reloadDownloadsAtIndexes:v8];
  [(SUUIIPhoneDownloadsViewController *)self->_iphoneViewController reloadDownloadsAtIndexes:v8];
}

+ (int64_t)_sizeClassForSize:(CGSize)a3
{
  if (a3.width <= 600.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end