@interface HULocationTriggerRegionEditorViewController
- (BOOL)_hasLocation;
- (GEOLocationShifter)locationShifter;
- (HULocationTriggerRegionEditorViewController)initWithCoder:(id)coder;
- (HULocationTriggerRegionEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HULocationTriggerRegionEditorViewController)initWithRegion:(id)region home:(id)home delegate:(id)delegate;
- (HULocationTriggerRegionEditorViewControllerDelegate)delegate;
- (id)_locationForRecentMetadataDictionary:(id)dictionary;
- (id)_shiftLocationIfNeeded:(id)needed isRetry:(BOOL)retry;
- (id)showLocationRegionInvalidAlert;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_firstLocalSearchResultRowIndex;
- (int64_t)_firstRecentRowIndex;
- (int64_t)_lastRecentRowIndex;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_proximityType;
- (void)_cancel:(id)_cancel;
- (void)_displayLocation:(id)location;
- (void)_done:(id)_done;
- (void)_reloadData;
- (void)_resetSearchResults;
- (void)_setupMap;
- (void)_showMapRegionForCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius animated:(BOOL)animated;
- (void)_updateRecentsWithSearchText:(id)text;
- (void)_updateUI;
- (void)_updateUIWithRegion:(id)region;
- (void)loadView;
- (void)mapRadiusView:(id)view radiusDidChange:(double)change radiusInPoints:(double)points;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)setRegion:(id)region;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HULocationTriggerRegionEditorViewController

- (HULocationTriggerRegionEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithRegion_home_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationTriggerRegionEditorViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerRegionEditorViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HULocationTriggerRegionEditorViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithRegion_home_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationTriggerRegionEditorViewController.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerRegionEditorViewController initWithCoder:]", v6}];

  return 0;
}

- (HULocationTriggerRegionEditorViewController)initWithRegion:(id)region home:(id)home delegate:(id)delegate
{
  regionCopy = region;
  homeCopy = home;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HULocationTriggerRegionEditorViewController;
  v12 = [(HULocationTriggerRegionEditorViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_region, region);
    objc_storeStrong(&v13->_home, home);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    [(HULocationTriggerRegionEditorViewController *)v13 _updateRecentsWithSearchText:0];
    v14 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerRegionEditorTitle", @"HULocationTriggerRegionEditorTitle", 1);
    [(HULocationTriggerRegionEditorViewController *)v13 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v13 action:sel__cancel_];
    navigationItem = [(HULocationTriggerRegionEditorViewController *)v13 navigationItem];
    [navigationItem setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__done_];
    navigationItem2 = [(HULocationTriggerRegionEditorViewController *)v13 navigationItem];
    [navigationItem2 setRightBarButtonItem:v17];
  }

  return v13;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v33 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v33 setBackgroundColor:systemBackgroundColor];

  v9 = [objc_alloc(MEMORY[0x277D759E8]) initWithFrame:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setSearchBar:v9];

  searchBar = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar setTranslatesAutoresizingMaskIntoConstraints:0];

  searchBar2 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar2 setAutocorrectionType:1];

  v12 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorSearchFieldPlaceholder", @"HULocationTriggerEditorSearchFieldPlaceholder", 1);
  searchBar3 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar3 setPlaceholder:v12];

  searchBar4 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar4 setDelegate:self];

  [v33 addSubview:self->_searchBar];
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setDividerView:v15];

  v16 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  dividerView = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  [dividerView setBackgroundColor:v16];

  dividerView2 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  [dividerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setTableView:v19];

  tableView = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView3 setKeyboardDismissMode:1];

  v23 = *MEMORY[0x277D76F30];
  tableView4 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView4 setRowHeight:v23];

  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v25 _scaledValueForValue:44.0];
  v27 = v26;
  tableView5 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:v27];

  tableView6 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView7 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  [tableView7 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [(HULocationTriggerRegionEditorViewController *)self _reloadData];
  tableView8 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v33 addSubview:tableView8];

  [(HULocationTriggerRegionEditorViewController *)self setView:v33];
  [(HULocationTriggerRegionEditorViewController *)self _updateUI];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v11 viewWillAppear:appear];
  if (-[HULocationTriggerRegionEditorViewController _hasLocation](self, "_hasLocation") && (-[HULocationTriggerRegionEditorViewController region](self, "region"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 regionType], v4, v5))
  {
    [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:0];
  }

  else
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:-[HULocationTriggerRegionEditorViewController _homeRowIndex](self inSection:{"_homeRowIndex"), 0}];
    [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:v6];

    tableView = [(HULocationTriggerRegionEditorViewController *)self tableView];
    selectedIndexPath = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
    [tableView selectRowAtIndexPath:selectedIndexPath animated:1 scrollPosition:1];

    tableView2 = [(HULocationTriggerRegionEditorViewController *)self tableView];
    selectedIndexPath2 = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
    [(HULocationTriggerRegionEditorViewController *)self tableView:tableView2 didSelectRowAtIndexPath:selectedIndexPath2];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v6 viewDidAppear:appear];
  dragView = [(HULocationTriggerRegionEditorViewController *)self dragView];
  mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [mapView setDelegate:dragView];

  [(HULocationTriggerRegionEditorViewController *)self _setupMap];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v11.receiver = self;
  v11.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v11 viewWillDisappear:disappear];
  mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];
  mapView2 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  annotations = [mapView2 annotations];
  [mapView removeAnnotations:annotations];

  mapView3 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [mapView3 setDelegate:0];

  dragView = [(HULocationTriggerRegionEditorViewController *)self dragView];
  [dragView removeFromSuperview];

  dragView2 = [(HULocationTriggerRegionEditorViewController *)self dragView];
  [dragView2 setDelegate:0];

  searchBar = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar resignFirstResponder];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v4 viewDidLayoutSubviews];
  [(HULocationTriggerRegionEditorViewController *)self _setupMap];
  tableView = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView scrollToNearestSelectedRowAtScrollPosition:0 animated:0];
}

