@interface CPSPointsOfInterestMapViewController
- ($EFF74E1A437733FA0F87D07FFF1B01BE)mapVisibleRegion;
- (BOOL)isLocationAuthorized;
- (CGSize)buttonSize;
- (CLLocation)userLocation;
- (CPSPointsOfInterestMapViewController)initWithEntity:(id)a3 resourceProvider:(id)a4;
- (id)_linearFocusItems;
- (id)_linearFocusMovementSequences;
- (id)mapView:(id)a3 clusterAnnotationForMemberAnnotations:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)preferredFocusEnvironments;
- (id)template;
- (void)_notifyRegionDidChange;
- (void)_updateFocusedItem;
- (void)beginPanningWithCompletion:(id)a3;
- (void)centerMap;
- (void)didMoveToParentViewController:(id)a3;
- (void)didSelectButton:(id)a3;
- (void)didUpdateEntity:(id)a3;
- (void)dismissPanView:(id)a3;
- (void)highlightModel:(id)a3;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)panBeganWithDirection:(int64_t)a3;
- (void)panEndedWithDirection:(int64_t)a3;
- (void)panWithDirection:(int64_t)a3;
- (void)picker:(id)a3 didDeselectModel:(id)a4;
- (void)picker:(id)a3 didHighlightModel:(id)a4;
- (void)picker:(id)a3 didSelectModel:(id)a4;
- (void)picker:(id)a3 didUnhighlightModel:(id)a4;
- (void)reloadAnnotations:(BOOL)a3;
- (void)setUpLocationManager;
- (void)setUpMapView;
- (void)setUpPanView;
- (void)setupViews;
- (void)unhighlightModel:(id)a3;
- (void)updateMapViewEdgeInsetsFittingAnnotations:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)zoomIn;
- (void)zoomOut;
- (void)zoomToLocation:(id)a3;
@end

@implementation CPSPointsOfInterestMapViewController

- (CPSPointsOfInterestMapViewController)initWithEntity:(id)a3 resourceProvider:(id)a4
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v4 = v19;
  v19 = 0;
  v15.receiver = v4;
  v15.super_class = CPSPointsOfInterestMapViewController;
  v14 = [(CPSBaseEntityContentViewController *)&v15 initWithEntity:v16 resourceProvider:v17];
  v19 = v14;
  objc_storeStrong(&v19, v14);
  if (v14)
  {
    v5 = [CPSPointsOfInterestPickerViewController alloc];
    v6 = [(CPSPointsOfInterestPickerViewController *)v5 initWithEntity:location[0] resourceProvider:v17];
    pickerViewController = v19->_pickerViewController;
    v19->_pickerViewController = v6;
    *&v8 = MEMORY[0x277D82BD8](pickerViewController).n128_u64[0];
    [(CPSPointsOfInterestPickerViewController *)v19->_pickerViewController setDelegate:v19, v8];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    clusterAnnotations = v19->_clusterAnnotations;
    v19->_clusterAnnotations = v9;
    MEMORY[0x277D82BD8](clusterAnnotations);
  }

  v12 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v19, 0);
  return v12;
}

- (id)template
{
  v3 = objc_opt_class();
  v5 = [(CPSBaseEntityContentViewController *)self resourceProvider];
  v4 = [(CPSEntityResourceProvider *)v5 entityTemplate];
  v6 = CPSSafeCast_8(v3, v4);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (CLLocation)userLocation
{
  v3 = [(CPSPointsOfInterestMapViewController *)self locationManager];
  v4 = [(CLLocationManager *)v3 location];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)didUpdateEntity:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31.receiver = v33;
  v31.super_class = CPSPointsOfInterestMapViewController;
  [(CPSBaseEntityContentViewController *)&v31 didUpdateEntity:location[0]];
  pickerViewController = v33->_pickerViewController;
  v22 = [(CPSBaseEntityContentViewController *)v33 entity];
  [(CPSBaseEntityContentViewController *)pickerViewController updateWithEntity:?];
  *&v3 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v23 = [(CPSPointsOfInterestMapViewController *)v33 pointsOfInterest];
  v30 = [v23 pointsOfInterest];
  MEMORY[0x277D82BD8](v23);
  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v30, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v30);
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
      annotations = v33->_annotations;
      v13 = [v28 identifier];
      v26 = [(NSMutableDictionary *)annotations objectForKeyedSubscript:?];
      *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
      v14 = v30;
      v15 = [(CPSPointOfInterestAnnotation *)v26 pointOfInterest];
      v16 = [v14 containsObject:?];
      v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
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
      v11 = [v28 identifier];
      [v10 setObject:v9 forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v11);
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
  objc_storeStrong(&v33->_annotations, v29);
  [(CPSPointsOfInterestMapViewController *)v33 reloadAnnotations:[(CPSPointsOfInterestMapViewController *)v33 hasPerformedInitialLayout]^ 1];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v2 viewDidLoad];
  [(CPSPointsOfInterestMapViewController *)v4 setupViews];
}

- (void)viewDidLayoutSubviews
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(CPSPointsOfInterestMapViewController *)v7 annotations];
  LOBYTE(v4) = 0;
  if ([(NSMutableDictionary *)v3 count])
  {
    v4 = ![(CPSPointsOfInterestMapViewController *)v7 hasPerformedInitialLayout];
  }

  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v4)
  {
    [(CPSPointsOfInterestMapViewController *)v7 reloadAnnotations:1, v2];
  }

  else
  {
    [(CPSPointsOfInterestMapViewController *)v7 updateMapViewEdgeInsetsFittingAnnotations:0, v2];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v16 = a3;
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v13 = 0x4065800000000000;
  v11 = v16.width * 0.45;
  v10 = 0x406B800000000000;
  if (v16.width * 0.45 >= 220.0)
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
  v4 = [(CPSPointsOfInterestMapViewController *)v15 pickerWidthConstraint];
  [(NSLayoutConstraint *)v4 setConstant:v5];
  MEMORY[0x277D82BD8](v4);
  v7.receiver = v15;
  v7.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v7 viewWillTransitionToSize:location[0] withTransitionCoordinator:v16.width, v16.height];
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v12 viewDidAppear:a3];
  v11 = [(CPSPointsOfInterestMapViewController *)v15 locationManager];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v10 = [(CPSPointsOfInterestMapViewController *)v15 locationManager];
    [(CLLocationManager *)v10 startUpdatingLocation];
    MEMORY[0x277D82BD8](v10);
  }

  v8 = [(CPSPointsOfInterestMapViewController *)v15 view];
  [v8 frame];
  v9 = CGRectGetWidth(v16) * 0.45;
  MEMORY[0x277D82BD8](v8);
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

  v5 = [(CPSPointsOfInterestMapViewController *)v15 pickerWidthConstraint];
  [(NSLayoutConstraint *)v5 setConstant:v4];
  MEMORY[0x277D82BD8](v5);
}

