@interface CPSPointsOfInterestMapViewController
- ($EFF74E1A437733FA0F87D07FFF1B01BE)mapVisibleRegion;
- (BOOL)isLocationAuthorized;
- (CGSize)buttonSize;
- (CLLocation)userLocation;
- (CPSPointsOfInterestMapViewController)initWithEntity:(id)entity resourceProvider:(id)provider;
- (id)_linearFocusItems;
- (id)_linearFocusMovementSequences;
- (id)mapView:(id)view clusterAnnotationForMemberAnnotations:(id)annotations;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)preferredFocusEnvironments;
- (id)template;
- (void)_notifyRegionDidChange;
- (void)_updateFocusedItem;
- (void)beginPanningWithCompletion:(id)completion;
- (void)centerMap;
- (void)didMoveToParentViewController:(id)controller;
- (void)didSelectButton:(id)button;
- (void)didUpdateEntity:(id)entity;
- (void)dismissPanView:(id)view;
- (void)highlightModel:(id)model;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)panBeganWithDirection:(int64_t)direction;
- (void)panEndedWithDirection:(int64_t)direction;
- (void)panWithDirection:(int64_t)direction;
- (void)picker:(id)picker didDeselectModel:(id)model;
- (void)picker:(id)picker didHighlightModel:(id)model;
- (void)picker:(id)picker didSelectModel:(id)model;
- (void)picker:(id)picker didUnhighlightModel:(id)model;
- (void)reloadAnnotations:(BOOL)annotations;
- (void)setUpLocationManager;
- (void)setUpMapView;
- (void)setUpPanView;
- (void)setupViews;
- (void)unhighlightModel:(id)model;
- (void)updateMapViewEdgeInsetsFittingAnnotations:(BOOL)annotations;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)zoomIn;
- (void)zoomOut;
- (void)zoomToLocation:(id)location;
@end

@implementation CPSPointsOfInterestMapViewController

- (CPSPointsOfInterestMapViewController)initWithEntity:(id)entity resourceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v17 = 0;
  objc_storeStrong(&v17, provider);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v4 = selfCopy;
  selfCopy = 0;
  v15.receiver = v4;
  v15.super_class = CPSPointsOfInterestMapViewController;
  v14 = [(CPSBaseEntityContentViewController *)&v15 initWithEntity:v16 resourceProvider:v17];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    v5 = [CPSPointsOfInterestPickerViewController alloc];
    v6 = [(CPSPointsOfInterestPickerViewController *)v5 initWithEntity:location[0] resourceProvider:v17];
    pickerViewController = selfCopy->_pickerViewController;
    selfCopy->_pickerViewController = v6;
    *&v8 = MEMORY[0x277D82BD8](pickerViewController).n128_u64[0];
    [(CPSPointsOfInterestPickerViewController *)selfCopy->_pickerViewController setDelegate:selfCopy, v8];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clusterAnnotations = selfCopy->_clusterAnnotations;
    selfCopy->_clusterAnnotations = v9;
    MEMORY[0x277D82BD8](clusterAnnotations);
  }

  v12 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (id)template
{
  v3 = objc_opt_class();
  resourceProvider = [(CPSBaseEntityContentViewController *)self resourceProvider];
  entityTemplate = [(CPSEntityResourceProvider *)resourceProvider entityTemplate];
  v6 = CPSSafeCast_8(v3, entityTemplate);
  MEMORY[0x277D82BD8](entityTemplate);
  MEMORY[0x277D82BD8](resourceProvider);

  return v6;
}

- (CLLocation)userLocation
{
  locationManager = [(CPSPointsOfInterestMapViewController *)self locationManager];
  location = [(CLLocationManager *)locationManager location];
  MEMORY[0x277D82BD8](locationManager);

  return location;
}

- (void)didUpdateEntity:(id)entity
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entity);
  v31.receiver = selfCopy;
  v31.super_class = CPSPointsOfInterestMapViewController;
  [(CPSBaseEntityContentViewController *)&v31 didUpdateEntity:location[0]];
  pickerViewController = selfCopy->_pickerViewController;
  entity = [(CPSBaseEntityContentViewController *)selfCopy entity];
  [(CPSBaseEntityContentViewController *)pickerViewController updateWithEntity:?];
  *&v3 = MEMORY[0x277D82BD8](entity).n128_u64[0];
  pointsOfInterest = [(CPSPointsOfInterestMapViewController *)selfCopy pointsOfInterest];
  v23PointsOfInterest = [pointsOfInterest pointsOfInterest];
  MEMORY[0x277D82BD8](pointsOfInterest);
  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v23PointsOfInterest, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v23PointsOfInterest);
  v25 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
  if (v25)
  {
    v18 = *__b[2];
    v19 = 0;
    v20 = v25;
    while (1)
    {
      v17 = v19;
      if (*__b[2] != v18)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v19);
      annotations = selfCopy->_annotations;
      identifier = [v28 identifier];
      v26 = [(NSMutableDictionary *)annotations objectForKeyedSubscript:?];
      *&v4 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
      v14 = v23PointsOfInterest;
      pointOfInterest = [(CPSPointOfInterestAnnotation *)v26 pointOfInterest];
      v16 = [v14 containsObject:?];
      v5 = MEMORY[0x277D82BD8](pointOfInterest).n128_u64[0];
      if (!v16)
      {
        v6 = [CPSPointOfInterestAnnotation alloc];
        v7 = [(CPSPointOfInterestAnnotation *)v6 initWithPointOfInterest:v28];
        v8 = v26;
        v26 = v7;
        v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      }

      v9 = v26;
      v10 = v29;
      identifier2 = [v28 identifier];
      [v10 setObject:v9 forKeyedSubscript:?];
      MEMORY[0x277D82BD8](identifier2);
      objc_storeStrong(&v26, 0);
      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
        if (!v20)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&selfCopy->_annotations, v29);
  [(CPSPointsOfInterestMapViewController *)selfCopy reloadAnnotations:[(CPSPointsOfInterestMapViewController *)selfCopy hasPerformedInitialLayout]^ 1];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v23PointsOfInterest, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestMapViewController *)selfCopy setupViews];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v5 viewDidLayoutSubviews];
  annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
  LOBYTE(v4) = 0;
  if ([(NSMutableDictionary *)annotations count])
  {
    v4 = ![(CPSPointsOfInterestMapViewController *)selfCopy hasPerformedInitialLayout];
  }

  *&v2 = MEMORY[0x277D82BD8](annotations).n128_u64[0];
  if (v4)
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy reloadAnnotations:1, v2];
  }

  else
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy updateMapViewEdgeInsetsFittingAnnotations:0, v2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v13 = 0x4065800000000000;
  v11 = sizeCopy.width * 0.45;
  v10 = 0x406B800000000000;
  if (sizeCopy.width * 0.45 >= 220.0)
  {
    v6 = 220.0;
  }

  else
  {
    v6 = v11;
  }

  v9 = v6;
  v12 = v6;
  if (v6 <= 172.0)
  {
    v5 = 172.0;
  }

  else
  {
    v5 = v12;
  }

  v8 = v5;
  pickerWidthConstraint = [(CPSPointsOfInterestMapViewController *)selfCopy pickerWidthConstraint];
  [(NSLayoutConstraint *)pickerWidthConstraint setConstant:v5];
  MEMORY[0x277D82BD8](pickerWidthConstraint);
  v7.receiver = selfCopy;
  v7.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v7 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v14 = a2;
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v12 viewDidAppear:appear];
  locationManager = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
  *&v3 = MEMORY[0x277D82BD8](locationManager).n128_u64[0];
  if (locationManager)
  {
    locationManager2 = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
    [(CLLocationManager *)locationManager2 startUpdatingLocation];
    MEMORY[0x277D82BD8](locationManager2);
  }

  view = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  [view frame];
  v9 = CGRectGetWidth(v16) * 0.45;
  MEMORY[0x277D82BD8](view);
  if (v9 >= 220.0)
  {
    v7 = 220.0;
  }

  else
  {
    v7 = v9;
  }

  if (v7 <= 172.0)
  {
    v6 = 0x4065800000000000;
  }

  else
  {
    v6 = *&v7;
  }

  pickerWidthConstraint = [(CPSPointsOfInterestMapViewController *)selfCopy pickerWidthConstraint];
  [(NSLayoutConstraint *)pickerWidthConstraint setConstant:v4];
  MEMORY[0x277D82BD8](pickerWidthConstraint);
}

- (void)didMoveToParentViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v4.receiver = selfCopy;
  v4.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v4 didMoveToParentViewController:location[0]];
  if (!location[0])
  {
    locationManager = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
    [(CLLocationManager *)locationManager stopUpdatingLocation];
    MEMORY[0x277D82BD8](locationManager);
  }

  objc_storeStrong(location, 0);
}