- (void)updateViewConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  searchBar = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  leadingAnchor = [searchBar leadingAnchor];
  view = [(HULocationTriggerRegionEditorViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v9];

  searchBar2 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  trailingAnchor = [searchBar2 trailingAnchor];
  view2 = [(HULocationTriggerRegionEditorViewController *)self view];
  safeAreaLayoutGuide2 = [view2 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v15];

  searchBar3 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  topAnchor = [searchBar3 topAnchor];
  view3 = [(HULocationTriggerRegionEditorViewController *)self view];
  safeAreaLayoutGuide3 = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v21];

  searchBar4 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  heightAnchor = [searchBar4 heightAnchor];
  v24 = [heightAnchor constraintEqualToConstant:44.0];
  [array addObject:v24];

  tableView = [(HULocationTriggerRegionEditorViewController *)self tableView];
  leadingAnchor3 = [tableView leadingAnchor];
  view4 = [(HULocationTriggerRegionEditorViewController *)self view];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide4 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [array addObject:v30];

  tableView2 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  trailingAnchor3 = [tableView2 trailingAnchor];
  view5 = [(HULocationTriggerRegionEditorViewController *)self view];
  safeAreaLayoutGuide5 = [view5 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide5 trailingAnchor];
  v36 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [array addObject:v36];

  tableView3 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  topAnchor3 = [tableView3 topAnchor];
  searchBar5 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  bottomAnchor = [searchBar5 bottomAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [array addObject:v41];

  dividerView = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  superview = [dividerView superview];

  tableView4 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  bottomAnchor2 = [tableView4 bottomAnchor];
  if (superview)
  {
    dividerView2 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    [dividerView2 topAnchor];
  }

  else
  {
    dividerView2 = [(HULocationTriggerRegionEditorViewController *)self view];
    [dividerView2 bottomAnchor];
  }
  v47 = ;
  v48 = [bottomAnchor2 constraintEqualToAnchor:v47];
  [array addObject:v48];

  dividerView3 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  superview2 = [dividerView3 superview];

  if (superview2)
  {
    dividerView4 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    leadingAnchor5 = [dividerView4 leadingAnchor];
    view6 = [(HULocationTriggerRegionEditorViewController *)self view];
    safeAreaLayoutGuide6 = [view6 safeAreaLayoutGuide];
    leadingAnchor6 = [safeAreaLayoutGuide6 leadingAnchor];
    v56 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    [array addObject:v56];

    dividerView5 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    trailingAnchor5 = [dividerView5 trailingAnchor];
    view7 = [(HULocationTriggerRegionEditorViewController *)self view];
    safeAreaLayoutGuide7 = [view7 safeAreaLayoutGuide];
    trailingAnchor6 = [safeAreaLayoutGuide7 trailingAnchor];
    v62 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [array addObject:v62];

    dividerView6 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    heightAnchor2 = [dividerView6 heightAnchor];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v67 = [heightAnchor2 constraintEqualToConstant:1.0 / v66];
    [array addObject:v67];
  }

  mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];
  superview3 = [mapView superview];

  if (superview3)
  {
    mapView2 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    topAnchor4 = [mapView2 topAnchor];
    dividerView7 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    bottomAnchor3 = [dividerView7 bottomAnchor];
    v74 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3];
    [array addObject:v74];

    mapView3 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    leadingAnchor7 = [mapView3 leadingAnchor];
    view8 = [(HULocationTriggerRegionEditorViewController *)self view];
    safeAreaLayoutGuide8 = [view8 safeAreaLayoutGuide];
    leadingAnchor8 = [safeAreaLayoutGuide8 leadingAnchor];
    v80 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [array addObject:v80];

    mapView4 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    trailingAnchor7 = [mapView4 trailingAnchor];
    view9 = [(HULocationTriggerRegionEditorViewController *)self view];
    safeAreaLayoutGuide9 = [view9 safeAreaLayoutGuide];
    trailingAnchor8 = [safeAreaLayoutGuide9 trailingAnchor];
    v86 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [array addObject:v86];

    mapView5 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    bottomAnchor4 = [mapView5 bottomAnchor];
    view10 = [(HULocationTriggerRegionEditorViewController *)self view];
    bottomAnchor5 = [view10 bottomAnchor];
    v91 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [array addObject:v91];

    mapView6 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    heightAnchor3 = [mapView6 heightAnchor];
    v94 = [heightAnchor3 constraintEqualToConstant:300.0];
    [array addObject:v94];
  }

  constraints = [(HULocationTriggerRegionEditorViewController *)self constraints];
  v96 = [array isEqual:constraints];

  if ((v96 & 1) == 0)
  {
    v97 = MEMORY[0x277CCAAD0];
    constraints2 = [(HULocationTriggerRegionEditorViewController *)self constraints];
    [v97 deactivateConstraints:constraints2];

    [(HULocationTriggerRegionEditorViewController *)self setConstraints:array];
    v99 = MEMORY[0x277CCAAD0];
    constraints3 = [(HULocationTriggerRegionEditorViewController *)self constraints];
    [v99 activateConstraints:constraints3];
  }

  v101.receiver = self;
  v101.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v101 updateViewConstraints];
}

