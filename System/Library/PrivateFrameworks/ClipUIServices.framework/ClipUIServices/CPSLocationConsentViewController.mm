@interface CPSLocationConsentViewController
- (CPSLocationConsentViewController)initWithRequest:(id)request;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_buttonActionTriggered:(id)triggered;
- (void)_setupContentView;
- (void)mapViewDidChangeVisibleRegion:(id)region;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CPSLocationConsentViewController

- (CPSLocationConsentViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = _CPSLocalizedString();
  v6 = [MEMORY[0x277D755D0] configurationWithScale:2];
  v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"location.fill.appclip" withConfiguration:v6];
  v23.receiver = self;
  v23.super_class = CPSLocationConsentViewController;
  v8 = [(CPSLocationConsentViewController *)&v23 initWithTitle:v5 detailText:0 icon:v7 contentLayout:2];
  if (v8)
  {
    applicationName = [requestCopy applicationName];
    appName = v8->_appName;
    v8->_appName = applicationName;

    clipBundleID = [requestCopy clipBundleID];
    clipBundleID = v8->_clipBundleID;
    v8->_clipBundleID = clipBundleID;

    expectedRegion = [requestCopy expectedRegion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      expectedRegion2 = [requestCopy expectedRegion];
      region = v8->_region;
      v8->_region = expectedRegion2;
    }

    deviceLocation = [requestCopy deviceLocation];
    [deviceLocation coordinate];
    v8->_deviceLocationCoordinate.latitude = v18;
    v8->_deviceLocationCoordinate.longitude = v19;

    if ([requestCopy requestState] == 2)
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
  boldButton = [MEMORY[0x277D37618] boldButton];
  allowForAllButton = self->_allowForAllButton;
  self->_allowForAllButton = boldButton;

  v5 = self->_allowForAllButton;
  v6 = _CPSLocalizedString();
  [(OBBoldTrayButton *)v5 setTitle:v6 forState:0];

  [(OBBoldTrayButton *)self->_allowForAllButton addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  titleLabel = [(OBBoldTrayButton *)self->_allowForAllButton titleLabel];
  [titleLabel setNumberOfLines:0];

  linkButton = [MEMORY[0x277D37650] linkButton];
  allowOnceButton = self->_allowOnceButton;
  self->_allowOnceButton = linkButton;

  v10 = self->_allowOnceButton;
  v11 = _CPSLocalizedString();
  [(OBLinkTrayButton *)v10 setTitle:v11 forState:0];

  [(OBLinkTrayButton *)self->_allowOnceButton addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  titleLabel2 = [(OBLinkTrayButton *)self->_allowOnceButton titleLabel];
  [titleLabel2 setNumberOfLines:0];

  linkButton2 = [MEMORY[0x277D37650] linkButton];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [linkButton2 setTitleColor:systemRedColor forState:0];

  v15 = _CPSLocalizedString();
  [linkButton2 setTitle:v15 forState:0];

  [linkButton2 addTarget:self action:sel__buttonActionTriggered_ forControlEvents:0x2000];
  titleLabel3 = [linkButton2 titleLabel];
  [titleLabel3 setNumberOfLines:0];

  buttonTray = [(CPSLocationConsentViewController *)self buttonTray];
  [buttonTray addButton:self->_allowForAllButton];
  [buttonTray addButton:self->_allowOnceButton];
  [buttonTray addButton:linkButton2];
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
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  cGColor = [separatorColor CGColor];
  layer = [(MKMapView *)self->_mapView layer];
  [layer setBorderColor:cGColor];

  layer2 = [(MKMapView *)self->_mapView layer];
  [layer2 setBorderWidth:1.0];

  contentView = [(CPSLocationConsentViewController *)self contentView];
  [contentView addSubview:self->_mapView];

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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v21 setTextColor:secondaryLabelColor];

  [v21 setAdjustsFontForContentSizeCategory:1];
  [v21 setTextAlignment:1];
  [v21 setNumberOfLines:0];
  v24 = MEMORY[0x277CCACA8];
  v25 = _CPSLocalizedString();
  v58 = [v24 stringWithFormat:v25, self->_appName];

  [v21 setText:v58];
  contentView2 = [(CPSLocationConsentViewController *)self contentView];
  [contentView2 addSubview:v21];

  v45 = MEMORY[0x277CCAAD0];
  topAnchor = [(MKMapView *)self->_mapView topAnchor];
  contentView3 = [(CPSLocationConsentViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[0] = v54;
  leadingAnchor = [(MKMapView *)self->_mapView leadingAnchor];
  contentView4 = [(CPSLocationConsentViewController *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[1] = v50;
  trailingAnchor = [(MKMapView *)self->_mapView trailingAnchor];
  contentView5 = [(CPSLocationConsentViewController *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[2] = v46;
  heightAnchor = [(MKMapView *)self->_mapView heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:158.0];
  v59[3] = v43;
  topAnchor3 = [v21 topAnchor];
  bottomAnchor = [(MKMapView *)self->_mapView bottomAnchor];
  v40 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:1.0];
  v59[4] = v40;
  centerXAnchor = [v21 centerXAnchor];
  contentView6 = [(CPSLocationConsentViewController *)self contentView];
  centerXAnchor2 = [contentView6 centerXAnchor];
  v36 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v59[5] = v36;
  contentView7 = [(CPSLocationConsentViewController *)self contentView];
  widthAnchor = [contentView7 widthAnchor];
  widthAnchor2 = [v21 widthAnchor];
  v30 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:8.0];
  v59[6] = v30;
  contentView8 = [(CPSLocationConsentViewController *)self contentView];
  bottomAnchor2 = [contentView8 bottomAnchor];
  bottomAnchor3 = [v21 bottomAnchor];
  v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v59[7] = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:8];
  [v45 activateConstraints:v35];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = CPSLocationConsentViewController;
  [(CPSLocationConsentViewController *)&v7 viewWillAppear:appear];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CPSLocationConsentViewController;
  [(OBBaseWelcomeController *)&v5 viewDidDisappear:disappear];
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2](actionHandler, 0);
  }
}

- (void)_buttonActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    if (self->_allowForAllButton == triggeredCopy)
    {
      v6 = 1;
    }

    else if (self->_allowOnceButton == triggeredCopy)
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
    mEMORY[0x277CFA680] = [MEMORY[0x277CFA680] sharedLogger];
    [mEMORY[0x277CFA680] recordDidShowLocationConsentWithBundleID:self->_clipBundleID response:v6];

    v8 = self->_actionHandler;
    self->_actionHandler = 0;
  }

  MEMORY[0x2821F96F8]();
}

