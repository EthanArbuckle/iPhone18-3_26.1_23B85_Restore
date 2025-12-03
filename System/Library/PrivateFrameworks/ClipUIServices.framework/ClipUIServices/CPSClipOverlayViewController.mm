@interface CPSClipOverlayViewController
- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)d;
- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)d webClipID:(id)iD;
- (CPSClipOverlayViewController)initWithAppClipRecord:(id)record;
- (id)_initWithAppClipBundleID:(id)d;
- (void)_didTapBanner;
- (void)_dismissLoadingViewAnimated:(BOOL)animated;
- (void)_loadClipMetadataUsingPlaceholderWebClipID;
- (void)_loadClipRecordUsingBundleID;
- (void)_presentLoadingViewAnimated:(BOOL)animated;
- (void)_scheduleBannerDismissTimerIfNeeded;
- (void)_setBannerHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_setClipRecord:(id)record;
- (void)_setClipSessionProxy:(id)proxy;
- (void)_setPlaceholderClipMetadata:(id)metadata;
- (void)_setUpNewSessionProxy;
- (void)_showFailedLoadingStateAndReloadMetadata:(BOOL)metadata animated:(BOOL)animated;
- (void)_updateBanner;
- (void)_updateBannerLabels;
- (void)_updateLoadingView;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error;
- (void)proxy:(id)proxy didRetrieveHeroImage:(id)image;
- (void)proxyDidChangeProgress:(id)progress;
- (void)proxyDidUpdateMetadata:(id)metadata;
- (void)proxyRemoteServiceDidCrash:(id)crash;
- (void)setClipNeedsUpdateToLatestVersion;
- (void)setDisplayedOverPlaceholder:(BOOL)placeholder animated:(BOOL)animated;
- (void)setDisplayedOverPlaceholder:(BOOL)placeholder forWebClipID:(id)d animated:(BOOL)animated;
- (void)setDisplayedOverPlaceholder:(BOOL)placeholder usingClipMetadata:(id)metadata animated:(BOOL)animated;
- (void)setReferrerBundleID:(id)d;
- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated;
- (void)setWebClipID:(id)d;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CPSClipOverlayViewController

- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)d
{
  v3 = [(CPSClipOverlayViewController *)self _initWithAppClipBundleID:d];
  v4 = v3;
  if (v3)
  {
    [(CPSClipOverlayViewController *)v3 _loadClipRecordUsingBundleID];
    v5 = v4;
  }

  return v4;
}

- (CPSClipOverlayViewController)initWithAppClipRecord:(id)record
{
  recordCopy = record;
  bundleID = [recordCopy bundleID];
  v7 = [(CPSClipOverlayViewController *)self _initWithAppClipBundleID:bundleID];

  if (v7)
  {
    objc_storeStrong(&v7->_clipRecord, record);
    v8 = v7;
  }

  return v7;
}

