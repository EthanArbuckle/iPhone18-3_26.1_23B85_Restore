@interface MSDStoreSearchViewController
- (MSDStoreSearchViewController)init;
- (id)_searchStoreWithText:(id)a3;
- (void)_help:(id)a3;
- (void)_lockSheetDetent;
- (void)_showSheet;
- (void)_unlockSheetDetent;
- (void)_updateViewWithSearchText:(id)a3;
- (void)didAssignStore:(id)a3 forViewController:(id)a4;
- (void)didDeselectStore:(id)a3 forViewController:(id)a4;
- (void)didDeselectStores:(id)a3 forViewController:(id)a4;
- (void)didDismissStoreListView:(id)a3 forViewController:(id)a4;
- (void)didSelectNoStoreForViewController:(id)a3;
- (void)didSelectStore:(id)a3 forViewController:(id)a4;
- (void)didSelectStores:(id)a3 forViewController:(id)a4;
- (void)userLocationDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation MSDStoreSearchViewController

- (MSDStoreSearchViewController)init
{
  v17.receiver = self;
  v17.super_class = MSDStoreSearchViewController;
  v2 = [(MSDStoreSearchViewController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(MSDStoreSearchViewController *)v2 setUserLocation:0];
    [(MSDStoreSearchViewController *)v3 setSelectedStore:0];
    v4 = [MEMORY[0x277D29520] sharedInstance];
    [(MSDStoreSearchViewController *)v3 setDevice:v4];

    v5 = dispatch_queue_create("com.apple.msdstoresearch", 0);
    [(MSDStoreSearchViewController *)v3 setUpdateQueue:v5];

    v6 = [MSDSetupUILocalization localizedStringForKey:@"STORE_SEARCH_HEADER"];
    [(MSDStoreSearchViewController *)v3 setTitle:v6];

    [(MSDStoreSearchViewController *)v3 setCustomDetentIdentifier:@"customMedium"];
    v7 = MEMORY[0x277D75A28];
    v8 = [(MSDStoreSearchViewController *)v3 customDetentIdentifier];
    v9 = [v7 _detentWithIdentifier:v8 resolutionContextBlock:&__block_literal_global_4];
    [(MSDStoreSearchViewController *)v3 setCustomDetent:v9];

    v10 = [[MSDMapViewController alloc] initWithDelegate:v3];
    [(MSDStoreSearchViewController *)v3 setMapViewController:v10];

    v11 = [[MSDSearchResultViewController alloc] initWithDelegate:v3];
    [(MSDStoreSearchViewController *)v3 setSearchResultViewController:v11];

    v12 = objc_alloc(MEMORY[0x277D757A0]);
    v13 = [(MSDStoreSearchViewController *)v3 searchResultViewController];
    v14 = [v12 initWithRootViewController:v13];
    [(MSDStoreSearchViewController *)v3 setSheetContentViewController:v14];

    v15 = [(MSDStoreSearchViewController *)v3 sheetContentViewController];
    [v15 setNavigationBarHidden:1];
  }

  return v3;
}

