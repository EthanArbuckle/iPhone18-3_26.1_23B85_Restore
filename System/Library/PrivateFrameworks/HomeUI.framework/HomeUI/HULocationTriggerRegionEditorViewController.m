@interface HULocationTriggerRegionEditorViewController
- (BOOL)_hasLocation;
- (GEOLocationShifter)locationShifter;
- (HULocationTriggerRegionEditorViewController)initWithCoder:(id)a3;
- (HULocationTriggerRegionEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HULocationTriggerRegionEditorViewController)initWithRegion:(id)a3 home:(id)a4 delegate:(id)a5;
- (HULocationTriggerRegionEditorViewControllerDelegate)delegate;
- (id)_locationForRecentMetadataDictionary:(id)a3;
- (id)_shiftLocationIfNeeded:(id)a3 isRetry:(BOOL)a4;
- (id)showLocationRegionInvalidAlert;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_firstLocalSearchResultRowIndex;
- (int64_t)_firstRecentRowIndex;
- (int64_t)_lastRecentRowIndex;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_proximityType;
- (void)_cancel:(id)a3;
- (void)_displayLocation:(id)a3;
- (void)_done:(id)a3;
- (void)_reloadData;
- (void)_resetSearchResults;
- (void)_setupMap;
- (void)_showMapRegionForCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 animated:(BOOL)a5;
- (void)_updateRecentsWithSearchText:(id)a3;
- (void)_updateUI;
- (void)_updateUIWithRegion:(id)a3;
- (void)loadView;
- (void)mapRadiusView:(id)a3 radiusDidChange:(double)a4 radiusInPoints:(double)a5;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)setRegion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HULocationTriggerRegionEditorViewController

- (HULocationTriggerRegionEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithRegion_home_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULocationTriggerRegionEditorViewController.m" lineNumber:62 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerRegionEditorViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HULocationTriggerRegionEditorViewController)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithRegion_home_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HULocationTriggerRegionEditorViewController.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerRegionEditorViewController initWithCoder:]", v6}];

  return 0;
}

- (HULocationTriggerRegionEditorViewController)initWithRegion:(id)a3 home:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = HULocationTriggerRegionEditorViewController;
  v12 = [(HULocationTriggerRegionEditorViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_region, a3);
    objc_storeStrong(&v13->_home, a4);
    objc_storeWeak(&v13->_delegate, v11);
    [(HULocationTriggerRegionEditorViewController *)v13 _updateRecentsWithSearchText:0];
    v14 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerRegionEditorTitle", @"HULocationTriggerRegionEditorTitle", 1);
    [(HULocationTriggerRegionEditorViewController *)v13 setTitle:v14];

    v15 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v13 action:sel__cancel_];
    v16 = [(HULocationTriggerRegionEditorViewController *)v13 navigationItem];
    [v16 setLeftBarButtonItem:v15];

    v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v13 action:sel__done_];
    v18 = [(HULocationTriggerRegionEditorViewController *)v13 navigationItem];
    [v18 setRightBarButtonItem:v17];
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
  v8 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v33 setBackgroundColor:v8];

  v9 = [objc_alloc(MEMORY[0x277D759E8]) initWithFrame:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setSearchBar:v9];

  v10 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v11 setAutocorrectionType:1];

  v12 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorSearchFieldPlaceholder", @"HULocationTriggerEditorSearchFieldPlaceholder", 1);
  v13 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v13 setPlaceholder:v12];

  v14 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v14 setDelegate:self];

  [v33 addSubview:self->_searchBar];
  v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setDividerView:v15];

  v16 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  v17 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  [v17 setBackgroundColor:v16];

  v18 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

  v19 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:0 style:{v4, v5, v6, v7}];
  [(HULocationTriggerRegionEditorViewController *)self setTableView:v19];

  v20 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v20 setDataSource:self];

  v21 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v21 setDelegate:self];

  v22 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v22 setKeyboardDismissMode:1];

  v23 = *MEMORY[0x277D76F30];
  v24 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v24 setRowHeight:v23];

  v25 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v25 _scaledValueForValue:44.0];
  v27 = v26;
  v28 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v28 setEstimatedRowHeight:v27];

  v29 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  v31 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  [v30 deselectRowAtIndexPath:v31 animated:0];

  [(HULocationTriggerRegionEditorViewController *)self _reloadData];
  v32 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v33 addSubview:v32];

  [(HULocationTriggerRegionEditorViewController *)self setView:v33];
  [(HULocationTriggerRegionEditorViewController *)self _updateUI];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v11 viewWillAppear:a3];
  if (-[HULocationTriggerRegionEditorViewController _hasLocation](self, "_hasLocation") && (-[HULocationTriggerRegionEditorViewController region](self, "region"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 regionType], v4, v5))
  {
    [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:0];
  }

  else
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:-[HULocationTriggerRegionEditorViewController _homeRowIndex](self inSection:{"_homeRowIndex"), 0}];
    [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:v6];

    v7 = [(HULocationTriggerRegionEditorViewController *)self tableView];
    v8 = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
    [v7 selectRowAtIndexPath:v8 animated:1 scrollPosition:1];

    v9 = [(HULocationTriggerRegionEditorViewController *)self tableView];
    v10 = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
    [(HULocationTriggerRegionEditorViewController *)self tableView:v9 didSelectRowAtIndexPath:v10];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v6 viewDidAppear:a3];
  v4 = [(HULocationTriggerRegionEditorViewController *)self dragView];
  v5 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [v5 setDelegate:v4];

  [(HULocationTriggerRegionEditorViewController *)self _setupMap];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v11 viewWillDisappear:a3];
  v4 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  v5 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  v6 = [v5 annotations];
  [v4 removeAnnotations:v6];

  v7 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [v7 setDelegate:0];

  v8 = [(HULocationTriggerRegionEditorViewController *)self dragView];
  [v8 removeFromSuperview];

  v9 = [(HULocationTriggerRegionEditorViewController *)self dragView];
  [v9 setDelegate:0];

  v10 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v10 resignFirstResponder];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v4 viewDidLayoutSubviews];
  [(HULocationTriggerRegionEditorViewController *)self _setupMap];
  v3 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v3 scrollToNearestSelectedRowAtScrollPosition:0 animated:0];
}