- (void)setupViews
{
  v171[6] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v161[1] = a2;
  tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
  view = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  [view setBackgroundColor:tableBackgroundColor];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](tableBackgroundColor);
  v161[0] = objc_opt_new();
  [(CPSPointsOfInterestMapViewController *)selfCopy setUpLocationManager];
  [(CPSPointsOfInterestMapViewController *)selfCopy setUpMapView];
  mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](mapView2);
  MEMORY[0x277D82BD8](view2);
  v115 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(CPSPointsOfInterestMapViewController *)selfCopy setMapVisibleRegionGuide:?];
  view3 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  mapVisibleRegionGuide = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
  [view3 addLayoutGuide:?];
  MEMORY[0x277D82BD8](mapVisibleRegionGuide);
  mapView3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  topAnchor = [(MKMapView *)mapView3 topAnchor];
  view4 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  topAnchor2 = [view4 topAnchor];
  v146 = [topAnchor constraintEqualToAnchor:?];
  v171[0] = v146;
  mapView4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  bottomAnchor = [(MKMapView *)mapView4 bottomAnchor];
  view5 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  bottomAnchor2 = [view5 bottomAnchor];
  v141 = [bottomAnchor constraintEqualToAnchor:?];
  v171[1] = v141;
  mapView5 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  leftAnchor = [(MKMapView *)mapView5 leftAnchor];
  view6 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  leftAnchor2 = [view6 leftAnchor];
  v136 = [leftAnchor constraintEqualToAnchor:?];
  v171[2] = v136;
  mapView6 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  rightAnchor = [(MKMapView *)mapView6 rightAnchor];
  view7 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  rightAnchor2 = [view7 rightAnchor];
  v131 = [rightAnchor constraintEqualToAnchor:?];
  v171[3] = v131;
  mapVisibleRegionGuide2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
  topAnchor3 = [(UILayoutGuide *)mapVisibleRegionGuide2 topAnchor];
  view8 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide = [view8 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v125 = [(NSLayoutYAxisAnchor *)topAnchor3 constraintEqualToAnchor:?];
  v171[4] = v125;
  mapVisibleRegionGuide3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
  bottomAnchor3 = [(UILayoutGuide *)mapVisibleRegionGuide3 bottomAnchor];
  view9 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view9 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide2 bottomAnchor];
  v119 = [(NSLayoutYAxisAnchor *)bottomAnchor3 constraintEqualToAnchor:?];
  v171[5] = v119;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:6];
  [v161[0] addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](mapVisibleRegionGuide3);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](mapVisibleRegionGuide2);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](mapView6);
  MEMORY[0x277D82BD8](v136);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](mapView5);
  MEMORY[0x277D82BD8](v141);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](mapView4);
  MEMORY[0x277D82BD8](v146);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](mapView3);
  v151 = [[CPSPointsOfInterestMapControlsViewController alloc] initWithMapDelegate:selfCopy];
  [(CPSPointsOfInterestMapViewController *)selfCopy setMapControlsViewController:?];
  mapControlsViewController = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
  v170[0] = mapControlsViewController;
  pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
  v170[1] = pickerViewController;
  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
  MEMORY[0x277D82BD8](pickerViewController);
  MEMORY[0x277D82BD8](mapControlsViewController);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v160);
  v155 = [obj countByEnumeratingWithState:__b objects:v169 count:16];
  if (v155)
  {
    v107 = *__b[2];
    v108 = 0;
    v109 = v155;
    while (1)
    {
      v106 = v108;
      if (*__b[2] != v107)
      {
        objc_enumerationMutation(obj);
      }

      v159 = *(__b[1] + 8 * v108);
      [v159 willMoveToParentViewController:selfCopy];
      [(CPSPointsOfInterestMapViewController *)selfCopy addChildViewController:v159];
      view10 = [v159 view];
      [view10 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v2 = MEMORY[0x277D82BD8](view10).n128_u64[0];
      view11 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
      view12 = [v159 view];
      [view11 addSubview:?];
      MEMORY[0x277D82BD8](view12);
      *&v3 = MEMORY[0x277D82BD8](view11).n128_u64[0];
      [v159 didMoveToParentViewController:{selfCopy, v3}];
      ++v108;
      if (v106 + 1 >= v109)
      {
        v108 = 0;
        v109 = [obj countByEnumeratingWithState:__b objects:v169 count:16];
        if (!v109)
        {
          break;
        }
      }
    }
  }

  *&v4 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  pickerViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
  view13 = [(CPSPointsOfInterestPickerViewController *)pickerViewController2 view];
  *&v5 = MEMORY[0x277D82BD8](pickerViewController2).n128_u64[0];
  mapControlsViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
  location = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController2 view];
  widthAnchor = [view13 widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:0.0];
  [(CPSPointsOfInterestMapViewController *)selfCopy setPickerWidthConstraint:?];
  MEMORY[0x277D82BD8](v60);
  *&v6 = MEMORY[0x277D82BD8](widthAnchor).n128_u64[0];
  v62 = v161[0];
  topAnchor5 = [view13 topAnchor];
  view14 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view14 safeAreaLayoutGuide];
  topAnchor6 = [safeAreaLayoutGuide3 topAnchor];
  v82 = [topAnchor5 constraintEqualToAnchor:4.0 constant:?];
  v168[0] = v82;
  bottomAnchor5 = [view13 bottomAnchor];
  view15 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view15 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide4 bottomAnchor];
  v77 = [bottomAnchor5 constraintEqualToAnchor:? constant:?];
  v168[1] = v77;
  pickerWidthConstraint = [(CPSPointsOfInterestMapViewController *)selfCopy pickerWidthConstraint];
  v168[2] = pickerWidthConstraint;
  topAnchor7 = [location topAnchor];
  view16 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide5 = [view16 safeAreaLayoutGuide];
  topAnchor8 = [safeAreaLayoutGuide5 topAnchor];
  v71 = [topAnchor7 constraintEqualToAnchor:8.0 constant:?];
  v168[3] = v71;
  bottomAnchor7 = [location bottomAnchor];
  view17 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide6 = [view17 safeAreaLayoutGuide];
  bottomAnchor8 = [safeAreaLayoutGuide6 bottomAnchor];
  v66 = [bottomAnchor7 constraintEqualToAnchor:-4.0 constant:?];
  v168[4] = v66;
  widthAnchor2 = [location widthAnchor];
  v64 = [widthAnchor2 constraintEqualToConstant:36.0];
  v168[5] = v64;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:6];
  [v62 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](bottomAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
  MEMORY[0x277D82BD8](view17);
  MEMORY[0x277D82BD8](bottomAnchor7);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](topAnchor8);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
  MEMORY[0x277D82BD8](view16);
  MEMORY[0x277D82BD8](topAnchor7);
  MEMORY[0x277D82BD8](pickerWidthConstraint);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](bottomAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view15);
  MEMORY[0x277D82BD8](bottomAnchor5);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](topAnchor6);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view14);
  *&v7 = MEMORY[0x277D82BD8](topAnchor5).n128_u64[0];
  mapVisibleRegionGuide4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
  leftAnchor3 = [(UILayoutGuide *)mapVisibleRegionGuide4 leftAnchor];
  view18 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide7 = [view18 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide7 leftAnchor];
  v94 = [(NSLayoutXAxisAnchor *)leftAnchor3 constraintEqualToAnchor:?];
  v167[0] = v94;
  mapVisibleRegionGuide5 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
  rightAnchor3 = [(UILayoutGuide *)mapVisibleRegionGuide5 rightAnchor];
  view19 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide8 = [view19 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide8 rightAnchor];
  v88 = [(NSLayoutXAxisAnchor *)rightAnchor3 constraintEqualToAnchor:?];
  v167[1] = v88;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
  [(CPSPointsOfInterestMapViewController *)selfCopy setPanModeConstraints:?];
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](rightAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
  MEMORY[0x277D82BD8](view19);
  MEMORY[0x277D82BD8](rightAnchor3);
  MEMORY[0x277D82BD8](mapVisibleRegionGuide5);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](leftAnchor4);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
  MEMORY[0x277D82BD8](view18);
  MEMORY[0x277D82BD8](leftAnchor3);
  *&v8 = MEMORY[0x277D82BD8](mapVisibleRegionGuide4).n128_u64[0];
  resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  templateEnvironment = [(CPSEntityResourceProvider *)resourceProvider templateEnvironment];
  rightHandDrive = [(CPSTemplateEnvironment *)templateEnvironment rightHandDrive];
  MEMORY[0x277D82BD8](templateEnvironment);
  *&v9 = MEMORY[0x277D82BD8](resourceProvider).n128_u64[0];
  if (rightHandDrive)
  {
    v37 = v161[0];
    leftAnchor5 = [location leftAnchor];
    view20 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide9 = [view20 safeAreaLayoutGuide];
    leftAnchor6 = [safeAreaLayoutGuide9 leftAnchor];
    v44 = [leftAnchor5 constraintEqualToAnchor:4.0 constant:?];
    v166[0] = v44;
    rightAnchor5 = [view13 rightAnchor];
    view21 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide10 = [view21 safeAreaLayoutGuide];
    rightAnchor6 = [safeAreaLayoutGuide10 rightAnchor];
    v39 = [rightAnchor5 constraintEqualToAnchor:-4.0 constant:?];
    v166[1] = v39;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:?];
    [v37 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](rightAnchor6);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide10);
    MEMORY[0x277D82BD8](view21);
    MEMORY[0x277D82BD8](rightAnchor5);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](leftAnchor6);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide9);
    MEMORY[0x277D82BD8](view20);
    *&v10 = MEMORY[0x277D82BD8](leftAnchor5).n128_u64[0];
    mapVisibleRegionGuide6 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
    leftAnchor7 = [(UILayoutGuide *)mapVisibleRegionGuide6 leftAnchor];
    rightAnchor7 = [location rightAnchor];
    v54 = [(NSLayoutXAxisAnchor *)leftAnchor7 constraintEqualToAnchor:?];
    v165[0] = v54;
    mapVisibleRegionGuide7 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
    rightAnchor8 = [(UILayoutGuide *)mapVisibleRegionGuide7 rightAnchor];
    leftAnchor8 = [view13 leftAnchor];
    v50 = [(NSLayoutXAxisAnchor *)rightAnchor8 constraintEqualToAnchor:?];
    v165[1] = v50;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:2];
    [(CPSPointsOfInterestMapViewController *)selfCopy setPickerModeConstraints:?];
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](leftAnchor8);
    MEMORY[0x277D82BD8](rightAnchor8);
    MEMORY[0x277D82BD8](mapVisibleRegionGuide7);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](rightAnchor7);
    MEMORY[0x277D82BD8](leftAnchor7);
    v11 = MEMORY[0x277D82BD8](mapVisibleRegionGuide6).n128_u64[0];
  }

  else
  {
    v16 = v161[0];
    leftAnchor9 = [view13 leftAnchor];
    view22 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide11 = [view22 safeAreaLayoutGuide];
    leftAnchor10 = [safeAreaLayoutGuide11 leftAnchor];
    v23 = [leftAnchor9 constraintEqualToAnchor:4.0 constant:?];
    v164[0] = v23;
    rightAnchor9 = [location rightAnchor];
    view23 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide12 = [view23 safeAreaLayoutGuide];
    rightAnchor10 = [safeAreaLayoutGuide12 rightAnchor];
    v18 = [rightAnchor9 constraintEqualToAnchor:-4.0 constant:?];
    v164[1] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:?];
    [v16 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](rightAnchor10);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide12);
    MEMORY[0x277D82BD8](view23);
    MEMORY[0x277D82BD8](rightAnchor9);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](leftAnchor10);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide11);
    MEMORY[0x277D82BD8](view22);
    *&v12 = MEMORY[0x277D82BD8](leftAnchor9).n128_u64[0];
    mapVisibleRegionGuide8 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
    leftAnchor11 = [(UILayoutGuide *)mapVisibleRegionGuide8 leftAnchor];
    rightAnchor11 = [view13 rightAnchor];
    v33 = [(NSLayoutXAxisAnchor *)leftAnchor11 constraintEqualToAnchor:?];
    v163[0] = v33;
    mapVisibleRegionGuide9 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
    rightAnchor12 = [(UILayoutGuide *)mapVisibleRegionGuide9 rightAnchor];
    leftAnchor12 = [location leftAnchor];
    v29 = [(NSLayoutXAxisAnchor *)rightAnchor12 constraintEqualToAnchor:?];
    v163[1] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
    [(CPSPointsOfInterestMapViewController *)selfCopy setPickerModeConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](leftAnchor12);
    MEMORY[0x277D82BD8](rightAnchor12);
    MEMORY[0x277D82BD8](mapVisibleRegionGuide9);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](rightAnchor11);
    MEMORY[0x277D82BD8](leftAnchor11);
    v11 = MEMORY[0x277D82BD8](mapVisibleRegionGuide8).n128_u64[0];
  }

  v15 = [(CPSPointsOfInterestMapViewController *)selfCopy pickerModeConstraints:*&v11];
  [v14 addObjectsFromArray:?];
  *&v13 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v161[0], v13}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&view13, 0);
  objc_storeStrong(&v160, 0);
  objc_storeStrong(v161, 0);
}

