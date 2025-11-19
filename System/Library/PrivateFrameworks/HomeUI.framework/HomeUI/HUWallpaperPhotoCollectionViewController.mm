@interface HUWallpaperPhotoCollectionViewController
- (HUWallpaperPhotoCollectionFlowLayout)flowLayout;
- (HUWallpaperPhotoCollectionViewController)initWithTitle:(id)a3 fetchResult:(id)a4 assetCollectionSubtype:(int64_t)a5 delegate:(id)a6;
- (HUWallpaperPhotoCollectionViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)imageFutureForAsset:(id)a3 cloudAllowed:(BOOL)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUWallpaperPhotoCollectionViewController

- (HUWallpaperPhotoCollectionViewController)initWithTitle:(id)a3 fetchResult:(id)a4 assetCollectionSubtype:(int64_t)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [[HUWallpaperPhotoCollectionFlowLayout alloc] initWithAssetCollectionSubtype:a5];
  if ([v11 count] >= 0x33)
  {
    v14 = [HUWallpaperPhotoCollectionFooterView alloc];
    v15 = [(HUWallpaperPhotoCollectionFooterView *)v14 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v16 = [v11 count];
    v23 = HULocalizedStringWithFormat(@"HUWallpaperPhotoCollectionViewControllerFooterFormat", @"%lu", v17, v18, v19, v20, v21, v22, v16);
    v24 = [(HUWallpaperPhotoCollectionFooterView *)v15 label];
    [v24 setText:v23];

    [(HUWallpaperPhotoCollectionFooterView *)v15 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
    [(UICollectionViewFlowLayout *)v13 setFooterReferenceSize:?];
  }

  v30.receiver = self;
  v30.super_class = HUWallpaperPhotoCollectionViewController;
  v25 = [(HUWallpaperPhotoCollectionViewController *)&v30 initWithCollectionViewLayout:v13];
  v26 = v25;
  if (v25)
  {
    objc_storeWeak(&v25->_flowLayout, v13);
    v27 = objc_alloc_init(MEMORY[0x277CD9818]);
    imageManager = v26->_imageManager;
    v26->_imageManager = v27;

    objc_storeStrong(&v26->_assetsFetchResult, a4);
    objc_storeWeak(&v26->_delegate, v12);
    v26->_initialScrollToBottom = 1;
    v26->_assetCollectionSubtype = a5;
    [(HUWallpaperPhotoCollectionViewController *)v26 setTitle:v10];
  }

  return v26;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  [v3 unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = HUWallpaperPhotoCollectionViewController;
  [(HUWallpaperPhotoCollectionViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = HUWallpaperPhotoCollectionViewController;
  [(HUWallpaperPhotoCollectionViewController *)&v20 viewDidLoad];
  v3 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 registerClass:v4 forCellWithReuseIdentifier:v6];

  v7 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  v8 = objc_opt_class();
  v9 = *MEMORY[0x277D767D0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v7 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v11];

  v12 = [MEMORY[0x277D75348] systemBackgroundColor];
  v13 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  [v13 setBackgroundColor:v12];

  v14 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  [v14 setAlwaysBounceVertical:1];

  v15 = [(HUWallpaperPhotoCollectionViewController *)self assetCollectionSubtype];
  v16 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  v17 = v16;
  v18 = 8.0;
  if (v15 != 201)
  {
    v18 = 0.0;
  }

  [v16 setContentInset:{8.0, v18, 8.0, v18}];

  v19 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  [v19 registerChangeObserver:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUWallpaperPhotoCollectionViewController;
  [(HUWallpaperPhotoCollectionViewController *)&v5 viewWillDisappear:a3];
  v4 = [(HUWallpaperPhotoCollectionViewController *)self imageDownloadFuture];
  [v4 cancel];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = HUWallpaperPhotoCollectionViewController;
  [(HUWallpaperPhotoCollectionViewController *)&v7 viewDidLayoutSubviews];
  if ([(HUWallpaperPhotoCollectionViewController *)self initialScrollToBottom])
  {
    v3 = MEMORY[0x277CCAA70];
    v4 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
    v5 = [v3 indexPathForItem:objc_msgSend(v4 inSection:{"numberOfItemsInSection:", 0) - 1, 0}];

    v6 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
    [v6 scrollToItemAtIndexPath:v5 atScrollPosition:4 animated:0];

    [(HUWallpaperPhotoCollectionViewController *)self setInitialScrollToBottom:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(HUWallpaperPhotoCollectionViewController *)self assetsFetchResult:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  v11 = [(HUWallpaperPhotoCollectionViewController *)self assetsFetchResult];
  v12 = [v6 item];

  v13 = [v11 objectAtIndexedSubscript:v12];

  v14 = [v13 localIdentifier];
  [v10 setAssetIdentifier:v14];

  v15 = [(HUWallpaperPhotoCollectionViewController *)self flowLayout];
  [v15 itemSize];
  v17 = v16;
  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = v17 * v19;
  v21 = [(HUWallpaperPhotoCollectionViewController *)self flowLayout];
  [v21 itemSize];
  v23 = v22;
  v24 = [MEMORY[0x277D759A0] mainScreen];
  [v24 scale];
  v26 = v23 * v25;

  v27 = [(HUWallpaperPhotoCollectionViewController *)self imageManager];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __82__HUWallpaperPhotoCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke;
  v33[3] = &unk_277DC4428;
  v28 = v10;
  v34 = v28;
  v35 = v13;
  v29 = v13;
  [v27 requestImageForAsset:v29 targetSize:0 contentMode:0 options:v33 resultHandler:{v20, v26}];

  v30 = v35;
  v31 = v28;

  return v28;
}

void __82__HUWallpaperPhotoCollectionViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) assetIdentifier];
  v4 = [*(a1 + 40) localIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [*(a1 + 32) setImage:v6];
  }
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a4;
  v9 = *MEMORY[0x277D767D0];
  v10 = a5;
  v11 = a3;
  if (([v8 isEqualToString:v9] & 1) == 0)
  {
    NSLog(&cfstr_AskedForAViewF.isa, v8);
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v13 forIndexPath:v10];

  v15 = [(HUWallpaperPhotoCollectionViewController *)self assetsFetchResult];
  v16 = [v15 count];
  v23 = HULocalizedStringWithFormat(@"HUWallpaperPhotoCollectionCount", @"%ld", v17, v18, v19, v20, v21, v22, v16);
  v24 = [v14 label];
  [v24 setText:v23];

  return v14;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectItemAtIndexPath:v7 animated:1];
  [v6 setAllowsSelection:0];
  objc_opt_class();
  v8 = [(HUWallpaperPhotoCollectionViewController *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v7];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [(HUWallpaperPhotoCollectionViewController *)self assetsFetchResult];
  v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

  objc_initWeak(location, self);
  v14 = [(HUWallpaperPhotoCollectionViewController *)self imageFutureForAsset:v13 cloudAllowed:0];
  v15 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v14 reschedule:v15];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
  v33[3] = &unk_277DC4450;
  objc_copyWeak(&v36, location);
  v17 = v11;
  v34 = v17;
  v18 = v13;
  v35 = v18;
  v19 = [v16 recover:v33];
  [(HUWallpaperPhotoCollectionViewController *)self setImageDownloadFuture:v19];

  v20 = [(HUWallpaperPhotoCollectionViewController *)self imageDownloadFuture];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_64;
  v30[3] = &unk_277DC4478;
  v21 = v6;
  v31 = v21;
  v22 = v17;
  v32 = v22;
  v23 = [v20 addCompletionBlock:v30];

  v24 = [(HUWallpaperPhotoCollectionViewController *)self imageDownloadFuture];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v27[3] = &unk_277DC44A0;
  objc_copyWeak(&v29, location);
  v25 = v18;
  v28 = v25;
  v26 = [v24 addSuccessBlock:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v36);
  objc_destroyWeak(location);
}

id __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD9C10]];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [*(a1 + 32) setBusy:1];
    v8 = [WeakRetained imageFutureForAsset:*(a1 + 40) cloudAllowed:1];
    v9 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v10 = [v8 reschedule:v9];
  }

  else
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = [v3 userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "Failed to load image for asset %@ with error %@", &v16, 0x16u);
    }

    v10 = [MEMORY[0x277D2C900] futureWithError:v3];
  }

  return v10;
}