- (void)updateViewConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  v5 = [v4 leadingAnchor];
  v6 = [(HULocationTriggerRegionEditorViewController *)self view];
  v7 = [v6 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  [v3 addObject:v9];

  v10 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  v11 = [v10 trailingAnchor];
  v12 = [(HULocationTriggerRegionEditorViewController *)self view];
  v13 = [v12 safeAreaLayoutGuide];
  v14 = [v13 trailingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  v17 = [v16 topAnchor];
  v18 = [(HULocationTriggerRegionEditorViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v22 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:44.0];
  [v3 addObject:v24];

  v25 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  v26 = [v25 leadingAnchor];
  v27 = [(HULocationTriggerRegionEditorViewController *)self view];
  v28 = [v27 safeAreaLayoutGuide];
  v29 = [v28 leadingAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];
  [v3 addObject:v30];

  v31 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  v32 = [v31 trailingAnchor];
  v33 = [(HULocationTriggerRegionEditorViewController *)self view];
  v34 = [v33 safeAreaLayoutGuide];
  v35 = [v34 trailingAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];
  [v3 addObject:v36];

  v37 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  v38 = [v37 topAnchor];
  v39 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v3 addObject:v41];

  v42 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  v43 = [v42 superview];

  v44 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  v45 = [v44 bottomAnchor];
  if (v43)
  {
    v46 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    [v46 topAnchor];
  }

  else
  {
    v46 = [(HULocationTriggerRegionEditorViewController *)self view];
    [v46 bottomAnchor];
  }
  v47 = ;
  v48 = [v45 constraintEqualToAnchor:v47];
  [v3 addObject:v48];

  v49 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
  v50 = [v49 superview];

  if (v50)
  {
    v51 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    v52 = [v51 leadingAnchor];
    v53 = [(HULocationTriggerRegionEditorViewController *)self view];
    v54 = [v53 safeAreaLayoutGuide];
    v55 = [v54 leadingAnchor];
    v56 = [v52 constraintEqualToAnchor:v55];
    [v3 addObject:v56];

    v57 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    v58 = [v57 trailingAnchor];
    v59 = [(HULocationTriggerRegionEditorViewController *)self view];
    v60 = [v59 safeAreaLayoutGuide];
    v61 = [v60 trailingAnchor];
    v62 = [v58 constraintEqualToAnchor:v61];
    [v3 addObject:v62];

    v63 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    v64 = [v63 heightAnchor];
    v65 = [MEMORY[0x277D759A0] mainScreen];
    [v65 scale];
    v67 = [v64 constraintEqualToConstant:1.0 / v66];
    [v3 addObject:v67];
  }

  v68 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  v69 = [v68 superview];

  if (v69)
  {
    v70 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v71 = [v70 topAnchor];
    v72 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    v73 = [v72 bottomAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    [v3 addObject:v74];

    v75 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v76 = [v75 leadingAnchor];
    v77 = [(HULocationTriggerRegionEditorViewController *)self view];
    v78 = [v77 safeAreaLayoutGuide];
    v79 = [v78 leadingAnchor];
    v80 = [v76 constraintEqualToAnchor:v79];
    [v3 addObject:v80];

    v81 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v82 = [v81 trailingAnchor];
    v83 = [(HULocationTriggerRegionEditorViewController *)self view];
    v84 = [v83 safeAreaLayoutGuide];
    v85 = [v84 trailingAnchor];
    v86 = [v82 constraintEqualToAnchor:v85];
    [v3 addObject:v86];

    v87 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v88 = [v87 bottomAnchor];
    v89 = [(HULocationTriggerRegionEditorViewController *)self view];
    v90 = [v89 bottomAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    [v3 addObject:v91];

    v92 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v93 = [v92 heightAnchor];
    v94 = [v93 constraintEqualToConstant:300.0];
    [v3 addObject:v94];
  }

  v95 = [(HULocationTriggerRegionEditorViewController *)self constraints];
  v96 = [v3 isEqual:v95];

  if ((v96 & 1) == 0)
  {
    v97 = MEMORY[0x277CCAAD0];
    v98 = [(HULocationTriggerRegionEditorViewController *)self constraints];
    [v97 deactivateConstraints:v98];

    [(HULocationTriggerRegionEditorViewController *)self setConstraints:v3];
    v99 = MEMORY[0x277CCAAD0];
    v100 = [(HULocationTriggerRegionEditorViewController *)self constraints];
    [v99 activateConstraints:v100];
  }

  v101.receiver = self;
  v101.super_class = HULocationTriggerRegionEditorViewController;
  [(HULocationTriggerRegionEditorViewController *)&v101 updateViewConstraints];
}

- (id)showLocationRegionInvalidAlert
{
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HULocationTriggerRegionEditorViewController *)self home];
  v5 = [v4 name];
  v12 = HULocalizedStringWithFormat(@"HUPresenceEventUnsupportedCustomLocationAlertMessageResetUsersFormat", @"%@", v6, v7, v8, v9, v10, v11, v5);

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
  v3 = [(HULocationTriggerRegionEditorViewController *)self region];
  [(HULocationTriggerRegionEditorViewController *)self _updateUIWithRegion:v3];
}

- (void)_updateUIWithRegion:(id)a3
{
  v35 = a3;
  [(HULocationTriggerRegionEditorViewController *)self loadViewIfNeeded];
  v4 = [(HULocationTriggerRegionEditorViewController *)self _hasLocation];
  v5 = [v35 identifier];
  v6 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
  [v6 setText:v5];

  if (v4)
  {
    v7 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    [v7 resignFirstResponder];

    v8 = [(HULocationTriggerRegionEditorViewController *)self mapView];

    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x277CD4EC8]);
      v10 = *MEMORY[0x277CBF3A0];
      v11 = *(MEMORY[0x277CBF3A0] + 8);
      v12 = *(MEMORY[0x277CBF3A0] + 16);
      v13 = *(MEMORY[0x277CBF3A0] + 24);
      v14 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], v11, v12, v13}];
      [(HULocationTriggerRegionEditorViewController *)self setMapView:v14];

      v15 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [v15 setDelegate:self];

      v16 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

      v17 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [v17 setPitchEnabled:0];

      v18 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [v18 setRotateEnabled:0];

      v19 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      [v19 setShowsUserLocation:1];

      v20 = [HULocationTriggerEditorMapDragRadiusView alloc];
      v21 = [v35 circularRegion];
      [v21 radius];
      v23 = [(HULocationTriggerEditorMapDragRadiusView *)v20 initWithFrame:self radiusInMeters:v10 delegate:v11, v12, v13, v22];
      [(HULocationTriggerRegionEditorViewController *)self setDragView:v23];

      v24 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [v24 setAutoresizingMask:18];

      v25 = [MEMORY[0x277D75348] clearColor];
      v26 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [v26 setBackgroundColor:v25];

      v27 = [(HULocationTriggerRegionEditorViewController *)self mapView];
      v28 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [v28 setMapView:v27];

      v29 = [(HULocationTriggerRegionEditorViewController *)self _proximityType];
      v30 = [(HULocationTriggerRegionEditorViewController *)self dragView];
      [v30 setProximity:v29];

      [(MKMapView *)self->_mapView addSubview:self->_dragView];
    }

    v31 = [(HULocationTriggerRegionEditorViewController *)self view];
    [v31 addSubview:self->_mapView];

    v32 = [(HULocationTriggerRegionEditorViewController *)self view];
    [v32 addSubview:self->_dividerView];
  }

  else
  {
    v33 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [v33 removeFromSuperview];

    v32 = [(HULocationTriggerRegionEditorViewController *)self dividerView];
    [v32 removeFromSuperview];
  }

  v34 = [(HULocationTriggerRegionEditorViewController *)self view];
  [v34 setNeedsUpdateConstraints];
}

