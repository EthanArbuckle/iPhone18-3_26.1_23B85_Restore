@interface CPSClipOverlayViewController
- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)a3;
- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)a3 webClipID:(id)a4;
- (CPSClipOverlayViewController)initWithAppClipRecord:(id)a3;
- (id)_initWithAppClipBundleID:(id)a3;
- (void)_didTapBanner;
- (void)_dismissLoadingViewAnimated:(BOOL)a3;
- (void)_loadClipMetadataUsingPlaceholderWebClipID;
- (void)_loadClipRecordUsingBundleID;
- (void)_presentLoadingViewAnimated:(BOOL)a3;
- (void)_scheduleBannerDismissTimerIfNeeded;
- (void)_setBannerHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_setClipRecord:(id)a3;
- (void)_setClipSessionProxy:(id)a3;
- (void)_setPlaceholderClipMetadata:(id)a3;
- (void)_setUpNewSessionProxy;
- (void)_showFailedLoadingStateAndReloadMetadata:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateBanner;
- (void)_updateBannerLabels;
- (void)_updateLoadingView;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)proxy:(id)a3 didFinishLoadingWithError:(id)a4;
- (void)proxy:(id)a3 didRetrieveHeroImage:(id)a4;
- (void)proxyDidChangeProgress:(id)a3;
- (void)proxyDidUpdateMetadata:(id)a3;
- (void)proxyRemoteServiceDidCrash:(id)a3;
- (void)setClipNeedsUpdateToLatestVersion;
- (void)setDisplayedOverPlaceholder:(BOOL)a3 animated:(BOOL)a4;
- (void)setDisplayedOverPlaceholder:(BOOL)a3 forWebClipID:(id)a4 animated:(BOOL)a5;
- (void)setDisplayedOverPlaceholder:(BOOL)a3 usingClipMetadata:(id)a4 animated:(BOOL)a5;
- (void)setReferrerBundleID:(id)a3;
- (void)setSceneActivationState:(int64_t)a3 animated:(BOOL)a4;
- (void)setWebClipID:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CPSClipOverlayViewController

- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)a3
{
  v3 = [(CPSClipOverlayViewController *)self _initWithAppClipBundleID:a3];
  v4 = v3;
  if (v3)
  {
    [(CPSClipOverlayViewController *)v3 _loadClipRecordUsingBundleID];
    v5 = v4;
  }

  return v4;
}

- (CPSClipOverlayViewController)initWithAppClipRecord:(id)a3
{
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = [(CPSClipOverlayViewController *)self _initWithAppClipBundleID:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_clipRecord, a3);
    v8 = v7;
  }

  return v7;
}

