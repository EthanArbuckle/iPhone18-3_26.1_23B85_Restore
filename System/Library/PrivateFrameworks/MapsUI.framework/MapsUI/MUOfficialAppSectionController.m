@interface MUOfficialAppSectionController
- (MUOfficialAppSectionController)initWithMapItem:(id)a3 usingCachedMediaResults:(id)a4;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (id)_sectionHeaderText;
- (id)infoCardChildPossibleActions;
- (void)_hydrateViewWithApp;
- (void)_setupLockupView;
- (void)_updateViewWithMediaServicesResult:(id)a3;
- (void)appLockupViewDidSelectPunchOutButton:(id)a3;
@end

@implementation MUOfficialAppSectionController

- (id)infoCardChildPossibleActions
{
  if ([(MUOfficialAppSectionController *)self hasContent])
  {
    return &unk_1F450E278;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)_sectionHeaderText
{
  if ([(GEOAppleMediaServicesResult *)self->_appStoreApp isInstalled])
  {
    v2 = @"Open the App [Placecard]";
  }

  else
  {
    v2 = @"Get the App [Placecard]";
  }

  v3 = _MULocalizedStringFromThisBundle(v2);

  return v3;
}

- (void)appLockupViewDidSelectPunchOutButton:(id)a3
{
  v4 = [(MUPlaceSectionController *)self mapItem];
  v5 = [v4 _attribution];
  v6 = [v5 providerID];
  [(MUPlaceSectionController *)self captureInfoCardAction:6040 eventValue:0 feedbackType:0 actionRichProviderId:v6 classification:0];

  if ([(GEOAppleMediaServicesResult *)self->_appStoreApp isInstalled])
  {
    v8 = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = [(GEOAppleMediaServicesResult *)self->_appStoreApp iOSBundleIdentifier];
    [v8 openApplicationWithBundleID:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E696F3B8] sharedInstance];
    v7 = [(GEOAppleMediaServicesResult *)self->_appStoreApp url];
    [v8 openURL:v7 completionHandler:0];
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  v3 = [MUPlaceSectionHeaderViewModel alloc];
  v4 = [(MUOfficialAppSectionController *)self _sectionHeaderText];
  v5 = [(MUPlaceSectionHeaderViewModel *)v3 initWithTitleString:v4];

  return v5;
}

- (void)_updateViewWithMediaServicesResult:(id)a3
{
  objc_storeStrong(&self->_appStoreApp, a3);
  v5 = a3;
  [(MUOfficialAppSectionController *)self _setupLockupView];
  [(MUPlaceAppLockupView *)self->_officialAppView setViewModel:self->_appStoreApp];
}

- (void)_hydrateViewWithApp
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceSectionController *)self mapItem];
  v4 = [v3 _preferedAppAdamID];
  v5 = [v4 stringValue];

  v6 = [(MUTimeExpirableLRUCache *)self->_cachedMediaResults objectForKey:v5];
  v7 = MUGetPlaceCardLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Have cached app store app for identifier %@.  Early return.", buf, 0xCu);
    }

    [(MUOfficialAppSectionController *)self _updateViewWithMediaServicesResult:v6];
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Fetching app store app with identifier %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = [MEMORY[0x1E696F1A0] sharedInstance];
    v10 = [(MUPlaceSectionController *)self mapItem];
    v11 = [v10 _preferedAppAdamID];
    v12 = [v11 stringValue];
    v24 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    +[MUPlaceAppLockupView appIconSize];
    v15 = v14;
    v17 = v16;
    v18 = [MEMORY[0x1E696F3B8] sharedInstance];
    [v18 screenScale];
    v20 = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __53__MUOfficialAppSectionController__hydrateViewWithApp__block_invoke;
    v22[3] = &unk_1E8219220;
    objc_copyWeak(&v23, buf);
    [v9 appleMediaServicesResultsWithIdentifiers:v13 artworkSize:1 screenScale:4 type:v22 source:v15 completion:{v17, v20}];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __53__MUOfficialAppSectionController__hydrateViewWithApp__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [v5 firstObject];
    v9 = v8;
    if (v6 || !v8)
    {
      v13 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch app store app with error %@", &v15, 0xCu);
      }
    }

    else
    {
      v10 = WeakRetained[12];
      v11 = [v8 identifier];
      [v10 setObject:v9 forKey:v11];

      [WeakRetained _updateViewWithMediaServicesResult:v9];
      v12 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v9;
        _os_log_impl(&dword_1C5620000, v12, OS_LOG_TYPE_INFO, "MUOfficialAppSectionController: Fetched app %@, will tell parent to update", &v15, 0xCu);
      }

      v13 = [WeakRetained delegate];
      [v13 placeSectionControllerDidUpdateContent:WeakRetained];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_setupLockupView
{
  v3 = [MUPlaceAppLockupView alloc];
  v4 = [(MUPlaceAppLockupView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  officialAppView = self->_officialAppView;
  self->_officialAppView = v4;

  [(MUPlaceAppLockupView *)self->_officialAppView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceAppLockupView *)self->_officialAppView setDelegate:self];
  v6 = self->_officialAppView;
  v7 = [(MUOfficialAppSectionController *)self sectionHeaderViewModel];
  v8 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v6 sectionHeaderViewModel:v7 sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v8;

  v10 = self->_sectionView;

  [(MUPlaceSectionView *)v10 configureWithSectionController:self];
}

- (MUOfficialAppSectionController)initWithMapItem:(id)a3 usingCachedMediaResults:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MUOfficialAppSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:a3];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUOfficialAppSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_cachedMediaResults, a4);
    [(MUOfficialAppSectionController *)v8 _hydrateViewWithApp];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUOfficialAppSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end