- (void)_updateRecentsWithSearchText:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277D00F30];
    v5 = *MEMORY[0x277D00EF8];
    v22 = *MEMORY[0x277D00ED8];
    v6 = MEMORY[0x277CBEA60];
    v7 = a3;
    v8 = [v6 arrayWithObjects:&v22 count:1];
    v9 = [v4 predicateForKey:v5 inCollection:v8];
    v23[0] = v9;
    v10 = MEMORY[0x277D00F30];
    v11 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF0] matchingText:v7 comparison:1];
    v21[0] = v11;
    v12 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EE8] matchingText:v7 comparison:1];

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
  v18 = [MEMORY[0x277D00F38] frecencyComparator];
  [v17 setComparator:v18];

  v19 = [MEMORY[0x277D00F28] defaultInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__HULocationTriggerRegionEditorViewController__updateRecentsWithSearchText___block_invoke;
  v20[3] = &unk_277DB7628;
  v20[4] = self;
  [v19 performRecentsSearch:v17 queue:MEMORY[0x277D85CD0] completion:v20];
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
  v3 = [(HULocationTriggerRegionEditorViewController *)self recents];
  v4 = [v3 count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v6 + 1;
    }
  }

  return v5;
}

- (int64_t)_lastRecentRowIndex
{
  v3 = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
    v6 = [(HULocationTriggerRegionEditorViewController *)self recents];
    v4 = v5 + [v6 count] - 1;
  }

  return v4;
}