- (id)_initWithAppClipBundleID:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPSClipOverlayViewController;
  v5 = [(CPSClipOverlayViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_sceneActivationState = -1;
    v7 = [objc_alloc(MEMORY[0x277CFA688]) initWithBundleID:v4];
    clipRecord = v6->_clipRecord;
    v6->_clipRecord = v7;

    v6->_showingDemoProgress = CPSUsesDemoProgressFill();
    v9 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(CPSBannerContainerView *)self->_bannerContainer removeObserver:self forKeyPath:@"bannerHidden" context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer removeObserver:self forKeyPath:@"trackingBannerDismissGesture" context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer removeObserver:self forKeyPath:@"bannerHasAccessibilityFocus" context:kvoContext];
  [(CPSClipOverlayViewController *)self _setClipSessionProxy:0];
  v3.receiver = self;
  v3.super_class = CPSClipOverlayViewController;
  [(CPSClipOverlayViewController *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kvoContext == a6)
  {
    if (self->_bannerContainer == v11)
    {
      [(CPSClipOverlayViewController *)self _scheduleBannerDismissTimerIfNeeded];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CPSClipOverlayViewController;
    [(CPSClipOverlayViewController *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CPSClipOverlayViewController;
  [(CPSClipOverlayViewController *)&v17 viewDidLoad];
  v3 = [(CPSClipOverlayViewController *)self view];
  objc_initWeak(&location, self);
  v4 = objc_alloc_init(CPSAppAttributionBanner);
  banner = self->_banner;
  self->_banner = v4;

  v6 = _CPSLocalizedString();
  [(CPSAppAttributionBanner *)self->_banner setSupertitle:v6];

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __43__CPSClipOverlayViewController_viewDidLoad__block_invoke;
  v14 = &unk_278DD2218;
  objc_copyWeak(&v15, &location);
  [(CPSAppAttributionBanner *)self->_banner setTapAction:&v11];
  [(CPSClipOverlayViewController *)self _updateBanner:v11];
  v7 = [[CPSBannerContainerView alloc] initWithBannerView:self->_banner];
  bannerContainer = self->_bannerContainer;
  self->_bannerContainer = v7;

  [(CPSBannerContainerView *)self->_bannerContainer setAutoresizingMask:18];
  [v3 bounds];
  [(CPSBannerContainerView *)self->_bannerContainer setFrame:?];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"bannerHidden" options:0 context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"trackingBannerDismissGesture" options:0 context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"bannerHasAccessibilityFocus" options:0 context:kvoContext];
  [v3 addSubview:self->_bannerContainer];
  v9 = [(CPSAppClipRecord *)self->_clipRecord fullApplicationName];
  if (v9)
  {
  }

  else
  {
    v10 = [(CPSAppClipRecord *)self->_clipRecord fullApplicationCaption];

    if (!v10)
    {
      [(CPSClipOverlayViewController *)self _loadClipRecordUsingBundleID];
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __43__CPSClipOverlayViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapBanner];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CPSClipOverlayViewController;
  [(CPSClipOverlayViewController *)&v4 viewDidAppear:a3];
  self->_initialAppearanceTime = CACurrentMediaTime();
}

- (void)setWebClipID:(id)a3
{
  v4 = a3;
  webClipID = self->_webClipID;
  if (webClipID != v4)
  {
    v11 = v4;
    if (![(NSString *)webClipID isEqualToString:v4])
    {
      v6 = [(NSString *)v11 copy];
      v7 = self->_webClipID;
      self->_webClipID = v6;

      sessionPromise = self->_sessionPromise;
      if (sessionPromise)
      {
        [(CPSPromise *)sessionPromise finishWithError:0];
      }

      v9 = [MEMORY[0x277CFA6C8] promise];
      v10 = self->_sessionPromise;
      self->_sessionPromise = v9;

      [(CPSClipOverlayViewController *)self _loadClipMetadataUsingPlaceholderWebClipID];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayedOverPlaceholder:(BOOL)a3 forWebClipID:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    displayedOverPlaceholder = self->_displayedOverPlaceholder;
    v11 = 138478595;
    v12 = v8;
    v13 = 1024;
    v14 = displayedOverPlaceholder;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_24374B000, v9, OS_LOG_TYPE_DEFAULT, "Displaying overlay for web clip %{private}@. Was over placeholder (%d), is over placeholder (%d), animated (%d).", &v11, 0x1Eu);
  }

  [(CPSClipOverlayViewController *)self setWebClipID:v8];
  if (self->_displayedOverPlaceholder != v6 || self->_showingDemoProgress)
  {
    self->_displayedOverPlaceholder = v6;
    if (v6 || self->_showingDemoProgress)
    {
      [(CPSClipOverlayViewController *)self _presentLoadingViewAnimated:v5];
    }

    else
    {
      [(CPSClipOverlayViewController *)self _dismissLoadingViewAnimated:v5];
    }
  }
}

- (void)setDisplayedOverPlaceholder:(BOOL)a3 usingClipMetadata:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [v8 webClipID];
  [(CPSClipOverlayViewController *)self setWebClipID:v9];

  [(CPSClipOverlayViewController *)self _setPlaceholderClipMetadata:v8];
  v10 = [v8 webClipID];

  [(CPSClipOverlayViewController *)self setDisplayedOverPlaceholder:v6 forWebClipID:v10 animated:v5];
}

- (void)setSceneActivationState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x277D85DE8];
  v7 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sceneActivationState = self->_sceneActivationState;
    *buf = 134218752;
    v16 = self;
    v17 = 2048;
    v18 = a3;
    v19 = 2048;
    v20 = sceneActivationState;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&dword_24374B000, v7, OS_LOG_TYPE_DEFAULT, "CPSClipOverlayViewController (%p): Setting scene activation state to %ld from %ld, animated (%d).", buf, 0x26u);
  }

  if (self->_sceneActivationState != a3)
  {
    self->_sceneActivationState = a3;
    [(CPSClipOverlayViewController *)self loadViewIfNeeded];
    if ((a3 - 1) < 2 || a3 == -1)
    {
      [(CPSClipOverlayViewController *)self _setBannerHidden:1 animated:v4];
      return;
    }

    if (a3)
    {
      return;
    }

    if (self->_displayedOverPlaceholder)
    {
      displayedOverPlaceholder = 1;
    }

    else
    {
      v10 = [(CPSClipLoadingView *)self->_loadingView superview];
      v11 = v10 == 0;

      if (!v11)
      {
LABEL_14:
        if (!self->_displayedOverPlaceholder && [(NSString *)self->_webClipID length]&& !self->_usesMockData)
        {
          objc_initWeak(buf, self);
          sessionPromise = self->_sessionPromise;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __65__CPSClipOverlayViewController_setSceneActivationState_animated___block_invoke;
          v13[3] = &unk_278DD2240;
          objc_copyWeak(&v14, buf);
          [(CPSPromise *)sessionPromise addCompletionBlock:v13];
          objc_destroyWeak(&v14);
          objc_destroyWeak(buf);
        }

        return;
      }

      displayedOverPlaceholder = self->_displayedOverPlaceholder;
    }

    [(CPSClipOverlayViewController *)self _setBannerHidden:displayedOverPlaceholder animated:v4];
    goto LABEL_14;
  }
}