- (void)didMoveToParentViewController:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4.receiver = v6;
  v4.super_class = CPSPointsOfInterestMapViewController;
  [(CPSPointsOfInterestMapViewController *)&v4 didMoveToParentViewController:location[0]];
  if (!location[0])
  {
    v3 = [(CPSPointsOfInterestMapViewController *)v6 locationManager];
    [(CLLocationManager *)v3 stopUpdatingLocation];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)setupViews
{
  v171[6] = *MEMORY[0x277D85DE8];
  v162 = self;
  v161[1] = a2;
  v111 = [MEMORY[0x277D75348] tableBackgroundColor];
  v110 = [(CPSPointsOfInterestMapViewController *)v162 view];
  [v110 setBackgroundColor:v111];
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BD8](v111);
  v161[0] = objc_opt_new();
  [(CPSPointsOfInterestMapViewController *)v162 setUpLocationManager];
  [(CPSPointsOfInterestMapViewController *)v162 setUpMapView];
  v112 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  [(MKMapView *)v112 setTranslatesAutoresizingMaskIntoConstraints:0];
  v114 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v113 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  [v114 addSubview:?];
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  v115 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(CPSPointsOfInterestMapViewController *)v162 setMapVisibleRegionGuide:?];
  v117 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v116 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
  [v117 addLayoutGuide:?];
  MEMORY[0x277D82BD8](v116);
  v150 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  v149 = [(MKMapView *)v150 topAnchor];
  v148 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v147 = [v148 topAnchor];
  v146 = [v149 constraintEqualToAnchor:?];
  v171[0] = v146;
  v145 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  v144 = [(MKMapView *)v145 bottomAnchor];
  v143 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v142 = [v143 bottomAnchor];
  v141 = [v144 constraintEqualToAnchor:?];
  v171[1] = v141;
  v140 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  v139 = [(MKMapView *)v140 leftAnchor];
  v138 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v137 = [v138 leftAnchor];
  v136 = [v139 constraintEqualToAnchor:?];
  v171[2] = v136;
  v135 = [(CPSPointsOfInterestMapViewController *)v162 mapView];
  v134 = [(MKMapView *)v135 rightAnchor];
  v133 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v132 = [v133 rightAnchor];
  v131 = [v134 constraintEqualToAnchor:?];
  v171[3] = v131;
  v130 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
  v129 = [(UILayoutGuide *)v130 topAnchor];
  v128 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v127 = [v128 safeAreaLayoutGuide];
  v126 = [v127 topAnchor];
  v125 = [(NSLayoutYAxisAnchor *)v129 constraintEqualToAnchor:?];
  v171[4] = v125;
  v124 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
  v123 = [(UILayoutGuide *)v124 bottomAnchor];
  v122 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v121 = [v122 safeAreaLayoutGuide];
  v120 = [v121 bottomAnchor];
  v119 = [(NSLayoutYAxisAnchor *)v123 constraintEqualToAnchor:?];
  v171[5] = v119;
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:6];
  [v161[0] addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v118);
  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BD8](v120);
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](v122);
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](v124);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  MEMORY[0x277D82BD8](v129);
  MEMORY[0x277D82BD8](v130);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  MEMORY[0x277D82BD8](v135);
  MEMORY[0x277D82BD8](v136);
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](v139);
  MEMORY[0x277D82BD8](v140);
  MEMORY[0x277D82BD8](v141);
  MEMORY[0x277D82BD8](v142);
  MEMORY[0x277D82BD8](v143);
  MEMORY[0x277D82BD8](v144);
  MEMORY[0x277D82BD8](v145);
  MEMORY[0x277D82BD8](v146);
  MEMORY[0x277D82BD8](v147);
  MEMORY[0x277D82BD8](v148);
  MEMORY[0x277D82BD8](v149);
  MEMORY[0x277D82BD8](v150);
  v151 = [[CPSPointsOfInterestMapControlsViewController alloc] initWithMapDelegate:v162];
  [(CPSPointsOfInterestMapViewController *)v162 setMapControlsViewController:?];
  v153 = [(CPSPointsOfInterestMapViewController *)v162 mapControlsViewController];
  v170[0] = v153;
  v152 = [(CPSPointsOfInterestMapViewController *)v162 pickerViewController];
  v170[1] = v152;
  v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
  MEMORY[0x277D82BD8](v152);
  MEMORY[0x277D82BD8](v153);
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
      [v159 willMoveToParentViewController:v162];
      [(CPSPointsOfInterestMapViewController *)v162 addChildViewController:v159];
      v103 = [v159 view];
      [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
      *&v2 = MEMORY[0x277D82BD8](v103).n128_u64[0];
      v105 = [(CPSPointsOfInterestMapViewController *)v162 view];
      v104 = [v159 view];
      [v105 addSubview:?];
      MEMORY[0x277D82BD8](v104);
      *&v3 = MEMORY[0x277D82BD8](v105).n128_u64[0];
      [v159 didMoveToParentViewController:{v162, v3}];
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
  v58 = [(CPSPointsOfInterestMapViewController *)v162 pickerViewController];
  v157 = [(CPSPointsOfInterestPickerViewController *)v58 view];
  *&v5 = MEMORY[0x277D82BD8](v58).n128_u64[0];
  v59 = [(CPSPointsOfInterestMapViewController *)v162 mapControlsViewController];
  location = [(CPSPointsOfInterestMapControlsViewController *)v59 view];
  v61 = [v157 widthAnchor];
  v60 = [v61 constraintEqualToConstant:0.0];
  [(CPSPointsOfInterestMapViewController *)v162 setPickerWidthConstraint:?];
  MEMORY[0x277D82BD8](v60);
  *&v6 = MEMORY[0x277D82BD8](v61).n128_u64[0];
  v62 = v161[0];
  v86 = [v157 topAnchor];
  v85 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v84 = [v85 safeAreaLayoutGuide];
  v83 = [v84 topAnchor];
  v82 = [v86 constraintEqualToAnchor:4.0 constant:?];
  v168[0] = v82;
  v81 = [v157 bottomAnchor];
  v80 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v79 = [v80 safeAreaLayoutGuide];
  v78 = [v79 bottomAnchor];
  v77 = [v81 constraintEqualToAnchor:? constant:?];
  v168[1] = v77;
  v76 = [(CPSPointsOfInterestMapViewController *)v162 pickerWidthConstraint];
  v168[2] = v76;
  v75 = [location topAnchor];
  v74 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v73 = [v74 safeAreaLayoutGuide];
  v72 = [v73 topAnchor];
  v71 = [v75 constraintEqualToAnchor:8.0 constant:?];
  v168[3] = v71;
  v70 = [location bottomAnchor];
  v69 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v68 = [v69 safeAreaLayoutGuide];
  v67 = [v68 bottomAnchor];
  v66 = [v70 constraintEqualToAnchor:-4.0 constant:?];
  v168[4] = v66;
  v65 = [location widthAnchor];
  v64 = [v65 constraintEqualToConstant:36.0];
  v168[5] = v64;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v168 count:6];
  [v62 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  *&v7 = MEMORY[0x277D82BD8](v86).n128_u64[0];
  v99 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
  v98 = [(UILayoutGuide *)v99 leftAnchor];
  v97 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v96 = [v97 safeAreaLayoutGuide];
  v95 = [v96 leftAnchor];
  v94 = [(NSLayoutXAxisAnchor *)v98 constraintEqualToAnchor:?];
  v167[0] = v94;
  v93 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
  v92 = [(UILayoutGuide *)v93 rightAnchor];
  v91 = [(CPSPointsOfInterestMapViewController *)v162 view];
  v90 = [v91 safeAreaLayoutGuide];
  v89 = [v90 rightAnchor];
  v88 = [(NSLayoutXAxisAnchor *)v92 constraintEqualToAnchor:?];
  v167[1] = v88;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:2];
  [(CPSPointsOfInterestMapViewController *)v162 setPanModeConstraints:?];
  MEMORY[0x277D82BD8](v87);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](v94);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  *&v8 = MEMORY[0x277D82BD8](v99).n128_u64[0];
  v101 = [(CPSBaseEntityContentViewController *)v162 resourceProvider];
  v100 = [(CPSEntityResourceProvider *)v101 templateEnvironment];
  v102 = [(CPSTemplateEnvironment *)v100 rightHandDrive];
  MEMORY[0x277D82BD8](v100);
  *&v9 = MEMORY[0x277D82BD8](v101).n128_u64[0];
  if (v102)
  {
    v37 = v161[0];
    v48 = [location leftAnchor];
    v47 = [(CPSPointsOfInterestMapViewController *)v162 view];
    v46 = [v47 safeAreaLayoutGuide];
    v45 = [v46 leftAnchor];
    v44 = [v48 constraintEqualToAnchor:4.0 constant:?];
    v166[0] = v44;
    v43 = [v157 rightAnchor];
    v42 = [(CPSPointsOfInterestMapViewController *)v162 view];
    v41 = [v42 safeAreaLayoutGuide];
    v40 = [v41 rightAnchor];
    v39 = [v43 constraintEqualToAnchor:-4.0 constant:?];
    v166[1] = v39;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:?];
    [v37 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    *&v10 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    v57 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
    v56 = [(UILayoutGuide *)v57 leftAnchor];
    v55 = [location rightAnchor];
    v54 = [(NSLayoutXAxisAnchor *)v56 constraintEqualToAnchor:?];
    v165[0] = v54;
    v53 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
    v52 = [(UILayoutGuide *)v53 rightAnchor];
    v51 = [v157 leftAnchor];
    v50 = [(NSLayoutXAxisAnchor *)v52 constraintEqualToAnchor:?];
    v165[1] = v50;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v165 count:2];
    [(CPSPointsOfInterestMapViewController *)v162 setPickerModeConstraints:?];
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    v11 = MEMORY[0x277D82BD8](v57).n128_u64[0];
  }

  else
  {
    v16 = v161[0];
    v27 = [v157 leftAnchor];
    v26 = [(CPSPointsOfInterestMapViewController *)v162 view];
    v25 = [v26 safeAreaLayoutGuide];
    v24 = [v25 leftAnchor];
    v23 = [v27 constraintEqualToAnchor:4.0 constant:?];
    v164[0] = v23;
    v22 = [location rightAnchor];
    v21 = [(CPSPointsOfInterestMapViewController *)v162 view];
    v20 = [v21 safeAreaLayoutGuide];
    v19 = [v20 rightAnchor];
    v18 = [v22 constraintEqualToAnchor:-4.0 constant:?];
    v164[1] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:?];
    [v16 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    *&v12 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    v36 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
    v35 = [(UILayoutGuide *)v36 leftAnchor];
    v34 = [v157 rightAnchor];
    v33 = [(NSLayoutXAxisAnchor *)v35 constraintEqualToAnchor:?];
    v163[0] = v33;
    v32 = [(CPSPointsOfInterestMapViewController *)v162 mapVisibleRegionGuide];
    v31 = [(UILayoutGuide *)v32 rightAnchor];
    v30 = [location leftAnchor];
    v29 = [(NSLayoutXAxisAnchor *)v31 constraintEqualToAnchor:?];
    v163[1] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:2];
    [(CPSPointsOfInterestMapViewController *)v162 setPickerModeConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    v11 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  }

  v15 = [(CPSPointsOfInterestMapViewController *)v162 pickerModeConstraints:*&v11];
  [v14 addObjectsFromArray:?];
  *&v13 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [MEMORY[0x277CCAAD0] activateConstraints:{v161[0], v13}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v157, 0);
  objc_storeStrong(&v160, 0);
  objc_storeStrong(v161, 0);
}