- (int64_t)_firstLocalSearchResultRowIndex
{
  v3 = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
  v4 = [v3 count];

  v5 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v6 = [(HULocationTriggerRegionEditorViewController *)self _lastRecentRowIndex];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex];
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return v6 + 1;
    }
  }

  return v5;
}

- (void)_reloadData
{
  v2 = [(HULocationTriggerRegionEditorViewController *)self tableView];
  [v2 reloadData];
}

- (void)_setupMap
{
  if ([(HULocationTriggerRegionEditorViewController *)self _hasLocation])
  {
    v3 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    v4 = [v3 superview];

    if (v4)
    {
      v6 = [(HULocationTriggerRegionEditorViewController *)self region];
      v5 = [v6 location];
      [(HULocationTriggerRegionEditorViewController *)self _displayLocation:v5];
    }
  }
}

- (BOOL)_hasLocation
{
  v2 = [(HULocationTriggerRegionEditorViewController *)self region];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)_proximityType
{
  v3 = [(HULocationTriggerRegionEditorViewController *)self region];
  v4 = [v3 regionType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(HULocationTriggerRegionEditorViewController *)self region];
  v6 = [v5 circularRegion];
  if ([v6 notifyOnExit])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_displayLocation:(id)a3
{
  v4 = a3;
  v5 = [(HULocationTriggerRegionEditorViewController *)self region];
  v6 = [v5 regionType];

  if (v6 != 1 || (-[HULocationTriggerRegionEditorViewController region](self, "region"), v7 = objc_claimAutoreleasedReturnValue(), [v7 circularRegion], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "radius"), v10 = v9, v8, v7, v10 < 100.0))
  {
    v10 = 100.0;
  }

  v11 = [(HULocationTriggerRegionEditorViewController *)self _shiftLocationIfNeeded:v4];
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

- (id)_locationForRecentMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"latitude"];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectForKey:@"longitude"];
  [v7 doubleValue];
  v9 = CLLocationCoordinate2DMake(v6, v8);

  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  v11 = [v3 objectForKey:@"hAccuracy"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v3 objectForKey:@"vAccuracy"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v3 objectForKey:@"referenceFrame"];

  v19 = [v10 initWithCoordinate:v17 altitude:objc_msgSend(v18 horizontalAccuracy:"integerValue") verticalAccuracy:v9.latitude timestamp:v9.longitude referenceFrame:{0.0, v13, v16}];

  return v19;
}