void __65__CPSClipOverlayViewController_setSceneActivationState_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __65__CPSClipOverlayViewController_setSceneActivationState_animated___block_invoke_cold_1();
      }
    }

    v9 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_24374B000, v9, OS_LOG_TYPE_DEFAULT, "CPSClipOverlayViewController (%p): Calling -notifyWebClipActivationWithBundleID on session proxy: %@", &v12, 0x16u);
    }

    v10 = [WeakRetained webClipID];
    v11 = [WeakRetained referrerBundleID];
    [v5 notifyWebClipActivationWithBundleID:v10 referrerBundleID:v11];
  }
}

- (void)setClipNeedsUpdateToLatestVersion
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clipRecord = self->_clipRecord;
    v5 = v3;
    v6 = [(CPSAppClipRecord *)clipRecord bundleID];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Update to latest version requested for: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  self->_clipNeedsUpdate = 1;
  sessionPromise = self->_sessionPromise;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke;
  v8[3] = &unk_278DD2240;
  objc_copyWeak(&v9, buf);
  [(CPSPromise *)sessionPromise addCompletionBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_cold_1(v8, v7);
    }
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_20;
    v9[3] = &unk_278DD22B8;
    objc_copyWeak(&v11, (a1 + 32));
    v10 = v5;
    [v10 prewarmClipWithCompletionHandler:v9];

    objc_destroyWeak(&v11);
  }
}

void __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_20(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_INFO, "Unable to prewarm clip for updating: %{priate}@", buf, 0xCu);
      }
    }

    else
    {
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_21;
      v7[3] = &unk_278DD2290;
      v7[4] = WeakRetained;
      [v6 installClipWithCompletion:v7];
    }
  }
}

