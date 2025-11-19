@interface FMFMapViewController
+ (CGSize)annotationImageSize;
- (BOOL)canSelectAnnotation:(id)a3;
- (BOOL)isCompact;
- (BOOL)isCurrentlyRotated;
- (BOOL)isLocationAlreadyOnMap:(id)a3;
- (BOOL)mapHasUserLocations;
- (BOOL)sessionContainsHandle:(id)a3;
- (BOOL)singleAnnotationOnMap;
- (FMFMapViewController)init;
- (FMFMapViewController)initWithDelegate:(id)a3 handles:(id)a4;
- (FMFMapViewControllerDelegate)delegate;
- (FMFNoLocationView)noLocationView;
- (FMFSession)fmfSession;
- (FMFTitleView)titleView;
- (NSSet)handlesShowingLocations;
- (UIBarButtonItem)userTrackingButtonItem;
- (UIEdgeInsets)edgeInsets;
- (UIImageView)cachedMapView;
- (id)_generateDebugContext;
- (id)_internalAnnotationTintColor;
- (id)_selectedHandleAnnotation;
- (id)annotationImageForAnnotation:(id)a3 andHandle:(id)a4;
- (id)initSimpleMapWithDelegate:(id)a3 handles:(id)a4;
- (id)openInAppURL;
- (id)titleViewForSelectedHandle;
- (int64_t)userTrackingMode;
- (unint64_t)defaultMapType;
- (void)_authorizeMonitoringLocation;
- (void)_dismiss:(id)a3;
- (void)_enablePreloadedHandles:(id)a3;
- (void)_updateDirectionsButtonEnabled;
- (void)_updateTitleViewLocation:(id)a3;
- (void)addHandlesToSession;
- (void)applicationDidBecomeActive:(id)a3;
- (void)dealloc;
- (void)deselectAllAnnotations;
- (void)destroySession;
- (void)didDeselectLocation:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveLocation:(id)a3;
- (void)didReceiveLocationForDelegateCallback:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)didSelectLocation:(id)a3;
- (void)didStopAbilityToGetLocationForHandle:(id)a3;
- (void)didUpdateUserLocation:(id)a3;
- (void)enablePreloadedHandles;
- (void)getDirections;
- (void)hideCachedMap;
- (void)initializeDefaults;
- (void)loadCachedLocationsForHandles;
- (void)loadDelegate;
- (void)loadView;
- (void)mapTypeChanged:(unint64_t)a3;
- (void)mapTypeChangedNotification:(id)a3;
- (void)mapViewDidFinishRenderingMap;
- (void)openInMapsButtonTapped:(id)a3;
- (void)presentMapOptionsModal:(id)a3;
- (void)reZoomToFit;
- (void)recenterMap;
- (void)refreshButtonTapped:(id)a3;
- (void)removeAllFriendLocationsFromMap;
- (void)removeAnnotationsFromMapForHandle:(id)a3;
- (void)removeHandlesFromSession;
- (void)resumeRefreshingLocations;
- (void)selectAnnotationIfSingleForMac;
- (void)selectAnnotationIfSingleFriend:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setHandlesShowingLocations:(id)a3;
- (void)setShowFloatingMapLocationButton:(BOOL)a3;
- (void)setupRecenterMapTimer;
- (void)setupToolbarItems;
- (void)startShowingLocationsForHandles:(id)a3;
- (void)stopRefreshingLocations;
- (void)stopShowingLocationsForHandles:(id)a3;
- (void)updateAllAnnotationsDueToAddressBookUpdate;
- (void)updateMapWithNewLocation:(id)a3 animated:(BOOL)a4;
- (void)updateNoLocationView:(BOOL)a3;
- (void)updateRefreshForLocation:(id)a3;
- (void)updateUserTrackingButtonState;
- (void)viewDidLoad;
- (void)viewWillAppearWillMoveToWindowSetup;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)zoomAndSelectHandle:(id)a3;
- (void)zoomToFit;
- (void)zoomToFit:(BOOL)a3;
@end

@implementation FMFMapViewController

+ (CGSize)annotationImageSize
{
  v2 = 72.0;
  v3 = 72.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (FMFMapViewController)init
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = @"FMFMapViewController_iPhone";
  if (v4 == 1)
  {
    v5 = @"FMFMapViewController_iPad";
  }

  v6 = MEMORY[0x277CCA8D8];
  v7 = v5;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v11.receiver = self;
  v11.super_class = FMFMapViewController;
  v9 = [(FMFMapViewController *)&v11 initWithNibName:v7 bundle:v8];

  [(FMFMapViewController *)v9 initializeDefaults];
  return v9;
}

- (id)initSimpleMapWithDelegate:(id)a3 handles:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = FMFMapViewController;
  v5 = a4;
  v6 = a3;
  v7 = [(FMFMapViewController *)&v13 init];
  [(FMFMapViewController *)v7 setDelegate:v6, v13.receiver, v13.super_class];

  [(FMFMapViewController *)v7 set_preloadedHandles:v5];
  [(FMFMapViewController *)v7 setIsSimpleMap:1];
  [(FMFMapViewController *)v7 initializeDefaults];
  v8 = [(FMFMapViewController *)v7 _generateDebugContext];
  [(FMFMapViewController *)v7 setDebugContext:v8];

  v9 = LogCategory_Daemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(FMFMapViewController *)v7 debugContext];
    *buf = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = @"-E2E";
    _os_log_impl(&dword_24A4E3000, v9, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@ {context=#%@}: init (simple%@)", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (FMFMapViewController)initWithDelegate:(id)a3 handles:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(FMFMapViewController *)self init];
  [(FMFMapViewController *)v8 setDelegate:v7];

  [(FMFMapViewController *)v8 set_preloadedHandles:v6];
  v9 = [(FMFMapViewController *)v8 _generateDebugContext];
  [(FMFMapViewController *)v8 setDebugContext:v9];

  v10 = LogCategory_Daemon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FMFMapViewController *)v8 debugContext];
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = @" (-E2E)";
    _os_log_impl(&dword_24A4E3000, v10, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@ {context=#%@}: init%@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_generateDebugContext
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 length];
  v6 = v3;
  if (v5 >= 0x19)
  {
    v6 = [v3 substringFromIndex:24];
  }

  v7 = [v4 stringWithFormat:@"%@-%d", v6, getpid()];
  if (v5 >= 0x19)
  {
  }

  return v7;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FMFMapViewController *)self debugContext];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_24A4E3000, v3, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@ {context=#%@}: deinit", buf, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  [(FMFMapViewController *)self destroySession];
  v6 = [(FMFMapViewController *)self mapView];
  [v6 setDelegate:0];

  v8.receiver = self;
  v8.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initializeDefaults
{
  [(FMAnnotationView *)FMFAnnotationView setLargeAnnotationBorderVisible:0];
  [(FMAnnotationView *)FMFAnnotationView setThickAnnotationBorder:1];
  [(FMFMapViewController *)self _authorizeMonitoringLocation];
  [(FMFMapViewController *)self setShouldZoomToFitNewLocations:1];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_updateAllAnnotationsDueToAddressBookUpdate name:@"AB_CHANGED_NOTIFICATION" object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel_mapTypeChangedNotification_ name:@"MAP_TYPE_DEFAULT_KEY" object:0];

  [(FMFMapViewController *)self setEdgeInsets:60.0, 42.0, 60.0, 42.0];
}