- (void)setUpMapView
{
  v33[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v30[1] = a2;
  resourceProvider = [(CPSBaseEntityContentViewController *)self resourceProvider];
  templateEnvironment = [(CPSEntityResourceProvider *)resourceProvider templateEnvironment];
  v30[0] = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
  MEMORY[0x277D82BD8](templateEnvironment);
  MEMORY[0x277D82BD8](resourceProvider);
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v15 = objc_alloc(MEMORY[0x277CBFC10]);
  v14 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v16 = v14;
  location = [v15 initWithEffectiveBundleIdentifier:v30[0] delegate:selfCopy onQueue:?];
  MEMORY[0x277D82BD8](v16);
  v3 = objc_alloc(MEMORY[0x277CD4EC8]);
  v17 = [v3 initWithFrame:location locationManager:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(CPSPointsOfInterestMapViewController *)selfCopy setMapView:?];
  isLocationAuthorized = [(CPSPointsOfInterestMapViewController *)selfCopy isLocationAuthorized];
  mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView setShowsUserLocation:isLocationAuthorized];
  mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView2 setShowsAttribution:0];
  mapView3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView3 setMapType:0];
  mapView4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView4 setDelegate:selfCopy];
  mapView5 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView5 setIsAccessibilityElement:0];
  MEMORY[0x277D82BD8](mapView5);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v29);
  v25 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v25)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v25;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v27 = 0;
      v27 = *(__b[1] + 8 * v10);
      mapView = selfCopy->_mapView;
      v5 = v27;
      v7 = NSStringFromClass(v27);
      [(MKMapView *)mapView registerClass:v5 forAnnotationViewWithReuseIdentifier:?];
      *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v32 count:{16, v4}];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
}

- (void)updateMapViewEdgeInsetsFittingAnnotations:(BOOL)annotations
{
  selfCopy = self;
  v92 = a2;
  annotationsCopy = annotations;
  mapVisibleRegionGuide = [(CPSPointsOfInterestMapViewController *)self mapVisibleRegionGuide];
  [(UILayoutGuide *)mapVisibleRegionGuide layoutFrame];
  v83 = v3;
  v84 = v4;
  v85 = v5;
  v86 = v6;
  view = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  [view bounds];
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = v10;
  UIEdgeInsetsFromRectWithRect();
  v87 = v11;
  v88 = v12;
  v89 = v13;
  v90 = v14;
  MEMORY[0x277D82BD8](view);
  mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  [(MKMapView *)mapView _edgeInsets];
  v75 = v15;
  v76 = v16;
  v77 = v17;
  v78 = v18;
  v48 = UIEdgeInsetsEqualToEdgeInsets(v87, v88, v89, v90, v15, v16, v17, v18);
  *&v19 = MEMORY[0x277D82BD8](mapView).n128_u64[0];
  if (!v48)
  {
    mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    [(MKMapView *)mapView2 centerCoordinate];
    *&v74 = v20;
    *(&v74 + 1) = v21;
    mapView3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    [(MKMapView *)mapView3 _setEdgeInsets:v87, v88, v89, v90];
    mapView4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    camera = [(MKMapView *)mapView4 camera];
    v73 = [(MKMapCamera *)camera copy];
    MEMORY[0x277D82BD8](camera);
    MEMORY[0x277D82BD8](mapView4);
    v72 = v74;
    v71 = v74;
    [v73 setCenterCoordinate:v74];
    annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
    allValues = [(NSMutableDictionary *)annotations allValues];
    v22 = MEMORY[0x277D82BD8](annotations).n128_u64[0];
    if (annotationsCopy && [allValues count])
    {
      [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegion];
      *&v67 = v23;
      *(&v67 + 1) = v24;
      v68 = v25;
      v69 = v26;
      v66 = CPSCoordinateRegionContainsAnnotations(allValues, v23, v24, v25, v26);
      if (v66)
      {
        v56 = v67;
        v55 = v67;
        [v73 setCenterCoordinate:v67];
      }

      else
      {
        *&v63 = CPSCoordinateRegionForAnnotations(allValues);
        *(&v63 + 1) = v28;
        v64 = v29;
        v65 = v27;
        if (v27 <= v69)
        {
          v58 = v63;
          v57 = v63;
          [v73 setCenterCoordinate:v63];
        }

        else
        {
          v38 = MEMORY[0x277CD4E58];
          mapVisibleRegionGuide2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapVisibleRegionGuide];
          [(UILayoutGuide *)mapVisibleRegionGuide2 layoutFrame];
          v59 = v30;
          v60 = v31;
          *&v61 = v32;
          *(&v61 + 1) = v33;
          v62 = v61;
          v34 = [v38 _CPS_cameraForRegion:*&v63 withSize:{*(&v63 + 1), v64, v65, v32, v33}];
          v35 = v73;
          v73 = v34;
          MEMORY[0x277D82BD8](v35);
          v22 = MEMORY[0x277D82BD8](mapVisibleRegionGuide2).n128_u64[0];
        }
      }
    }

    mapView5 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    v36 = v73;
    v49 = MEMORY[0x277D85DD0];
    v50 = -1073741824;
    v51 = 0;
    v52 = __82__CPSPointsOfInterestMapViewController_updateMapViewEdgeInsetsFittingAnnotations___block_invoke;
    v53 = &unk_278D913E8;
    v54 = MEMORY[0x277D82BE0](selfCopy);
    [(MKMapView *)mapView5 _CPS_setCamera:v36 animated:1 completionBlock:&v49];
    MEMORY[0x277D82BD8](mapView5);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&allValues, 0);
    objc_storeStrong(&v73, 0);
  }
}

- ($EFF74E1A437733FA0F87D07FFF1B01BE)mapVisibleRegion
{
  mapView = [(CPSPointsOfInterestMapViewController *)self mapView];
  mapVisibleRegionGuide = [(CPSPointsOfInterestMapViewController *)self mapVisibleRegionGuide];
  [(UILayoutGuide *)mapVisibleRegionGuide layoutFrame];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  mapView2 = [(CPSPointsOfInterestMapViewController *)self mapView];
  [(MKMapView *)mapView convertRect:v11 toRegionFromView:v12, v13, v14];
  MEMORY[0x277D82BD8](mapView2);
  MEMORY[0x277D82BD8](mapVisibleRegionGuide);
  MEMORY[0x277D82BD8](mapView);
  return result;
}

