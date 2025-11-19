@interface CPSLocationConsentViewController
- (CPSLocationConsentViewController)initWithRequest:(id)a3;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_buttonActionTriggered:(id)a3;
- (void)_setupContentView;
- (void)mapViewDidChangeVisibleRegion:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CPSLocationConsentViewController

- (CPSLocationConsentViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = _CPSLocalizedString();
  v6 = [MEMORY[0x277D755D0] configurationWithScale:2];
  v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"location.fill.appclip" withConfiguration:v6];
  v23.receiver = self;
  v23.super_class = CPSLocationConsentViewController;
  v8 = [(CPSLocationConsentViewController *)&v23 initWithTitle:v5 detailText:0 icon:v7 contentLayout:2];
  if (v8)
  {
    v9 = [v4 applicationName];
    appName = v8->_appName;
    v8->_appName = v9;

    v11 = [v4 clipBundleID];
    clipBundleID = v8->_clipBundleID;
    v8->_clipBundleID = v11;

    v13 = [v4 expectedRegion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v4 expectedRegion];
      region = v8->_region;
      v8->_region = v15;
    }

    v17 = [v4 deviceLocation];
    [v17 coordinate];
    v8->_deviceLocationCoordinate.latitude = v18;
    v8->_deviceLocationCoordinate.longitude = v19;

    if ([v4 requestState] == 2)
    {
      v20 = @"wave.3.right";
    }

    else
    {
      v20 = @"qrcode";
    }

    objc_storeStrong(&v8->_deviceLocationSymbolName, v20);
    v21 = v8;
  }

  return v8;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CPSLocationConsentViewController;
  [(OBBaseWelcomeController *)&v18 viewDidLoad];
  [(CPSLocationConsentViewController *)self _setupContentView];
  v3 = [MEMORY[0x277D37618] boldButton];
  allowForAllButton = self->_allowForAllButton;
  self->_allowForAllButton = v3;

  v5 = self->_allowForAllButton;
  v6 = _CPSLocalizedString();
  [(OBBoldTrayButton *)v5 setTitle:v6 forState:0];

  [(OBBoldTrayButton *)self->_allowForAllButton addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  v7 = [(OBBoldTrayButton *)self->_allowForAllButton titleLabel];
  [v7 setNumberOfLines:0];

  v8 = [MEMORY[0x277D37650] linkButton];
  allowOnceButton = self->_allowOnceButton;
  self->_allowOnceButton = v8;

  v10 = self->_allowOnceButton;
  v11 = _CPSLocalizedString();
  [(OBLinkTrayButton *)v10 setTitle:v11 forState:0];

  [(OBLinkTrayButton *)self->_allowOnceButton addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  v12 = [(OBLinkTrayButton *)self->_allowOnceButton titleLabel];
  [v12 setNumberOfLines:0];

  v13 = [MEMORY[0x277D37650] linkButton];
  v14 = [MEMORY[0x277D75348] systemRedColor];
  [v13 setTitleColor:v14 forState:0];

  v15 = _CPSLocalizedString();
  [v13 setTitle:v15 forState:0];

  [v13 addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  v16 = [v13 titleLabel];
  [v16 setNumberOfLines:0];

  v17 = [(CPSLocationConsentViewController *)self buttonTray];
  [v17 addButton:self->_allowForAllButton];
  [v17 addButton:self->_allowOnceButton];
  [v17 addButton:v13];
}

- (void)_setupContentView
{
  v59[8] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD4EC8]);
  mapView = self->_mapView;
  self->_mapView = v3;

  [(MKMapView *)self->_mapView setUserInteractionEnabled:0];
  [(MKMapView *)self->_mapView setShowsAttribution:0];
  [(MKMapView *)self->_mapView setDelegate:self];
  [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)self->_mapView _setContinuousCornerRadius:8.0];
  v5 = [MEMORY[0x277D75348] separatorColor];
  v6 = [v5 CGColor];
  v7 = [(MKMapView *)self->_mapView layer];
  [v7 setBorderColor:v6];

  v8 = [(MKMapView *)self->_mapView layer];
  [v8 setBorderWidth:1.0];

  v9 = [(CPSLocationConsentViewController *)self contentView];
  [v9 addSubview:self->_mapView];

  v10 = [objc_alloc(MEMORY[0x277CD4F08]) initWithCoordinate:{self->_deviceLocationCoordinate.latitude, self->_deviceLocationCoordinate.longitude}];
  deviceLocationAnnotation = self->_deviceLocationAnnotation;
  self->_deviceLocationAnnotation = v10;

  [(MKMapView *)self->_mapView addAnnotation:self->_deviceLocationAnnotation];
  region = self->_region;
  if (region)
  {
    v13 = MEMORY[0x277CD4DA0];
    [(CLCircularRegion *)region center];
    v15 = v14;
    v17 = v16;
    [(CLCircularRegion *)self->_region radius];
    v19 = [v13 circleWithCenterCoordinate:v15 radius:{v17, v18}];
    circleOverlay = self->_circleOverlay;
    self->_circleOverlay = v19;

    [(MKMapView *)self->_mapView addOverlay:self->_circleOverlay];
    [(MKMapView *)self->_mapView addAnnotation:self->_circleOverlay];
  }

  v21 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [v21 setFont:v22];

  v23 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setTextColor:v23];

  [v21 setAdjustsFontForContentSizeCategory:1];
  [v21 setTextAlignment:1];
  [v21 setNumberOfLines:0];
  v24 = MEMORY[0x277CCACA8];
  v25 = _CPSLocalizedString();
  v58 = [v24 stringWithFormat:v25, self->_appName];

  [v21 setText:v58];
  v26 = [(CPSLocationConsentViewController *)self contentView];
  [v26 addSubview:v21];

  v45 = MEMORY[0x277CCAAD0];
  v56 = [(MKMapView *)self->_mapView topAnchor];
  v57 = [(CPSLocationConsentViewController *)self contentView];
  v55 = [v57 topAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v59[0] = v54;
  v52 = [(MKMapView *)self->_mapView leadingAnchor];
  v53 = [(CPSLocationConsentViewController *)self contentView];
  v51 = [v53 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v59[1] = v50;
  v48 = [(MKMapView *)self->_mapView trailingAnchor];
  v49 = [(CPSLocationConsentViewController *)self contentView];
  v47 = [v49 trailingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v59[2] = v46;
  v44 = [(MKMapView *)self->_mapView heightAnchor];
  v43 = [v44 constraintEqualToConstant:158.0];
  v59[3] = v43;
  v42 = [v21 topAnchor];
  v41 = [(MKMapView *)self->_mapView bottomAnchor];
  v40 = [v42 constraintEqualToSystemSpacingBelowAnchor:v41 multiplier:1.0];
  v59[4] = v40;
  v38 = [v21 centerXAnchor];
  v39 = [(CPSLocationConsentViewController *)self contentView];
  v37 = [v39 centerXAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v59[5] = v36;
  v27 = [(CPSLocationConsentViewController *)self contentView];
  v28 = [v27 widthAnchor];
  v29 = [v21 widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:8.0];
  v59[6] = v30;
  v31 = [(CPSLocationConsentViewController *)self contentView];
  v32 = [v31 bottomAnchor];
  v33 = [v21 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v59[7] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:8];
  [v45 activateConstraints:v35];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = CPSLocationConsentViewController;
  [(CPSLocationConsentViewController *)&v7 viewWillAppear:a3];
  if (self->_circleOverlay)
  {
    v4 = MKMapPointForCoordinate(self->_deviceLocationCoordinate);
    [(MKCircle *)self->_circleOverlay boundingMapRect];
    v11.size.width = 0.0;
    v11.size.height = 0.0;
    v11.origin.x = v4.x;
    v11.origin.y = v4.y;
    v10 = MKMapRectUnion(v9, v11);
    [(MKMapView *)self->_mapView setVisibleMapRect:0 edgePadding:v10.origin.x animated:v10.origin.y, v10.size.width, v10.size.height, 40.0, 40.0, 40.0, 40.0];
  }

  else
  {
    mapView = self->_mapView;
    v8[0] = self->_deviceLocationAnnotation;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(MKMapView *)mapView showAnnotations:v6 animated:0];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CPSLocationConsentViewController;
  [(OBBaseWelcomeController *)&v5 viewDidDisappear:a3];
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, 0);
  }
}

- (void)_buttonActionTriggered:(id)a3
{
  v4 = a3;
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    if (self->_allowForAllButton == v4)
    {
      v6 = 1;
    }

    else if (self->_allowOnceButton == v4)
    {
      v6 = 2;
    }

    else
    {
      [MEMORY[0x277CFA6C0] setLocationServiceEnabled:0];
      actionHandler = self->_actionHandler;
      v6 = 3;
    }

    actionHandler[2](actionHandler, v6);
    v7 = [MEMORY[0x277CFA680] sharedLogger];
    [v7 recordDidShowLocationConsentWithBundleID:self->_clipBundleID response:v6];

    v8 = self->_actionHandler;
    self->_actionHandler = 0;
  }

  MEMORY[0x2821F96F8]();
}