- (void)setUpMapView
{
  v33[4] = *MEMORY[0x277D85DE8];
  v31 = self;
  v30[1] = a2;
  v13 = [(CPSBaseEntityContentViewController *)self resourceProvider];
  v12 = [(CPSEntityResourceProvider *)v13 templateEnvironment];
  v30[0] = [(CPSTemplateEnvironment *)v12 bundleIdentifier];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v33[2] = objc_opt_class();
  v33[3] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v15 = objc_alloc(MEMORY[0x277CBFC10]);
  v14 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v16 = v14;
  location = [v15 initWithEffectiveBundleIdentifier:v30[0] delegate:v31 onQueue:?];
  MEMORY[0x277D82BD8](v16);
  v3 = objc_alloc(MEMORY[0x277CD4EC8]);
  v17 = [v3 initWithFrame:location locationManager:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(CPSPointsOfInterestMapViewController *)v31 setMapView:?];
  v18 = [(CPSPointsOfInterestMapViewController *)v31 isLocationAuthorized];
  v19 = [(CPSPointsOfInterestMapViewController *)v31 mapView];
  [(MKMapView *)v19 setShowsUserLocation:v18];
  v20 = [(CPSPointsOfInterestMapViewController *)v31 mapView];
  [(MKMapView *)v20 setShowsAttribution:0];
  v21 = [(CPSPointsOfInterestMapViewController *)v31 mapView];
  [(MKMapView *)v21 setMapType:0];
  v22 = [(CPSPointsOfInterestMapViewController *)v31 mapView];
  [(MKMapView *)v22 setDelegate:v31];
  v23 = [(CPSPointsOfInterestMapViewController *)v31 mapView];
  [(MKMapView *)v23 setIsAccessibilityElement:0];
  MEMORY[0x277D82BD8](v23);
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
      mapView = v31->_mapView;
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

- (void)updateMapViewEdgeInsetsFittingAnnotations:(BOOL)a3
{
  v93 = self;
  v92 = a2;
  v91 = a3;
  v46 = [(CPSPointsOfInterestMapViewController *)self mapVisibleRegionGuide];
  [(UILayoutGuide *)v46 layoutFrame];
  v83 = v3;
  v84 = v4;
  v85 = v5;
  v86 = v6;
  v45 = [(CPSPointsOfInterestMapViewController *)v93 view];
  [v45 bounds];
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = v10;
  UIEdgeInsetsFromRectWithRect();
  v87 = v11;
  v88 = v12;
  v89 = v13;
  v90 = v14;
  MEMORY[0x277D82BD8](v45);
  v47 = [(CPSPointsOfInterestMapViewController *)v93 mapView];
  [(MKMapView *)v47 _edgeInsets];
  v75 = v15;
  v76 = v16;
  v77 = v17;
  v78 = v18;
  v48 = UIEdgeInsetsEqualToEdgeInsets(v87, v88, v89, v90, v15, v16, v17, v18);
  *&v19 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  if (!v48)
  {
    v40 = [(CPSPointsOfInterestMapViewController *)v93 mapView];
    [(MKMapView *)v40 centerCoordinate];
    *&v74 = v20;
    *(&v74 + 1) = v21;
    v41 = [(CPSPointsOfInterestMapViewController *)v93 mapView];
    [(MKMapView *)v41 _setEdgeInsets:v87, v88, v89, v90];
    v43 = [(CPSPointsOfInterestMapViewController *)v93 mapView];
    v42 = [(MKMapView *)v43 camera];
    v73 = [(MKMapCamera *)v42 copy];
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    v72 = v74;
    v71 = v74;
    [v73 setCenterCoordinate:v74];
    v44 = [(CPSPointsOfInterestMapViewController *)v93 annotations];
    v70 = [(NSMutableDictionary *)v44 allValues];
    v22 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    if (v91 && [v70 count])
    {
      [(CPSPointsOfInterestMapViewController *)v93 mapVisibleRegion];
      *&v67 = v23;
      *(&v67 + 1) = v24;
      v68 = v25;
      v69 = v26;
      v66 = CPSCoordinateRegionContainsAnnotations(v70, v23, v24, v25, v26);
      if (v66)
      {
        v56 = v67;
        v55 = v67;
        [v73 setCenterCoordinate:v67];
      }

      else
      {
        *&v63 = CPSCoordinateRegionForAnnotations(v70);
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
          v39 = [(CPSPointsOfInterestMapViewController *)v93 mapVisibleRegionGuide];
          [(UILayoutGuide *)v39 layoutFrame];
          v59 = v30;
          v60 = v31;
          *&v61 = v32;
          *(&v61 + 1) = v33;
          v62 = v61;
          v34 = [v38 _CPS_cameraForRegion:*&v63 withSize:{*(&v63 + 1), v64, v65, v32, v33}];
          v35 = v73;
          v73 = v34;
          MEMORY[0x277D82BD8](v35);
          v22 = MEMORY[0x277D82BD8](v39).n128_u64[0];
        }
      }
    }

    v37 = [(CPSPointsOfInterestMapViewController *)v93 mapView];
    v36 = v73;
    v49 = MEMORY[0x277D85DD0];
    v50 = -1073741824;
    v51 = 0;
    v52 = __82__CPSPointsOfInterestMapViewController_updateMapViewEdgeInsetsFittingAnnotations___block_invoke;
    v53 = &unk_278D913E8;
    v54 = MEMORY[0x277D82BE0](v93);
    [(MKMapView *)v37 _CPS_setCamera:v36 animated:1 completionBlock:&v49];
    MEMORY[0x277D82BD8](v37);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v73, 0);
  }
}