- (void)highlightModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  if (location[0])
  {
    clusterAnnotations = [(CPSPointsOfInterestMapViewController *)selfCopy clusterAnnotations];
    identifier = [location[0] identifier];
    v9 = [(NSMutableDictionary *)clusterAnnotations objectForKey:?];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v9)
    {
      v3 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
      v15 = 1;
      identifier2 = [location[0] identifier];
      v13 = 1;
      v12 = [(NSMutableDictionary *)annotations objectForKey:?];
      v11 = 1;
      v3 = MEMORY[0x277D82BE0](v12);
    }

    v17 = v3;
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](identifier2);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](annotations);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](identifier);
    *&v4 = MEMORY[0x277D82BD8](clusterAnnotations).n128_u64[0];
    mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    v10 = [(MKMapView *)mapView viewForAnnotation:v17];
    *&v5 = MEMORY[0x277D82BD8](mapView).n128_u64[0];
    [(MKAnnotationView *)v10 setSelected:1 animated:1, v5];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)unhighlightModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  if (location[0])
  {
    clusterAnnotations = [(CPSPointsOfInterestMapViewController *)selfCopy clusterAnnotations];
    identifier = [location[0] identifier];
    v9 = [(NSMutableDictionary *)clusterAnnotations objectForKey:?];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v9)
    {
      v3 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
      v15 = 1;
      identifier2 = [location[0] identifier];
      v13 = 1;
      v12 = [(NSMutableDictionary *)annotations objectForKey:?];
      v11 = 1;
      v3 = MEMORY[0x277D82BE0](v12);
    }

    v17 = v3;
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](identifier2);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](annotations);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](identifier);
    *&v4 = MEMORY[0x277D82BD8](clusterAnnotations).n128_u64[0];
    mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    v10 = [(MKMapView *)mapView viewForAnnotation:v17];
    *&v5 = MEMORY[0x277D82BD8](mapView).n128_u64[0];
    [(MKAnnotationView *)v10 setSelected:0 animated:1, v5];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)reloadAnnotations:(BOOL)annotations
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v50 = a2;
  annotationsCopy = annotations;
  if (([(CPSPointsOfInterestMapViewController *)self isViewLoaded]& 1) != 0)
  {
    annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
    allValues = [(NSMutableDictionary *)annotations allValues];
    v48 = [allValues mutableCopy];
    MEMORY[0x277D82BD8](allValues);
    mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    annotations2 = [(MKMapView *)mapView annotations];
    v47 = [(NSArray *)annotations2 mutableCopy];
    MEMORY[0x277D82BD8](annotations2);
    v46 = [v48 mutableCopy];
    v45 = objc_opt_new();
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v48);
    v37 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
    if (v37)
    {
      v29 = *__b[2];
      v30 = 0;
      v31 = v37;
      while (1)
      {
        v28 = v30;
        if (*__b[2] != v29)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(__b[1] + 8 * v30);
        if ([v47 containsObject:v44])
        {
          [v46 removeObject:v44];
        }

        ++v30;
        if (v28 + 1 >= v31)
        {
          v30 = 0;
          v31 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
          if (!v31)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    memset(v41, 0, sizeof(v41));
    v26 = MEMORY[0x277D82BE0](v47);
    v27 = [v26 countByEnumeratingWithState:v41 objects:v53 count:16];
    if (v27)
    {
      v23 = *v41[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*v41[2] != v23)
        {
          objc_enumerationMutation(v26);
        }

        v42 = *(v41[1] + 8 * v24);
        if (![v48 containsObject:v42])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v45 addObject:v42];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              location = MEMORY[0x277D82BE0](v42);
              memset(v38, 0, sizeof(v38));
              memberAnnotations = [location memberAnnotations];
              v21 = [memberAnnotations countByEnumeratingWithState:v38 objects:v52 count:16];
              if (v21)
              {
                v17 = *v38[2];
                v18 = 0;
                v19 = v21;
                while (1)
                {
                  v16 = v18;
                  if (*v38[2] != v17)
                  {
                    objc_enumerationMutation(memberAnnotations);
                  }

                  v39 = *(v38[1] + 8 * v18);
                  clusterAnnotations = [(CPSPointsOfInterestMapViewController *)selfCopy clusterAnnotations];
                  pointOfInterest = [v39 pointOfInterest];
                  identifier = [pointOfInterest identifier];
                  [(NSMutableDictionary *)clusterAnnotations removeObjectForKey:?];
                  MEMORY[0x277D82BD8](identifier);
                  MEMORY[0x277D82BD8](pointOfInterest);
                  *&v3 = MEMORY[0x277D82BD8](clusterAnnotations).n128_u64[0];
                  ++v18;
                  if (v16 + 1 >= v19)
                  {
                    v18 = 0;
                    v19 = [memberAnnotations countByEnumeratingWithState:v38 objects:v52 count:{16, v3}];
                    if (!v19)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](memberAnnotations);
              objc_storeStrong(&location, 0);
            }
          }
        }

        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [v26 countByEnumeratingWithState:v41 objects:v53 count:16];
          if (!v25)
          {
            break;
          }
        }
      }
    }

    *&v4 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    [(MKMapView *)mapView2 removeAnnotations:v45];
    *&v5 = MEMORY[0x277D82BD8](mapView2).n128_u64[0];
    mapView3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    [(MKMapView *)mapView3 addAnnotations:v46];
    *&v6 = MEMORY[0x277D82BD8](mapView3).n128_u64[0];
    if (annotationsCopy)
    {
      mapView4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
      annotations3 = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
      allValues2 = [(NSMutableDictionary *)annotations3 allValues];
      [MKMapView showAnnotations:mapView4 animated:"showAnnotations:animated:"];
      MEMORY[0x277D82BD8](allValues2);
      MEMORY[0x277D82BD8](annotations3);
      *&v7 = MEMORY[0x277D82BD8](mapView4).n128_u64[0];
      [(CPSPointsOfInterestMapViewController *)selfCopy updateMapViewEdgeInsetsFittingAnnotations:1, v7];
      [(CPSPointsOfInterestMapViewController *)selfCopy setHasPerformedInitialLayout:1];
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
  }
}

- (void)zoomToLocation:(id)location
{
  v11[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, location);
  annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
  identifier = [location[0] identifier];
  v8 = [(NSMutableDictionary *)annotations objectForKeyedSubscript:?];
  MEMORY[0x277D82BD8](identifier);
  *&v3 = MEMORY[0x277D82BD8](annotations).n128_u64[0];
  mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  v11[0] = v8;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [MKMapView showAnnotations:mapView animated:"showAnnotations:animated:"];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](mapView);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v63 = 0;
  objc_storeStrong(&v63, annotation);
  v62 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = MEMORY[0x277D82BE0](v63);
    template = [(CPSPointsOfInterestMapViewController *)selfCopy template];
    selectedIndex = [template selectedIndex];
    pointsOfInterest = [(CPSPointsOfInterestMapViewController *)selfCopy pointsOfInterest];
    v39PointsOfInterest = [pointsOfInterest pointsOfInterest];
    pointOfInterest = [v61 pointOfInterest];
    v41 = selectedIndex == [v39PointsOfInterest indexOfObject:?];
    MEMORY[0x277D82BD8](pointOfInterest);
    MEMORY[0x277D82BD8](v39PointsOfInterest);
    MEMORY[0x277D82BD8](pointsOfInterest);
    v60 = v41;
    pointOfInterest2 = [v61 pointOfInterest];
    pinImageSet = [pointOfInterest2 pinImageSet];
    image = [pinImageSet image];
    MEMORY[0x277D82BD8](pinImageSet);
    MEMORY[0x277D82BD8](pointOfInterest2);
    if (image)
    {
      v33 = location[0];
      v4 = objc_opt_class();
      v34 = NSStringFromClass(v4);
      v35 = [v33 dequeueReusableAnnotationViewWithIdentifier:?];
      v56 = 0;
      v54 = 0;
      if (v35)
      {
        v5 = MEMORY[0x277D82BE0](v35);
      }

      else
      {
        v32 = [CPSPointOfInterestAnnotationView alloc];
        v31 = v63;
        v6 = objc_opt_class();
        v57 = NSStringFromClass(v6);
        v56 = 1;
        v55 = [(CPSPointOfInterestAnnotationView *)v32 initWithAnnotation:v31 reuseIdentifier:?];
        v54 = 1;
        v5 = MEMORY[0x277D82BE0](v55);
      }

      v58 = v5;
      if (v54)
      {
        MEMORY[0x277D82BD8](v55);
      }

      if (v56)
      {
        MEMORY[0x277D82BD8](v57);
      }

      MEMORY[0x277D82BD8](v35);
      pointOfInterest3 = [v61 pointOfInterest];
      pinImageSet2 = [pointOfInterest3 pinImageSet];
      [v58 setImageSet:?];
      MEMORY[0x277D82BD8](pinImageSet2);
      pointOfInterest4 = [v61 pointOfInterest];
      selectedPinImageSet = [pointOfInterest4 selectedPinImageSet];
      [v58 setSelectedImageSet:?];
      MEMORY[0x277D82BD8](selectedPinImageSet);
      *&v7 = MEMORY[0x277D82BD8](pointOfInterest4).n128_u64[0];
      if (v60)
      {
        v26 = 0;
      }

      else
      {
        v26 = kCPSPointsOfInterestClusteringIdentifier;
      }

      [v58 setClusteringIdentifier:{v26, v7}];
      if (v60)
      {
        LODWORD(v8) = 1148846080;
        [v62 setDisplayPriority:v8];
      }

      objc_storeStrong(&v62, v58);
      objc_storeStrong(&v58, 0);
    }

    else
    {
      v23 = location[0];
      v9 = objc_opt_class();
      v24 = NSStringFromClass(v9);
      v25 = [v23 dequeueReusableAnnotationViewWithIdentifier:?];
      v52 = 0;
      v50 = 0;
      if (v25)
      {
        objc_storeStrong(&v62, v25);
      }

      else
      {
        v22 = objc_alloc(MEMORY[0x277CD4EF0]);
        v21 = v63;
        v10 = objc_opt_class();
        v53 = NSStringFromClass(v10);
        v52 = 1;
        v51 = [v22 initWithAnnotation:v21 reuseIdentifier:?];
        v50 = 1;
        objc_storeStrong(&v62, v51);
      }

      if (v50)
      {
        MEMORY[0x277D82BD8](v51);
      }

      if (v52)
      {
        MEMORY[0x277D82BD8](v53);
      }

      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v24);
    }

    objc_storeStrong(&image, 0);
    objc_storeStrong(&v61, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = location[0];
      v11 = objc_opt_class();
      v19 = NSStringFromClass(v11);
      v20 = [v18 dequeueReusableAnnotationViewWithIdentifier:?];
      v47 = 0;
      v45 = 0;
      if (v20)
      {
        v12 = MEMORY[0x277D82BE0](v20);
      }

      else
      {
        v17 = [CPSPointOfInterestClusterView alloc];
        v16 = v63;
        v13 = objc_opt_class();
        v48 = NSStringFromClass(v13);
        v47 = 1;
        v46 = [(CPSPointOfInterestClusterView *)v17 initWithAnnotation:v16 reuseIdentifier:?];
        v45 = 1;
        v12 = MEMORY[0x277D82BE0](v46);
      }

      v49 = v12;
      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v19);
      objc_storeStrong(&v62, v49);
      objc_storeStrong(&v49, 0);
    }
  }

  v15 = MEMORY[0x277D82BE0](v62);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);

  return v15;
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  v16 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, views);
  memset(__b, 0, sizeof(__b));
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = [v9 countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(__b[1] + 8 * v6);
      [v12 setEnabled:0];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v9 countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)mapView:(id)view clusterAnnotationForMemberAnnotations:(id)annotations
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v22 = 0;
  objc_storeStrong(&v22, annotations);
  v4 = objc_alloc(MEMORY[0x277CD4DB0]);
  v21 = [v4 initWithMemberAnnotations:v22];
  memset(__b, 0, sizeof(__b));
  v17 = MEMORY[0x277D82BE0](v22);
  v18 = [v17 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(v17);
      }

      v20 = *(__b[1] + 8 * v14);
      clusterAnnotations = [(CPSPointsOfInterestMapViewController *)selfCopy clusterAnnotations];
      v8 = v21;
      pointOfInterest = [v20 pointOfInterest];
      identifier = [pointOfInterest identifier];
      [(NSMutableDictionary *)clusterAnnotations setObject:v8 forKey:?];
      MEMORY[0x277D82BD8](identifier);
      MEMORY[0x277D82BD8](pointOfInterest);
      *&v5 = MEMORY[0x277D82BD8](clusterAnnotations).n128_u64[0];
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [v17 countByEnumeratingWithState:__b objects:v25 count:{16, v5}];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v17);
  v7 = MEMORY[0x277D82BE0](v21);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, annotationView);
  annotation = [v11 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v4 = MEMORY[0x277D82BD8](annotation).n128_u64[0];
  if (isKindOfClass)
  {
    annotation2 = [v11 annotation];
    pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
    pointOfInterest = [annotation2 pointOfInterest];
    [(CPSPointsOfInterestPickerViewController *)pickerViewController setSelectedItem:?];
    MEMORY[0x277D82BD8](pointOfInterest);
    MEMORY[0x277D82BD8](pickerViewController);
    objc_storeStrong(&annotation2, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([location[0] isRegionChanging])
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy _notifyRegionDidChange];
  }

  objc_storeStrong(location, 0);
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, map);
  if (!-[CPSPointsOfInterestMapViewController hasPerformedInitialLayout](selfCopy, "hasPerformedInitialLayout") && rendered && ([location[0] _isAnimating] & 1) == 0)
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy setHasPerformedInitialLayout:1];
    [(CPSPointsOfInterestMapViewController *)selfCopy _notifyRegionDidChange];
  }

  objc_storeStrong(location, 0);
}