- (void)_authorizeMonitoringLocation
{
  v2 = _authorizeMonitoringLocation__locationManager;
  if (!_authorizeMonitoringLocation__locationManager)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBFC10]);
    v4 = _authorizeMonitoringLocation__locationManager;
    _authorizeMonitoringLocation__locationManager = v3;

    v2 = _authorizeMonitoringLocation__locationManager;
  }

  if (![v2 authorizationStatus])
  {
    v5 = _authorizeMonitoringLocation__locationManager;

    [v5 requestWhenInUseAuthorization];
  }
}

- (void)loadView
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v17 loadView];
  [(FMFMapViewController *)self set_isRenderingInitialMap:1];
  if ([(FMFMapViewController *)self isSimpleMap])
  {
    v3 = objc_alloc(MEMORY[0x277CD4EC8]);
    v4 = [(FMFMapViewController *)self view];
    [v4 frame];
    v5 = [v3 initWithFrame:?];
    [(FMFMapViewController *)self setMapView:v5];

    v6 = [(FMFMapViewController *)self mapView];
    [v6 setShowsUserLocation:1];

    [(MKMapView *)self->_mapView setAutoresizingMask:18];
    v7 = [(FMFMapViewController *)self view];
    [v7 addSubview:self->_mapView];

    v8 = [(FMFMapViewController *)self cachedMapView];
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&dword_24A4E3000, v9, OS_LOG_TYPE_DEFAULT, "cachedMapView = %@", buf, 0xCu);
    }
  }

  else
  {
    if (!self->_refreshButton)
    {
      v10 = [[FMFRefreshBarButtonItem alloc] initWithTarget:self action:sel_refreshButtonTapped_];
      [(FMFMapViewController *)self setRefreshButton:v10];
    }

    v11 = [(FMFMapViewController *)self titleViewForSelectedHandle];
    v12 = [(FMFMapViewController *)self navigationItem];
    [v12 setTitleView:v11];

    refreshButton = self->_refreshButton;
    v8 = [(FMFMapViewController *)self navigationItem];
    [v8 setRightBarButtonItem:refreshButton];
  }

  v14 = [(FMFMapViewController *)self mapView];
  [v14 setShowsAttribution:0];

  if ([(FMFMapViewController *)self isSimpleMap])
  {
    v15 = [(FMFMapViewController *)self mapView];
    [v15 _setEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v3 viewDidLoad];
  [(FMFMapViewController *)self loadDelegate];
  [(FMFMapViewController *)self enablePreloadedHandles];
  [(FMFMapViewController *)self setupToolbarItems];
}

- (void)setupToolbarItems
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DIRECTIONS" value:&stru_285D99658 table:@"LocalizableUI"];

  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v4 style:0 target:self action:sel_getDirections];
  [(FMFMapViewController *)self setDirectionsBarButtonItem:v5];

  v6 = [MEMORY[0x277D75220] buttonWithType:4];
  [v6 addTarget:self action:sel_infoButtonTapped_ forControlEvents:64];
  v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v6];
  [(FMFMapViewController *)self setInfoBarButtonItem:v7];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
  v10 = [(FMFMapViewController *)self userTrackingButtonItem];
  v13[0] = v10;
  v13[1] = v8;
  v13[2] = self->_directionsBarButtonItem;
  v13[3] = v9;
  v13[4] = self->_infoBarButtonItem;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  [(FMFMapViewController *)self setToolbarItems:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (FMFNoLocationView)noLocationView
{
  noLocationView = self->_noLocationView;
  if (!noLocationView)
  {
    v4 = LogCategory_Daemon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_24A4E3000, v4, OS_LOG_TYPE_DEFAULT, "Creating no location view", v29, 2u);
    }

    v5 = [FMFNoLocationView alloc];
    v6 = [(FMFNoLocationView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(FMFMapViewController *)self setNoLocationView:v6];

    [(FMFNoLocationView *)self->_noLocationView setDelegate:self];
    v7 = [(FMFMapViewController *)self view];
    [v7 addSubview:self->_noLocationView];

    [(FMFNoLocationView *)self->_noLocationView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(FMFMapViewController *)self view];
    v9 = MEMORY[0x277CCAAD0];
    v10 = self->_noLocationView;
    v11 = [(FMFMapViewController *)self mapView];
    v12 = [v9 constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
    [v8 addConstraint:v12];

    v13 = [(FMFMapViewController *)self view];
    v14 = MEMORY[0x277CCAAD0];
    v15 = self->_noLocationView;
    v16 = [(FMFMapViewController *)self mapView];
    v17 = [v14 constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v16 attribute:4 multiplier:1.0 constant:0.0];
    [v13 addConstraint:v17];

    v18 = [(FMFMapViewController *)self view];
    v19 = MEMORY[0x277CCAAD0];
    v20 = self->_noLocationView;
    v21 = [(FMFMapViewController *)self mapView];
    v22 = [v19 constraintWithItem:v20 attribute:1 relatedBy:0 toItem:v21 attribute:1 multiplier:1.0 constant:0.0];
    [v18 addConstraint:v22];

    v23 = [(FMFMapViewController *)self view];
    v24 = MEMORY[0x277CCAAD0];
    v25 = self->_noLocationView;
    v26 = [(FMFMapViewController *)self mapView];
    v27 = [v24 constraintWithItem:v25 attribute:2 relatedBy:0 toItem:v26 attribute:2 multiplier:1.0 constant:0.0];
    [v23 addConstraint:v27];

    noLocationView = self->_noLocationView;
  }

  return noLocationView;
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  self->_edgeInsets = a3;
  noLocationView = self->_noLocationView;
  if (noLocationView)
  {
    [(FMFNoLocationView *)noLocationView updateConstriantsForInsets];
  }
}

- (UIImageView)cachedMapView
{
  cachedMapView = self->_cachedMapView;
  if (!cachedMapView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    [(FMFMapViewController *)self setCachedMapView:v4];

    v5 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)self->_cachedMapView setBackgroundColor:v5];

    v6 = [(FMFMapViewController *)self view];
    [v6 addSubview:self->_cachedMapView];

    [(UIImageView *)self->_cachedMapView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(FMFMapViewController *)self view];
    v8 = MEMORY[0x277CCAAD0];
    v9 = self->_cachedMapView;
    v10 = [(FMFMapViewController *)self view];
    v11 = [v8 constraintWithItem:v9 attribute:3 relatedBy:0 toItem:v10 attribute:3 multiplier:1.0 constant:0.0];
    [v7 addConstraint:v11];

    v12 = [(FMFMapViewController *)self view];
    v13 = MEMORY[0x277CCAAD0];
    v14 = self->_cachedMapView;
    v15 = [(FMFMapViewController *)self view];
    v16 = [v13 constraintWithItem:v14 attribute:4 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:0.0];
    [v12 addConstraint:v16];

    v17 = [(FMFMapViewController *)self view];
    v18 = MEMORY[0x277CCAAD0];
    v19 = self->_cachedMapView;
    v20 = [(FMFMapViewController *)self view];
    v21 = [v18 constraintWithItem:v19 attribute:1 relatedBy:0 toItem:v20 attribute:1 multiplier:1.0 constant:0.0];
    [v17 addConstraint:v21];

    v22 = [(FMFMapViewController *)self view];
    v23 = MEMORY[0x277CCAAD0];
    v24 = self->_cachedMapView;
    v25 = [(FMFMapViewController *)self view];
    v26 = [v23 constraintWithItem:v24 attribute:2 relatedBy:0 toItem:v25 attribute:2 multiplier:1.0 constant:0.0];
    [v22 addConstraint:v26];

    cachedMapView = self->_cachedMapView;
  }

  return cachedMapView;
}