- (id)showLocationRegionInvalidAlert
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  home = [(HULocationTriggerRegionEditorViewController *)self home];
  name = [home name];
  v12 = HULocalizedStringWithFormat(@"HUPresenceEventUnsupportedCustomLocationAlertMessageResetUsersFormat", @"%@", v6, v7, v8, v9, v10, v11, name);

  v13 = MEMORY[0x277D75110];
  v14 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertTitleResetUsers", @"HUPresenceEventUnsupportedCustomLocationAlertTitleResetUsers", 1);
  v15 = [v13 alertControllerWithTitle:v14 message:v12 preferredStyle:1];

  v16 = MEMORY[0x277D750F8];
  v17 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertActionContinue", @"HUPresenceEventUnsupportedCustomLocationAlertActionContinue", 1);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__HULocationTriggerRegionEditorViewController_showLocationRegionInvalidAlert__block_invoke;
  v29[3] = &unk_277DB7600;
  v18 = v3;
  v30 = v18;
  v19 = [v16 actionWithTitle:v17 style:0 handler:v29];
  [v15 addAction:v19];

  v20 = MEMORY[0x277D750F8];
  v21 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertActionCancel", @"HUPresenceEventUnsupportedCustomLocationAlertActionCancel", 1);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __77__HULocationTriggerRegionEditorViewController_showLocationRegionInvalidAlert__block_invoke_2;
  v27[3] = &unk_277DB7600;
  v22 = v18;
  v28 = v22;
  v23 = [v20 actionWithTitle:v21 style:1 handler:v27];
  [v15 addAction:v23];

  [(HULocationTriggerRegionEditorViewController *)self presentViewController:v15 animated:1 completion:0];
  v24 = v28;
  v25 = v22;

  return v22;
}

- (void)_updateUI
{
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  [(HULocationTriggerRegionEditorViewController *)self _updateUIWithRegion:region];
}