void __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_21(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 1024);
    v6 = v4;
    v7 = [v5 bundleID];
    *buf = 138412547;
    v10 = v7;
    v11 = 2113;
    v12 = v3;
    _os_log_impl(&dword_24374B000, v6, OS_LOG_TYPE_DEFAULT, "Performing update to latest verison for clip with bundle ID: %@, error: %{private}@", buf, 0x16u);
  }

  if (!v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_22;
    block[3] = &unk_278DD2268;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setReferrerBundleID:(id)a3
{
  v5 = a3;
  if ([(NSString *)v5 length]&& self->_referrerBundleID != v5 && ![(NSString *)v5 isEqualToString:@"com.apple.ClipServices.clipserviced"])
  {
    objc_storeStrong(&self->_referrerBundleID, a3);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_loadClipRecordUsingBundleID
{
  if (!self->_usesMockData)
  {
    v3 = [MEMORY[0x277CFA690] defaultStore];
    v4 = [(CPSAppClipRecord *)self->_clipRecord bundleID];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__CPSClipOverlayViewController__loadClipRecordUsingBundleID__block_invoke;
    v5[3] = &unk_278DD2308;
    v5[4] = self;
    [v3 getAppClipRecordWithBundleID:v4 completion:v5];
  }
}

void __60__CPSClipOverlayViewController__loadClipRecordUsingBundleID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__CPSClipOverlayViewController__loadClipRecordUsingBundleID__block_invoke_2;
    v5[3] = &unk_278DD22E0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)_setClipRecord:(id)a3
{
  v5 = a3;
  if (self->_clipRecord != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_clipRecord, a3);
    [(CPSClipOverlayViewController *)self _updateBanner];
    v5 = v6;
  }
}

- (void)_loadClipMetadataUsingPlaceholderWebClipID
{
  if (!self->_usesMockData)
  {
    [(CPSClipOverlayViewController *)self _setPlaceholderClipMetadata:0];
    [(CPSClipOverlayViewController *)self _setClipSessionProxy:0];
    v3 = self->_webClipID;
    if ([(NSString *)v3 length])
    {
      v4 = [MEMORY[0x277CFA6F0] sharedStore];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __74__CPSClipOverlayViewController__loadClipMetadataUsingPlaceholderWebClipID__block_invoke;
      v5[3] = &unk_278DD2330;
      v6 = v3;
      v7 = self;
      [v4 getAppClipWithIdentifier:v6 receiveOnQueue:MEMORY[0x277D85CD0] completionHandler:v5];
    }
  }
}

void __74__CPSClipOverlayViewController__loadClipMetadataUsingPlaceholderWebClipID__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1 + 40) + 1088), a2);
    [*(a1 + 40) _updateBannerLabels];
    [*(a1 + 40) _setUpNewSessionProxy];
    [*(*(a1 + 40) + 1096) finishWithResult:*(*(a1 + 40) + 1064)];
  }

  else
  {
    v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__CPSClipOverlayViewController__loadClipMetadataUsingPlaceholderWebClipID__block_invoke_cold_1();
    }
  }
}

- (void)_setUpNewSessionProxy
{
  v3 = objc_alloc(MEMORY[0x277CFA6D8]);
  v4 = [(CPSWebClip *)self->_webClip pageURL];
  v7 = [v3 initWithURL:v4];

  v5 = [MEMORY[0x277CFA6D0] localConfiguration];
  [v7 setConfiguration:v5];

  v6 = [v7 configuration];
  [v6 setIsForSwitcherOverlay:1];

  [(CPSClipOverlayViewController *)self _setClipSessionProxy:v7];
}

- (void)_setPlaceholderClipMetadata:(id)a3
{
  v5 = a3;
  if (self->_placeholderClipMetadata != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderClipMetadata, a3);
    [(CPSClipOverlayViewController *)self _updateLoadingView];
    v5 = v6;
  }
}

- (void)_setClipSessionProxy:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    self->_attemptToShowBannerOnceSessionProxyIsResolved = 0;
  }

  sessionProxy = self->_sessionProxy;
  if (sessionProxy != v5)
  {
    v8 = v5;
    if (([(CPSSessionProxy *)sessionProxy isEqual:v5]& 1) == 0)
    {
      v7 = self->_sessionProxy;
      objc_storeStrong(&self->_sessionProxy, a3);
      if (v7)
      {
        [(CPSSessionProxy *)v7 disconnect];
        [(CPSSessionProxy *)v7 setDelegate:0];
      }

      if (v8)
      {
        [(CPSSessionProxy *)v8 setDelegate:self];
        [(CPSSessionProxy *)v8 connectToService];
        if (self->_attemptToShowBannerOnceSessionProxyIsResolved)
        {
          self->_attemptToShowBannerOnceSessionProxyIsResolved = 0;
          [(CPSClipOverlayViewController *)self _setBannerHidden:self->_displayedOverPlaceholder animated:1];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)proxyDidUpdateMetadata:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CPSClipOverlayViewController_proxyDidUpdateMetadata___block_invoke;
  v6[3] = &unk_278DD22E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CPSClipOverlayViewController_proxyDidUpdateMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) metadata];
  [v1 _setPlaceholderClipMetadata:v2];
}