- (void)_notifyRegionDidChange
{
  panTimer = [(CPSPointsOfInterestMapViewController *)self panTimer];
  hasPerformedInitialLayout = 0;
  if (!panTimer)
  {
    hasPerformedInitialLayout = [(CPSPointsOfInterestMapViewController *)self hasPerformedInitialLayout];
  }

  *&v2 = MEMORY[0x277D82BD8](panTimer).n128_u64[0];
  if (hasPerformedInitialLayout)
  {
    resourceProvider = [(CPSBaseEntityContentViewController *)self resourceProvider];
    actionDelegate = [(CPSEntityResourceProvider *)resourceProvider actionDelegate];
    [(CPSPointsOfInterestMapViewController *)self mapVisibleRegion];
    [(CPSEntityActionDelegate *)actionDelegate entityContentViewController:self regionDidChange:v3, v4, v5, v6];
    MEMORY[0x277D82BD8](actionDelegate);
    MEMORY[0x277D82BD8](resourceProvider);
  }
}

- (void)zoomIn
{
  selfCopy = self;
  v8[1] = a2;
  mapView = [(CPSPointsOfInterestMapViewController *)self mapView];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __46__CPSPointsOfInterestMapViewController_zoomIn__block_invoke;
  v7 = &unk_278D913E8;
  v8[0] = MEMORY[0x277D82BE0](selfCopy);
  [(MKMapView *)mapView _zoomInWithCompletionHandler:?];
  MEMORY[0x277D82BD8](mapView);
  objc_storeStrong(v8, 0);
}

- (void)zoomOut
{
  selfCopy = self;
  v8[1] = a2;
  mapView = [(CPSPointsOfInterestMapViewController *)self mapView];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __47__CPSPointsOfInterestMapViewController_zoomOut__block_invoke;
  v7 = &unk_278D913E8;
  v8[0] = MEMORY[0x277D82BE0](selfCopy);
  [(MKMapView *)mapView _zoomOutWithCompletionHandler:?];
  MEMORY[0x277D82BD8](mapView);
  objc_storeStrong(v8, 0);
}

- (void)beginPanningWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  panViewController = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  *&v3 = MEMORY[0x277D82BD8](panViewController).n128_u64[0];
  if (!panViewController)
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy setUpPanView];
  }

  [(CPSPointsOfInterestMapViewController *)selfCopy setPanCompletionHandler:location[0], v3];
  v4 = MEMORY[0x277D75D18];
  pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
  view = [(CPSPointsOfInterestPickerViewController *)pickerViewController view];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke;
  v18 = &unk_278D913E8;
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke_2;
  v12 = &unk_278D91398;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  [v4 transitionWithView:view duration:0x10000 options:&v14 animations:&v8 completion:0.25];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](pickerViewController);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

double __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) panViewController];
  v2 = [v3 view];
  [v2 setAlpha:?];
  MEMORY[0x277D82BD8](v2);
  v5 = [*(a1 + 32) pickerViewController];
  v4 = [v5 view];
  [v4 setAlpha:0.0];
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 32) donePanningButton];
  [v7 setAlpha:1.0];
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) panViewController];
  v4 = [v5 view];
  [v4 setHidden:0];
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 32) pickerViewController];
  v6 = [v7 view];
  [v6 setHidden:1];
  MEMORY[0x277D82BD8](v6);
  *&v1 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  v9 = [*(a1 + 32) pickerModeConstraints];
  [v8 deactivateConstraints:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = MEMORY[0x277CCAAD0];
  v11 = [*(a1 + 32) panModeConstraints];
  [v10 activateConstraints:?];
  [*(a1 + 32) updateMapViewEdgeInsetsFittingAnnotations:{0, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  return [*(a1 + 32) _updateFocusedItem];
}

- (void)centerMap
{
  selfCopy = self;
  v24 = a2;
  userLocation = [(CPSPointsOfInterestMapViewController *)self userLocation];
  *&v2 = MEMORY[0x277D82BD8](userLocation).n128_u64[0];
  if (userLocation)
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy setCenterMapPending:0, v2];
    userLocation2 = [(CPSPointsOfInterestMapViewController *)selfCopy userLocation];
    [(CLLocation *)userLocation2 coordinate];
    *&v23 = v3;
    *(&v23 + 1) = v4;
    mapView = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    camera = [(MKMapView *)mapView camera];
    v22 = [(MKMapCamera *)camera copy];
    MEMORY[0x277D82BD8](camera);
    MEMORY[0x277D82BD8](mapView);
    v21 = v23;
    v20 = v23;
    [v22 setCenterCoordinate:v23];
    annotations = [(CPSPointsOfInterestMapViewController *)selfCopy annotations];
    v12 = [(NSMutableDictionary *)annotations count];
    *&v5 = MEMORY[0x277D82BD8](annotations).n128_u64[0];
    if (!v12)
    {
      [v22 setCenterCoordinateDistance:12500.0];
    }

    mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
    v6 = v22;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __49__CPSPointsOfInterestMapViewController_centerMap__block_invoke;
    v18 = &unk_278D913E8;
    v19 = MEMORY[0x277D82BE0](selfCopy);
    [(MKMapView *)mapView2 _CPS_setCamera:v6 animated:1 completionBlock:&v14];
    MEMORY[0x277D82BD8](mapView2);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy setCenterMapPending:1, v2];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, locations);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__CPSPointsOfInterestMapViewController_locationManager_didUpdateLocations___block_invoke;
  v12 = &unk_278D913E8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

uint64_t __75__CPSPointsOfInterestMapViewController_locationManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) centerMapPending];
  if (result)
  {
    v3 = [*(a1 + 32) annotations];
    v4 = [v3 count];
    *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    result = v4;
    if (!v4)
    {
      return [*(a1 + 32) centerMap];
    }
  }

  return result;
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, error);
  if ([v14 code] == 1)
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    queue = v5;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __73__CPSPointsOfInterestMapViewController_locationManager_didFailWithError___block_invoke;
    v12 = &unk_278D913E8;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v8);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