- (id)_initWithAppClipBundleID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CPSClipOverlayViewController;
  v5 = [(CPSClipOverlayViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    v5->_sceneActivationState = -1;
    v7 = [objc_alloc(MEMORY[0x277CFA688]) initWithBundleID:dCopy];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kvoContext == context)
  {
    if (self->_bannerContainer == objectCopy)
    {
      [(CPSClipOverlayViewController *)self _scheduleBannerDismissTimerIfNeeded];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CPSClipOverlayViewController;
    [(CPSClipOverlayViewController *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CPSClipOverlayViewController;
  [(CPSClipOverlayViewController *)&v17 viewDidLoad];
  view = [(CPSClipOverlayViewController *)self view];
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
  [view bounds];
  [(CPSBannerContainerView *)self->_bannerContainer setFrame:?];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"bannerHidden" options:0 context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"trackingBannerDismissGesture" options:0 context:kvoContext];
  [(CPSBannerContainerView *)self->_bannerContainer addObserver:self forKeyPath:@"bannerHasAccessibilityFocus" options:0 context:kvoContext];
  [view addSubview:self->_bannerContainer];
  fullApplicationName = [(CPSAppClipRecord *)self->_clipRecord fullApplicationName];
  if (fullApplicationName)
  {
  }

  else
  {
    fullApplicationCaption = [(CPSAppClipRecord *)self->_clipRecord fullApplicationCaption];

    if (!fullApplicationCaption)
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CPSClipOverlayViewController;
  [(CPSClipOverlayViewController *)&v4 viewDidAppear:appear];
  self->_initialAppearanceTime = CACurrentMediaTime();
}

- (void)setWebClipID:(id)d
{
  dCopy = d;
  webClipID = self->_webClipID;
  if (webClipID != dCopy)
  {
    v11 = dCopy;
    if (![(NSString *)webClipID isEqualToString:dCopy])
    {
      v6 = [(NSString *)v11 copy];
      v7 = self->_webClipID;
      self->_webClipID = v6;

      sessionPromise = self->_sessionPromise;
      if (sessionPromise)
      {
        [(CPSPromise *)sessionPromise finishWithError:0];
      }

      promise = [MEMORY[0x277CFA6C8] promise];
      v10 = self->_sessionPromise;
      self->_sessionPromise = promise;

      [(CPSClipOverlayViewController *)self _loadClipMetadataUsingPlaceholderWebClipID];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDisplayedOverPlaceholder:(BOOL)placeholder forWebClipID:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  placeholderCopy = placeholder;
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    displayedOverPlaceholder = self->_displayedOverPlaceholder;
    v11 = 138478595;
    v12 = dCopy;
    v13 = 1024;
    v14 = displayedOverPlaceholder;
    v15 = 1024;
    v16 = placeholderCopy;
    v17 = 1024;
    v18 = animatedCopy;
    _os_log_impl(&dword_24374B000, v9, OS_LOG_TYPE_DEFAULT, "Displaying overlay for web clip %{private}@. Was over placeholder (%d), is over placeholder (%d), animated (%d).", &v11, 0x1Eu);
  }

  [(CPSClipOverlayViewController *)self setWebClipID:dCopy];
  if (self->_displayedOverPlaceholder != placeholderCopy || self->_showingDemoProgress)
  {
    self->_displayedOverPlaceholder = placeholderCopy;
    if (placeholderCopy || self->_showingDemoProgress)
    {
      [(CPSClipOverlayViewController *)self _presentLoadingViewAnimated:animatedCopy];
    }

    else
    {
      [(CPSClipOverlayViewController *)self _dismissLoadingViewAnimated:animatedCopy];
    }
  }
}

- (void)setDisplayedOverPlaceholder:(BOOL)placeholder usingClipMetadata:(id)metadata animated:(BOOL)animated
{
  animatedCopy = animated;
  placeholderCopy = placeholder;
  metadataCopy = metadata;
  webClipID = [metadataCopy webClipID];
  [(CPSClipOverlayViewController *)self setWebClipID:webClipID];

  [(CPSClipOverlayViewController *)self _setPlaceholderClipMetadata:metadataCopy];
  webClipID2 = [metadataCopy webClipID];

  [(CPSClipOverlayViewController *)self setDisplayedOverPlaceholder:placeholderCopy forWebClipID:webClipID2 animated:animatedCopy];
}

- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v23 = *MEMORY[0x277D85DE8];
  v7 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    sceneActivationState = self->_sceneActivationState;
    *buf = 134218752;
    selfCopy = self;
    v17 = 2048;
    stateCopy = state;
    v19 = 2048;
    v20 = sceneActivationState;
    v21 = 1024;
    v22 = animatedCopy;
    _os_log_impl(&dword_24374B000, v7, OS_LOG_TYPE_DEFAULT, "CPSClipOverlayViewController (%p): Setting scene activation state to %ld from %ld, animated (%d).", buf, 0x26u);
  }

  if (self->_sceneActivationState != state)
  {
    self->_sceneActivationState = state;
    [(CPSClipOverlayViewController *)self loadViewIfNeeded];
    if ((state - 1) < 2 || state == -1)
    {
      [(CPSClipOverlayViewController *)self _setBannerHidden:1 animated:animatedCopy];
      return;
    }

    if (state)
    {
      return;
    }

    if (self->_displayedOverPlaceholder)
    {
      displayedOverPlaceholder = 1;
    }

    else
    {
      superview = [(CPSClipLoadingView *)self->_loadingView superview];
      v11 = superview == 0;

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

    [(CPSClipOverlayViewController *)self _setBannerHidden:displayedOverPlaceholder animated:animatedCopy];
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
    bundleID = [(CPSAppClipRecord *)clipRecord bundleID];
    *buf = 138412290;
    v11 = bundleID;
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

- (void)setReferrerBundleID:(id)d
{
  dCopy = d;
  if ([(NSString *)dCopy length]&& self->_referrerBundleID != dCopy && ![(NSString *)dCopy isEqualToString:@"com.apple.ClipServices.clipserviced"])
  {
    objc_storeStrong(&self->_referrerBundleID, d);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_loadClipRecordUsingBundleID
{
  if (!self->_usesMockData)
  {
    defaultStore = [MEMORY[0x277CFA690] defaultStore];
    bundleID = [(CPSAppClipRecord *)self->_clipRecord bundleID];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__CPSClipOverlayViewController__loadClipRecordUsingBundleID__block_invoke;
    v5[3] = &unk_278DD2308;
    v5[4] = self;
    [defaultStore getAppClipRecordWithBundleID:bundleID completion:v5];
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

- (void)_setClipRecord:(id)record
{
  recordCopy = record;
  if (self->_clipRecord != recordCopy)
  {
    v6 = recordCopy;
    objc_storeStrong(&self->_clipRecord, record);
    [(CPSClipOverlayViewController *)self _updateBanner];
    recordCopy = v6;
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
      mEMORY[0x277CFA6F0] = [MEMORY[0x277CFA6F0] sharedStore];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __74__CPSClipOverlayViewController__loadClipMetadataUsingPlaceholderWebClipID__block_invoke;
      v5[3] = &unk_278DD2330;
      v6 = v3;
      selfCopy = self;
      [mEMORY[0x277CFA6F0] getAppClipWithIdentifier:v6 receiveOnQueue:MEMORY[0x277D85CD0] completionHandler:v5];
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
  pageURL = [(CPSWebClip *)self->_webClip pageURL];
  v7 = [v3 initWithURL:pageURL];

  localConfiguration = [MEMORY[0x277CFA6D0] localConfiguration];
  [v7 setConfiguration:localConfiguration];

  configuration = [v7 configuration];
  [configuration setIsForSwitcherOverlay:1];

  [(CPSClipOverlayViewController *)self _setClipSessionProxy:v7];
}

- (void)_setPlaceholderClipMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_placeholderClipMetadata != metadataCopy)
  {
    v6 = metadataCopy;
    objc_storeStrong(&self->_placeholderClipMetadata, metadata);
    [(CPSClipOverlayViewController *)self _updateLoadingView];
    metadataCopy = v6;
  }
}

- (void)_setClipSessionProxy:(id)proxy
{
  proxyCopy = proxy;
  if (!proxyCopy)
  {
    self->_attemptToShowBannerOnceSessionProxyIsResolved = 0;
  }

  sessionProxy = self->_sessionProxy;
  if (sessionProxy != proxyCopy)
  {
    v8 = proxyCopy;
    if (([(CPSSessionProxy *)sessionProxy isEqual:proxyCopy]& 1) == 0)
    {
      v7 = self->_sessionProxy;
      objc_storeStrong(&self->_sessionProxy, proxy);
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

- (void)proxyDidUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__CPSClipOverlayViewController_proxyDidUpdateMetadata___block_invoke;
  v6[3] = &unk_278DD22E0;
  v6[4] = self;
  v7 = metadataCopy;
  v5 = metadataCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__CPSClipOverlayViewController_proxyDidUpdateMetadata___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) metadata];
  [v1 _setPlaceholderClipMetadata:v2];
}

- (void)proxyDidChangeProgress:(id)progress
{
  if (!self->_showingDemoProgress)
  {
    estimatedProgress = [progress estimatedProgress];
    [estimatedProgress floatValue];
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

- (void)proxy:(id)proxy didFinishLoadingWithError:(id)error
{
  proxyCopy = proxy;
  errorCopy = error;
  if (!self->_showingDemoProgress)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CPSClipOverlayViewController_proxy_didFinishLoadingWithError___block_invoke;
    v8[3] = &unk_278DD2380;
    objc_copyWeak(&v11, &location);
    v9 = errorCopy;
    v10 = proxyCopy;
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

- (void)proxyRemoteServiceDidCrash:(id)crash
{
  crashCopy = crash;
  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController proxyRemoteServiceDidCrash:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSClipOverlayViewController_proxyRemoteServiceDidCrash___block_invoke;
  v7[3] = &unk_278DD22E0;
  v8 = crashCopy;
  selfCopy = self;
  v6 = crashCopy;
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

- (void)proxy:(id)proxy didRetrieveHeroImage:(id)image
{
  imageCopy = image;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CPSClipOverlayViewController_proxy_didRetrieveHeroImage___block_invoke;
  v7[3] = &unk_278DD22E0;
  v8 = imageCopy;
  selfCopy = self;
  v6 = imageCopy;
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

- (void)_presentLoadingViewAnimated:(BOOL)animated
{
  superview = [(CPSClipLoadingView *)self->_loadingView superview];

  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (superview)
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

    view = [(CPSClipOverlayViewController *)self view];
    [view bounds];
    [(CPSClipLoadingView *)self->_loadingView setFrame:?];

    [(CPSClipLoadingView *)self->_loadingView setAutoresizingMask:18];
    [(CPSClipOverlayViewController *)self _updateLoadingView];
    view2 = [(CPSClipOverlayViewController *)self view];
    [view2 insertSubview:self->_loadingView belowSubview:self->_bannerContainer];

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
  clipName = [(CPSClipMetadata *)self->_placeholderClipMetadata clipName];
  [(CPSClipLoadingView *)self->_loadingView setName:clipName];

  fullAppShortName = [(CPSClipMetadata *)self->_placeholderClipMetadata fullAppShortName];
  if (fullAppShortName)
  {
    [(CPSClipLoadingView *)self->_loadingView setProvider:fullAppShortName];
  }

  else
  {
    fullAppName = [(CPSClipMetadata *)self->_placeholderClipMetadata fullAppName];
    [(CPSClipLoadingView *)self->_loadingView setProvider:fullAppName];
  }

  clipHeroImageURL = [(CPSClipMetadata *)self->_placeholderClipMetadata clipHeroImageURL];
  if ([clipHeroImageURL cps_isFileURL])
  {
    loadingView = self->_loadingView;
    v7 = objc_alloc(MEMORY[0x277D755B8]);
    path = [clipHeroImageURL path];
    v9 = [v7 initWithContentsOfFile:path];
    [(CPSClipLoadingView *)loadingView setBackgroundImage:v9 animated:0];
  }
}

- (void)_showFailedLoadingStateAndReloadMetadata:(BOOL)metadata animated:(BOOL)animated
{
  animatedCopy = animated;
  metadataCopy = metadata;
  objc_initWeak(&location, self);
  loadingView = self->_loadingView;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __82__CPSClipOverlayViewController__showFailedLoadingStateAndReloadMetadata_animated___block_invoke;
  v11 = &unk_278DD2218;
  objc_copyWeak(&v12, &location);
  [(CPSClipLoadingView *)loadingView setLoadingHasFailed:1 animated:animatedCopy reason:0 reloadHandler:&v8];
  if (metadataCopy)
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

- (void)_dismissLoadingViewAnimated:(BOOL)animated
{
  superview = [(CPSClipLoadingView *)self->_loadingView superview];

  v5 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (superview)
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

- (void)_setBannerHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (hidden)
  {
    bannerContainer = self->_bannerContainer;

    [(CPSBannerContainerView *)bannerContainer setBannerHidden:1 animated:animated animationCompletion:0];
  }

  else
  {
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__CPSClipOverlayViewController__setBannerHidden_animated___block_invoke;
    v14[3] = &unk_278DD23D0;
    objc_copyWeak(&v15, &location);
    animatedCopy = animated;
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
  selfCopy = self;
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

  fullApplicationName = [(CPSAppClipRecord *)self->_clipRecord fullApplicationName];
  if (fullApplicationName)
  {
    p_banner = &self->_banner;
    [(CPSAppAttributionBanner *)self->_banner setTitle:fullApplicationName];
  }

  else
  {
    fullAppName = [(CPSWebClip *)self->_webClip fullAppName];
    p_banner = &self->_banner;
    [(CPSAppAttributionBanner *)self->_banner setTitle:fullAppName];
  }

  fullApplicationCaption = [(CPSAppClipRecord *)self->_clipRecord fullApplicationCaption];
  if (fullApplicationCaption)
  {
    [(CPSAppAttributionBanner *)*p_banner setSubtitle:fullApplicationCaption];
  }

  else
  {
    fullAppCaption = [(CPSWebClip *)self->_webClip fullAppCaption];
    [(CPSAppAttributionBanner *)*p_banner setSubtitle:fullAppCaption];
  }

  fullApplicationStoreURL = [(CPSAppClipRecord *)self->_clipRecord fullApplicationStoreURL];
  if (fullApplicationStoreURL)
  {
    [(CPSAppAttributionBanner *)*p_banner setShowsAppStoreButton:1];
  }

  else
  {
    fullAppStoreURL = [(CPSWebClip *)self->_webClip fullAppStoreURL];
    [(CPSAppAttributionBanner *)*p_banner setShowsAppStoreButton:fullAppStoreURL != 0];
  }

  v12 = *p_banner;

  [(CPSAppAttributionBanner *)v12 setShowsArcadeAttribution:v4];
}

- (void)_didTapBanner
{
  v2 = *self;
  v3 = a2;
  bundleID = [v2 bundleID];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_24374B000, v5, v6, "No App Store URL recorded for full application with ID %{private}@", v7, v8, v9, v10, v11);
}

- (CPSClipOverlayViewController)initWithAppClipBundleID:(id)d webClipID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController initWithAppClipBundleID:webClipID:];
  }

  v9 = [(CPSClipOverlayViewController *)self initWithAppClipBundleID:dCopy];

  if (v9)
  {
    [(CPSClipOverlayViewController *)v9 setWebClipID:iDCopy];
    v10 = v9;
  }

  return v9;
}

- (void)setDisplayedOverPlaceholder:(BOOL)placeholder animated:(BOOL)animated
{
  animatedCopy = animated;
  placeholderCopy = placeholder;
  v7 = CPS_LOG_CHANNEL_PREFIXClipUIServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CPSClipOverlayViewController setDisplayedOverPlaceholder:animated:];
  }

  [(CPSClipOverlayViewController *)self setDisplayedOverPlaceholder:placeholderCopy forWebClipID:self->_webClipID animated:animatedCopy];
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