- (void)proxyDidChangeProgress:(id)a3
{
  if (!self->_showingDemoProgress)
  {
    v4 = [a3 estimatedProgress];
    [v4 floatValue];
    v6 = v5;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__CPSClipOverlayViewController_proxyDidChangeProgress___block_invoke;
    v7[3] = &unk_278DD2358;
    v7[4] = self;
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)proxy:(id)a3 didFinishLoadingWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_showingDemoProgress)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CPSClipOverlayViewController_proxy_didFinishLoadingWithError___block_invoke;
    v8[3] = &unk_278DD2380;
    objc_copyWeak(&v11, &location);
    v9 = v7;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

uint64_t __64__CPSClipOverlayViewController_proxy_didFinishLoadingWithError___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = a1[4];
    v12 = WeakRetained;
    if (v4)
    {
      v5 = [v4 domain];
      v6 = [v5 isEqual:*MEMORY[0x277CFA658]];

      if ([a1[4] code] != 17 || (v12[1104] & 1) == 0)
      {
        v7 = [MEMORY[0x277CFA680] sharedLogger];
        v8 = [a1[5] metadata];
        v9 = [v8 clipBundleID];
        [v7 recordDidShowErrorWithBundleID:v9 place:@"launchScreen" errorCode:{objc_msgSend(a1[4], "code")}];

        if (v6)
        {
          v10 = [a1[4] code] == 17;
        }

        else
        {
          v10 = 0;
        }

        [v12 _showFailedLoadingStateAndReloadMetadata:v10 animated:v6 ^ 1u];
      }
    }

    else
    {
      LODWORD(v3) = 1.0;
      [*(WeakRetained + 130) setLoadingProgress:0 completion:v3];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)proxyRemoteServiceDidCrash:(id)a3
{
  v4 = a3;
  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController proxyRemoteServiceDidCrash:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSClipOverlayViewController_proxyRemoteServiceDidCrash___block_invoke;
  v7[3] = &unk_278DD22E0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __59__CPSClipOverlayViewController_proxyRemoteServiceDidCrash___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) disconnect];
  v2 = [MEMORY[0x277CFA6B8] isSupported];
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 connectToService];
  }

  else if (v3 == *(*(a1 + 40) + 1064))
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&dword_24374B000, v4, OS_LOG_TYPE_DEFAULT, "CPSClipOverlayViewController (%p): Skip reconnection as app clips are not supported", &v8, 0xCu);
    }

    v6 = *(a1 + 40);
    v7 = *(v6 + 1064);
    *(v6 + 1064) = 0;
  }
}

- (void)proxy:(id)a3 didRetrieveHeroImage:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSClipOverlayViewController_proxy_didRetrieveHeroImage___block_invoke;
  v7[3] = &unk_278DD22E0;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __59__CPSClipOverlayViewController_proxy_didRetrieveHeroImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = [v2 path];
    v5 = [v3 imageWithContentsOfFile:v4];
  }

  else
  {
    v5 = 0;
  }

  [*(*(a1 + 40) + 1040) setBackgroundImage:v5 animated:CACurrentMediaTime() - *(*(a1 + 40) + 1080) > 0.15];
}

- (void)_presentLoadingViewAnimated:(BOOL)a3
{
  v4 = [(CPSClipLoadingView *)self->_loadingView superview];

  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Requested to present the loading view, but it is already presented.", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Presenting the loading view.", buf, 2u);
    }

    v7 = objc_alloc_init(CPSClipLoadingView);
    loadingView = self->_loadingView;
    self->_loadingView = v7;

    v9 = [(CPSClipOverlayViewController *)self view];
    [v9 bounds];
    [(CPSClipLoadingView *)self->_loadingView setFrame:?];

    [(CPSClipLoadingView *)self->_loadingView setAutoresizingMask:18];
    [(CPSClipOverlayViewController *)self _updateLoadingView];
    v10 = [(CPSClipOverlayViewController *)self view];
    [v10 insertSubview:self->_loadingView belowSubview:self->_bannerContainer];

    if (self->_usesMockData || self->_showingDemoProgress)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __60__CPSClipOverlayViewController__presentLoadingViewAnimated___block_invoke;
      v12[3] = &unk_278DD23A8;
      v12[4] = self;
      v11 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v12 block:0.15];
    }
  }
}