- (void)viewDidLoad
{
  v45[4] = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = MSDStoreSearchViewController;
  [(MSDStoreSearchViewController *)&v44 viewDidLoad];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v7 = v6;

  if (v4 == 1)
  {
    [MEMORY[0x277D37610] preferredContentSize];
    v7 = v8;
  }

  v9 = [(MSDStoreSearchViewController *)self mapViewController];
  v10 = [v9 mapView];
  [v10 setLayoutMargins:{0.0, 0.0, v7 * 0.4, 0.0}];

  v11 = [(MSDStoreSearchViewController *)self mapViewController];
  [(MSDStoreSearchViewController *)self addChildViewController:v11];

  v12 = [(MSDStoreSearchViewController *)self mapViewController];
  v13 = [v12 view];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(MSDStoreSearchViewController *)self view];
  [v14 addSubview:v13];

  v41 = [v13 topAnchor];
  v42 = [(MSDStoreSearchViewController *)self view];
  v40 = [v42 safeAreaLayoutGuide];
  v39 = [v40 topAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v45[0] = v38;
  v36 = [v13 bottomAnchor];
  v37 = [(MSDStoreSearchViewController *)self view];
  v35 = [v37 safeAreaLayoutGuide];
  v34 = [v35 bottomAnchor];
  v33 = [v36 constraintEqualToAnchor:v34];
  v45[1] = v33;
  v43 = v13;
  v31 = [v13 leftAnchor];
  v15 = [(MSDStoreSearchViewController *)self view];
  v16 = [v15 safeAreaLayoutGuide];
  v17 = [v16 leftAnchor];
  v18 = [v31 constraintEqualToAnchor:v17];
  v45[2] = v18;
  v19 = [v13 rightAnchor];
  v20 = [(MSDStoreSearchViewController *)self view];
  v21 = [v20 safeAreaLayoutGuide];
  v22 = [v21 rightAnchor];
  v23 = [v19 constraintEqualToAnchor:v22];
  v45[3] = v23;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v32];
  v24 = [(MSDStoreSearchViewController *)self mapViewController];
  [v24 didMoveToParentViewController:self];

  v25 = MEMORY[0x277D75220];
  v26 = [MEMORY[0x277D755B8] systemImageNamed:@"questionmark.circle"];
  v27 = [v25 systemButtonWithImage:v26 target:self action:sel__help_];

  v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v27];
  v29 = [(MSDStoreSearchViewController *)self navigationItem];
  [v29 setRightBarButtonItem:v28];

  v30 = *MEMORY[0x277D85DE8];
}

- (void)didSelectStore:(id)a3 forViewController:(id)a4
{
  v5 = a3;
  v6 = [(MSDStoreSearchViewController *)self updateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__MSDStoreSearchViewController_didSelectStore_forViewController___block_invoke;
  v8[3] = &unk_2798F1D60;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __65__MSDStoreSearchViewController_didSelectStore_forViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedStore];
  if (!v2 || (v3 = v2, [*(a1 + 32) selectedStore], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", *(a1 + 40)), v4, v3, (v5 & 1) == 0))
  {
    [*(a1 + 32) setSelectedStore:*(a1 + 40)];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__MSDStoreSearchViewController_didSelectStore_forViewController___block_invoke_2;
    v7[3] = &unk_2798F1D60;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    dispatch_sync(MEMORY[0x277D85CD0], v7);
  }
}

void __65__MSDStoreSearchViewController_didSelectStore_forViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _lockSheetDetent];
  v2 = [*(a1 + 32) mapViewController];
  [v2 zoomToStore:*(a1 + 40)];
}

- (void)didDeselectStore:(id)a3 forViewController:(id)a4
{
  v5 = a3;
  v6 = [(MSDStoreSearchViewController *)self updateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MSDStoreSearchViewController_didDeselectStore_forViewController___block_invoke;
  v8[3] = &unk_2798F1D60;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __67__MSDStoreSearchViewController_didDeselectStore_forViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedStore];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) selectedStore];
    v5 = [v4 isEqual:*(a1 + 40)];

    if (v5)
    {
      [*(a1 + 32) setSelectedStore:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__MSDStoreSearchViewController_didDeselectStore_forViewController___block_invoke_2;
      block[3] = &unk_2798F1C48;
      block[4] = *(a1 + 32);
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }
}

void __67__MSDStoreSearchViewController_didDeselectStore_forViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _unlockSheetDetent];
  v2 = [*(a1 + 32) searchResultViewController];
  v3 = [v2 isShowingSearchResult];

  if (v3)
  {
    v4 = [*(a1 + 32) mapViewController];
    [v4 deselectAnnotation];
  }
}

- (void)didAssignStore:(id)a3 forViewController:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v5;
    _os_log_impl(&dword_259BCA000, v6, OS_LOG_TYPE_DEFAULT, "User selected store with store ID: %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__MSDStoreSearchViewController_didAssignStore_forViewController___block_invoke;
  v9[3] = &unk_2798F1D60;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __65__MSDStoreSearchViewController_didAssignStore_forViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapViewController];
  [v2 stopUpdatingUserLocation];

  v4 = +[MSDSetupUIController sharedInstance];
  v3 = [*(a1 + 40) appleID];
  [v4 setupCompleteWithStoreID:v3];
}