- (void)_showMapRegionForCoordinate:(CLLocationCoordinate2D)a3 radius:(double)a4 animated:(BOOL)a5
{
  v5 = a5;
  longitude = a3.longitude;
  latitude = a3.latitude;
  [(HULocationTriggerRegionEditorViewController *)self radiusInPoints];
  v10 = 3.5;
  if (v11 > 1.0)
  {
    v12 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [v12 bounds];
    v14 = v13;
    [(HULocationTriggerRegionEditorViewController *)self radiusInPoints];
    v10 = v14 / v15;
  }

  v16 = MEMORY[0x20F31EB00](latitude, longitude, 0.0, v10 * a4);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(HULocationTriggerRegionEditorViewController *)self mapView];
  [v23 regionThatFits:{v16, v18, v20, v22}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  if (fabs(v27) <= 180.0 && fabs(v25) <= 90.0 && v29 >= 0.0 && v29 <= 180.0 && v31 >= 0.0 && v31 <= 360.0)
  {
    v32 = [(HULocationTriggerRegionEditorViewController *)self mapView];
    [v32 setRegion:v5 animated:{v25, v27, v29, v31}];
  }
}

- (void)setRegion:(id)a3
{
  v5 = a3;
  if (self->_region != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_region, a3);
    v6 = [(HULocationTriggerRegionEditorViewController *)self _proximityType];
    v7 = [(HULocationTriggerRegionEditorViewController *)self dragView];
    [v7 setProximity:v6];

    v5 = v8;
  }
}

- (void)_cancel:(id)a3
{
  v4 = [(HULocationTriggerRegionEditorViewController *)self delegate];
  [v4 regionEditorDidCancel:self];
}

- (void)_done:(id)a3
{
  v5 = [(HULocationTriggerRegionEditorViewController *)self delegate];
  v4 = [(HULocationTriggerRegionEditorViewController *)self region];
  [v5 regionEditor:self didFinishWithRegion:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex:a3];
  v6 = [(HULocationTriggerRegionEditorViewController *)self recents];
  v7 = [v6 count];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
  v10 = [v9 count];

  return v8 + v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v6];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"locationCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:3 reuseIdentifier:@"locationCell"];
  }

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v9 = [v7 textLabel];
  [v9 setFont:v8];

  v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  v11 = [v7 detailTextLabel];
  [v11 setFont:v10];

  v12 = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  v13 = [(HULocationTriggerRegionEditorViewController *)self _firstLocalSearchResultRowIndex];
  v14 = [v6 row];
  if (v14 == [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex])
  {
    v15 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorOptionHome", @"HULocationTriggerEditorOptionHome", 1);
    v16 = [objc_opt_class() _homeImage];
    v17 = 0;
    goto LABEL_14;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || [v6 row] < v12 || (v18 = objc_msgSend(v6, "row"), v18 > -[HULocationTriggerRegionEditorViewController _lastRecentRowIndex](self, "_lastRecentRowIndex")))
  {
    if (v13 == 0x7FFFFFFFFFFFFFFFLL || [v6 row] < v13)
    {
      v16 = 0;
      v17 = 0;
      v15 = 0;
      goto LABEL_14;
    }

    v19 = [v6 row] - v13;
    v20 = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
    v21 = [v20 objectAtIndexedSubscript:v19];

    v15 = [v21 name];
    v22 = [v21 _shortAddress];
  }

  else
  {
    v23 = [v6 row] - v12;
    v24 = [(HULocationTriggerRegionEditorViewController *)self recents];
    v21 = [v24 objectAtIndexedSubscript:v23];

    v15 = [v21 displayName];
    v22 = [v21 address];
  }

  v17 = v22;
  v16 = [objc_opt_class() _pinImage];