void __60__CPSClipOverlayViewController__presentLoadingViewAnimated___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(*(a1 + 32) + 1040) loadingProgress];
  if (v3 >= 1.0)
  {
    [v7 invalidate];
    *(*(a1 + 32) + 1073) = 0;
    [*(a1 + 32) setDisplayedOverPlaceholder:0 animated:1];
  }

  else
  {
    v4 = *(*(a1 + 32) + 1040);
    [v4 loadingProgress];
    v6 = v5 + 0.03;
    *&v6 = v6;
    [v4 setLoadingProgress:0 completion:v6];
  }
}

- (void)_updateLoadingView
{
  [(CPSClipLoadingView *)self->_loadingView setPoweredByThirdParty:[(CPSClipMetadata *)self->_placeholderClipMetadata isPoweredByThirdParty]];
  [(CPSClipLoadingView *)self->_loadingView setSupportsArcade:[(CPSClipMetadata *)self->_placeholderClipMetadata supportsArcade]];
  v3 = [(CPSClipMetadata *)self->_placeholderClipMetadata clipName];
  [(CPSClipLoadingView *)self->_loadingView setName:v3];

  v4 = [(CPSClipMetadata *)self->_placeholderClipMetadata fullAppShortName];
  if (v4)
  {
    [(CPSClipLoadingView *)self->_loadingView setProvider:v4];
  }

  else
  {
    v5 = [(CPSClipMetadata *)self->_placeholderClipMetadata fullAppName];
    [(CPSClipLoadingView *)self->_loadingView setProvider:v5];
  }

  v10 = [(CPSClipMetadata *)self->_placeholderClipMetadata clipHeroImageURL];
  if ([v10 cps_isFileURL])
  {
    loadingView = self->_loadingView;
    v7 = objc_alloc(MEMORY[0x277D755B8]);
    v8 = [v10 path];
    v9 = [v7 initWithContentsOfFile:v8];
    [(CPSClipLoadingView *)loadingView setBackgroundImage:v9 animated:0];
  }
}

- (void)_showFailedLoadingStateAndReloadMetadata:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  objc_initWeak(&location, self);
  loadingView = self->_loadingView;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke;
  v11 = &unk_278DD2218;
  objc_copyWeak(&v12, &location);
  [(CPSClipLoadingView *)loadingView setLoadingHasFailed:1 animated:v4 reason:0 reloadHandler:&v8];
  if (v5)
  {
    [(CPSSessionProxy *)self->_sessionProxy fetchClipMetadataAndImages:v8];
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = v3[133];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke_2;
    v5[3] = &unk_278DD2290;
    v5[4] = v3;
    [v4 prewarmClipWithCompletionHandler:v5];
  }
}

void __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = [v3 cps_privacyPreservingDescription];
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_INFO, "Unable to prewarm clip again after attempting to reload: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [*(*(a1 + 32) + 1064) installClip];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke_42;
    block[3] = &unk_278DD2268;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_dismissLoadingViewAnimated:(BOOL)a3
{
  v4 = [(CPSClipLoadingView *)self->_loadingView superview];

  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Starting to dismiss the loading view.", buf, 2u);
    }

    [(CPSClipOverlayViewController *)self _updateBanner];
    loadingView = self->_loadingView;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__CPSClipOverlayViewController__dismissLoadingViewAnimated___block_invoke;
    v8[3] = &unk_278DD2268;
    v8[4] = self;
    [(CPSClipLoadingView *)loadingView finishLoadingWithCompletion:v8];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_24374B000, v5, OS_LOG_TYPE_DEFAULT, "Requested to dismiss the loading view, but the loading view is not yet presented.", buf, 2u);
  }
}