- (UIBarButtonItem)userTrackingButtonItem
{
  userTrackingButtonItem = self->_userTrackingButtonItem;
  if (!userTrackingButtonItem)
  {
    v4 = [MEMORY[0x277CD4FC0] buttonWithUserTrackingView:self];
    [(FMFMapViewController *)self setUserTrackingButton:v4];
    v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v4];
    v6 = self->_userTrackingButtonItem;
    self->_userTrackingButtonItem = v5;

    [(FMFMapViewController *)self _updateLocationButtonEnabled];
    userTrackingButtonItem = self->_userTrackingButtonItem;
  }

  return userTrackingButtonItem;
}

- (id)openInAppURL
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"fmf1://friend/"];
  v4 = [(FMFMapViewController *)self _internalHandlesShowingLocations];
  v5 = [v4 allObjects];

  if ([v5 count])
  {
    v6 = [v5 valueForKey:@"identifier"];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = MEMORY[0x277CBEBC0];
    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 count];
    v11 = @"fmf1://friends/";
    if (v10 == 1)
    {
      v11 = @"fmf1://friend/";
    }

    v12 = [v9 stringWithFormat:@"%@%@", v11, v7];
    v13 = [v8 URLWithString:v12];

    v3 = v13;
  }

  v14 = LogCategory_Daemon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_24A4E3000, v14, OS_LOG_TYPE_DEFAULT, "open URL for handles: %@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)viewWillAppearWillMoveToWindowSetup
{
  v3 = [(FMFMapViewController *)self defaultMapType];
  v4 = [(FMFMapViewController *)self mapView];
  [v4 setMapType:v3];

  [(FMFMapViewController *)self addHandlesToSession];
  [(FMFMapViewController *)self loadCachedLocationsForHandles];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__FMFMapViewController_viewWillAppearWillMoveToWindowSetup__block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(FMFMapViewController *)self setViewWillAppearCalled:1];
  [(FMFMapViewController *)self updateNoLocationView:1];
}

void __59__FMFMapViewController_viewWillAppearWillMoveToWindowSetup__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mapViewDelegate];
  v2 = [*(a1 + 32) mapView];
  [v3 zoomToFitAnnotationsForMapView:v2 includeMe:objc_msgSend(*(a1 + 32) duration:{"shouldZoomToFitMeAndLocations"), 0.0}];
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = LogCategory_Daemon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A4E3000, v4, OS_LOG_TYPE_DEFAULT, "Received application did become active notification, adding handles to session to kick a refresh cycle", v5, 2u);
  }

  [(FMFMapViewController *)self addHandlesToSession];
  [(FMFMapViewController *)self _updateLocationButtonEnabled];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v5 willMoveToParentViewController:a3];
  v4 = [(FMFMapViewController *)self noLocationView];
  [v4 updateConstriantsForInsets];

  [(FMFMapViewController *)self viewWillAppearWillMoveToWindowSetup];
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v3 didMoveToParentViewController:a3];
}

- (void)addHandlesToSession
{
  if (![(FMFMapViewController *)self _refreshingIsPaused])
  {
    v4 = [(FMFMapViewController *)self fmfSession];
    v3 = [(FMFMapViewController *)self _internalHandlesShowingLocations];
    [v4 addHandles:v3];
  }
}

- (void)removeHandlesFromSession
{
  v4 = [(FMFMapViewController *)self fmfSession];
  v3 = [(FMFMapViewController *)self _internalHandlesShowingLocations];
  [v4 removeHandles:v3];
}

- (void)destroySession
{
  [(FMFSession *)self->_fmfSession invalidate];
  [(FMFSession *)self->_fmfSession setDelegate:0];
  fmfSession = self->_fmfSession;
  self->_fmfSession = 0;
}

- (void)loadDelegate
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_mapViewDelegate)
  {
    v3 = [(FMFMapViewController *)self view];
    v4 = LogCategory_Daemon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_24A4E3000, v4, OS_LOG_TYPE_DEFAULT, "mapView = %@", &v13, 0xCu);
    }

    v5 = [FMFMapViewDelegateInternal alloc];
    v6 = [(FMFMapViewController *)self mapView];
    v7 = [(FMFMapViewDelegateInternal *)v5 initWithDelegate:self mapView:v6];
    [(FMFMapViewController *)self setMapViewDelegate:v7];

    mapViewDelegate = self->_mapViewDelegate;
    v9 = [(FMFMapViewController *)self mapView];
    [v9 setDelegate:mapViewDelegate];

    v10 = [(FMFMapViewController *)self isMapCenteringDisabled];
    v11 = [(FMFMapViewController *)self mapViewDelegate];
    [v11 setIsMapCenteringDisabled:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enablePreloadedHandles
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FMFMapViewController *)self _preloadedHandles];
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_24A4E3000, v3, OS_LOG_TYPE_DEFAULT, "enablePreloadedHandles (%@)", buf, 0xCu);
  }

  v5 = [(FMFMapViewController *)self _preloadedHandles];

  if (v5)
  {
    v6 = [(FMFMapViewController *)self fmfSession];
    v7 = [v6 getHandlesSharingLocationsWithMe];

    if ([v7 count])
    {
      [(FMFMapViewController *)self _enablePreloadedHandles:v7];
    }

    else
    {
      v8 = [(FMFMapViewController *)self fmfSession];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __46__FMFMapViewController_enablePreloadedHandles__block_invoke;
      v10[3] = &unk_278FE2A60;
      v10[4] = self;
      [v8 getHandlesSharingLocationsWithMe:v10];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_enablePreloadedHandles:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = self;
  obj = [(FMFMapViewController *)self _preloadedHandles];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v19 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = v20;
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v24;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v23 + 1) + 8 * j);
              v12 = [v5 identifier];
              v13 = [v11 identifier];
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                [v18 addObject:v11];
                goto LABEL_16;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  [(FMFMapViewController *)v16 startShowingLocationsForHandles:v18];
  [(FMFMapViewController *)v16 set_internalHandlesShowingLocations:v18];
  [(FMFMapViewController *)v16 set_preloadedHandles:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__FMFMapViewController__enablePreloadedHandles___block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = v16;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)loadCachedLocationsForHandles
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(FMFMapViewController *)self handlesShowingLocations];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412802;
    v16 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(FMFMapViewController *)self fmfSession];
        v11 = [v10 cachedLocationForHandle:v9];

        v12 = LogCategory_Daemon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = v16;
          v22 = self;
          v23 = 2112;
          v24 = v9;
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_24A4E3000, v12, OS_LOG_TYPE_INFO, "⛳️FMFUI %@: cached location for %@: %@", buf, 0x20u);
        }

        if (v11)
        {
          [(FMFMapViewController *)self updateMapWithNewLocation:v11 animated:0];
          [(FMFMapViewController *)self updateRefreshForLocation:v11];
          [(FMFMapViewController *)self _updateTitleViewLocation:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = [(FMFMapViewController *)self mapViewDelegate];
  v14 = [(FMFMapViewController *)self mapView];
  [v13 zoomToFitAnnotationsForMapView:v14 includeMe:-[FMFMapViewController shouldZoomToFitMeAndLocations](self duration:{"shouldZoomToFitMeAndLocations"), 0.0}];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v2 didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v6.receiver = self;
  v6.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v6 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(FMFMapViewController *)self noLocationView];
  [v5 updateConstriantsForInsets];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = FMFMapViewController;
  [(FMFMapViewController *)&v4 viewWillLayoutSubviews];
  v3 = [(FMFMapViewController *)self noLocationView];
  [v3 updateConstriantsForInsets];
}