- (void)_updateUIWithRegion:(id)region
{
  regionCopy = region;
  [(HULocationTriggerRegionEditorViewController *)self loadViewIfNeeded];
  _hasLocation = [(HULocationTriggerRegionEditorViewController *)self _hasLocation];
  identifier = [regionCopy identifier];
  searchBar = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [searchBar setText:identifier];

  if (_hasLocation)
  {
    searchBar2 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    [searchBar2 resignFirstResponder];

    mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];

    if (!mapView)
    {
      v9 = objc_alloc(MEMORY[0x277CD4EC8]);
      v10 = *MEMORY[0x277CBF3A0];
      v11 = *(MEMORY[0x277CBF3A0] + 8);
      v12 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
      v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
      [(HULocationTriggerRegionEditorViewController *)self setMapView:v14];

      mapView2 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [mapView2 setDelegate:self];

      mapView3 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [mapView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      mapView4 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [mapView4 setPitchEnabled:0];

      mapView5 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [mapView5 setRotateEnabled:0];

      mapView6 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [mapView6 setShowsUserLocation:1];

      v20 = [HULocationTriggerEditorMapDragRadiusView alloc];
      circularRegion = [regionCopy circularRegion];
      [circularRegion radius];
      v23 = [(HULocationTriggerEditorMapDragRadiusView *)v20 initWithFrame:self radiusInMeters:v10 delegate:v11, v12, v13, v22];
      [(HULocationTriggerRegionEditorViewController *)self setDragView:v23];

      dragView = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [dragView setAutoresizingMask:18];

      clearColor = [MEMORY[0x277D75348] clearColor];
      dragView2 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [dragView2 setBackgroundColor:clearColor];

      mapView7 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      dragView3 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [dragView3 setMapView:mapView7];

      _proximityType = [(HULocationTriggerRegionEditorViewController *)self _proximityType];
      dragView4 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [dragView4 setProximity:_proximityType];

      [(MKMapView *)self->_mapView addSubview:self->_dragView];
    }

    view = [(HULocationTriggerRegionEditorViewController *)self view];
    [view addSubview:self->_mapView];

    view2 = [(HULocationTriggerRegionEditorViewController *)self view];
    [view2 addSubview:self->_dividerView];
  }

  else
  {
    mapView8 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [mapView8 removeFromSuperview];

    view2 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    [view2 removeFromSuperview];
  }

  view3 = [(HULocationTriggerRegionEditorViewController *)self view];
  [view3 setNeedsUpdateConstraints];
}

- (void)_updateRecentsWithSearchText:(id)text
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (text)
  {
    v4 = MEMORY[0x277D00F30];
    v5 = *MEMORY[0x277D00EF8];
    v22 = *MEMORY[0x277D00ED8];
    v6 = MEMORY[0x277CBEA60];
    textCopy = text;
    v8 = [v6 arrayWithObjects:&v22 count:1];
    v9 = [v4 predicateForKey:v5 inCollection:v8];
    v23[0] = v9;
    v10 = MEMORY[0x277D00F30];
    v11 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF0] matchingText:textCopy comparison:1];
    v21[0] = v11;
    v12 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] matchingText:textCopy comparison:1];

    v21[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v14 = [v10 predicateSatisfyingAnySubpredicate:v13];
    v23[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v16 = [v4 predicateSatisfyingAllSubpredicates:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(MEMORY[0x277D00F38]);
  [v17 setSearchPredicate:v16];
  [v17 setDomains:&unk_282492840];
  frecencyComparator = [MEMORY[0x277D00F38] frecencyComparator];
  [v17 setComparator:frecencyComparator];

  defaultInstance = [MEMORY[0x277D00F28] defaultInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HULocationTriggerRegionEditorViewController__updateRecentsWithSearchText___block_invoke;
  v20[3] = &unk_277DB7628;
  v20[4] = self;
  [defaultInstance performRecentsSearch:v17 queue:MEMORY[0x277D85CD0] completion:v20];
}

void __76__HULocationTriggerRegionEditorViewController__updateRecentsWithSearchText___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:a2];
  [*(a1 + 32) setRecents:v3];

  v4 = [*(a1 + 32) tableView];
  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 32) tableView];
    v7 = [v6 superview];

    if (v7)
    {
      v8 = *(a1 + 32);

      [v8 _reloadData];
    }
  }
}

- (int64_t)_firstRecentRowIndex
{
  recents = [(HULocationTriggerRegionEditorViewController *)self recents];
  v4 = [recents count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    _homeRowIndex = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex];
    if (_homeRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return _homeRowIndex + 1;
    }
  }

  return v5;
}

- (int64_t)_lastRecentRowIndex
{
  _firstRecentRowIndex = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (_firstRecentRowIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = _firstRecentRowIndex;
    recents = [(HULocationTriggerRegionEditorViewController *)self recents];
    v4 = v5 + [recents count] - 1;
  }

  return v4;
}