- ($EFF74E1A437733FA0F87D07FFF1B01BE)mapVisibleRegion
{
  v10 = [(CPSPointsOfInterestMapViewController *)self mapView];
  v9 = [(CPSPointsOfInterestMapViewController *)self mapVisibleRegionGuide];
  [(UILayoutGuide *)v9 layoutFrame];
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v8 = [(CPSPointsOfInterestMapViewController *)self mapView];
  [(MKMapView *)v10 convertRect:v11 toRegionFromView:v12, v13, v14];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  return result;
}

- (void)highlightModel:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v7 = [(CPSPointsOfInterestMapViewController *)v19 clusterAnnotations];
    v8 = [location[0] identifier];
    v9 = [(NSMutableDictionary *)v7 objectForKey:?];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v9)
    {
      v3 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      v16 = [(CPSPointsOfInterestMapViewController *)v19 annotations];
      v15 = 1;
      v14 = [location[0] identifier];
      v13 = 1;
      v12 = [(NSMutableDictionary *)v16 objectForKey:?];
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
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v8);
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v6 = [(CPSPointsOfInterestMapViewController *)v19 mapView];
    v10 = [(MKMapView *)v6 viewForAnnotation:v17];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(MKAnnotationView *)v10 setSelected:1 animated:1, v5];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)unhighlightModel:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v7 = [(CPSPointsOfInterestMapViewController *)v19 clusterAnnotations];
    v8 = [location[0] identifier];
    v9 = [(NSMutableDictionary *)v7 objectForKey:?];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v9)
    {
      v3 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      v16 = [(CPSPointsOfInterestMapViewController *)v19 annotations];
      v15 = 1;
      v14 = [location[0] identifier];
      v13 = 1;
      v12 = [(NSMutableDictionary *)v16 objectForKey:?];
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
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v8);
    *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    v6 = [(CPSPointsOfInterestMapViewController *)v19 mapView];
    v10 = [(MKMapView *)v6 viewForAnnotation:v17];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(MKAnnotationView *)v10 setSelected:0 animated:1, v5];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)reloadAnnotations:(BOOL)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v51 = self;
  v50 = a2;
  v49 = a3;
  if (([(CPSPointsOfInterestMapViewController *)self isViewLoaded]& 1) != 0)
  {
    v33 = [(CPSPointsOfInterestMapViewController *)v51 annotations];
    v32 = [(NSMutableDictionary *)v33 allValues];
    v48 = [v32 mutableCopy];
    MEMORY[0x277D82BD8](v32);
    v35 = [(CPSPointsOfInterestMapViewController *)v51 mapView];
    v34 = [(MKMapView *)v35 annotations];
    v47 = [(NSArray *)v34 mutableCopy];
    MEMORY[0x277D82BD8](v34);
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
              v20 = [location memberAnnotations];
              v21 = [v20 countByEnumeratingWithState:v38 objects:v52 count:16];
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
                    objc_enumerationMutation(v20);
                  }

                  v39 = *(v38[1] + 8 * v18);
                  v15 = [(CPSPointsOfInterestMapViewController *)v51 clusterAnnotations];
                  v14 = [v39 pointOfInterest];
                  v13 = [v14 identifier];
                  [(NSMutableDictionary *)v15 removeObjectForKey:?];
                  MEMORY[0x277D82BD8](v13);
                  MEMORY[0x277D82BD8](v14);
                  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
                  ++v18;
                  if (v16 + 1 >= v19)
                  {
                    v18 = 0;
                    v19 = [v20 countByEnumeratingWithState:v38 objects:v52 count:{16, v3}];
                    if (!v19)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](v20);
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
    v11 = [(CPSPointsOfInterestMapViewController *)v51 mapView];
    [(MKMapView *)v11 removeAnnotations:v45];
    *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v12 = [(CPSPointsOfInterestMapViewController *)v51 mapView];
    [(MKMapView *)v12 addAnnotations:v46];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    if (v49)
    {
      v10 = [(CPSPointsOfInterestMapViewController *)v51 mapView];
      v9 = [(CPSPointsOfInterestMapViewController *)v51 annotations];
      v8 = [(NSMutableDictionary *)v9 allValues];
      [MKMapView showAnnotations:v10 animated:"showAnnotations:animated:"];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      [(CPSPointsOfInterestMapViewController *)v51 updateMapViewEdgeInsetsFittingAnnotations:1, v7];
      [(CPSPointsOfInterestMapViewController *)v51 setHasPerformedInitialLayout:1];
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
  }
}

- (void)zoomToLocation:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSPointsOfInterestMapViewController *)v10 annotations];
  v4 = [location[0] identifier];
  v8 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:?];
  MEMORY[0x277D82BD8](v4);
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = [(CPSPointsOfInterestMapViewController *)v10 mapView];
  v11[0] = v8;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [MKMapView showAnnotations:v7 animated:"showAnnotations:animated:"];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, a4);
  v62 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = MEMORY[0x277D82BE0](v63);
    v40 = [(CPSPointsOfInterestMapViewController *)v65 template];
    v36 = [v40 selectedIndex];
    v39 = [(CPSPointsOfInterestMapViewController *)v65 pointsOfInterest];
    v38 = [v39 pointsOfInterest];
    v37 = [v61 pointOfInterest];
    v41 = v36 == [v38 indexOfObject:?];
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    v60 = v41;
    v43 = [v61 pointOfInterest];
    v42 = [v43 pinImageSet];
    v59 = [v42 image];
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    if (v59)
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
      v28 = [v61 pointOfInterest];
      v27 = [v28 pinImageSet];
      [v58 setImageSet:?];
      MEMORY[0x277D82BD8](v27);
      v30 = [v61 pointOfInterest];
      v29 = [v30 selectedPinImageSet];
      [v58 setSelectedImageSet:?];
      MEMORY[0x277D82BD8](v29);
      *&v7 = MEMORY[0x277D82BD8](v30).n128_u64[0];
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

    objc_storeStrong(&v59, 0);
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

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
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