uint64_t __60__CPSClipOverlayViewController__dismissLoadingViewAnimated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1040) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1040);
  *(v2 + 1040) = 0;

  v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_24374B000, v4, OS_LOG_TYPE_DEFAULT, "The loading view has been removed from the view hierarcy.", v6, 2u);
  }

  return [*(a1 + 32) _setBannerHidden:0 animated:1];
}

- (void)_setBannerHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    bannerContainer = self->_bannerContainer;

    [(CPSBannerContainerView *)bannerContainer setBannerHidden:1 animated:a4 animationCompletion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke;
    v14[3] = &unk_278DD23D0;
    objc_copyWeak(&v15, &location);
    v16 = a4;
    v7 = MEMORY[0x245D3DDC0](v14);
    v8 = v7;
    if (self->_appAttributionBannerPolicy)
    {
      (*(v7 + 16))(v7);
    }

    else
    {
      v9 = self->_sessionProxy;
      if (v9)
      {
        self->_attemptToShowBannerOnceSessionProxyIsResolved = 0;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke_2;
        v10[3] = &unk_278DD2420;
        objc_copyWeak(&v13, &location);
        v11 = v9;
        v12 = v8;
        [(CPSSessionProxy *)v11 checkAndConsumeShowsAppAttributionBannerWithCompletion:v10];

        objc_destroyWeak(&v13);
      }

      else
      {
        self->_attemptToShowBannerOnceSessionProxyIsResolved = 1;
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ((*(WeakRetained + 1032) & 1) != 0 || *(WeakRetained + 132))
    {
      if (!*(WeakRetained + 141))
      {
        *(WeakRetained + 141) = 1;
      }
    }

    else
    {
      if (*(WeakRetained + 141) == 1)
      {
        *(WeakRetained + 141) = 0;
      }

      v3 = WeakRetained;
      [*(WeakRetained + 127) setBannerHidden:0 animated:*(a1 + 40) animationCompletion:0];
      WeakRetained = v3;
    }
  }
}

void __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke_2(id *a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke_3;
  v4[3] = &unk_278DD23F8;
  objc_copyWeak(&v7, a1 + 6);
  v8 = a2;
  v5 = a1[4];
  v6 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(&v7);
}

void __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 56) != 1 || WeakRetained == 0;
  if (!v3 && WeakRetained[133] == *(a1 + 32))
  {
    v4 = WeakRetained;
    (*(*(a1 + 40) + 16))();
    WeakRetained = v4;
  }
}

- (void)_scheduleBannerDismissTimerIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  bannerContainer = self->_bannerContainer;
  if (!bannerContainer || [(CPSBannerContainerView *)bannerContainer isBannerHidden]|| [(CPSBannerContainerView *)self->_bannerContainer isTrackingBannerDismissGesture]|| [(CPSBannerContainerView *)self->_bannerContainer bannerHasAccessibilityFocus])
  {
    if (self->_automaticBannerDismissTimer)
    {
      v4 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24374B000, v4, OS_LOG_TYPE_INFO, "Invalidated banner dismiss timer.", buf, 2u);
      }

      [(NSTimer *)self->_automaticBannerDismissTimer invalidate];
      automaticBannerDismissTimer = self->_automaticBannerDismissTimer;
      self->_automaticBannerDismissTimer = 0;
    }
  }

  else if (!self->_automaticBannerDismissTimer)
  {
    v6 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v13 = 0x4018000000000000;
      _os_log_impl(&dword_24374B000, v6, OS_LOG_TYPE_INFO, "Scheduling banner dismiss timer with for %.1fs.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v7 = MEMORY[0x277CBEBB8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__CPSClipOverlayViewController__scheduleBannerDismissTimerIfNeeded__block_invoke;
    v10[3] = &unk_278DD2448;
    objc_copyWeak(&v11, buf);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:6.0];
    v9 = self->_automaticBannerDismissTimer;
    self->_automaticBannerDismissTimer = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

void __67__CPSClipOverlayViewController__scheduleBannerDismissTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_24374B000, v2, OS_LOG_TYPE_INFO, "Banner dismiss timer fired, hiding banner.", v4, 2u);
    }

    [WeakRetained[124] invalidate];
    v3 = WeakRetained[124];
    WeakRetained[124] = 0;

    [WeakRetained _setBannerHidden:1 animated:1];
  }
}