- (int64_t)_firstLocalSearchResultRowIndex
{
  localSearchResults = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
  v4 = [localSearchResults count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    _lastRecentRowIndex = [(HULocationTriggerRegionEditorViewController *)self _lastRecentRowIndex];
    if (_lastRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      _lastRecentRowIndex = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex];
    }

    if (_lastRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return _lastRecentRowIndex + 1;
    }
  }

  return v5;
}

- (void)_reloadData
{
  tableView = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [tableView reloadData];
}

- (void)_setupMap
{
  if ([(HULocationTriggerRegionEditorViewController *)self _hasLocation])
  {
    mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];
    superview = [mapView superview];

    if (superview)
    {
      region = [(HULocationTriggerRegionEditorViewController *)self region];
      location = [region location];
      [(HULocationTriggerRegionEditorViewController *)self _displayLocation:location];
    }
  }
}

- (BOOL)_hasLocation
{
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  v3 = region != 0;

  return v3;
}

- (unint64_t)_proximityType
{
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  regionType = [region regionType];

  if (regionType != 1)
  {
    return 0;
  }

  region2 = [(HULocationTriggerRegionEditorViewController *)self region];
  circularRegion = [region2 circularRegion];
  if ([circularRegion notifyOnExit])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_displayLocation:(id)location
{
  locationCopy = location;
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  regionType = [region regionType];

  if (regionType != 1 || (-[HULocationTriggerRegionEditorViewController region](self, "region"), v7 = objc_claimAutoreleasedReturnValue(), [v7 circularRegion], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "radius"), v10 = v9, v8, v7, v10 < 100.0))
  {
    v10 = 100.0;
  }

  v11 = [(HULocationTriggerRegionEditorViewController *)self _shiftLocationIfNeeded:locationCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HULocationTriggerRegionEditorViewController__displayLocation___block_invoke;
  v13[3] = &unk_277DB7650;
  v13[4] = self;
  *&v13[5] = v10;
  v12 = [v11 addSuccessBlock:v13];
}

void __64__HULocationTriggerRegionEditorViewController__displayLocation___block_invoke(uint64_t a1, void *a2)
{
  [a2 coordinate];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 32) desiredAddressAnnotation];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) desiredAddressAnnotation];
    [v9 coordinate];
    if (v10 == v4)
    {
      v11 = [*(a1 + 32) desiredAddressAnnotation];
      [v11 coordinate];
      v13 = v12;

      if (v13 == v6)
      {
        return;
      }
    }

    else
    {
    }
  }

  v20 = [objc_alloc(MEMORY[0x277CD4F08]) initWithCoordinate:{v4, v6}];
  [*(a1 + 32) _showMapRegionForCoordinate:1 radius:v4 animated:{v6, *(a1 + 40)}];
  v14 = [*(a1 + 32) mapView];
  v15 = [*(a1 + 32) mapView];
  v16 = [v15 annotations];
  [v14 removeAnnotations:v16];

  [*(a1 + 32) setDesiredAddressAnnotation:v20];
  v17 = [*(a1 + 32) mapView];
  [v17 addAnnotation:v20];

  v18 = [*(a1 + 32) mapView];
  v19 = [*(a1 + 32) desiredAddressAnnotation];
  [v18 selectAnnotation:v19 animated:1];
}