- (void)updateNoLocationView:(BOOL)a3
{
  v3 = a3;
  *&v25[5] = *MEMORY[0x277D85DE8];
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v25[0] = v3;
    LOWORD(v25[1]) = 1024;
    *(&v25[1] + 2) = [(FMFMapViewController *)self canShowNoLocation];
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "updateNoLocationView appearing(%d) canShowNoLocation (%d)", buf, 0xEu);
  }

  if ([(FMFMapViewController *)self canShowNoLocation])
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(FMFMapViewController *)self mapHasUserLocations];
      *buf = 67109120;
      v25[0] = v7;
      _os_log_impl(&dword_24A4E3000, v6, OS_LOG_TYPE_DEFAULT, "Setting no location view visible: %d", buf, 8u);
    }

    v8 = [(FMFMapViewController *)self mapHasUserLocations];
    v9 = [(FMFMapViewController *)self noLocationView];
    [v9 alpha];
    if (v10 != 0.0 || v8)
    {
      v11 = [(FMFMapViewController *)self noLocationView];
      [v11 alpha];
      v13 = v12 == 1.0 && v8;

      if (v13 != 1)
      {
        v19 = LogCategory_Daemon();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_24A4E3000, v19, OS_LOG_TYPE_DEFAULT, "FMFMapViewController : Not animating map", buf, 2u);
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    v14 = LogCategory_Daemon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, v14, OS_LOG_TYPE_DEFAULT, "FMFMapViewController : Animating map", buf, 2u);
    }

    if ([(FMFMapViewController *)self mapHasUserLocations])
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = LogCategory_Daemon();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v17)
      {
        *buf = 134217984;
        *v25 = v15;
        _os_log_impl(&dword_24A4E3000, v16, OS_LOG_TYPE_DEFAULT, "FMFMapViewController : Appearing : Animating no location view %f", buf, 0xCu);
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __45__FMFMapViewController_updateNoLocationView___block_invoke;
      v23[3] = &unk_278FE2A88;
      v23[4] = self;
      *&v23[5] = v15;
      [MEMORY[0x277D75D18] performWithoutAnimation:v23];
    }

    else
    {
      if (v17)
      {
        *buf = 134217984;
        *v25 = v15;
        _os_log_impl(&dword_24A4E3000, v16, OS_LOG_TYPE_DEFAULT, "FMFMapViewController : Animating no location view %f", buf, 0xCu);
      }

      v18 = 0.75;
      if (!v8)
      {
        [(FMFMapViewController *)self nonLiveAnimationDuration];
      }

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __45__FMFMapViewController_updateNoLocationView___block_invoke_110;
      v22[3] = &unk_278FE2A88;
      v22[4] = self;
      *&v22[5] = v15;
      [MEMORY[0x277D75D18] animateWithDuration:v22 animations:v18];
    }

LABEL_27:
    v20 = [(FMFMapViewController *)self noLocationView];
    [v20 updateLabel];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __45__FMFMapViewController_updateNoLocationView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) noLocationView];
  [v2 setAlpha:v1];
}

void __45__FMFMapViewController_updateNoLocationView___block_invoke_110(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) noLocationView];
  [v2 setAlpha:v1];
}

- (BOOL)mapHasUserLocations
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(FMFMapViewController *)self mapView];
  v3 = [v2 annotations];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)updateMapWithNewLocation:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 handle];
  v8 = [(FMFMapViewController *)self locationOnMapForHandle:v7 enforceServerId:0];

  v9 = [v6 location];
  v10 = v9;
  if (!v8)
  {
    if (v9)
    {
      v16 = [v6 handle];
      v17 = [v16 serverId];
      if (v17)
      {
        v18 = v17;
        v19 = [(FMFMapViewController *)self isLocationAlreadyOnMap:v6];

        if (!v19)
        {
          v20 = LogCategory_Daemon();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v6 description];
            *buf = 138412546;
            v41 = self;
            v42 = 2112;
            v43 = v21;
            _os_log_impl(&dword_24A4E3000, v20, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: update map (add annotation) with: %@", buf, 0x16u);
          }

          [v6 updateLocation:v6];
          v22 = [(FMFMapViewController *)self mapView];
          [v22 addAnnotation:v6];

          [(FMFMapViewController *)self performSelector:sel_selectAnnotationIfSingleFriend_ withObject:v6 afterDelay:0.5];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke;
          block[3] = &unk_278FE2A10;
          block[4] = self;
          v39 = v6;
          dispatch_async(MEMORY[0x277D85CD0], block);
          v23 = v39;
          goto LABEL_26;
        }
      }

      else
      {
      }
    }

LABEL_18:
    if (!v4)
    {
      [v8 updateLocation:v6];
      v27 = LogCategory_Daemon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v8 description];
        *buf = 138412546;
        v41 = self;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&dword_24A4E3000, v27, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: update map with: %@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    if ([v6 locationType] == 2)
    {
      [(FMFMapViewController *)self liveAnimationDuration];
    }

    else
    {
      [(FMFMapViewController *)self nonLiveAnimationDuration];
    }

    v29 = v26;
    v30 = MEMORY[0x277D75D18];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke_114;
    v34[3] = &unk_278FE2AB0;
    v35 = v8;
    v36 = v6;
    v37 = self;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke_115;
    v33[3] = &unk_278FE2AD8;
    v33[4] = self;
    *&v33[5] = v29;
    [v30 animateWithDuration:196614 delay:v34 options:v33 animations:v29 completion:0.0];

    v23 = v35;
LABEL_26:

LABEL_27:
    v25 = [(FMFMapViewController *)self mapViewDelegate];
    v31 = [(FMFMapViewController *)self mapView];
    [v25 updateOverlaysForAnnotationMove:v6 mapView:v31];

    goto LABEL_28;
  }

  v11 = LogCategory_Daemon();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v6 description];
      *buf = 138412546;
      v41 = self;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_24A4E3000, v11, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: update map (annotation) with: %@", buf, 0x16u);
    }

    v14 = [(FMFMapViewController *)self mapView];
    v15 = [v14 viewForAnnotation:v8];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 updateWithLocation:v6];
    }

    goto LABEL_18;
  }

  if (v12)
  {
    v24 = [v6 description];
    *buf = 138412546;
    v41 = self;
    v42 = 2112;
    v43 = v24;
    _os_log_impl(&dword_24A4E3000, v11, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: update map (remove annotation) with: %@", buf, 0x16u);
  }

  v25 = [(FMFMapViewController *)self mapView];
  [v25 removeAnnotation:v8];
LABEL_28:

  [(FMFMapViewController *)self updateNoLocationView:!v4];
  v32 = *MEMORY[0x277D85DE8];
}

void __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  v3 = [v2 viewForAnnotation:*(a1 + 40)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 updateWithLocation:*(a1 + 40)];
  }
}

void __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke_114(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateLocation:*(a1 + 40)];
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = [*(a1 + 32) description];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_24A4E3000, v2, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: update map animated with: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __58__FMFMapViewController_updateMapWithNewLocation_animated___block_invoke_115(uint64_t a1)
{
  if ([*(a1 + 32) shouldZoomToFitNewLocations] && (objc_msgSend(*(a1 + 32), "_blockDidReceiveAnimation") & 1) == 0)
  {
    v3 = [*(a1 + 32) mapViewDelegate];
    v2 = [*(a1 + 32) mapView];
    [v3 zoomToFitAnnotationsForMapView:v2 includeMe:objc_msgSend(*(a1 + 32) duration:{"shouldZoomToFitMeAndLocations"), *(a1 + 40)}];
  }
}

- (void)recenterMap
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(FMFMapViewController *)self mapView];
  v4 = [v3 annotations];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  v7 = v5;
  if (!v6)
  {
LABEL_14:

    goto LABEL_15;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 |= [v12 locationType] == 2;
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  }

  while (v8);

  if (v9)
  {
    v13 = LogCategory_Daemon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = self;
      _os_log_impl(&dword_24A4E3000, v13, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@: recentering map", buf, 0xCu);
    }

    [(FMFMapViewController *)self nonLiveAnimationDuration];
    v15 = v14;
    v7 = [(FMFMapViewController *)self mapViewDelegate];
    v16 = [(FMFMapViewController *)self mapView];
    [v7 zoomToFitAnnotationsForMapView:v16 includeMe:-[FMFMapViewController shouldZoomToFitMeAndLocations](self duration:{"shouldZoomToFitMeAndLocations"), v15}];

    goto LABEL_14;
  }

LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setupRecenterMapTimer
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_recenterMap object:self];

  [(FMFMapViewController *)self performSelector:sel_recenterMap withObject:self afterDelay:5.0];
}

- (BOOL)isLocationAlreadyOnMap:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(FMFMapViewController *)self mapView];
  v5 = [v4 annotations];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 handle];
          v11 = [v10 serverId];
          v12 = [v17 handle];
          v13 = [v12 serverId];
          v14 = [v11 isEqualToString:v13];

          if (v14)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)canSelectAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 canSelectAnnotation:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)selectAnnotationIfSingleForMac
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(FMFMapViewController *)self singleAnnotationOnMap])
  {
    v3 = [(FMFMapViewController *)self mapView];
    v4 = [v3 annotations];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [(FMFMapViewController *)self canSelectAnnotation:v10, v14])
          {
            v12 = [(FMFMapViewController *)self mapViewDelegate];
            [v12 selectAnnotation:v10];

            goto LABEL_16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    [(FMFMapViewController *)self deselectAllAnnotations];
  }
}

- (void)deselectAllAnnotations
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(FMFMapViewController *)self mapView];
  v4 = [v3 annotations];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [(FMFMapViewController *)self mapView];
          [v11 deselectAnnotation:v10 animated:0];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)selectAnnotationIfSingleFriend:(id)a3
{
  v5 = a3;
  if (![(FMFMapViewController *)self isSimpleMap]&& [(FMFMapViewController *)self singleAnnotationOnMap]&& [(FMFMapViewController *)self canSelectAnnotation:v5])
  {
    v4 = [(FMFMapViewController *)self mapViewDelegate];
    [v4 selectAnnotation:v5];
  }

  else
  {
    [(FMFMapViewController *)self deselectAllAnnotations];
  }
}

- (BOOL)singleAnnotationOnMap
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(FMFMapViewController *)self mapView];
  v3 = [v2 annotations];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass & v7)
      {
        break;
      }

      v7 |= isKindOfClass;
      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  LOBYTE(v7) = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (void)removeAnnotationsFromMapForHandle:(id)a3
{
  v4 = [(FMFMapViewController *)self locationOnMapForHandle:a3 enforceServerId:0];
  if (v4)
  {
    v6 = v4;
    v5 = [(FMFMapViewController *)self mapView];
    [v5 removeAnnotation:v6];

    [(FMFMapViewController *)self updateNoLocationView:0];
    v4 = v6;
  }
}

- (BOOL)sessionContainsHandle:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFMapViewController *)self fmfSession];
  v6 = [v5 handles];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([v12 isEqual:{v4, v19}] & 1) == 0)
        {
          v13 = [v12 serverId];
          v14 = [v4 serverId];
          v15 = [v13 isEqual:v14];

          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        v16 = 1;
        goto LABEL_13;
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)refreshButtonTapped:(id)a3
{
  v4 = [(FMFMapViewController *)self handlesShowingLocations];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = [(FMFMapViewController *)self handlesShowingLocations];
    v8 = [v6 setWithSet:v7];

    v9 = [(FMFMapViewController *)self fmfSession];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__FMFMapViewController_refreshButtonTapped___block_invoke;
    v11[3] = &unk_278FE2B00;
    v12 = v8;
    v10 = v8;
    [v9 refreshLocationForHandles:v10 callerId:0 priority:1 completion:v11];
  }
}