- (void)mapViewDidChangeVisibleRegion:(id)a3
{
  circleOverlay = self->_circleOverlay;
  if (circleOverlay)
  {
    v5 = a3;
    [(MKCircle *)circleOverlay boundingMapRect];
    v17 = MKCoordinateRegionForMapRect(v16);
    [v5 convertRegion:v5 toRectToView:{v17.center.latitude, v17.center.longitude, v17.span.latitudeDelta, v17.span.longitudeDelta}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v5 viewForAnnotation:self->_circleOverlay];

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    [v14 setHidden:CGRectGetWidth(v18) > 10.0];
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_deviceLocationAnnotation == v7)
  {
    v9 = [objc_alloc(MEMORY[0x277CD4ED0]) initWithAnnotation:v7 reuseIdentifier:0];
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v9 setMarkerTintColor:v10];

    v11 = [MEMORY[0x277D75348] labelColor];
    [v9 setGlyphTintColor:v11];

    v12 = [MEMORY[0x277D755B8] systemImageNamed:self->_deviceLocationSymbolName];
    [v9 setGlyphImage:v12];

    LODWORD(v13) = 1148846080;
  }

  else
  {
    if (self->_circleOverlay != v7)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v9 = [objc_alloc(MEMORY[0x277CD4D98]) initWithSize:{18.0, 18.0}];
    [v9 bounds];
    [v9 _setContinuousCornerRadius:CGRectGetHeight(v17) * 0.5];
    v14 = [MEMORY[0x277D75348] systemBlueColor];
    [v9 setBackgroundColor:v14];

    [v9 setAlpha:0.45];
    LODWORD(v13) = 1144750080;
  }

  [v9 setDisplayPriority:v13];
LABEL_7:

  return v9;
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  if (self->_circleOverlay == v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CD4DA8]) initWithCircle:self->_circleOverlay];
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    [v6 setFillColor:v7];

    [v6 setAlpha:0.15];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:v5];
  }

  return v6;
}

@end