LABEL_14:
  v25 = [v7 textLabel];
  [v25 setText:v15];

  v26 = [v7 detailTextLabel];
  [v26 setText:v17];

  v27 = [v7 imageView];
  [v27 setImage:v16];

  v28 = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
  if ([v6 isEqual:v28])
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v32 = a4;
  v6 = a3;
  [v6 deselectRowAtIndexPath:v32 animated:1];
  v7 = [(HULocationTriggerRegionEditorViewController *)self selectedIndexPath];
  v8 = [v6 cellForRowAtIndexPath:v7];
  [v8 setAccessoryType:0];

  v9 = [v6 cellForRowAtIndexPath:v32];

  [v9 setAccessoryType:3];
  [(HULocationTriggerRegionEditorViewController *)self setSelectedIndexPath:v32];
  v10 = [(HULocationTriggerRegionEditorViewController *)self region];
  v11 = [(HULocationTriggerRegionEditorViewController *)self _firstRecentRowIndex];
  v12 = [(HULocationTriggerRegionEditorViewController *)self _firstLocalSearchResultRowIndex];
  v13 = [v32 row];
  if (v13 == [(HULocationTriggerRegionEditorViewController *)self _homeRowIndex])
  {
    v14 = [(HULocationTriggerRegionEditorViewController *)self home];
    v15 = [(HULocationTriggerRegionEditorViewController *)self region];
    v16 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", v14, [v15 eventType]);
    goto LABEL_15;
  }

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && [v32 row] >= v11)
  {
    v17 = [v32 row];
    if (v17 <= [(HULocationTriggerRegionEditorViewController *)self _lastRecentRowIndex])
    {
      v23 = [v32 row] - v11;
      v24 = [(HULocationTriggerRegionEditorViewController *)self recents];
      v20 = [v24 objectAtIndexedSubscript:v23];

      v25 = [v20 metadata];
      v14 = [(HULocationTriggerRegionEditorViewController *)self _locationForRecentMetadataDictionary:v25];

      v22 = [v20 address];
      goto LABEL_11;
    }
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL && [v32 row] >= v12)
  {
    v18 = [v32 row] - v12;
    v19 = [(HULocationTriggerRegionEditorViewController *)self localSearchResults];
    v20 = [v19 objectAtIndexedSubscript:v18];

    v21 = [v20 placemark];
    v14 = [v21 location];

    v22 = [v20 name];
LABEL_11:
    v15 = v22;

    goto LABEL_12;
  }

  v15 = 0;
  v14 = 0;
LABEL_12:
  v26 = [v10 circularRegion];
  if (v26)
  {
    v27 = [v10 circularRegion];
    [v27 radius];
  }

  v28 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v14 coordinate];
  v29 = [v28 initWithCenter:v15 radius:? identifier:?];
  [v29 setReferenceFrame:{objc_msgSend(v14, "referenceFrame")}];
  v30 = [(HULocationTriggerRegionEditorViewController *)self region];
  [v29 setNotifyOnEntry:{objc_msgSend(v30, "eventType") == 1}];

  v31 = [(HULocationTriggerRegionEditorViewController *)self region];
  [v29 setNotifyOnExit:{objc_msgSend(v31, "eventType") == 2}];

  v16 = [HULocationTriggerRegion customRegionWithCircularRegion:v29];

LABEL_15:
  [(HULocationTriggerRegionEditorViewController *)self setRegion:v16];
  [(HULocationTriggerRegionEditorViewController *)self _updateUI];
}