void __44__FMFMapViewController_refreshButtonTapped___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = LogCategory_Daemon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "Error refreshing handles: %@ error: %@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)openInMapsButtonTapped:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = [(FMFMapViewController *)self fmfSession];
  v5 = [v4 handles];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB58];
    v8 = [(FMFMapViewController *)self fmfSession];
    v9 = [v8 handles];
    v26 = [v7 setWithCapacity:{objc_msgSend(v9, "count")}];

    v10 = dispatch_group_create();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [(FMFMapViewController *)self fmfSession];
    v12 = [v11 handles];

    v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(FMFMapViewController *)self locationOnMapForHandle:*(*(&v33 + 1) + 8 * v16) enforceServerId:0];
          v18 = [v17 location];

          if (v18)
          {
            dispatch_group_enter(v10);
            [v17 coordinate];
            v21 = [objc_alloc(MEMORY[0x277CD4F00]) initWithCoordinate:0 addressDictionary:{v19, v20}];
            v22 = [v17 handle];
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __47__FMFMapViewController_openInMapsButtonTapped___block_invoke;
            v29[3] = &unk_278FE2B28;
            v30 = v21;
            v31 = v26;
            v32 = v10;
            v23 = v21;
            [v22 prettyNameWithCompletion:v29];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v14);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__FMFMapViewController_openInMapsButtonTapped___block_invoke_2;
    block[3] = &unk_278FE29D0;
    v28 = v26;
    v24 = v26;
    dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __47__FMFMapViewController_openInMapsButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD4E80];
  v4 = a2;
  v5 = [[v3 alloc] initWithPlacemark:*(a1 + 32)];
  [v5 setName:v4];

  [*(a1 + 40) addObject:v5];
  dispatch_group_leave(*(a1 + 48));
}

void __47__FMFMapViewController_openInMapsButtonTapped___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_Daemon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_24A4E3000, v2, OS_LOG_TYPE_INFO, "Opening Map Items in Maps: %@", &v9, 0xCu);
  }

  v4 = MEMORY[0x277CD4E80];
  v5 = [*(a1 + 32) allObjects];
  LOBYTE(v4) = [v4 openMapsWithItems:v5 launchOptions:0];

  if ((v4 & 1) == 0)
  {
    v6 = LogCategory_Daemon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_24A4E3000, v6, OS_LOG_TYPE_INFO, "Error opening map items in maps: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDirectionsButtonEnabled
{
  v5 = [(FMFMapViewController *)self titleView];
  v3 = [v5 location];
  v4 = [(FMFMapViewController *)self directionsBarButtonItem];
  [v4 setEnabled:v3 != 0];
}

- (void)getDirections
{
  v2 = [(FMFMapViewController *)self titleView];
  v3 = [v2 location];

  [v3 coordinate];
  v5 = v4;
  v7 = v6;
  v8 = [MEMORY[0x277CD4E80] mapItemForCurrentLocation];
  v9 = [objc_alloc(MEMORY[0x277CD4F00]) initWithCoordinate:0 addressDictionary:{v5, v7}];
  v10 = [v3 handle];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__FMFMapViewController_getDirections__block_invoke;
  v13[3] = &unk_278FE2B50;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  [v10 prettyNameWithCompletion:v13];
}

void __37__FMFMapViewController_getDirections__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD4E80];
  v4 = a2;
  v5 = [[v3 alloc] initWithPlacemark:*(a1 + 32)];
  [v5 setName:v4];

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CD4B60], *MEMORY[0x277CD4B68], 0}];
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    *buf = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_24A4E3000, v7, OS_LOG_TYPE_INFO, "Getting directions in Maps from %@ to %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277CD4E80];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:{*(a1 + 40), v5, 0}];
  LOBYTE(v9) = [v9 openMapsWithItems:v10 launchOptions:v6];

  if ((v9 & 1) == 0)
  {
    v11 = LogCategory_Daemon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, v11, OS_LOG_TYPE_DEFAULT, "Error opening map directions", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCompact
{
  v3 = [(FMFMapViewController *)self traitCollection];
  v4 = 1;
  v5 = [MEMORY[0x277D75C80] traitCollectionWithVerticalSizeClass:1];
  if (([v3 containsTraitsInCollection:v5] & 1) == 0)
  {
    v6 = [(FMFMapViewController *)self traitCollection];
    v7 = [MEMORY[0x277D75C80] traitCollectionWithHorizontalSizeClass:1];
    v4 = [v6 containsTraitsInCollection:v7];
  }

  return v4;
}

- (void)presentMapOptionsModal:(id)a3
{
  v4 = objc_alloc_init(FMFMapOptionsViewController);
  [(FMFMapViewController *)self setMapOptionsVC:v4];

  [(FMFMapOptionsViewController *)self->_mapOptionsVC setDelegate:self];
  v5 = [(FMFMapViewController *)self isCompact];
  mapOptionsVC = self->_mapOptionsVC;
  if (v5)
  {
    [(FMFMapOptionsViewController *)mapOptionsVC setModalPresentationStyle:6];
    [(UIViewController *)self fmf_presentModalViewController:self->_mapOptionsVC];
    v9 = [(FMFMapViewController *)self navigationController];
    [v9 setToolbarHidden:1 animated:1];
  }

  else
  {
    [(FMFMapOptionsViewController *)mapOptionsVC setModalPresentationStyle:7];
    v7 = [(FMFMapViewController *)self navigationController];
    [v7 presentViewController:self->_mapOptionsVC animated:1 completion:0];

    v9 = [(FMFMapOptionsViewController *)self->_mapOptionsVC popoverPresentationController];
    [(FMFMapOptionsViewController *)self->_mapOptionsVC paneSize];
    [v9 setPopoverContentSize:?];
    v8 = [(FMFMapViewController *)self infoBarButtonItem];
    [v9 setBarButtonItem:v8];
  }
}

- (void)_dismiss:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "FMFMapViewController: dismiss %@", &v11, 0xCu);
  }

  v6 = [(FMFMapViewController *)self isCompact];
  v7 = [(FMFMapViewController *)self mapOptionsVC];
  v8 = v7;
  if (v6)
  {
    [(UIViewController *)self fmf_dismissModalViewController:v7];

    v8 = [(FMFMapViewController *)self navigationController];
    [v8 setToolbarHidden:0 animated:1];
  }

  else
  {
    v9 = [v7 presentingViewController];
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)mapTypeChangedNotification:(id)a3
{
  [(FMFMapViewController *)self setMapTypeLoaded:0];
  v4 = [(FMFMapViewController *)self defaultMapType];
  v5 = [(FMFMapViewController *)self mapView];
  [v5 setMapType:v4];
}

- (void)mapTypeChanged:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  [(FMFMapViewController *)self setDefaultMapType:?];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v4 setObject:v5 forKey:@"MAP_TYPE_DEFAULT_KEY"];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 synchronize];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"MAP_TYPE_DEFAULT_KEY" object:0];

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_24A4E3000, v8, OS_LOG_TYPE_DEFAULT, "FMFMapViewController: mapTypeChanged %lu", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)defaultMapType
{
  if (![(FMFMapViewController *)self mapTypeLoaded])
  {
    [(FMFMapViewController *)self setMapTypeLoaded:1];
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 objectForKey:@"MAP_TYPE_DEFAULT_KEY"];

    -[FMFMapViewController setDefaultMapType:](self, "setDefaultMapType:", [v4 unsignedIntegerValue]);
    if ([(FMFMapViewController *)self defaultMapType]== 1)
    {
      v5 = 3;
    }

    else
    {
      if ([(FMFMapViewController *)self defaultMapType]!= 2)
      {
LABEL_7:

        return self->_defaultMapType;
      }

      v5 = 4;
    }

    [(FMFMapViewController *)self setDefaultMapType:v5];
    [(FMFMapViewController *)self mapTypeChanged:[(FMFMapViewController *)self defaultMapType]];
    goto LABEL_7;
  }

  return self->_defaultMapType;
}