- (id)_locationForRecentMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [dictionaryCopy objectForKey:@"longitude"];
  [v7 doubleValue];
  v9 = CLLocationCoordinate2DMake(v6, v8);

  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  v11 = [dictionaryCopy objectForKey:@"hAccuracy"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [dictionaryCopy objectForKey:@"vAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  date = [MEMORY[0x277CBEAA8] date];
  v18 = [dictionaryCopy objectForKey:@"referenceFrame"];

  v19 = [v10 initWithCoordinate:date altitude:objc_msgSend(v18 horizontalAccuracy:"integerValue") verticalAccuracy:v9.latitude timestamp:v9.longitude referenceFrame:{0.0, v13, v16}];

  return v19;
}

- (void)_showMapRegionForCoordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius animated:(BOOL)animated
{
  animatedCopy = animated;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  [(HULocationTriggerRegionEditorViewController *)self radiusInPoints];
  v10 = 3.5;
  if (v11 > 1.0)
  {
    mapView = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [mapView bounds];
    v14 = v13;
    [(HULocationTriggerRegionEditorViewController *)self radiusInPoints];
    v10 = v14 / v15;
  }

  v16 = MEMORY[0x20F31EB00](latitude, longitude, 0.0, v10 * radius);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  mapView2 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [mapView2 regionThatFits:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (fabs(v27) <= 180.0 && fabs(v25) <= 90.0 && v29 >= 0.0 && v29 <= 180.0 && v31 >= 0.0 && v31 <= 360.0)
  {
    mapView3 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [mapView3 setRegion:animatedCopy animated:{v25, v27, v29, v31}];
  }
}

- (void)setRegion:(id)region
{
  regionCopy = region;
  if (self->_region != regionCopy)
  {
    v8 = regionCopy;
    objc_storeStrong(&self->_region, region);
    _proximityType = [(HULocationTriggerRegionEditorViewController *)self _proximityType];
    dragView = [(HULocationTriggerRegionEditorViewController *)self dragView];
    [dragView setProximity:_proximityType];

    regionCopy = v8;
  }
}

- (void)_cancel:(id)_cancel
{
  delegate = [(HULocationTriggerRegionEditorViewController *)self delegate];
  [delegate regionEditorDidCancel:self];
}

- (void)_done:(id)_done
{
  delegate = [(HULocationTriggerRegionEditorViewController *)self delegate];
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  [delegate regionEditor:self didFinishWithRegion:region];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex:view];
  recents = [(HULocationTriggerRegionEditorViewController *)self recents];
  v7 = [recents count];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  localSearchResults = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
  v10 = [localSearchResults count];

  return v8 + v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"locationCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"locationCell"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [v7 textLabel];
  [textLabel setFont:v8];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setFont:v10];

  _firstRecentRowIndex = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  _firstLocalSearchResultRowIndex = [(HULocationTriggerRegionEditorViewController *)self _firstLocalSearchResultRowIndex];
  v14 = [pathCopy row];
  if (v14 == [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex])
  {
    name = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorOptionHome", @"HULocationTriggerEditorOptionHome", 1);
    _homeImage = [objc_opt_class() _homeImage];
    v17 = 0;
    goto LABEL_14;
  }

  if (_firstRecentRowIndex == 0x7FFFFFFFFFFFFFFFLL || [pathCopy row] < _firstRecentRowIndex || (v18 = objc_msgSend(pathCopy, "row"), v18 > -[HULocationTriggerRegionEditorViewController _lastRecentRowIndex](self, "_lastRecentRowIndex")))
  {
    if (_firstLocalSearchResultRowIndex == 0x7FFFFFFFFFFFFFFFLL || [pathCopy row] < _firstLocalSearchResultRowIndex)
    {
      _homeImage = 0;
      v17 = 0;
      name = 0;
      goto LABEL_14;
    }

    v19 = [pathCopy row] - _firstLocalSearchResultRowIndex;
    localSearchResults = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
    v21 = [localSearchResults objectAtIndexedSubscript:v19];

    name = [v21 name];
    _shortAddress = [v21 _shortAddress];
  }

  else
  {
    v23 = [pathCopy row] - _firstRecentRowIndex;
    recents = [(HULocationTriggerRegionEditorViewController *)self recents];
    v21 = [recents objectAtIndexedSubscript:v23];

    name = [v21 displayName];
    _shortAddress = [v21 address];
  }

  v17 = _shortAddress;
  _homeImage = [objc_opt_class() _pinImage];

LABEL_14:
  textLabel2 = [v7 textLabel];
  [textLabel2 setText:name];

  detailTextLabel2 = [v7 detailTextLabel];
  [detailTextLabel2 setText:v17];

  imageView = [v7 imageView];
  [imageView setImage:_homeImage];

  selectedIndexPath = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
  if ([pathCopy isEqual:selectedIndexPath])
  {
    if ([(HULocationTriggerRegionEditorViewController *)self _hasLocation])
    {
      v29 = 3;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  [v7 setAccessoryType:v29];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  selectedIndexPath = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
  v8 = [viewCopy cellForRowAtIndexPath:selectedIndexPath];
  [v8 setAccessoryType:0];

  v9 = [viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setAccessoryType:3];
  [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:pathCopy];
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  _firstRecentRowIndex = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  _firstLocalSearchResultRowIndex = [(HULocationTriggerRegionEditorViewController *)self _firstLocalSearchResultRowIndex];
  v13 = [pathCopy row];
  if (v13 == [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex])
  {
    home = [(HULocationTriggerRegionEditorViewController *)self home];
    region2 = [(HULocationTriggerRegionEditorViewController *)self region];
    v16 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", home, [region2 eventType]);
    goto LABEL_15;
  }

  if (_firstRecentRowIndex != 0x7FFFFFFFFFFFFFFFLL && [pathCopy row] >= _firstRecentRowIndex)
  {
    v17 = [pathCopy row];
    if (v17 <= [(HULocationTriggerRegionEditorViewController *)self _lastRecentRowIndex])
    {
      v23 = [pathCopy row] - _firstRecentRowIndex;
      recents = [(HULocationTriggerRegionEditorViewController *)self recents];
      v20 = [recents objectAtIndexedSubscript:v23];

      metadata = [v20 metadata];
      home = [(HULocationTriggerRegionEditorViewController *)self _locationForRecentMetadataDictionary:metadata];

      address = [v20 address];
      goto LABEL_11;
    }
  }

  if (_firstLocalSearchResultRowIndex != 0x7FFFFFFFFFFFFFFFLL && [pathCopy row] >= _firstLocalSearchResultRowIndex)
  {
    v18 = [pathCopy row] - _firstLocalSearchResultRowIndex;
    localSearchResults = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
    v20 = [localSearchResults objectAtIndexedSubscript:v18];

    placemark = [v20 placemark];
    home = [placemark location];

    address = [v20 name];
LABEL_11:
    region2 = address;

    goto LABEL_12;
  }

  region2 = 0;
  home = 0;
LABEL_12:
  circularRegion = [region circularRegion];
  if (circularRegion)
  {
    circularRegion2 = [region circularRegion];
    [circularRegion2 radius];
  }

  v28 = objc_alloc(MEMORY[0x277CBFBC8]);
  [home coordinate];
  v29 = [v28 initWithCenter:region2 radius:? identifier:?];
  [v29 setReferenceFrame:{objc_msgSend(home, "referenceFrame")}];
  region3 = [(HULocationTriggerRegionEditorViewController *)self region];
  [v29 setNotifyOnEntry:{objc_msgSend(region3, "eventType") == 1}];

  region4 = [(HULocationTriggerRegionEditorViewController *)self region];
  [v29 setNotifyOnExit:{objc_msgSend(region4, "eventType") == 2}];

  v16 = [HULocationTriggerRegion customRegionWithCircularRegion:v29];

LABEL_15:
  [(HULocationTriggerRegionEditorViewController *)self setRegion:v16];
  [(HULocationTriggerRegionEditorViewController *)self _updateUI];
}

- (void)mapRadiusView:(id)view radiusDidChange:(double)change radiusInPoints:(double)points
{
  [(HULocationTriggerRegionEditorViewController *)self setRadiusInPoints:view, points];
  region = [(HULocationTriggerRegionEditorViewController *)self region];
  regionType = [region regionType];

  if (regionType == 1)
  {
    region2 = [(HULocationTriggerRegionEditorViewController *)self region];
    circularRegion = [region2 circularRegion];

    v11 = objc_alloc(MEMORY[0x277CBFBC8]);
    [circularRegion center];
    v13 = v12;
    v15 = v14;
    identifier = [circularRegion identifier];
    v17 = [v11 initWithCenter:identifier radius:v13 identifier:{v15, change}];

    [v17 setNotifyOnEntry:{objc_msgSend(circularRegion, "notifyOnEntry")}];
    [v17 setNotifyOnExit:{objc_msgSend(circularRegion, "notifyOnExit")}];
    [v17 setReferenceFrame:{objc_msgSend(circularRegion, "referenceFrame")}];
    v18 = [HULocationTriggerRegion customRegionWithCircularRegion:v17];
    [(HULocationTriggerRegionEditorViewController *)self setRegion:v18];

    region3 = [(HULocationTriggerRegionEditorViewController *)self region];
    location = [region3 location];
    v21 = [(HULocationTriggerRegionEditorViewController *)self _shiftLocationIfNeeded:location];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92__HULocationTriggerRegionEditorViewController_mapRadiusView_radiusDidChange_radiusInPoints___block_invoke;
    v23[3] = &unk_277DB7650;
    v23[4] = self;
    *&v23[5] = change;
    v22 = [v21 addSuccessBlock:v23];
  }
}

uint64_t __92__HULocationTriggerRegionEditorViewController_mapRadiusView_radiusDidChange_radiusInPoints___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 coordinate];

  return [v2 _showMapRegionForCoordinate:0 radius:? animated:?];
}