- (void)didSelectNoStoreForViewController:(id)a3
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "User selected I Can't Find My Store", v6, 2u);
  }

  v4 = objc_alloc_init(MSDDefaultStoreViewController);
  v5 = +[MSDSetupUIController sharedInstance];
  [v5 pushViewController:v4 andRemoveTopmostView:0];
}

- (void)didDismissStoreListView:(id)a3 forViewController:(id)a4
{
  v5 = [(MSDStoreSearchViewController *)self updateQueue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSDStoreSearchViewController_didDismissStoreListView_forViewController___block_invoke;
  block[3] = &unk_2798F1C48;
  block[4] = self;
  dispatch_async(v5, block);
}

void __74__MSDStoreSearchViewController_didDismissStoreListView_forViewController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSDStoreSearchViewController_didDismissStoreListView_forViewController___block_invoke_2;
  block[3] = &unk_2798F1C48;
  block[4] = *(a1 + 32);
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

void __74__MSDStoreSearchViewController_didDismissStoreListView_forViewController___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) mapViewController];
  [v1 deselectAnnotation];
}

- (void)didSelectStores:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(MSDStoreSearchViewController *)self updateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke;
    v9[3] = &unk_2798F1D60;
    v10 = v6;
    v11 = self;
    dispatch_async(v8, v9);
  }
}

void __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
    v3 = [*(a1 + 40) selectedStore];
    if (!v3 || (v4 = v3, [*(a1 + 40) selectedStore], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", v2), v5, v4, (v6 & 1) == 0))
    {
      [*(a1 + 40) setSelectedStore:v2];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke_2;
      block[3] = &unk_2798F1D60;
      block[4] = *(a1 + 40);
      v12 = v2;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke_3;
    v9[3] = &unk_2798F1D60;
    v8 = *(a1 + 32);
    v7 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    dispatch_sync(MEMORY[0x277D85CD0], v9);
  }
}

void __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _lockSheetDetent];
  v2 = [*(a1 + 32) searchResultViewController];
  [v2 showStoreInfo:*(a1 + 40)];
}

void __66__MSDStoreSearchViewController_didSelectStores_forViewController___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) searchResultViewController];
  [v2 showStoreList:*(a1 + 40) inDisplayMode:2];
}

- (void)didDeselectStores:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(MSDStoreSearchViewController *)self updateQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__MSDStoreSearchViewController_didDeselectStores_forViewController___block_invoke;
    v9[3] = &unk_2798F1D60;
    v10 = v6;
    v11 = self;
    dispatch_async(v8, v9);
  }
}

void __68__MSDStoreSearchViewController_didDeselectStores_forViewController___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] != 1)
  {
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) firstObject];
  v2 = [*(a1 + 40) selectedStore];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) selectedStore];
    v5 = [v4 isEqual:v6];

    if (v5)
    {
      [*(a1 + 40) setSelectedStore:0];

LABEL_5:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSDStoreSearchViewController_didDeselectStores_forViewController___block_invoke_2;
      block[3] = &unk_2798F1C48;
      block[4] = *(a1 + 40);
      dispatch_sync(MEMORY[0x277D85CD0], block);
      return;
    }
  }
}

void __68__MSDStoreSearchViewController_didDeselectStores_forViewController___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _unlockSheetDetent];
  v2 = [*(a1 + 32) searchResultViewController];
  [v2 dismissAllTopViews];
}

- (void)userLocationDidChange:(id)a3
{
  v4 = a3;
  v6 = [(MSDStoreSearchViewController *)self userLocation];
  [(MSDStoreSearchViewController *)self setUserLocation:v4];

  v5 = v6;
  if (!v6)
  {
    [(MSDStoreSearchViewController *)self _updateViewWithSearchText:0];
    v5 = 0;
  }
}

- (void)_help:(id)a3
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "User clicked help button", v6, 2u);
  }

  v4 = objc_alloc_init(MSDHelpMenuViewController);
  v5 = +[MSDSetupUIController sharedInstance];
  [v5 pushViewController:v4 andRemoveTopmostView:0];
}