- (void)mapViewDidChangeVisibleRegion:(id)region
{
  circleOverlay = self->_circleOverlay;
  if (circleOverlay)
  {
    regionCopy = region;
    [(MKCircle *)circleOverlay boundingMapRect];
    v17 = MKCoordinateRegionForMapRect(v16);
    [regionCopy convertRegion:regionCopy toRectToView:{v17.center.latitude, v17.center.longitude, v17.span.latitudeDelta, v17.span.longitudeDelta}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [regionCopy viewForAnnotation:self->_circleOverlay];

    v18.origin.x = v7;
    v18.origin.y = v9;
    v18.size.width = v11;
    v18.size.height = v13;
    [v14 setHidden:CGRectGetWidth(v18) > 10.0];
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  v8 = annotationCopy;
  if (self->_deviceLocationAnnotation == annotationCopy)
  {
    v9 = [objc_alloc(MEMORY[0x277CD4ED0]) initWithAnnotation:annotationCopy reuseIdentifier:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v9 setMarkerTintColor:systemBackgroundColor];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [v9 setGlyphTintColor:labelColor];

    v12 = [MEMORY[0x277D755B8] systemImageNamed:self->_deviceLocationSymbolName];
    [v9 setGlyphImage:v12];

    LODWORD(v13) = 1148846080;
  }

  else
  {
    if (self->_circleOverlay != annotationCopy)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v9 = [objc_alloc(MEMORY[0x277CD4D98]) initWithSize:{18.0, 18.0}];
    [v9 bounds];
    [v9 _setContinuousCornerRadius:CGRectGetHeight(v17) * 0.5];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v9 setBackgroundColor:systemBlueColor];

    [v9 setAlpha:0.45];
    LODWORD(v13) = 1144750080;
  }

  [v9 setDisplayPriority:v13];
LABEL_7:

  return v9;
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (self->_circleOverlay == overlayCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277CD4DA8]) initWithCircle:self->_circleOverlay];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v6 setFillColor:systemBlueColor];

    [v6 setAlpha:0.15];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:overlayCopy];
  }

  return v6;
}

@end