double __73__CPSPointsOfInterestMapViewController_locationManager_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationManager];
  [v2 stopUpdatingLocation];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__CPSPointsOfInterestMapViewController_locationManagerDidChangeAuthorization___block_invoke;
  v10 = &unk_278D913E8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __78__CPSPointsOfInterestMapViewController_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) isLocationAuthorized];
  v4 = [*(a1 + 32) mapView];
  [v4 setShowsUserLocation:v3];
  result = [*(a1 + 32) isLocationAuthorized];
  if (result)
  {
    v2 = [*(a1 + 32) locationManager];
    [v2 startUpdatingLocation];
    return [*(a1 + 32) setCenterMapPending:{1, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
  }

  return result;
}

- (void)setUpLocationManager
{
  selfCopy = self;
  v20[1] = a2;
  locationManager = [(CPSPointsOfInterestMapViewController *)self locationManager];
  *&v2 = MEMORY[0x277D82BD8](locationManager).n128_u64[0];
  if (!locationManager)
  {
    resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
    templateEnvironment = [(CPSEntityResourceProvider *)resourceProvider templateEnvironment];
    v20[0] = [(CPSTemplateEnvironment *)templateEnvironment bundleIdentifier];
    MEMORY[0x277D82BD8](templateEnvironment);
    MEMORY[0x277D82BD8](resourceProvider);
    v10 = objc_alloc(MEMORY[0x277CBFC10]);
    v8 = v20[0];
    v9 = selfCopy;
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    v12 = v7;
    v11 = [v10 initWithEffectiveBundleIdentifier:v8 delegate:v9 onQueue:?];
    [(CPSPointsOfInterestMapViewController *)selfCopy setLocationManager:?];
    MEMORY[0x277D82BD8](v11);
    *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = selfCopy;
    locationManager2 = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
    [(CLLocationManager *)locationManager2 setDelegate:v13];
    MEMORY[0x277D82BD8](locationManager2);
    v15 = *MEMORY[0x277CE4200];
    locationManager3 = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
    [(CLLocationManager *)locationManager3 setDistanceFilter:v15];
    MEMORY[0x277D82BD8](locationManager3);
    v17 = *MEMORY[0x277CE4208];
    locationManager4 = [(CPSPointsOfInterestMapViewController *)selfCopy locationManager];
    [(CLLocationManager *)locationManager4 setDesiredAccuracy:v17];
    MEMORY[0x277D82BD8](locationManager4);
    objc_storeStrong(v20, 0);
  }
}

- (BOOL)isLocationAuthorized
{
  locationManager = [(CPSPointsOfInterestMapViewController *)self locationManager];
  authorizationStatus = [(CLLocationManager *)locationManager authorizationStatus];
  MEMORY[0x277D82BD8](locationManager);
  return authorizationStatus == kCLAuthorizationStatusAuthorizedWhenInUse || authorizationStatus == kCLAuthorizationStatusAuthorizedAlways;
}

- (void)setUpPanView
{
  v95[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v90[1] = a2;
  v90[0] = objc_opt_new();
  v31 = [CPSPanViewController alloc];
  resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  templateEnvironment = [(CPSEntityResourceProvider *)resourceProvider templateEnvironment];
  location = [(CPSPanViewController *)v31 initWithEnvironment:?];
  MEMORY[0x277D82BD8](templateEnvironment);
  [location setPanDelegate:{selfCopy, MEMORY[0x277D82BD8](resourceProvider).n128_f64[0]}];
  [(CPSPointsOfInterestMapViewController *)selfCopy setPanViewController:location];
  panViewController = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  [(CPSPanViewController *)panViewController willMoveToParentViewController:selfCopy];
  panViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  [(CPSPointsOfInterestMapViewController *)selfCopy addChildViewController:?];
  view = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  panViewController3 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view2 = [(CPSPanViewController *)panViewController3 view];
  [view addSubview:?];
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](panViewController3);
  panViewController4 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  [(CPSPanViewController *)panViewController4 didMoveToParentViewController:selfCopy];
  panViewController5 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view3 = [(CPSPanViewController *)panViewController5 view];
  topAnchor = [view3 topAnchor];
  view4 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v62 = [topAnchor constraintEqualToAnchor:?];
  v95[0] = v62;
  panViewController6 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view5 = [(CPSPanViewController *)panViewController6 view];
  bottomAnchor = [view5 bottomAnchor];
  view6 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide2 = [view6 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v55 = [bottomAnchor constraintEqualToAnchor:?];
  v95[1] = v55;
  panViewController7 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view7 = [(CPSPanViewController *)panViewController7 view];
  leftAnchor = [view7 leftAnchor];
  view8 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide3 = [view8 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v48 = [leftAnchor constraintEqualToAnchor:?];
  v95[2] = v48;
  panViewController8 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view9 = [(CPSPanViewController *)panViewController8 view];
  rightAnchor = [view9 rightAnchor];
  view10 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v41 = [rightAnchor constraintEqualToAnchor:?];
  v95[3] = v41;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:?];
  [v90[0] addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide4);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](panViewController8);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide3);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](panViewController7);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](panViewController6);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](safeAreaLayoutGuide);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](panViewController5);
  v69 = objc_alloc_init(CPSActionButton);
  [(CPSPointsOfInterestMapViewController *)selfCopy setDonePanningButton:?];
  donePanningButton = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPUITemplateButton *)donePanningButton setDelegate:selfCopy];
  donePanningButton2 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPSActionButton *)donePanningButton2 setLayoutDelegate:selfCopy];
  donePanningButton3 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPSActionButton *)donePanningButton3 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](donePanningButton3);
  v74 = CPSLocalizedStringForKey(@"DONE");
  donePanningButton4 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPSActionButton *)donePanningButton4 setButtonText:v74];
  MEMORY[0x277D82BD8](donePanningButton4);
  donePanningButton5 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  buttonText = [(CPSActionButton *)donePanningButton5 buttonText];
  v94 = buttonText;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
  donePanningButton6 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPSActionButton *)donePanningButton6 setAccessibilityUserInputLabels:v76];
  MEMORY[0x277D82BD8](donePanningButton6);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](buttonText);
  donePanningButton7 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  [CPSActionButton setTitleColor:donePanningButton7 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](_carSystemFocusColor);
  donePanningButton8 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  [CPSActionButton setTitleColor:donePanningButton8 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](_carSystemFocusLabelColor);
  view11 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
  donePanningButton9 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [view11 addSubview:?];
  MEMORY[0x277D82BD8](donePanningButton9);
  donePanningButton10 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  [(CPSActionButton *)donePanningButton10 setNeedsLayout];
  resourceProvider2 = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  templateEnvironment2 = [(CPSEntityResourceProvider *)resourceProvider2 templateEnvironment];
  rightHandDrive = [(CPSTemplateEnvironment *)templateEnvironment2 rightHandDrive];
  MEMORY[0x277D82BD8](templateEnvironment2);
  *&v2 = MEMORY[0x277D82BD8](resourceProvider2).n128_u64[0];
  if (rightHandDrive)
  {
    donePanningButton11 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
    trailingAnchor = [(CPSActionButton *)donePanningButton11 trailingAnchor];
    view12 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide5 = [view12 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide5 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:-8.0 constant:?];
    v92[0] = v12;
    donePanningButton12 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
    topAnchor3 = [(CPSActionButton *)donePanningButton12 topAnchor];
    view13 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide6 = [view13 safeAreaLayoutGuide];
    topAnchor4 = [safeAreaLayoutGuide6 topAnchor];
    v6 = [topAnchor3 constraintEqualToAnchor:8.0 constant:?];
    v92[1] = v6;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
    [v90[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide6);
    MEMORY[0x277D82BD8](view13);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](donePanningButton12);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide5);
    MEMORY[0x277D82BD8](view12);
    MEMORY[0x277D82BD8](trailingAnchor);
    v3 = MEMORY[0x277D82BD8](donePanningButton11).n128_u64[0];
  }

  else
  {
    donePanningButton13 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
    leadingAnchor = [(CPSActionButton *)donePanningButton13 leadingAnchor];
    view14 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide7 = [view14 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide7 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:? constant:?];
    v93[0] = v25;
    donePanningButton14 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
    topAnchor5 = [(CPSActionButton *)donePanningButton14 topAnchor];
    view15 = [(CPSPointsOfInterestMapViewController *)selfCopy view];
    safeAreaLayoutGuide8 = [view15 safeAreaLayoutGuide];
    topAnchor6 = [safeAreaLayoutGuide8 topAnchor];
    v19 = [topAnchor5 constraintEqualToAnchor:8.0 constant:?];
    v93[1] = v19;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    [v90[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](topAnchor6);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide8);
    MEMORY[0x277D82BD8](view15);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](donePanningButton14);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide7);
    MEMORY[0x277D82BD8](view14);
    MEMORY[0x277D82BD8](leadingAnchor);
    v3 = MEMORY[0x277D82BD8](donePanningButton13).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v90[0], *&v3, v90}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v5 = location[0];
  donePanningButton = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
  *&v3 = MEMORY[0x277D82BD8](donePanningButton).n128_u64[0];
  if (v5 == donePanningButton)
  {
    [(CPSPointsOfInterestMapViewController *)selfCopy dismissPanView:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (CGSize)buttonSize
{
  CGSizeMake_4();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)panBeganWithDirection:(int64_t)direction
{
  selfCopy = self;
  v12 = a2;
  directionCopy = direction;
  v3 = MEMORY[0x277CBEBB8];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __62__CPSPointsOfInterestMapViewController_panBeganWithDirection___block_invoke;
  v9 = &unk_278D92520;
  v10[0] = MEMORY[0x277D82BE0](self);
  v10[1] = directionCopy;
  v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:0.016 block:?];
  [(CPSPointsOfInterestMapViewController *)selfCopy setPanTimer:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v10, 0);
}

void __62__CPSPointsOfInterestMapViewController_panBeganWithDirection___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  v7 = [*(a1 + 32) mapView];
  v6 = [v7 camera];
  v13[0] = [v6 copy];
  MEMORY[0x277D82BD8](v6);
  [v13[0] centerCoordinate];
  v11 = v2;
  v12 = v3;
  [v13[0] altitude];
  v10 = 0.00008 * (v4 / 1000.0);
  v9 = *(a1 + 40);
  switch(v9)
  {
    case 1:
      v12 = v12 - v10;
      break;
    case 2:
      v12 = v12 + v10;
      break;
    case 4:
      v11 = v11 + v10;
      break;
    case 8:
      v11 = v11 - v10;
      break;
  }

  [v13[0] setCenterCoordinate:{v11, v12}];
  v5 = [*(a1 + 32) mapView];
  [v5 setCamera:v13[0] animated:0];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)panEndedWithDirection:(int64_t)direction
{
  panTimer = [(CPSPointsOfInterestMapViewController *)self panTimer];
  [(NSTimer *)panTimer invalidate];
  [(CPSPointsOfInterestMapViewController *)self setPanTimer:0, MEMORY[0x277D82BD8](panTimer).n128_f64[0]];
  [(CPSPointsOfInterestMapViewController *)self _notifyRegionDidChange];
}