- (void)_updateBanner
{
  v3 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24374B000, v3, OS_LOG_TYPE_DEFAULT, "Updating the attribution banner", buf, 2u);
  }

  [(CPSClipOverlayViewController *)self _updateBannerLabels];
  v4 = self->_clipRecord;
  v5 = +[CPSAppAttributionBanner preferredImageDescriptor];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CPSClipOverlayViewController__updateBanner__block_invoke;
  v7[3] = &unk_278DD2470;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(CPSAppClipRecord *)v6 getApplicationIconForImageDescriptor:v5 resultHandler:v7];
}

uint64_t __45__CPSClipOverlayViewController__updateBanner__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (*(result + 32) == *(v2 + 1024))
  {
    return [*(v2 + 1008) setIcon:a2];
  }

  return result;
}

- (void)_updateBannerLabels
{
  if (([(CPSWebClip *)self->_webClip supportsArcade]& 1) != 0 || [(CPSClipMetadata *)self->_placeholderClipMetadata supportsArcade])
  {
    v3 = _CPSLocalizedString();
    [(CPSAppAttributionBanner *)self->_banner setSupertitle:v3];

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(CPSAppClipRecord *)self->_clipRecord fullApplicationName];
  if (v5)
  {
    p_banner = &self->_banner;
    [(CPSAppAttributionBanner *)self->_banner setTitle:v5];
  }

  else
  {
    v7 = [(CPSWebClip *)self->_webClip fullAppName];
    p_banner = &self->_banner;
    [(CPSAppAttributionBanner *)self->_banner setTitle:v7];
  }

  v8 = [(CPSAppClipRecord *)self->_clipRecord fullApplicationCaption];
  if (v8)
  {
    [(CPSAppAttributionBanner *)*p_banner setSubtitle:v8];
  }

  else
  {
    v9 = [(CPSWebClip *)self->_webClip fullAppCaption];
    [(CPSAppAttributionBanner *)*p_banner setSubtitle:v9];
  }

  v10 = [(CPSAppClipRecord *)self->_clipRecord fullApplicationStoreURL];
  if (v10)
  {
    [(CPSAppAttributionBanner *)*p_banner setShowsAppStoreButton:1];
  }

  else
  {
    v11 = [(CPSWebClip *)self->_webClip fullAppStoreURL];
    [(CPSAppAttributionBanner *)*p_banner setShowsAppStoreButton:v11 != 0];
  }

  v12 = *p_banner;

  [(CPSAppAttributionBanner *)v12 setShowsArcadeAttribution:v4];
}

- (void)_didTapBanner
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 bundleID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24374B000, v5, v6, "No App Store URL recorded for full application with ID %{private}@", v7, v8, v9, v10, v11);
}

- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)a3 webClipID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController initWithAppClipBundleID:webClipID:];
  }

  v9 = [(CPSClipOverlayViewController *)self initWithAppClipBundleID:v7];

  if (v9)
  {
    [(CPSClipOverlayViewController *)v9 setWebClipID:v6];
    v10 = v9;
  }

  return v9;
}

- (void)setDisplayedOverPlaceholder:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController setDisplayedOverPlaceholder:animated:];
  }

  [(CPSClipOverlayViewController *)self setDisplayedOverPlaceholder:v5 forWebClipID:self->_webClipID animated:v4];
}

void __65__CPSClipOverlayViewController_setSceneActivationState_animated___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_24374B000, v1, OS_LOG_TYPE_ERROR, "CPSClipOverlayViewController (%p): Error in update promise completion block: %@", v2, 0x16u);
}

void __65__CPSClipOverlayViewController_setClipNeedsUpdateToLatestVersion__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24374B000, v5, v6, "Not performing update to latest version: %@", v7, v8, v9, v10, v11);
}

- (void)proxyRemoteServiceDidCrash:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end