uint64_t __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_64(uint64_t a1)
{
  [*(a1 + 32) setAllowsSelection:1];
  v2 = *(a1 + 40);

  return [v2 setBusy:0];
}

void __84__HUWallpaperPhotoCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_alloc(MEMORY[0x277D14D10]);
  v6 = [*(a1 + 32) localIdentifier];
  v7 = [v5 initWithType:1 assetIdentifier:v6 cropInfo:0];

  v8 = [MEMORY[0x277D14D18] sharedInstance];
  v10 = [v8 processOriginalImageFromWallpaper:v7 originalImage:v3];

  v9 = [WeakRetained delegate];
  [v9 photoCollectionController:WeakRetained didChooseWallpaper:v7 image:v10];
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__HUWallpaperPhotoCollectionViewController_photoLibraryDidChange___block_invoke;
  v6[3] = &unk_277DB7558;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __66__HUWallpaperPhotoCollectionViewController_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) assetsFetchResult];
  v7 = [v2 changeDetailsForFetchResult:v3];

  v4 = v7;
  if (v7)
  {
    v5 = [v7 fetchResultAfterChanges];
    [*(a1 + 40) setAssetsFetchResult:v5];

    v6 = [*(a1 + 40) collectionView];
    [v6 reloadData];

    v4 = v7;
  }
}

- (id)imageFutureForAsset:(id)a3 cloudAllowed:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CD98A0];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setDeliveryMode:1];
  [v8 setNetworkAccessAllowed:v4];
  v9 = objc_alloc_init(MEMORY[0x277D2C900]);
  v10 = [(HUWallpaperPhotoCollectionViewController *)self imageManager];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__HUWallpaperPhotoCollectionViewController_imageFutureForAsset_cloudAllowed___block_invoke;
  v13[3] = &unk_277DBBBA0;
  v11 = v9;
  v14 = v11;
  [v10 requestImageForAsset:v7 targetSize:0 contentMode:v8 options:v13 resultHandler:{*MEMORY[0x277CD9C08], *(MEMORY[0x277CD9C08] + 8)}];

  return v11;
}

void __77__HUWallpaperPhotoCollectionViewController_imageFutureForAsset_cloudAllowed___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v13 = v5;
  if (a2)
  {
    [*(a1 + 32) finishWithResult:a2];
  }

  else
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] na_cancelledError];
    }

    v9 = v8;

    v10 = MEMORY[0x277CCA9B8];
    v11 = [v9 domain];
    v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v9 userInfo:{"code"), v13}];

    [*(a1 + 32) finishWithError:v12];
  }
}

- (HUWallpaperPhotoCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUWallpaperPhotoCollectionFlowLayout)flowLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_flowLayout);

  return WeakRetained;
}

@end