- (id)mapView:(id)a3 clusterAnnotationForMemberAnnotations:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
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
      v11 = [(CPSPointsOfInterestMapViewController *)v24 clusterAnnotations];
      v8 = v21;
      v10 = [v20 pointOfInterest];
      v9 = [v10 identifier];
      [(NSMutableDictionary *)v11 setObject:v8 forKey:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
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

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v8 = [v11 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (isKindOfClass)
  {
    v10 = [v11 annotation];
    v6 = [(CPSPointsOfInterestMapViewController *)v13 pickerViewController];
    v5 = [v10 pointOfInterest];
    [(CPSPointsOfInterestPickerViewController *)v6 setSelectedItem:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isRegionChanging])
  {
    [(CPSPointsOfInterestMapViewController *)v5 _notifyRegionDidChange];
  }

  objc_storeStrong(location, 0);
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!-[CPSPointsOfInterestMapViewController hasPerformedInitialLayout](v6, "hasPerformedInitialLayout") && a4 && ([location[0] _isAnimating] & 1) == 0)
  {
    [(CPSPointsOfInterestMapViewController *)v6 setHasPerformedInitialLayout:1];
    [(CPSPointsOfInterestMapViewController *)v6 _notifyRegionDidChange];
  }

  objc_storeStrong(location, 0);
}

- (void)_notifyRegionDidChange
{
  v9 = [(CPSPointsOfInterestMapViewController *)self panTimer];
  v10 = 0;
  if (!v9)
  {
    v10 = [(CPSPointsOfInterestMapViewController *)self hasPerformedInitialLayout];
  }

  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v8 = [(CPSBaseEntityContentViewController *)self resourceProvider];
    v7 = [(CPSEntityResourceProvider *)v8 actionDelegate];
    [(CPSPointsOfInterestMapViewController *)self mapVisibleRegion];
    [(CPSEntityActionDelegate *)v7 entityContentViewController:self regionDidChange:v3, v4, v5, v6];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }
}

- (void)zoomIn
{
  v9 = self;
  v8[1] = a2;
  v2 = [(CPSPointsOfInterestMapViewController *)self mapView];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __46__CPSPointsOfInterestMapViewController_zoomIn__block_invoke;
  v7 = &unk_278D913E8;
  v8[0] = MEMORY[0x277D82BE0](v9);
  [(MKMapView *)v2 _zoomInWithCompletionHandler:?];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v8, 0);
}

- (void)zoomOut
{
  v9 = self;
  v8[1] = a2;
  v2 = [(CPSPointsOfInterestMapViewController *)self mapView];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __47__CPSPointsOfInterestMapViewController_zoomOut__block_invoke;
  v7 = &unk_278D913E8;
  v8[0] = MEMORY[0x277D82BE0](v9);
  [(MKMapView *)v2 _zoomOutWithCompletionHandler:?];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v8, 0);
}

- (void)beginPanningWithCompletion:(id)a3
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSPointsOfInterestMapViewController *)v21 panViewController];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (!v7)
  {
    [(CPSPointsOfInterestMapViewController *)v21 setUpPanView];
  }

  [(CPSPointsOfInterestMapViewController *)v21 setPanCompletionHandler:location[0], v3];
  v4 = MEMORY[0x277D75D18];
  v6 = [(CPSPointsOfInterestMapViewController *)v21 pickerViewController];
  v5 = [(CPSPointsOfInterestPickerViewController *)v6 view];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke;
  v18 = &unk_278D913E8;
  v19 = MEMORY[0x277D82BE0](v21);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67__CPSPointsOfInterestMapViewController_beginPanningWithCompletion___block_invoke_2;
  v12 = &unk_278D91398;
  v13 = MEMORY[0x277D82BE0](v21);
  [v4 transitionWithView:v5 duration:0x10000 options:&v14 animations:&v8 completion:0.25];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
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
  v25 = self;
  v24 = a2;
  v13 = [(CPSPointsOfInterestMapViewController *)self userLocation];
  *&v2 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v13)
  {
    [(CPSPointsOfInterestMapViewController *)v25 setCenterMapPending:0, v2];
    v8 = [(CPSPointsOfInterestMapViewController *)v25 userLocation];
    [(CLLocation *)v8 coordinate];
    *&v23 = v3;
    *(&v23 + 1) = v4;
    v10 = [(CPSPointsOfInterestMapViewController *)v25 mapView];
    v9 = [(MKMapView *)v10 camera];
    v22 = [(MKMapCamera *)v9 copy];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v21 = v23;
    v20 = v23;
    [v22 setCenterCoordinate:v23];
    v11 = [(CPSPointsOfInterestMapViewController *)v25 annotations];
    v12 = [(NSMutableDictionary *)v11 count];
    *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (!v12)
    {
      [v22 setCenterCoordinateDistance:12500.0];
    }

    v7 = [(CPSPointsOfInterestMapViewController *)v25 mapView];
    v6 = v22;
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __49__CPSPointsOfInterestMapViewController_centerMap__block_invoke;
    v18 = &unk_278D913E8;
    v19 = MEMORY[0x277D82BE0](v25);
    [(MKMapView *)v7 _CPS_setCamera:v6 animated:1 completionBlock:&v14];
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    [(CPSPointsOfInterestMapViewController *)v25 setCenterMapPending:1, v2];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__CPSPointsOfInterestMapViewController_locationManager_didUpdateLocations___block_invoke;
  v12 = &unk_278D913E8;
  v13 = MEMORY[0x277D82BE0](v16);
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

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
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
    v13 = MEMORY[0x277D82BE0](v16);
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

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __78__CPSPointsOfInterestMapViewController_locationManagerDidChangeAuthorization___block_invoke;
  v10 = &unk_278D913E8;
  v11 = MEMORY[0x277D82BE0](v13);
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
  v21 = self;
  v20[1] = a2;
  v19 = [(CPSPointsOfInterestMapViewController *)self locationManager];
  *&v2 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  if (!v19)
  {
    v6 = [(CPSBaseEntityContentViewController *)v21 resourceProvider];
    v5 = [(CPSEntityResourceProvider *)v6 templateEnvironment];
    v20[0] = [(CPSTemplateEnvironment *)v5 bundleIdentifier];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v10 = objc_alloc(MEMORY[0x277CBFC10]);
    v8 = v20[0];
    v9 = v21;
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    v12 = v7;
    v11 = [v10 initWithEffectiveBundleIdentifier:v8 delegate:v9 onQueue:?];
    [(CPSPointsOfInterestMapViewController *)v21 setLocationManager:?];
    MEMORY[0x277D82BD8](v11);
    *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = v21;
    v14 = [(CPSPointsOfInterestMapViewController *)v21 locationManager];
    [(CLLocationManager *)v14 setDelegate:v13];
    MEMORY[0x277D82BD8](v14);
    v15 = *MEMORY[0x277CE4200];
    v16 = [(CPSPointsOfInterestMapViewController *)v21 locationManager];
    [(CLLocationManager *)v16 setDistanceFilter:v15];
    MEMORY[0x277D82BD8](v16);
    v17 = *MEMORY[0x277CE4208];
    v18 = [(CPSPointsOfInterestMapViewController *)v21 locationManager];
    [(CLLocationManager *)v18 setDesiredAccuracy:v17];
    MEMORY[0x277D82BD8](v18);
    objc_storeStrong(v20, 0);
  }
}

- (BOOL)isLocationAuthorized
{
  v3 = [(CPSPointsOfInterestMapViewController *)self locationManager];
  v4 = [(CLLocationManager *)v3 authorizationStatus];
  MEMORY[0x277D82BD8](v3);
  return v4 == kCLAuthorizationStatusAuthorizedWhenInUse || v4 == kCLAuthorizationStatusAuthorizedAlways;
}