- (void)stopRefreshingLocations
{
  [(FMFMapViewController *)self set_refreshingIsPaused:1];
  [(FMFMapViewController *)self removeHandlesFromSession];

  [(FMFMapViewController *)self deselectAllAnnotations];
}

- (void)resumeRefreshingLocations
{
  [(FMFMapViewController *)self set_refreshingIsPaused:0];
  [(FMFMapViewController *)self addHandlesToSession];
  v3 = [(FMFMapViewController *)self noLocationView];
  [v3 updateLabel];

  [(FMFMapViewController *)self performSelector:sel_selectAnnotationIfSingleForMac withObject:0 afterDelay:0.5];
}

- (void)setShowFloatingMapLocationButton:(BOOL)a3
{
  v3 = a3;
  self->_showFloatingMapLocationButton = a3;
  v4 = [(FMFMapViewController *)self mapView];
  [v4 setShowsAttribution:!v3];
}

- (NSSet)handlesShowingLocations
{
  v2 = [(FMFMapViewController *)self fmfSession];
  v3 = [v2 handles];

  return v3;
}

- (void)setHandlesShowingLocations:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(FMFMapViewController *)self deselectAllAnnotations];
    v5 = [(FMFMapViewController *)self _internalHandlesShowingLocations];
    v6 = [v5 mutableCopy];

    [v6 minusSet:v4];
    v7 = LogCategory_Daemon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = getpid();
      v9 = [v4 description];
      v10 = [(FMFMapViewController *)self _internalHandlesShowingLocations];
      v11 = [v10 description];
      v12 = [v6 description];
      v14 = 138413314;
      v15 = self;
      v16 = 1024;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_24A4E3000, v7, OS_LOG_TYPE_DEFAULT, "⛳️FMFUI %@ {pid = %d}: want location for %@ (internal: %@, to remove: %@)", &v14, 0x30u);
    }

    [(FMFMapViewController *)self stopShowingLocationsForHandles:v6];
    [(FMFMapViewController *)self startShowingLocationsForHandles:v4];
    [(FMFMapViewController *)self set_internalHandlesShowingLocations:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startShowingLocationsForHandles:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "Start showing location for handles: %@", &v8, 0xCu);
  }

  v6 = [(FMFMapViewController *)self fmfSession];
  [v6 addHandles:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopShowingLocationsForHandles:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&dword_24A4E3000, v5, OS_LOG_TYPE_DEFAULT, "Stop showing location for handles: %@", buf, 0xCu);
  }

  v6 = [(FMFMapViewController *)self fmfSession];
  [v6 removeHandles:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [(FMFMapViewController *)self removeAnnotationsFromMapForHandle:v12, v15];
        v13 = [(FMFMapViewController *)self refreshButton];
        [v13 removeLocationForHandle:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)zoomToFit
{
  [(FMFMapViewController *)self nonLiveAnimationDuration];
  v4 = v3;
  v6 = [(FMFMapViewController *)self mapViewDelegate];
  v5 = [(FMFMapViewController *)self mapView];
  [v6 zoomToFitAnnotationsForMapView:v5 includeMe:-[FMFMapViewController shouldZoomToFitMeAndLocations](self duration:{"shouldZoomToFitMeAndLocations"), v4}];
}

- (void)zoomToFit:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [(FMFMapViewController *)self nonLiveAnimationDuration];
    v4 = v5;
  }

  v7 = [(FMFMapViewController *)self mapViewDelegate];
  v6 = [(FMFMapViewController *)self mapView];
  [v7 zoomToFitAnnotationsForMapView:v6 includeMe:-[FMFMapViewController shouldZoomToFitMeAndLocations](self duration:{"shouldZoomToFitMeAndLocations"), v4}];
}

- (void)zoomAndSelectHandle:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFMapViewController *)self locationOnMapForHandle:v4 enforceServerId:0];
  if (v5)
  {
    if ([(FMFMapViewController *)self canSelectAnnotation:v5])
    {
      v6 = [(FMFMapViewController *)self mapViewDelegate];
      [v6 selectAnnotation:v5];
    }

    v7 = [(FMFMapViewController *)self mapViewDelegate];
    v8 = [(FMFMapViewController *)self mapView];
    [v7 zoomToFitLocation:v5 forMapView:v8];
  }

  else
  {
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_24A4E3000, v9, OS_LOG_TYPE_INFO, "zoomAndSelectHandle: location not found for handle: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (FMFSession)fmfSession
{
  fmfSession = self->_fmfSession;
  if (!fmfSession)
  {
    v4 = [objc_alloc(MEMORY[0x277D07BE0]) initWithDelegate:self];
    [(FMFMapViewController *)self setFmfSession:v4];

    v5 = [(FMFMapViewController *)self fmfSession];
    v6 = [(FMFMapViewController *)self debugContext];
    [v5 setDebugContext:v6];

    fmfSession = self->_fmfSession;
  }

  return fmfSession;
}

- (void)didReceiveLocation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__FMFMapViewController_didReceiveLocation___block_invoke;
  v6[3] = &unk_278FE2A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __43__FMFMapViewController_didReceiveLocation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) handle];
  LODWORD(v2) = [v2 sessionContainsHandle:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) handle];
    v6 = [v4 locationOnMapForHandle:v5 enforceServerId:0];

    if (v6)
    {
      v7 = [v6 locationType];
      if (v7 == [*(a1 + 40) locationType])
      {
        v8 = [v6 location];
        v9 = [*(a1 + 40) location];
        [v8 distanceFromLocation:v9];
        v11 = v10;

        if (v11 < 1.0)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      v12 = [*(a1 + 40) locationType];
      v13 = *(a1 + 32);
      if (v12 == 2)
      {
        [v13 liveAnimationDuration];
      }

      else
      {
        [v13 nonLiveAnimationDuration];
      }

      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    [*(a1 + 32) updateMapWithNewLocation:*(a1 + 40) animated:v15 > 0.0];
    if ([*(a1 + 32) shouldZoomToFitNewLocations] && (objc_msgSend(*(a1 + 32), "_blockDidReceiveAnimation") & 1) == 0)
    {
      v16 = [*(a1 + 32) mapViewDelegate];
      v17 = [*(a1 + 32) mapView];
      [v16 zoomToFitAnnotationsForMapView:v17 includeMe:objc_msgSend(*(a1 + 32) duration:{"shouldZoomToFitMeAndLocations"), v15}];
    }

    [*(a1 + 32) updateRefreshForLocation:*(a1 + 40)];
    goto LABEL_14;
  }

LABEL_15:
  [*(a1 + 32) _updateTitleViewLocation:*(a1 + 40)];
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);

  return [v18 didReceiveLocationForDelegateCallback:v19];
}

- (void)updateRefreshForLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapViewController *)self refreshButton];
  [v5 addLocation:v4];
}

