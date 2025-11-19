@interface HUWallpaperPickerViewController
+ (void)presentSecurePickerFromNavigationController:(id)a3 collectionType:(int64_t)a4 withTitle:(id)a5 delegate:(id)a6;
- (HUWallpaperPickerViewController)initWithCollectionType:(int64_t)a3 namedSectionTitle:(id)a4 delegate:(id)a5;
- (HUWallpaperPickerViewController)initWithStyle:(int64_t)a3;
- (HUWallpaperPickerViewControllerDelegate)delegate;
- (id)currentSectionIdentifiers;
- (id)identifierForSection:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)contentSizeCategoryDidChange;
- (void)loadAssetCollections;
- (void)namedWallpaperController:(id)a3 didChooseWallpaper:(id)a4 image:(id)a5;
- (void)photoCollectionController:(id)a3 didChooseWallpaper:(id)a4 image:(id)a5;
- (void)photoLibraryDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5;
@end

@implementation HUWallpaperPickerViewController

+ (void)presentSecurePickerFromNavigationController:(id)a3 collectionType:(int64_t)a4 withTitle:(id)a5 delegate:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (_os_feature_enabled_impl())
  {
    objc_initWeak(&location, v9);
    v12 = [MEMORY[0x277CEBE78] applicationWithBundleIdentifier:@"com.apple.mobileslideshow"];
    v13 = [MEMORY[0x277CEBEA0] sharedGuard];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __113__HUWallpaperPickerViewController_presentSecurePickerFromNavigationController_collectionType_withTitle_delegate___block_invoke;
    v14[3] = &unk_277DBBB78;
    objc_copyWeak(v17, &location);
    v17[1] = a4;
    v15 = v10;
    v16 = v11;
    [v13 initiateAuthenticationWithShieldingForSubject:v12 completion:v14];

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }
}

void __113__HUWallpaperPickerViewController_presentSecurePickerFromNavigationController_collectionType_withTitle_delegate___block_invoke(id *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __113__HUWallpaperPickerViewController_presentSecurePickerFromNavigationController_collectionType_withTitle_delegate___block_invoke_2;
    v8[3] = &unk_277DBBB50;
    objc_copyWeak(v11, a1 + 6);
    v11[1] = a1[7];
    v9 = a1[4];
    v10 = a1[5];
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(v11);
  }

  else if (v5)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Error presenting Auth UI in Home app for photo picker usage: %@", buf, 0xCu);
    }
  }
}

void __113__HUWallpaperPickerViewController_presentSecurePickerFromNavigationController_collectionType_withTitle_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [[HUWallpaperPickerViewController alloc] initWithCollectionType:*(a1 + 56) namedSectionTitle:*(a1 + 32) delegate:*(a1 + 40)];
  [WeakRetained pushViewController:v2 animated:1];
}

- (HUWallpaperPickerViewController)initWithCollectionType:(int64_t)a3 namedSectionTitle:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HUWallpaperPickerViewController;
  v11 = [(HUTableViewController *)&v16 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    v11->_collectionType = a3;
    objc_storeStrong(&v11->_namedSectionTitle, a4);
    v13 = objc_alloc_init(MEMORY[0x277CD9818]);
    imageManager = v12->_imageManager;
    v12->_imageManager = v13;

    objc_storeWeak(&v12->_delegate, v10);
  }

  return v12;
}

- (HUWallpaperPickerViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithCollectionType_namedSectionTitle_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUWallpaperPickerViewController.m" lineNumber:97 description:{@"%s is unavailable; use %@ instead", "-[HUWallpaperPickerViewController initWithStyle:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HUWallpaperPickerViewController;
  [(HUTableViewController *)&v19 viewDidLoad];
  v3 = _HULocalizedStringWithDefaultValue(@"HUWallpaperPickerTitle", @"HUWallpaperPickerTitle", 1);
  [(HUWallpaperPickerViewController *)self setTitle:v3];

  v4 = [(HUWallpaperPickerViewController *)self tableView];
  [v4 setSeparatorStyle:0];

  v5 = [(HUWallpaperPickerViewController *)self tableView];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 registerClass:v6 forCellReuseIdentifier:v8];

  v9 = [(HUWallpaperPickerViewController *)self tableView];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v9 registerClass:v10 forCellReuseIdentifier:v12];

  v13 = [(HUWallpaperPickerViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v16];

  v17 = [MEMORY[0x277CD9948] sharedPhotoLibrary];
  [v17 registerChangeObserver:self];

  [(HUWallpaperPickerViewController *)self loadAssetCollections];
  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];
}