- (void)panWithDirection:(int64_t)direction
{
  selfCopy = self;
  v22 = a2;
  directionCopy = direction;
  mapView = [(CPSPointsOfInterestMapViewController *)self mapView];
  camera = [(MKMapView *)mapView camera];
  v20 = [(MKMapCamera *)camera copy];
  MEMORY[0x277D82BD8](camera);
  [v20 centerCoordinate];
  *&v19 = v3;
  *(&v19 + 1) = v4;
  [v20 altitude];
  v18 = 0.003 * (v5 / 1000.0);
  switch(directionCopy)
  {
    case 1:
      *(&v19 + 1) = *(&v19 + 1) - v18;
      break;
    case 2:
      *(&v19 + 1) = *(&v19 + 1) + v18;
      break;
    case 4:
      *&v19 = *&v19 + v18;
      break;
    case 8:
      *&v19 = *&v19 - v18;
      break;
  }

  v17 = v19;
  v16 = v19;
  [v20 setCenterCoordinate:v19];
  mapView2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapView];
  v6 = v20;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __57__CPSPointsOfInterestMapViewController_panWithDirection___block_invoke;
  v14 = &unk_278D913E8;
  v15 = MEMORY[0x277D82BE0](selfCopy);
  [(MKMapView *)mapView2 _CPS_setCamera:v6 animated:1 completionBlock:&v10];
  MEMORY[0x277D82BD8](mapView2);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
}

- (void)dismissPanView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = MEMORY[0x277D75D18];
  pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
  view = [(CPSPointsOfInterestPickerViewController *)pickerViewController view];
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke;
  v21 = &unk_278D913E8;
  v22 = MEMORY[0x277D82BE0](selfCopy);
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke_2;
  v15 = &unk_278D91398;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  [v7 transitionWithView:view duration:0x10000 options:&v17 animations:&v11 completion:0.25];
  MEMORY[0x277D82BD8](view);
  *&v3 = MEMORY[0x277D82BD8](pickerViewController).n128_u64[0];
  panCompletionHandler = [(CPSPointsOfInterestMapViewController *)selfCopy panCompletionHandler];
  *&v4 = MEMORY[0x277D82BD8](panCompletionHandler).n128_u64[0];
  if (panCompletionHandler)
  {
    panCompletionHandler2 = [(CPSPointsOfInterestMapViewController *)selfCopy panCompletionHandler];
    panCompletionHandler2[2]();
    *&v5 = MEMORY[0x277D82BD8](panCompletionHandler2).n128_u64[0];
    [(CPSPointsOfInterestMapViewController *)selfCopy setPanCompletionHandler:0, v5];
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

double __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) panViewController];
  v2 = [v3 view];
  [v2 setAlpha:?];
  MEMORY[0x277D82BD8](v2);
  v5 = [*(a1 + 32) pickerViewController];
  v4 = [v5 view];
  [v4 setAlpha:1.0];
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 32) donePanningButton];
  [v7 setAlpha:0.0];
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) panViewController];
  v4 = [v5 view];
  [v4 setHidden:1];
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 32) pickerViewController];
  v6 = [v7 view];
  [v6 setHidden:0];
  MEMORY[0x277D82BD8](v6);
  *&v1 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  v9 = [*(a1 + 32) panModeConstraints];
  [v8 deactivateConstraints:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = MEMORY[0x277CCAAD0];
  v11 = [*(a1 + 32) pickerModeConstraints];
  [v10 activateConstraints:?];
  [*(a1 + 32) updateMapViewEdgeInsetsFittingAnnotations:{1, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  return [*(a1 + 32) _updateFocusedItem];
}

- (void)picker:(id)picker didSelectModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  v9 = 0;
  objc_storeStrong(&v9, model);
  [(CPSPointsOfInterestMapViewController *)selfCopy highlightModel:v9];
  resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
  actionDelegate = [(CPSEntityResourceProvider *)resourceProvider actionDelegate];
  v5 = selfCopy;
  identifier = [v9 identifier];
  [(CPSEntityActionDelegate *)actionDelegate entityContentViewController:v5 didSelectPointOfInterestWithIdentifier:?];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](actionDelegate);
  MEMORY[0x277D82BD8](resourceProvider);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)picker didDeselectModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  v5 = 0;
  objc_storeStrong(&v5, model);
  [(CPSPointsOfInterestMapViewController *)selfCopy unhighlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)picker didHighlightModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  v5 = 0;
  objc_storeStrong(&v5, model);
  [(CPSPointsOfInterestMapViewController *)selfCopy highlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)picker didUnhighlightModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, picker);
  v5 = 0;
  objc_storeStrong(&v5, model);
  [(CPSPointsOfInterestMapViewController *)selfCopy unhighlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_linearFocusMovementSequences
{
  v9[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[1] = a2;
  v4 = objc_alloc(MEMORY[0x277D75F88]);
  _linearFocusItems = [(CPSPointsOfInterestMapViewController *)selfCopy _linearFocusItems];
  v7[0] = [v4 initWithItems:? loops:? restrictEnteringSequence:?];
  *&v2 = MEMORY[0x277D82BD8](_linearFocusItems).n128_u64[0];
  v9[0] = v7[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:{1, v2}];
  objc_storeStrong(v7, 0);

  return v6;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v130[1] = a2;
  v130[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  panViewController = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
  view = [(CPSPanViewController *)panViewController view];
  v127 = 0;
  v125 = 0;
  v123 = 0;
  if (view)
  {
    panViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
    v127 = 1;
    view2 = [(CPSPanViewController *)panViewController2 view];
    v125 = 1;
    v123 = [view2 isHidden] == 0;
  }

  if (v125)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v127)
  {
    MEMORY[0x277D82BD8](panViewController2);
  }

  MEMORY[0x277D82BD8](view);
  *&v2 = MEMORY[0x277D82BD8](panViewController).n128_u64[0];
  v129 = v123;
  if (v123)
  {
    panViewController3 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
    location = [(CPSPanViewController *)panViewController3 panView];
    resourceProvider = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
    templateEnvironment = [(CPSEntityResourceProvider *)resourceProvider templateEnvironment];
    rightHandDrive = [(CPSTemplateEnvironment *)templateEnvironment rightHandDrive];
    MEMORY[0x277D82BD8](templateEnvironment);
    *&v3 = MEMORY[0x277D82BD8](resourceProvider).n128_u64[0];
    if (rightHandDrive)
    {
      panRightButton = [location panRightButton];
      v13 = MEMORY[0x277D82BD8](panRightButton).n128_u64[0];
      if (panRightButton)
      {
        panRightButton2 = [location panRightButton];
        [v130[0] addObject:?];
        v13 = MEMORY[0x277D82BD8](panRightButton2).n128_u64[0];
      }

      panDownButton = [location panDownButton];
      v14 = MEMORY[0x277D82BD8](panDownButton).n128_u64[0];
      if (panDownButton)
      {
        panDownButton2 = [location panDownButton];
        [v130[0] addObject:?];
        v14 = MEMORY[0x277D82BD8](panDownButton2).n128_u64[0];
      }

      mapControlsViewController = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomOutButton = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController zoomOutButton];
      MEMORY[0x277D82BD8](zoomOutButton);
      v15 = MEMORY[0x277D82BD8](mapControlsViewController).n128_u64[0];
      if (zoomOutButton)
      {
        mapControlsViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomOutButton2 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController2 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomOutButton2);
        v15 = MEMORY[0x277D82BD8](mapControlsViewController2).n128_u64[0];
      }

      mapControlsViewController3 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomInButton = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController3 zoomInButton];
      MEMORY[0x277D82BD8](zoomInButton);
      v16 = MEMORY[0x277D82BD8](mapControlsViewController3).n128_u64[0];
      if (zoomInButton)
      {
        mapControlsViewController4 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomInButton2 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController4 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomInButton2);
        v16 = MEMORY[0x277D82BD8](mapControlsViewController4).n128_u64[0];
      }

      panLeftButton = [location panLeftButton];
      v17 = MEMORY[0x277D82BD8](panLeftButton).n128_u64[0];
      if (panLeftButton)
      {
        panLeftButton2 = [location panLeftButton];
        [v130[0] addObject:?];
        v17 = MEMORY[0x277D82BD8](panLeftButton2).n128_u64[0];
      }

      mapControlsViewController5 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      centerButton = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController5 centerButton];
      MEMORY[0x277D82BD8](centerButton);
      v18 = MEMORY[0x277D82BD8](mapControlsViewController5).n128_u64[0];
      if (centerButton)
      {
        mapControlsViewController6 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        centerButton2 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController6 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](centerButton2);
        v18 = MEMORY[0x277D82BD8](mapControlsViewController6).n128_u64[0];
      }

      panUpButton = [location panUpButton];
      v19 = MEMORY[0x277D82BD8](panUpButton).n128_u64[0];
      if (panUpButton)
      {
        panUpButton2 = [location panUpButton];
        [v130[0] addObject:?];
        v19 = MEMORY[0x277D82BD8](panUpButton2).n128_u64[0];
      }

      donePanningButton = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
      [(CPSActionButton *)donePanningButton alpha];
      v73 = v20;
      MEMORY[0x277D82BD8](donePanningButton);
      if (v73 == 1.0)
      {
        donePanningButton2 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](donePanningButton2);
      }
    }

    else
    {
      mapControlsViewController7 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      centerButton3 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController7 centerButton];
      MEMORY[0x277D82BD8](centerButton3);
      v4 = MEMORY[0x277D82BD8](mapControlsViewController7).n128_u64[0];
      if (centerButton3)
      {
        mapControlsViewController8 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        centerButton4 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController8 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](centerButton4);
        v4 = MEMORY[0x277D82BD8](mapControlsViewController8).n128_u64[0];
      }

      panRightButton3 = [location panRightButton];
      v5 = MEMORY[0x277D82BD8](panRightButton3).n128_u64[0];
      if (panRightButton3)
      {
        panRightButton4 = [location panRightButton];
        [v130[0] addObject:?];
        v5 = MEMORY[0x277D82BD8](panRightButton4).n128_u64[0];
      }

      mapControlsViewController9 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomInButton3 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController9 zoomInButton];
      MEMORY[0x277D82BD8](zoomInButton3);
      v6 = MEMORY[0x277D82BD8](mapControlsViewController9).n128_u64[0];
      if (zoomInButton3)
      {
        mapControlsViewController10 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomInButton4 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController10 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomInButton4);
        v6 = MEMORY[0x277D82BD8](mapControlsViewController10).n128_u64[0];
      }

      mapControlsViewController11 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomOutButton3 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController11 zoomOutButton];
      MEMORY[0x277D82BD8](zoomOutButton3);
      v7 = MEMORY[0x277D82BD8](mapControlsViewController11).n128_u64[0];
      if (zoomOutButton3)
      {
        mapControlsViewController12 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomOutButton4 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController12 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomOutButton4);
        v7 = MEMORY[0x277D82BD8](mapControlsViewController12).n128_u64[0];
      }

      panDownButton3 = [location panDownButton];
      v8 = MEMORY[0x277D82BD8](panDownButton3).n128_u64[0];
      if (panDownButton3)
      {
        panDownButton4 = [location panDownButton];
        [v130[0] addObject:?];
        v8 = MEMORY[0x277D82BD8](panDownButton4).n128_u64[0];
      }

      panLeftButton3 = [location panLeftButton];
      v9 = MEMORY[0x277D82BD8](panLeftButton3).n128_u64[0];
      if (panLeftButton3)
      {
        panLeftButton4 = [location panLeftButton];
        [v130[0] addObject:?];
        v9 = MEMORY[0x277D82BD8](panLeftButton4).n128_u64[0];
      }

      donePanningButton3 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
      [(CPSActionButton *)donePanningButton3 alpha];
      v98 = v10;
      MEMORY[0x277D82BD8](donePanningButton3);
      v11 = v98;
      if (v98 == 1.0)
      {
        donePanningButton4 = [(CPSPointsOfInterestMapViewController *)selfCopy donePanningButton];
        [v130[0] addObject:?];
        *&v11 = MEMORY[0x277D82BD8](donePanningButton4).n128_u64[0];
      }

      panUpButton3 = [location panUpButton];
      *&v12 = MEMORY[0x277D82BD8](panUpButton3).n128_u64[0];
      if (panUpButton3)
      {
        panUpButton4 = [location panUpButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](panUpButton4);
      }
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    resourceProvider2 = [(CPSBaseEntityContentViewController *)selfCopy resourceProvider];
    templateEnvironment2 = [(CPSEntityResourceProvider *)resourceProvider2 templateEnvironment];
    rightHandDrive2 = [(CPSTemplateEnvironment *)templateEnvironment2 rightHandDrive];
    MEMORY[0x277D82BD8](templateEnvironment2);
    *&v21 = MEMORY[0x277D82BD8](resourceProvider2).n128_u64[0];
    if (rightHandDrive2)
    {
      mapControlsViewController13 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      centerButton5 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController13 centerButton];
      MEMORY[0x277D82BD8](centerButton5);
      v22 = MEMORY[0x277D82BD8](mapControlsViewController13).n128_u64[0];
      if (centerButton5)
      {
        mapControlsViewController14 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        centerButton6 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController14 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](centerButton6);
        v22 = MEMORY[0x277D82BD8](mapControlsViewController14).n128_u64[0];
      }

      mapControlsViewController15 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      panButton = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController15 panButton];
      MEMORY[0x277D82BD8](panButton);
      v23 = MEMORY[0x277D82BD8](mapControlsViewController15).n128_u64[0];
      if (panButton)
      {
        mapControlsViewController16 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        panButton2 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController16 panButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](panButton2);
        v23 = MEMORY[0x277D82BD8](mapControlsViewController16).n128_u64[0];
      }

      mapControlsViewController17 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomInButton5 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController17 zoomInButton];
      MEMORY[0x277D82BD8](zoomInButton5);
      v24 = MEMORY[0x277D82BD8](mapControlsViewController17).n128_u64[0];
      if (zoomInButton5)
      {
        mapControlsViewController18 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomInButton6 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController18 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomInButton6);
        v24 = MEMORY[0x277D82BD8](mapControlsViewController18).n128_u64[0];
      }

      mapControlsViewController19 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomOutButton5 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController19 zoomOutButton];
      MEMORY[0x277D82BD8](zoomOutButton5);
      v25 = MEMORY[0x277D82BD8](mapControlsViewController19).n128_u64[0];
      if (zoomOutButton5)
      {
        mapControlsViewController20 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomOutButton6 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController20 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomOutButton6);
        v25 = MEMORY[0x277D82BD8](mapControlsViewController20).n128_u64[0];
      }

      pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
      _linearFocusItems = [(CPSPointsOfInterestPickerViewController *)pickerViewController _linearFocusItems];
      [v130[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems);
      MEMORY[0x277D82BD8](pickerViewController);
    }

    else
    {
      pickerViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
      _linearFocusItems2 = [(CPSPointsOfInterestPickerViewController *)pickerViewController2 _linearFocusItems];
      [v130[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](_linearFocusItems2);
      mapControlsViewController21 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      centerButton7 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController21 centerButton];
      MEMORY[0x277D82BD8](centerButton7);
      v26 = MEMORY[0x277D82BD8](mapControlsViewController21).n128_u64[0];
      if (centerButton7)
      {
        mapControlsViewController22 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        centerButton8 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController22 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](centerButton8);
        v26 = MEMORY[0x277D82BD8](mapControlsViewController22).n128_u64[0];
      }

      mapControlsViewController23 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      panButton3 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController23 panButton];
      MEMORY[0x277D82BD8](panButton3);
      v27 = MEMORY[0x277D82BD8](mapControlsViewController23).n128_u64[0];
      if (panButton3)
      {
        mapControlsViewController24 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        panButton4 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController24 panButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](panButton4);
        v27 = MEMORY[0x277D82BD8](mapControlsViewController24).n128_u64[0];
      }

      mapControlsViewController25 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomInButton7 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController25 zoomInButton];
      MEMORY[0x277D82BD8](zoomInButton7);
      v28 = MEMORY[0x277D82BD8](mapControlsViewController25).n128_u64[0];
      if (zoomInButton7)
      {
        mapControlsViewController26 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomInButton8 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController26 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomInButton8);
        v28 = MEMORY[0x277D82BD8](mapControlsViewController26).n128_u64[0];
      }

      mapControlsViewController27 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
      zoomOutButton7 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController27 zoomOutButton];
      MEMORY[0x277D82BD8](zoomOutButton7);
      *&v29 = MEMORY[0x277D82BD8](mapControlsViewController27).n128_u64[0];
      if (zoomOutButton7)
      {
        mapControlsViewController28 = [(CPSPointsOfInterestMapViewController *)selfCopy mapControlsViewController];
        zoomOutButton8 = [(CPSPointsOfInterestMapControlsViewController *)mapControlsViewController28 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](zoomOutButton8);
        MEMORY[0x277D82BD8](mapControlsViewController28);
      }
    }
  }

  v31 = MEMORY[0x277D82BE0](v130[0]);
  objc_storeStrong(v130, 0);

  return v31;
}