- (void)_resetSearchResults
{
  localSearch = [(HULocationTriggerRegionEditorViewController *)self localSearch];

  if (localSearch)
  {
    localSearch2 = [(HULocationTriggerRegionEditorViewController *)self localSearch];
    [localSearch2 cancel];

    [(HULocationTriggerRegionEditorViewController *)self setLocalSearch:0];
  }

  [(HULocationTriggerRegionEditorViewController *)self setLocalSearchResults:0];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  [(HULocationTriggerRegionEditorViewController *)self _resetSearchResults];
  if (changeCopy && ![changeCopy isEqualToString:&stru_2823E0EE8])
  {
    searchBar = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    text = [searchBar text];
    [(HULocationTriggerRegionEditorViewController *)self _updateRecentsWithSearchText:text];

    v8 = objc_alloc_init(MEMORY[0x277CD4E38]);
    searchBar2 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    text2 = [searchBar2 text];
    [v8 setNaturalLanguageQuery:text2];

    v11 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v8];
    [(HULocationTriggerRegionEditorViewController *)self setLocalSearch:v11];

    localSearch = [(HULocationTriggerRegionEditorViewController *)self localSearch];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HULocationTriggerRegionEditorViewController_searchBar_textDidChange___block_invoke;
    v13[3] = &unk_277DB7678;
    v13[4] = self;
    [localSearch startWithCompletionHandler:v13];
  }

  else
  {
    [(HULocationTriggerRegionEditorViewController *)self _updateRecentsWithSearchText:0];
    [(HULocationTriggerRegionEditorViewController *)self _updateUIWithRegion:0];
    [(HULocationTriggerRegionEditorViewController *)self _reloadData];
  }
}