- (void)contentSizeCategoryDidChange
{
  v2 = [(HUWallpaperPickerViewController *)self tableView];
  [v2 setNeedsLayout];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(HUWallpaperPickerViewController *)self currentSectionIdentifiers];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HUWallpaperPickerViewController *)self identifierForSection:a4];
  if ([v5 isEqualToString:@"HUWallpaperPickerNamedSectionIdentifier"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(HUWallpaperPickerViewController *)self assetCollections];
    v6 = [v7 count];
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v50[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = -[HUWallpaperPickerViewController identifierForSection:](self, "identifierForSection:", [v6 section]);
  if ([v8 isEqualToString:@"HUWallpaperPickerNamedSectionIdentifier"])
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v7 dequeueReusableCellWithIdentifier:v10 forIndexPath:v6];

    v12 = [(HUWallpaperPickerViewController *)self namedWallpaperController];

    if (!v12)
    {
      v13 = [HUNamedWallpaperCollectionViewController alloc];
      v14 = [(HUWallpaperPickerViewController *)self collectionType];
      v15 = [(HUWallpaperPickerViewController *)self tableView];
      [v15 separatorInset];
      v17 = [(HUNamedWallpaperCollectionViewController *)v13 initWithCollectionType:v14 horizontalInset:self delegate:v16];
      [(HUWallpaperPickerViewController *)self setNamedWallpaperController:v17];
    }

    v18 = [(HUWallpaperPickerViewController *)self namedWallpaperController];
    [v11 setViewController:v18];
  }

  else
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v11 = [v7 dequeueReusableCellWithIdentifier:v20 forIndexPath:v6];

    v21 = [(HUWallpaperPickerViewController *)self assetCollections];
    v22 = [v6 row];

    v23 = [v21 objectAtIndexedSubscript:v22];

    v24 = [(HUWallpaperPickerViewController *)self assetCollectionsToAssetFetchResults];
    v25 = [v24 objectForKeyedSubscript:v23];

    if (!v25)
    {
      NSLog(&cfstr_UnableToLocate.isa, v23);
    }

    v26 = [v23 localizedTitle];
    [v11 setTitleText:v26];

    [v11 setAccessoryType:1];
    [v11 setImageSize:{70.0, 70.0}];
    v27 = MEMORY[0x277CCACA8];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    v29 = [v27 localizedStringWithFormat:@"%@", v28];
    [v11 setDescriptionText:v29];

    v30 = objc_alloc_init(MEMORY[0x277CD9880]);
    v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v50[0] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    [v30 setSortDescriptors:v32];

    v33 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:v23 options:v30];
    if ([v33 count])
    {
      [v11 imageSize];
      v35 = v34;
      v36 = [MEMORY[0x277D759A0] mainScreen];
      [v36 scale];
      v38 = v35 * v37;
      [v11 imageSize];
      v40 = v39;
      v41 = [MEMORY[0x277D759A0] mainScreen];
      [v41 scale];
      v43 = v40 * v42;

      v44 = [(HUWallpaperPickerViewController *)self imageManager];
      v45 = [v33 firstObject];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __67__HUWallpaperPickerViewController_tableView_cellForRowAtIndexPath___block_invoke;
      v48[3] = &unk_277DBBBA0;
      v49 = v11;
      [v44 requestImageForAsset:v45 targetSize:1 contentMode:0 options:v48 resultHandler:{v38, v43}];

      v46 = v49;
    }

    else
    {
      v46 = HUImageNamed(@"emptyPhotoAlbum");
      [v11 setImage:v46];
    }
  }

  return v11;
}

void __67__HUWallpaperPickerViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__HUWallpaperPickerViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  v5[3] = &unk_277DB7558;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([+[HUWallpaperPickerViewController superclass](HUWallpaperPickerViewController "superclass")])
  {
    v18.receiver = self;
    v18.super_class = HUWallpaperPickerViewController;
    [(HUWallpaperPickerViewController *)&v18 tableView:v7 didSelectRowAtIndexPath:v8];
  }

  [v7 deselectRowAtIndexPath:v8 animated:1];
  v9 = -[HUWallpaperPickerViewController identifierForSection:](self, "identifierForSection:", [v8 section]);
  if ([v9 isEqualToString:@"HUWallpaperPickerPhotosSectionIdentifier"])
  {
    v10 = [(HUWallpaperPickerViewController *)self assetCollections];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];

    v12 = [(HUWallpaperPickerViewController *)self assetCollectionsToAssetFetchResults];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (v13)
    {
      v14 = [HUWallpaperPhotoCollectionViewController alloc];
      v15 = [v11 localizedTitle];
      v16 = -[HUWallpaperPhotoCollectionViewController initWithTitle:fetchResult:assetCollectionSubtype:delegate:](v14, "initWithTitle:fetchResult:assetCollectionSubtype:delegate:", v15, v13, [v11 assetCollectionSubtype], self);

      v17 = [(HUWallpaperPickerViewController *)self navigationController];
      [v17 pushViewController:v16 animated:1];
    }

    else
    {
      NSLog(&cfstr_UnableToLocate.isa, v11);
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = MEMORY[0x277D756E0];
  v7 = a3;
  v8 = [v6 groupedHeaderConfiguration];
  v9 = [(HUWallpaperPickerViewController *)self identifierForSection:a4];
  if ([v9 isEqualToString:@"HUWallpaperPickerNamedSectionIdentifier"])
  {
    v10 = [(HUWallpaperPickerViewController *)self namedSectionTitle];
LABEL_5:
    v11 = v10;
    [v8 setText:v10];
    goto LABEL_7;
  }

  if ([v9 isEqualToString:@"HUWallpaperPickerPhotosSectionIdentifier"])
  {
    v10 = _HULocalizedStringWithDefaultValue(@"HUWallpaperPickerPhotosSection", @"HUWallpaperPickerPhotosSection", 1);
    goto LABEL_5;
  }

  v11 = v8;
  v8 = 0;
LABEL_7:

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:v13];

  [v14 setContentConfiguration:v8];

  return v14;
}