- (void)setUpPanView
{
  v95[4] = *MEMORY[0x277D85DE8];
  v91 = self;
  v90[1] = a2;
  v90[0] = objc_opt_new();
  v31 = [CPSPanViewController alloc];
  v33 = [(CPSBaseEntityContentViewController *)v91 resourceProvider];
  v32 = [(CPSEntityResourceProvider *)v33 templateEnvironment];
  location = [(CPSPanViewController *)v31 initWithEnvironment:?];
  MEMORY[0x277D82BD8](v32);
  [location setPanDelegate:{v91, MEMORY[0x277D82BD8](v33).n128_f64[0]}];
  [(CPSPointsOfInterestMapViewController *)v91 setPanViewController:location];
  v34 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  [(CPSPanViewController *)v34 willMoveToParentViewController:v91];
  v35 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  [(CPSPointsOfInterestMapViewController *)v91 addChildViewController:?];
  v38 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v37 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  v36 = [(CPSPanViewController *)v37 view];
  [v38 addSubview:?];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  v39 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  [(CPSPanViewController *)v39 didMoveToParentViewController:v91];
  v68 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  v67 = [(CPSPanViewController *)v68 view];
  v66 = [v67 topAnchor];
  v65 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v64 = [v65 safeAreaLayoutGuide];
  v63 = [v64 topAnchor];
  v62 = [v66 constraintEqualToAnchor:?];
  v95[0] = v62;
  v61 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  v60 = [(CPSPanViewController *)v61 view];
  v59 = [v60 bottomAnchor];
  v58 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v57 = [v58 safeAreaLayoutGuide];
  v56 = [v57 bottomAnchor];
  v55 = [v59 constraintEqualToAnchor:?];
  v95[1] = v55;
  v54 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  v53 = [(CPSPanViewController *)v54 view];
  v52 = [v53 leftAnchor];
  v51 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v50 = [v51 safeAreaLayoutGuide];
  v49 = [v50 leftAnchor];
  v48 = [v52 constraintEqualToAnchor:?];
  v95[2] = v48;
  v47 = [(CPSPointsOfInterestMapViewController *)v91 panViewController];
  v46 = [(CPSPanViewController *)v47 view];
  v45 = [v46 rightAnchor];
  v44 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v43 = [v44 safeAreaLayoutGuide];
  v42 = [v43 rightAnchor];
  v41 = [v45 constraintEqualToAnchor:?];
  v95[3] = v41;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:?];
  [v90[0] addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  v69 = objc_alloc_init(CPSActionButton);
  [(CPSPointsOfInterestMapViewController *)v91 setDonePanningButton:?];
  v70 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPUITemplateButton *)v70 setDelegate:v91];
  v71 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPSActionButton *)v71 setLayoutDelegate:v91];
  v72 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPSActionButton *)v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v72);
  v74 = CPSLocalizedStringForKey(@"DONE");
  v73 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPSActionButton *)v73 setButtonText:v74];
  MEMORY[0x277D82BD8](v73);
  v78 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  v77 = [(CPSActionButton *)v78 buttonText];
  v94 = v77;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
  v75 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPSActionButton *)v75 setAccessibilityUserInputLabels:v76];
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  v80 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  v79 = [MEMORY[0x277D75348] _carSystemFocusColor];
  [CPSActionButton setTitleColor:v80 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](v79);
  v82 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  v81 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  [CPSActionButton setTitleColor:v82 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](v81);
  v84 = [(CPSPointsOfInterestMapViewController *)v91 view];
  v83 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [v84 addSubview:?];
  MEMORY[0x277D82BD8](v83);
  v85 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
  [(CPSActionButton *)v85 setNeedsLayout];
  v87 = [(CPSBaseEntityContentViewController *)v91 resourceProvider];
  v86 = [(CPSEntityResourceProvider *)v87 templateEnvironment];
  v88 = [(CPSTemplateEnvironment *)v86 rightHandDrive];
  MEMORY[0x277D82BD8](v86);
  *&v2 = MEMORY[0x277D82BD8](v87).n128_u64[0];
  if (v88)
  {
    v17 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
    v16 = [(CPSActionButton *)v17 trailingAnchor];
    v15 = [(CPSPointsOfInterestMapViewController *)v91 view];
    v14 = [v15 safeAreaLayoutGuide];
    v13 = [v14 trailingAnchor];
    v12 = [v16 constraintEqualToAnchor:-8.0 constant:?];
    v92[0] = v12;
    v11 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
    v10 = [(CPSActionButton *)v11 topAnchor];
    v9 = [(CPSPointsOfInterestMapViewController *)v91 view];
    v8 = [v9 safeAreaLayoutGuide];
    v7 = [v8 topAnchor];
    v6 = [v10 constraintEqualToAnchor:8.0 constant:?];
    v92[1] = v6;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
    [v90[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v3 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  }

  else
  {
    v30 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
    v29 = [(CPSActionButton *)v30 leadingAnchor];
    v28 = [(CPSPointsOfInterestMapViewController *)v91 view];
    v27 = [v28 safeAreaLayoutGuide];
    v26 = [v27 leadingAnchor];
    v25 = [v29 constraintEqualToAnchor:? constant:?];
    v93[0] = v25;
    v24 = [(CPSPointsOfInterestMapViewController *)v91 donePanningButton];
    v23 = [(CPSActionButton *)v24 topAnchor];
    v22 = [(CPSPointsOfInterestMapViewController *)v91 view];
    v21 = [v22 safeAreaLayoutGuide];
    v20 = [v21 topAnchor];
    v19 = [v23 constraintEqualToAnchor:8.0 constant:?];
    v93[1] = v19;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
    [v90[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    v3 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v90[0], *&v3, v90}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
}

- (void)didSelectButton:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = location[0];
  v4 = [(CPSPointsOfInterestMapViewController *)v7 donePanningButton];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v5 == v4)
  {
    [(CPSPointsOfInterestMapViewController *)v7 dismissPanView:location[0], v3];
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

- (void)panBeganWithDirection:(int64_t)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v3 = MEMORY[0x277CBEBB8];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __62__CPSPointsOfInterestMapViewController_panBeganWithDirection___block_invoke;
  v9 = &unk_278D92520;
  v10[0] = MEMORY[0x277D82BE0](self);
  v10[1] = v11;
  v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:0.016 block:?];
  [(CPSPointsOfInterestMapViewController *)v13 setPanTimer:?];
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

- (void)panEndedWithDirection:(int64_t)a3
{
  v3 = [(CPSPointsOfInterestMapViewController *)self panTimer];
  [(NSTimer *)v3 invalidate];
  [(CPSPointsOfInterestMapViewController *)self setPanTimer:0, MEMORY[0x277D82BD8](v3).n128_f64[0]];
  [(CPSPointsOfInterestMapViewController *)self _notifyRegionDidChange];
}

- (void)panWithDirection:(int64_t)a3
{
  v23 = self;
  v22 = a2;
  v21 = a3;
  v9 = [(CPSPointsOfInterestMapViewController *)self mapView];
  v8 = [(MKMapView *)v9 camera];
  v20 = [(MKMapCamera *)v8 copy];
  MEMORY[0x277D82BD8](v8);
  [v20 centerCoordinate];
  *&v19 = v3;
  *(&v19 + 1) = v4;
  [v20 altitude];
  v18 = 0.003 * (v5 / 1000.0);
  switch(v21)
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
  v7 = [(CPSPointsOfInterestMapViewController *)v23 mapView];
  v6 = v20;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __57__CPSPointsOfInterestMapViewController_panWithDirection___block_invoke;
  v14 = &unk_278D913E8;
  v15 = MEMORY[0x277D82BE0](v23);
  [(MKMapView *)v7 _CPS_setCamera:v6 animated:1 completionBlock:&v10];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
}

- (void)dismissPanView:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x277D75D18];
  v9 = [(CPSPointsOfInterestMapViewController *)v24 pickerViewController];
  v8 = [(CPSPointsOfInterestPickerViewController *)v9 view];
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke;
  v21 = &unk_278D913E8;
  v22 = MEMORY[0x277D82BE0](v24);
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __55__CPSPointsOfInterestMapViewController_dismissPanView___block_invoke_2;
  v15 = &unk_278D91398;
  v16 = MEMORY[0x277D82BE0](v24);
  [v7 transitionWithView:v8 duration:0x10000 options:&v17 animations:&v11 completion:0.25];
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(CPSPointsOfInterestMapViewController *)v24 panCompletionHandler];
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v6 = [(CPSPointsOfInterestMapViewController *)v24 panCompletionHandler];
    v6[2]();
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [(CPSPointsOfInterestMapViewController *)v24 setPanCompletionHandler:0, v5];
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