- (void)mapRadiusView:(id)a3 radiusDidChange:(double)a4 radiusInPoints:(double)a5
{
  [(HULocationTriggerRegionEditorViewController *)self setRadiusInPoints:a3, a5];
  v7 = [(HULocationTriggerRegionEditorViewController *)self region];
  v8 = [v7 regionType];

  if (v8 == 1)
  {
    v9 = [(HULocationTriggerRegionEditorViewController *)self region];
    v10 = [v9 circularRegion];

    v11 = objc_alloc(MEMORY[0x277CBFBC8]);
    [v10 center];
    v13 = v12;
    v15 = v14;
    v16 = [v10 identifier];
    v17 = [v11 initWithCenter:v16 radius:v13 identifier:{v15, a4}];

    [v17 setNotifyOnEntry:{objc_msgSend(v10, "notifyOnEntry")}];
    [v17 setNotifyOnExit:{objc_msgSend(v10, "notifyOnExit")}];
    [v17 setReferenceFrame:{objc_msgSend(v10, "referenceFrame")}];
    v18 = [HULocationTriggerRegion customRegionWithCircularRegion:v17];
    [(HULocationTriggerRegionEditorViewController *)self setRegion:v18];

    v19 = [(HULocationTriggerRegionEditorViewController *)self region];
    v20 = [v19 location];
    v21 = [(HULocationTriggerRegionEditorViewController *)self _shiftLocationIfNeeded:v20];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92__HULocationTriggerRegionEditorViewController_mapRadiusView_radiusDidChange_radiusInPoints___block_invoke;
    v23[3] = &unk_277DB7650;
    v23[4] = self;
    *&v23[5] = a4;
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
  v3 = [(HULocationTriggerRegionEditorViewController *)self localSearch];

  if (v3)
  {
    v4 = [(HULocationTriggerRegionEditorViewController *)self localSearch];
    [v4 cancel];

    [(HULocationTriggerRegionEditorViewController *)self setLocalSearch:0];
  }

  [(HULocationTriggerRegionEditorViewController *)self setLocalSearchResults:0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  [(HULocationTriggerRegionEditorViewController *)self _resetSearchResults];
  if (v5 && ![v5 isEqualToString:&stru_2823E0EE8])
  {
    v6 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    v7 = [v6 text];
    [(HULocationTriggerRegionEditorViewController *)self _updateRecentsWithSearchText:v7];

    v8 = objc_alloc_init(MEMORY[0x277CD4E38]);
    v9 = [(HULocationTriggerRegionEditorViewController *)self searchBar];
    v10 = [v9 text];
    [v8 setNaturalLanguageQuery:v10];

    v11 = [objc_alloc(MEMORY[0x277CD4E20]) initWithRequest:v8];
    [(HULocationTriggerRegionEditorViewController *)self setLocalSearch:v11];

    v12 = [(HULocationTriggerRegionEditorViewController *)self localSearch];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HULocationTriggerRegionEditorViewController_searchBar_textDidChange___block_invoke;
    v13[3] = &unk_277DB7678;
    v13[4] = self;
    [v12 startWithCompletionHandler:v13];
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

- (id)_shiftLocationIfNeeded:(id)a3 isRetry:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D2C900]);
  [v6 horizontalAccuracy];
  v9 = v8;
  [v6 coordinate];
  v11 = v10;
  [v6 coordinate];
  v13 = v12;
  v14 = [v6 referenceFrame];
  v15 = [MEMORY[0x277D0EB88] isLocationShiftRequiredForCoordinate:{v11, v13}];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke;
  aBlock[3] = &unk_277DB76A0;
  v16 = v6;
  v34 = v16;
  v17 = v7;
  v35 = v17;
  v18 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__HULocationTriggerRegionEditorViewController__shiftLocationIfNeeded_isRetry___block_invoke_2;
  v27[3] = &unk_277DB76F0;
  v31 = a4;
  objc_copyWeak(&v30, &location);
  v19 = v16;
  v28 = v19;
  v20 = v17;
  v29 = v20;
  v21 = _Block_copy(v27);
  if (v14 == 2 || !v15)
  {
    [v20 finishWithResult:v19];
  }

  else
  {
    v22 = [(HULocationTriggerRegionEditorViewController *)self locationShifter];
    v23 = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85CD0];
    [v22 shiftCoordinate:v18 accuracy:0 withCompletionHandler:v21 mustGoToNetworkCallback:v23 errorHandler:v11 callbackQueue:{v13, v9}];
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