- (void)photoLibraryDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HUWallpaperPickerViewController_photoLibraryDidChange___block_invoke;
  v6[3] = &unk_277DB7558;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __57__HUWallpaperPickerViewController_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(a1 + 32) assetCollections];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HUWallpaperPickerViewController_photoLibraryDidChange___block_invoke_2;
  v8[3] = &unk_277DBBBC8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v6 = v2;
  v11 = v6;
  [v3 enumerateObjectsUsingBlock:v8];

  if ([v6 count])
  {
    v7 = [*(a1 + 32) tableView];
    [v7 reloadRowsAtIndexPaths:v6 withRowAnimation:100];
  }
}

void __57__HUWallpaperPickerViewController_photoLibraryDidChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) assetCollectionsToAssetFetchResults];
  v7 = [v6 objectForKeyedSubscript:v15];
  v8 = [v5 changeDetailsForFetchResult:v7];

  if (v8)
  {
    v9 = [v8 fetchResultAfterChanges];
    v10 = [*(a1 + 40) assetCollectionsToAssetFetchResults];
    [v10 setObject:v9 forKeyedSubscript:v15];

    v11 = [*(a1 + 40) currentSectionIdentifiers];
    v12 = [v11 indexOfObject:@"HUWallpaperPickerPhotosSectionIdentifier"];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      NSLog(&cfstr_ReceivedPhotoC.isa);
    }

    v13 = *(a1 + 48);
    v14 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:v12];
    [v13 addObject:v14];
  }
}

- (void)namedWallpaperController:(id)a3 didChooseWallpaper:(id)a4 image:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v8 image:v7 delegate:self];

  [(HUWallpaperEditingViewController *)v9 setModalPresentationStyle:0];
  [(HUWallpaperPickerViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)photoCollectionController:(id)a3 didChooseWallpaper:(id)a4 image:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v8 image:v7 delegate:self];

  [(HUWallpaperEditingViewController *)v9 setModalPresentationStyle:0];
  [(HUWallpaperPickerViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5
{
  v7 = a5;
  v8 = a4;
  [(HUWallpaperPickerViewController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = [(HUWallpaperPickerViewController *)self delegate];
  [v9 wallpaperPickerDidFinish:self wallpaper:v8 image:v7];
}

- (id)currentSectionIdentifiers
{
  v3 = [MEMORY[0x277CBEB18] arrayWithObject:@"HUWallpaperPickerNamedSectionIdentifier"];
  v4 = [(HUWallpaperPickerViewController *)self assetCollections];
  v5 = [v4 count];

  if (v5)
  {
    [v3 addObject:@"HUWallpaperPickerPhotosSectionIdentifier"];
  }

  return v3;
}

- (id)identifierForSection:(unint64_t)a3
{
  v4 = [(HUWallpaperPickerViewController *)self currentSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)loadAssetCollections
{
  v3 = [(HUWallpaperPickerViewController *)self assetCollectionsToAssetFetchResults];
  if (v3)
  {

LABEL_4:
    NSLog(&cfstr_AssetCollectio.isa);
    goto LABEL_5;
  }

  v4 = [(HUWallpaperPickerViewController *)self assetCollections];

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB18] array];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __55__HUWallpaperPickerViewController_loadAssetCollections__block_invoke;
  v22 = &unk_277DBBBF0;
  v23 = v6;
  v24 = v5;
  v7 = v5;
  v8 = v6;
  v9 = _Block_copy(&v19);
  v10 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:209 options:{0, v19, v20, v21, v22}];
  v9[2](v9, v10);

  v11 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:203 options:0];
  v9[2](v9, v11);

  v12 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:210 options:0];
  v9[2](v9, v12);

  v13 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:201 options:0];
  v9[2](v9, v13);

  v14 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:207 options:0];
  v9[2](v9, v14);

  v15 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:2 subtype:211 options:0];
  v9[2](v9, v15);

  v16 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:2 options:0];
  v9[2](v9, v16);

  v17 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:3 options:0];
  v9[2](v9, v17);

  v18 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:1 subtype:101 options:0];
  v9[2](v9, v18);

  [(HUWallpaperPickerViewController *)self setAssetCollectionsToAssetFetchResults:v7];
  [(HUWallpaperPickerViewController *)self setAssetCollections:v8];
}

void __55__HUWallpaperPickerViewController_loadAssetCollections__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = objc_alloc_init(MEMORY[0x277CD9880]);
        v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
        v17 = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        [v8 setSortDescriptors:v10];

        v11 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v7 options:v8];
        if ([v11 count])
        {
          [*(a1 + 32) addObject:v7];
          [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }
}

- (HUWallpaperPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end