- (void)picker:(id)a3 didSelectModel:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  [(CPSPointsOfInterestMapViewController *)v11 highlightModel:v9];
  v8 = [(CPSBaseEntityContentViewController *)v11 resourceProvider];
  v7 = [(CPSEntityResourceProvider *)v8 actionDelegate];
  v5 = v11;
  v6 = [v9 identifier];
  [(CPSEntityActionDelegate *)v7 entityContentViewController:v5 didSelectPointOfInterestWithIdentifier:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)a3 didDeselectModel:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSPointsOfInterestMapViewController *)v7 unhighlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)a3 didHighlightModel:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSPointsOfInterestMapViewController *)v7 highlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)picker:(id)a3 didUnhighlightModel:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSPointsOfInterestMapViewController *)v7 unhighlightModel:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)_linearFocusMovementSequences
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = self;
  v7[1] = a2;
  v4 = objc_alloc(MEMORY[0x277D75F88]);
  v5 = [(CPSPointsOfInterestMapViewController *)v8 _linearFocusItems];
  v7[0] = [v4 initWithItems:? loops:? restrictEnteringSequence:?];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v9[0] = v7[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:{1, v2}];
  objc_storeStrong(v7, 0);

  return v6;
}

- (id)_linearFocusItems
{
  v131 = self;
  v130[1] = a2;
  v130[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v121 = [(CPSPointsOfInterestMapViewController *)v131 panViewController];
  v122 = [(CPSPanViewController *)v121 view];
  v127 = 0;
  v125 = 0;
  v123 = 0;
  if (v122)
  {
    v128 = [(CPSPointsOfInterestMapViewController *)v131 panViewController];
    v127 = 1;
    v126 = [(CPSPanViewController *)v128 view];
    v125 = 1;
    v123 = [v126 isHidden] == 0;
  }

  if (v125)
  {
    MEMORY[0x277D82BD8](v126);
  }

  if (v127)
  {
    MEMORY[0x277D82BD8](v128);
  }

  MEMORY[0x277D82BD8](v122);
  *&v2 = MEMORY[0x277D82BD8](v121).n128_u64[0];
  v129 = v123;
  if (v123)
  {
    v117 = [(CPSPointsOfInterestMapViewController *)v131 panViewController];
    location = [(CPSPanViewController *)v117 panView];
    v119 = [(CPSBaseEntityContentViewController *)v131 resourceProvider];
    v118 = [(CPSEntityResourceProvider *)v119 templateEnvironment];
    v120 = [(CPSTemplateEnvironment *)v118 rightHandDrive];
    MEMORY[0x277D82BD8](v118);
    *&v3 = MEMORY[0x277D82BD8](v119).n128_u64[0];
    if (v120)
    {
      v93 = [location panRightButton];
      v13 = MEMORY[0x277D82BD8](v93).n128_u64[0];
      if (v93)
      {
        v92 = [location panRightButton];
        [v130[0] addObject:?];
        v13 = MEMORY[0x277D82BD8](v92).n128_u64[0];
      }

      v91 = [location panDownButton];
      v14 = MEMORY[0x277D82BD8](v91).n128_u64[0];
      if (v91)
      {
        v90 = [location panDownButton];
        [v130[0] addObject:?];
        v14 = MEMORY[0x277D82BD8](v90).n128_u64[0];
      }

      v88 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v89 = [(CPSPointsOfInterestMapControlsViewController *)v88 zoomOutButton];
      MEMORY[0x277D82BD8](v89);
      v15 = MEMORY[0x277D82BD8](v88).n128_u64[0];
      if (v89)
      {
        v87 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v86 = [(CPSPointsOfInterestMapControlsViewController *)v87 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v86);
        v15 = MEMORY[0x277D82BD8](v87).n128_u64[0];
      }

      v84 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v85 = [(CPSPointsOfInterestMapControlsViewController *)v84 zoomInButton];
      MEMORY[0x277D82BD8](v85);
      v16 = MEMORY[0x277D82BD8](v84).n128_u64[0];
      if (v85)
      {
        v83 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v82 = [(CPSPointsOfInterestMapControlsViewController *)v83 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v82);
        v16 = MEMORY[0x277D82BD8](v83).n128_u64[0];
      }

      v81 = [location panLeftButton];
      v17 = MEMORY[0x277D82BD8](v81).n128_u64[0];
      if (v81)
      {
        v80 = [location panLeftButton];
        [v130[0] addObject:?];
        v17 = MEMORY[0x277D82BD8](v80).n128_u64[0];
      }

      v78 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v79 = [(CPSPointsOfInterestMapControlsViewController *)v78 centerButton];
      MEMORY[0x277D82BD8](v79);
      v18 = MEMORY[0x277D82BD8](v78).n128_u64[0];
      if (v79)
      {
        v77 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v76 = [(CPSPointsOfInterestMapControlsViewController *)v77 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v76);
        v18 = MEMORY[0x277D82BD8](v77).n128_u64[0];
      }

      v75 = [location panUpButton];
      v19 = MEMORY[0x277D82BD8](v75).n128_u64[0];
      if (v75)
      {
        v74 = [location panUpButton];
        [v130[0] addObject:?];
        v19 = MEMORY[0x277D82BD8](v74).n128_u64[0];
      }

      v72 = [(CPSPointsOfInterestMapViewController *)v131 donePanningButton];
      [(CPSActionButton *)v72 alpha];
      v73 = v20;
      MEMORY[0x277D82BD8](v72);
      if (v73 == 1.0)
      {
        v71 = [(CPSPointsOfInterestMapViewController *)v131 donePanningButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v71);
      }
    }

    else
    {
      v115 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v116 = [(CPSPointsOfInterestMapControlsViewController *)v115 centerButton];
      MEMORY[0x277D82BD8](v116);
      v4 = MEMORY[0x277D82BD8](v115).n128_u64[0];
      if (v116)
      {
        v114 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v113 = [(CPSPointsOfInterestMapControlsViewController *)v114 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v113);
        v4 = MEMORY[0x277D82BD8](v114).n128_u64[0];
      }

      v112 = [location panRightButton];
      v5 = MEMORY[0x277D82BD8](v112).n128_u64[0];
      if (v112)
      {
        v111 = [location panRightButton];
        [v130[0] addObject:?];
        v5 = MEMORY[0x277D82BD8](v111).n128_u64[0];
      }

      v109 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v110 = [(CPSPointsOfInterestMapControlsViewController *)v109 zoomInButton];
      MEMORY[0x277D82BD8](v110);
      v6 = MEMORY[0x277D82BD8](v109).n128_u64[0];
      if (v110)
      {
        v108 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v107 = [(CPSPointsOfInterestMapControlsViewController *)v108 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v107);
        v6 = MEMORY[0x277D82BD8](v108).n128_u64[0];
      }

      v105 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v106 = [(CPSPointsOfInterestMapControlsViewController *)v105 zoomOutButton];
      MEMORY[0x277D82BD8](v106);
      v7 = MEMORY[0x277D82BD8](v105).n128_u64[0];
      if (v106)
      {
        v104 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v103 = [(CPSPointsOfInterestMapControlsViewController *)v104 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v103);
        v7 = MEMORY[0x277D82BD8](v104).n128_u64[0];
      }

      v102 = [location panDownButton];
      v8 = MEMORY[0x277D82BD8](v102).n128_u64[0];
      if (v102)
      {
        v101 = [location panDownButton];
        [v130[0] addObject:?];
        v8 = MEMORY[0x277D82BD8](v101).n128_u64[0];
      }

      v100 = [location panLeftButton];
      v9 = MEMORY[0x277D82BD8](v100).n128_u64[0];
      if (v100)
      {
        v99 = [location panLeftButton];
        [v130[0] addObject:?];
        v9 = MEMORY[0x277D82BD8](v99).n128_u64[0];
      }

      v97 = [(CPSPointsOfInterestMapViewController *)v131 donePanningButton];
      [(CPSActionButton *)v97 alpha];
      v98 = v10;
      MEMORY[0x277D82BD8](v97);
      v11 = v98;
      if (v98 == 1.0)
      {
        v96 = [(CPSPointsOfInterestMapViewController *)v131 donePanningButton];
        [v130[0] addObject:?];
        *&v11 = MEMORY[0x277D82BD8](v96).n128_u64[0];
      }

      v95 = [location panUpButton];
      *&v12 = MEMORY[0x277D82BD8](v95).n128_u64[0];
      if (v95)
      {
        v94 = [location panUpButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v94);
      }
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    v69 = [(CPSBaseEntityContentViewController *)v131 resourceProvider];
    v68 = [(CPSEntityResourceProvider *)v69 templateEnvironment];
    v70 = [(CPSTemplateEnvironment *)v68 rightHandDrive];
    MEMORY[0x277D82BD8](v68);
    *&v21 = MEMORY[0x277D82BD8](v69).n128_u64[0];
    if (v70)
    {
      v66 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v67 = [(CPSPointsOfInterestMapControlsViewController *)v66 centerButton];
      MEMORY[0x277D82BD8](v67);
      v22 = MEMORY[0x277D82BD8](v66).n128_u64[0];
      if (v67)
      {
        v65 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v64 = [(CPSPointsOfInterestMapControlsViewController *)v65 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v64);
        v22 = MEMORY[0x277D82BD8](v65).n128_u64[0];
      }

      v62 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v63 = [(CPSPointsOfInterestMapControlsViewController *)v62 panButton];
      MEMORY[0x277D82BD8](v63);
      v23 = MEMORY[0x277D82BD8](v62).n128_u64[0];
      if (v63)
      {
        v61 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v60 = [(CPSPointsOfInterestMapControlsViewController *)v61 panButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v60);
        v23 = MEMORY[0x277D82BD8](v61).n128_u64[0];
      }

      v58 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v59 = [(CPSPointsOfInterestMapControlsViewController *)v58 zoomInButton];
      MEMORY[0x277D82BD8](v59);
      v24 = MEMORY[0x277D82BD8](v58).n128_u64[0];
      if (v59)
      {
        v57 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v56 = [(CPSPointsOfInterestMapControlsViewController *)v57 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v56);
        v24 = MEMORY[0x277D82BD8](v57).n128_u64[0];
      }

      v54 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v55 = [(CPSPointsOfInterestMapControlsViewController *)v54 zoomOutButton];
      MEMORY[0x277D82BD8](v55);
      v25 = MEMORY[0x277D82BD8](v54).n128_u64[0];
      if (v55)
      {
        v53 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v52 = [(CPSPointsOfInterestMapControlsViewController *)v53 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v52);
        v25 = MEMORY[0x277D82BD8](v53).n128_u64[0];
      }

      v51 = [(CPSPointsOfInterestMapViewController *)v131 pickerViewController];
      v50 = [(CPSPointsOfInterestPickerViewController *)v51 _linearFocusItems];
      [v130[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
    }

    else
    {
      v47 = [(CPSPointsOfInterestMapViewController *)v131 pickerViewController];
      v46 = [(CPSPointsOfInterestPickerViewController *)v47 _linearFocusItems];
      [v130[0] addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v46);
      v48 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v49 = [(CPSPointsOfInterestMapControlsViewController *)v48 centerButton];
      MEMORY[0x277D82BD8](v49);
      v26 = MEMORY[0x277D82BD8](v48).n128_u64[0];
      if (v49)
      {
        v45 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v44 = [(CPSPointsOfInterestMapControlsViewController *)v45 centerButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v44);
        v26 = MEMORY[0x277D82BD8](v45).n128_u64[0];
      }

      v42 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v43 = [(CPSPointsOfInterestMapControlsViewController *)v42 panButton];
      MEMORY[0x277D82BD8](v43);
      v27 = MEMORY[0x277D82BD8](v42).n128_u64[0];
      if (v43)
      {
        v41 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v40 = [(CPSPointsOfInterestMapControlsViewController *)v41 panButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v40);
        v27 = MEMORY[0x277D82BD8](v41).n128_u64[0];
      }

      v38 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v39 = [(CPSPointsOfInterestMapControlsViewController *)v38 zoomInButton];
      MEMORY[0x277D82BD8](v39);
      v28 = MEMORY[0x277D82BD8](v38).n128_u64[0];
      if (v39)
      {
        v37 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v36 = [(CPSPointsOfInterestMapControlsViewController *)v37 zoomInButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v36);
        v28 = MEMORY[0x277D82BD8](v37).n128_u64[0];
      }

      v34 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
      v35 = [(CPSPointsOfInterestMapControlsViewController *)v34 zoomOutButton];
      MEMORY[0x277D82BD8](v35);
      *&v29 = MEMORY[0x277D82BD8](v34).n128_u64[0];
      if (v35)
      {
        v33 = [(CPSPointsOfInterestMapViewController *)v131 mapControlsViewController];
        v32 = [(CPSPointsOfInterestMapControlsViewController *)v33 zoomOutButton];
        [v130[0] addObject:?];
        MEMORY[0x277D82BD8](v32);
        MEMORY[0x277D82BD8](v33);
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
  v22 = self;
  v21 = a2;
  v10 = [(CPSPointsOfInterestMapViewController *)self panViewController];
  v11 = [(CPSPanViewController *)v10 view];
  v18 = 0;
  v16 = 0;
  v12 = 0;
  if (v11)
  {
    v19 = [(CPSPointsOfInterestMapViewController *)v22 panViewController];
    v18 = 1;
    v17 = [(CPSPanViewController *)v19 view];
    v16 = 1;
    v12 = [v17 isHidden] == 0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  MEMORY[0x277D82BD8](v11);
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v20 = v12;
  if (v12)
  {
    v8 = [(CPSPointsOfInterestMapViewController *)v22 panViewController];
    v15 = [(CPSPanViewController *)v8 panView];
    *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v9 = [(CPSPanView *)v15 panUpButton];
    v25[0] = v9;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v7 = [(CPSPointsOfInterestMapViewController *)v22 pickerViewController];
    v14 = [(CPSPointsOfInterestPickerViewController *)v7 _linearFocusItems];
    if ([v14 count])
    {
      v6 = [v14 firstObject];
      v24 = v6;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      MEMORY[0x277D82BD8](v6);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v14, 0);
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
  v4 = self;
  v3[1] = a2;
  v3[0] = [objc_alloc(MEMORY[0x277D75F98]) initWithEnvironment:self];
  [v3[0] setAllowsDeferral:0];
  v2 = [MEMORY[0x277D75518] focusSystemForEnvironment:v4];
  [v2 _requestFocusUpdate:v3[0]];
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

@end