- (void)_showSheet
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  [v3 setModalPresentationStyle:2];

  [MEMORY[0x277D37610] preferredContentSize];
  v5 = v4;
  v7 = v6;
  v8 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  [v8 setPreferredContentSize:{v5, v7}];

  v9 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  v10 = [v9 sheetPresentationController];

  [v10 setPrefersGrabberVisible:1];
  v11 = [(MSDStoreSearchViewController *)self customDetent];
  v17[0] = v11;
  v12 = [MEMORY[0x277D75A28] largeDetent];
  v17[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v10 setDetents:v13];

  v14 = [(MSDStoreSearchViewController *)self customDetentIdentifier];
  [v10 setLargestUndimmedDetentIdentifier:v14];

  [v10 setDelegate:self];
  v15 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  [(MSDStoreSearchViewController *)self presentViewController:v15 animated:1 completion:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_lockSheetDetent
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  v4 = [v3 sheetPresentationController];

  v5 = [(MSDStoreSearchViewController *)self customDetent];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 setDetents:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_unlockSheetDetent
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(MSDStoreSearchViewController *)self sheetContentViewController];
  v4 = [v3 sheetPresentationController];

  v5 = [(MSDStoreSearchViewController *)self customDetent];
  v9[0] = v5;
  v6 = [MEMORY[0x277D75A28] largeDetent];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [v4 setDetents:v7];

  [v4 _setIndexOfCurrentDetent:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateViewWithSearchText:(id)a3
{
  v4 = a3;
  v5 = [(MSDStoreSearchViewController *)self updateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke;
  v7[3] = &unk_2798F1D60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke_2;
  block[3] = &unk_2798F1C48;
  block[4] = *(a1 + 32);
  v2 = MEMORY[0x277D85CD0];
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v3 = [*(a1 + 32) _searchStoreWithText:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke_3;
  v6[3] = &unk_2798F1E90;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_sync(v2, v6);
}

void __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) searchResultViewController];
  [v1 showInProgress];
}

void __58__MSDStoreSearchViewController__updateViewWithSearchText___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) mapViewController];
  [v2 annotateStores:*(a1 + 40)];

  v3 = *(a1 + 48) != 0;
  v4 = [*(a1 + 32) searchResultViewController];
  [v4 showStoreList:*(a1 + 40) inDisplayMode:v3];
}

- (id)_searchStoreWithText:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = dispatch_semaphore_create(0);
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v4 forKey:*MEMORY[0x277D29570]];
  }

  v7 = [(MSDStoreSearchViewController *)self userLocation];

  if (v7)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [(MSDStoreSearchViewController *)self userLocation];
    [v9 coordinate];
    v10 = [v8 numberWithDouble:?];
    [v6 setObject:v10 forKey:*MEMORY[0x277D29560]];

    v11 = MEMORY[0x277CCABB0];
    v12 = [(MSDStoreSearchViewController *)self userLocation];
    [v12 coordinate];
    v14 = [v11 numberWithDouble:v13];
    [v6 setObject:v14 forKey:*MEMORY[0x277D29568]];
  }

  v15 = defaultLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v35 = v6;
    _os_log_impl(&dword_259BCA000, v15, OS_LOG_TYPE_DEFAULT, "Searching for stores with options: %{public}@", buf, 0xCu);
  }

  v16 = [(MSDStoreSearchViewController *)self device];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__MSDStoreSearchViewController__searchStoreWithText___block_invoke;
  v21[3] = &unk_2798F1EB8;
  v21[4] = &v28;
  v21[5] = &v22;
  [v16 searchStoreWithOptions:v6 completion:v21];

  v17 = defaultLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259BCA000, v17, OS_LOG_TYPE_DEFAULT, "Waiting for store search results...", buf, 2u);
  }

  dispatch_semaphore_wait(v23[5], 0xFFFFFFFFFFFFFFFFLL);
  v18 = v29[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __53__MSDStoreSearchViewController__searchStoreWithText___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a3)
  {
    v6 = objc_opt_new();
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = *(*(*(a1 + 32) + 8) + 40);
          v16 = [MSDStoreInfo alloc];
          v17 = [(MSDStoreInfo *)v16 initWithDict:v14, v19];
          [v15 addObject:v17];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

  v18 = *MEMORY[0x277D85DE8];
}

@end