uint64_t __71__HULocationTriggerRegionEditorViewController_searchBar_textDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mapItems];
  [*(a1 + 32) setLocalSearchResults:v3];

  v4 = *(a1 + 32);

  return [v4 _reloadData];
}

- (id)_shiftLocationIfNeeded:(id)needed isRetry:(BOOL)retry
{
  neededCopy = needed;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  [neededCopy horizontalAccuracy];
  v9 = v8;
  [neededCopy coordinate];
  v11 = v10;
  [neededCopy coordinate];
  v13 = v12;
  referenceFrame = [neededCopy referenceFrame];
  v15 = [MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v11, v13}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke;
  aBlock[3] = &unk_277DB76A0;
  v16 = neededCopy;
  v34 = v16;
  v17 = v7;
  v35 = v17;
  v18 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_2;
  v27[3] = &unk_277DB76F0;
  retryCopy = retry;
  objc_copyWeak(&v30, &location);
  v19 = v16;
  v28 = v19;
  v20 = v17;
  v29 = v20;
  v21 = _Block_copy(v27);
  if (referenceFrame == 2 || !v15)
  {
    [v20 finishWithResult:v19];
  }

  else
  {
    locationShifter = [(HULocationTriggerRegionEditorViewController *)self locationShifter];
    v23 = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85CD0];
    [locationShifter shiftCoordinate:v18 accuracy:0 withCompletionHandler:v21 mustGoToNetworkCallback:v23 errorHandler:v11 callbackQueue:{v13, v9}];
  }

  v25 = v20;

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v25;
}

void __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v6 = CLLocationCoordinate2DMake(a2, a3);
  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  [*(a1 + 32) altitude];
  v9 = v8;
  [*(a1 + 32) verticalAccuracy];
  v11 = v10;
  v12 = [*(a1 + 32) timestamp];
  v13 = [v7 initWithCoordinate:v12 altitude:v6.latitude horizontalAccuracy:v6.longitude verticalAccuracy:v9 timestamp:{a4, v11}];

  [v13 setReferenceFrame:2];
  [*(a1 + 40) finishWithResult:v13];
}

void __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = [MEMORY[0x277D14640] sharedHandler];
  v6 = v5;
  v7 = *MEMORY[0x277D13C30];
  if (v4)
  {
    [v5 handleError:v3 operationType:*MEMORY[0x277D13C30] options:0 retryBlock:0 cancelBlock:0];

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_3;
    v11[3] = &unk_277DB76C8;
    objc_copyWeak(&v14, (a1 + 48));
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_4;
    v8[3] = &unk_277DB7558;
    v9 = *(a1 + 40);
    v10 = v3;
    [v6 handleError:v10 operationType:v7 options:0 retryBlock:v11 cancelBlock:v8];

    objc_destroyWeak(&v14);
  }
}

void __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _shiftLocationIfNeeded:*(a1 + 32) isRetry:1];
  v3 = [*(a1 + 40) completionHandlerAdapter];
  v4 = [v2 addCompletionBlock:v3];
}

- (GEOLocationShifter)locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_alloc_init(MEMORY[0x277D0EB88]);
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

- (HULocationTriggerRegionEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end