- (void)didStopAbilityToGetLocationForHandle:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__FMFMapViewController_didStopAbilityToGetLocationForHandle___block_invoke;
  v6[3] = &unk_278FE2A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)removeAllFriendLocationsFromMap
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(FMFMapViewController *)self mapView];
  v4 = [v3 annotations];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = MEMORY[0x277D85CD0];
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __55__FMFMapViewController_removeAllFriendLocationsFromMap__block_invoke;
          v13[3] = &unk_278FE2A10;
          v13[4] = self;
          v13[5] = v11;
          dispatch_async(v9, v13);
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55__FMFMapViewController_removeAllFriendLocationsFromMap__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 removeAnnotation:*(a1 + 40)];
}

- (int64_t)userTrackingMode
{
  v2 = [(FMFMapViewController *)self currentTrackingMode];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (BOOL)isCurrentlyRotated
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FMFMapViewController.m" lineNumber:1306 description:@"FIXME: Test this code path.  As of Whitetail MapKit was never calling this method and it was just added for protocol conformance."];

  v5 = [(FMFMapViewController *)self mapView];
  LOBYTE(self) = [v5 isCurrentlyRotated];

  return self;
}

- (void)updateUserTrackingButtonState
{
  v2 = hasUserLocation;
  v3 = [(FMFMapViewController *)self userTrackingButton];
  [v3 setEnabled:v2];
}

- (void)didSelectLocation:(id)a3
{
  v6 = a3;
  [(FMFMapViewController *)self _updateTitleViewLocation:?];
  v4 = [(FMFMapViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 handle];
    [v4 fmfMapViewController:self didSelectHandle:v5];
  }
}

- (void)didDeselectLocation:(id)a3
{
  v6 = a3;
  [(FMFMapViewController *)self _updateTitleViewLocation:?];
  v4 = [(FMFMapViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v6 handle];
    [v4 fmfMapViewController:self didDeselectHandle:v5];
  }
}

- (void)reZoomToFit
{
  if ([(FMFMapViewController *)self shouldZoomToFitNewLocations])
  {
    [(FMFMapViewController *)self nonLiveAnimationDuration];
    v4 = v3;
    v6 = [(FMFMapViewController *)self mapViewDelegate];
    v5 = [(FMFMapViewController *)self mapView];
    [v6 zoomToFitAnnotationsForMapView:v5 includeMe:-[FMFMapViewController shouldZoomToFitMeAndLocations](self duration:{"shouldZoomToFitMeAndLocations"), v4}];
  }
}

- (void)didUpdateUserLocation:(id)a3
{
  hasUserLocation = 1;
  v4 = a3;
  [(FMFMapViewController *)self updateUserTrackingButtonState];
  [(FMFMapViewController *)self didReceiveLocationForDelegateCallback:v4];
}

- (void)didReceiveLocationForDelegateCallback:(id)a3
{
  v5 = a3;
  v4 = [(FMFMapViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 fmfMapViewController:self didReceiveLocation:v5];
  }
}

- (void)mapViewDidFinishRenderingMap
{
  v3 = LogCategory_Daemon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A4E3000, v3, OS_LOG_TYPE_DEFAULT, "mapViewDidFinishRenderingMap", v4, 2u);
  }

  [(FMFMapViewController *)self set_isRenderingInitialMap:0];
  if ([(FMFMapViewController *)self isSimpleMap])
  {
    [(FMFMapViewController *)self hideCachedMap];
  }
}

- (void)hideCachedMap
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __37__FMFMapViewController_hideCachedMap__block_invoke;
  v2[3] = &unk_278FE29D0;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.5];
}

void __37__FMFMapViewController_hideCachedMap__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cachedMapView];
  [v1 setAlpha:0.0];
}

- (id)annotationImageForAnnotation:(id)a3 andHandle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FMFMapViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 annotationContactForHandle:v6];
  }

  else
  {
    v9 = 0;
  }

  v19 = 0;
  +[FMFMapViewController annotationImageSize];
  v11 = v10;
  v12 = [(FMFMapViewController *)self _internalAnnotationTintColor];
  v13 = [FMFMonogramUtility monogramImageOfDiameter:v9 forContact:v12 useTintColor:1 useCustomFont:&v19 isPersonImage:v11];

  [v7 setIsBorderEnabled:(v19 & 1) == 0];
  if (!v13)
  {
    v14 = MEMORY[0x277D755B8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v14 imageNamed:@"person" inBundle:v15];
    v17 = [(FMFMapViewController *)self _internalAnnotationTintColor];
    v13 = [v16 tintedImageWithColor:v17];
  }

  return v13;
}

- (id)titleViewForSelectedHandle
{
  v3 = [(FMFMapViewController *)self titleView];
  v4 = [(FMFMapViewController *)self _selectedHandleAnnotation];
  [v3 updateLocation:v4];

  return [(FMFMapViewController *)self titleView];
}

- (void)_updateTitleViewLocation:(id)a3
{
  v13 = a3;
  v4 = [(FMFMapViewController *)self handlesShowingLocations];
  v5 = [v13 handle];
  if ([v4 containsObject:v5])
  {
    v6 = [(FMFMapViewController *)self handlesShowingLocations];
    if ([v6 count] == 1)
    {

      v7 = v13;
LABEL_9:
      v8 = [(FMFMapViewController *)self titleView];
      [v8 updateLocation:v7];
      goto LABEL_10;
    }

    v9 = [(FMFMapViewController *)self _selectedHandleAnnotation];
    v10 = [v9 handle];
    v11 = [v13 handle];
    v12 = [v10 isEqual:v11];

    v7 = v13;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = [(FMFMapViewController *)self handlesShowingLocations];
  if ([v8 count] >= 2)
  {
    v7 = [(FMFMapViewController *)self _selectedHandleAnnotation];

    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_10:

LABEL_11:
  [(FMFMapViewController *)self _updateDirectionsButtonEnabled];
}

- (id)_selectedHandleAnnotation
{
  v2 = [(FMFMapViewController *)self mapView];
  v3 = [v2 selectedAnnotations];
  v4 = [v3 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_internalAnnotationTintColor
{
  v2 = [(FMFMapViewController *)self annotationTintColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277D75348] fmfOrangeColor];
  }

  v5 = v4;

  return v5;
}

- (void)updateAllAnnotationsDueToAddressBookUpdate
{
  +[FMFMonogramUtility clearMonogramCache];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__FMFMapViewController_updateAllAnnotationsDueToAddressBookUpdate__block_invoke;
  block[3] = &unk_278FE29D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__FMFMapViewController_updateAllAnnotationsDueToAddressBookUpdate__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) noLocationView];
  [v2 updatePersonImageViewImage];

  v3 = [*(a1 + 32) mapView];
  v4 = [v3 annotations];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 handle];
          [v12 addressBookDidChange];

          v13 = [*(a1 + 32) mapView];
          [v13 removeAnnotation:v11];

          v14 = [*(a1 + 32) mapView];
          [v14 addAnnotation:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (FMFTitleView)titleView
{
  titleView = self->_titleView;
  if (!titleView)
  {
    v4 = [[FMFTitleView alloc] initFromNib];
    [(FMFMapViewController *)self setTitleView:v4];

    titleView = self->_titleView;
  }

  return titleView;
}

- (FMFMapViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end