- (id)preferredFocusEnvironments
{
  v25[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21 = a2;
  panViewController = [(CPSPointsOfInterestMapViewController *)self panViewController];
  view = [(CPSPanViewController *)panViewController view];
  v18 = 0;
  v16 = 0;
  v12 = 0;
  if (view)
  {
    panViewController2 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
    v18 = 1;
    view2 = [(CPSPanViewController *)panViewController2 view];
    v16 = 1;
    v12 = [view2 isHidden] == 0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](panViewController2);
  }

  MEMORY[0x277D82BD8](view);
  *&v2 = MEMORY[0x277D82BD8](panViewController).n128_u64[0];
  v20 = v12;
  if (v12)
  {
    panViewController3 = [(CPSPointsOfInterestMapViewController *)selfCopy panViewController];
    panView = [(CPSPanViewController *)panViewController3 panView];
    *&v3 = MEMORY[0x277D82BD8](panViewController3).n128_u64[0];
    panUpButton = [(CPSPanView *)panView panUpButton];
    v25[0] = panUpButton;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    MEMORY[0x277D82BD8](panUpButton);
    objc_storeStrong(&panView, 0);
  }

  else
  {
    pickerViewController = [(CPSPointsOfInterestMapViewController *)selfCopy pickerViewController];
    _linearFocusItems = [(CPSPointsOfInterestPickerViewController *)pickerViewController _linearFocusItems];
    if ([_linearFocusItems count])
    {
      firstObject = [_linearFocusItems firstObject];
      v24 = firstObject;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      MEMORY[0x277D82BD8](firstObject);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&_linearFocusItems, 0);
    if (!v13)
    {
      v23 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
    }
  }

  v4 = v23;

  return v4;
}

- (void)_updateFocusedItem
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [objc_alloc(MEMORY[0x277D75F98]) initWithEnvironment:self];
  [v3[0] setAllowsDeferral:0];
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:selfCopy];
  [v2 _requestFocusUpdate:v3[0]];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

@end