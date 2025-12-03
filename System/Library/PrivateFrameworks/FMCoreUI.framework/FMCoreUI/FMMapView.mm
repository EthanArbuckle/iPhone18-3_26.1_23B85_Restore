@interface FMMapView
- ($B5E4F2499D3E0A90C7E8AF059312C337)lastVisibleMapRect;
- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectForAnnotations:(id)annotations shouldIncludeRadius:(BOOL)radius;
- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)coordinate andRadius:(double)radius;
- ($B5E4F2499D3E0A90C7E8AF059312C337)normalizeMapRect:(id)rect toZoomScale:(double)scale;
- ($B5E4F2499D3E0A90C7E8AF059312C337)repositionOnAnnotation:(id)annotation withZoom:(BOOL)zoom;
- (BOOL)isCurrentlyRotated;
- (BOOL)isOverlayOnMap:(id)map;
- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)view;
- (FMAnnotation)currentDeviceAnnotation;
- (FMAnnotation)lastSelectedAnnotationBeforeTracking;
- (FMAnnotation)selectedAnnotation;
- (FMMapView)init;
- (FMMapView)initWithCoder:(id)coder;
- (FMMapViewDelegate)delegate;
- (MKAnnotation)otherSelectedAnnotation;
- (MKUserLocationView)userLocationView;
- (UIEdgeInsets)lastVisibleInsets;
- (double)distanceBetweenOrigin:(CLLocationCoordinate2D)origin andDestination:(CLLocationCoordinate2D)destination;
- (float)dampingForAltitude:(double)altitude andDistance:(double)distance;
- (id)annotationsSortedByDistance;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)nearbyAnnotations;
- (id)viewForAnnotation:(id)annotation;
- (int64_t)userTrackingMode;
- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)addAnnotation:(id)annotation;
- (void)addAnnotations:(id)annotations;
- (void)addOverlay:(id)overlay;
- (void)addOverlays:(id)overlays;
- (void)animateMapToPosition:(double)position withInsets:(double)insets attributionInsets:(double)attributionInsets andZoom:(double)zoom;
- (void)animateRenderingModeChange;
- (void)animateToAllAnnotation;
- (void)calloutButtonTapped:(id)tapped;
- (void)clearUserLocation;
- (void)createMKMapView;
- (void)createUserTrackingButton;
- (void)dealloc;
- (void)depthSortAnnotations;
- (void)deselectAllAnnotations;
- (void)deselectAnnotationView:(id)view;
- (void)deselectAnnotationViewIfNeeded:(id)needed;
- (void)didDoubleSelectAnnotation:(id)annotation;
- (void)didMoveToSuperview;
- (void)didSelectAnnotation:(id)annotation;
- (void)displayAllAnnotations;
- (void)doubleSelectAnnotation:(id)annotation;
- (void)fingerOffAnnotation:(id)annotation;
- (void)fingerOnAnnotation:(id)annotation;
- (void)flashMapInset:(UIEdgeInsets)inset;
- (void)initialize;
- (void)invalidateLayoutTimer;
- (void)layoutMapView;
- (void)layoutSubviews;
- (void)mapSwiped:(id)swiped withPercent:(double)percent;
- (void)mapSwipedBegin:(id)begin;
- (void)mapSwipedEnd:(id)end withPercent:(double)percent;
- (void)mapTapped:(id)tapped;
- (void)mapTouchEnded:(id)ended;
- (void)mapTouchMoved:(id)moved;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)moveCenterByOffset:(CGPoint)offset from:(CLLocationCoordinate2D)from;
- (void)recenterVisibleAnnotations;
- (void)refreshCameraPosition;
- (void)refreshOverlayForAnnotation:(id)annotation andCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)removeAllOverlaysAndCurrentAnnotationOverlay:(id)overlay;
- (void)removeAnnotation:(id)annotation;
- (void)removeAnnotations:(id)annotations;
- (void)removeOverlay:(id)overlay;
- (void)removeOverlays:(id)overlays;
- (void)removeUserAnnotationIfNeeded:(id)needed;
- (void)repositionOnMapRectIfNeeded:(id)needed;
- (void)repositionToMapRect:(id)rect withZoom:(BOOL)zoom;
- (void)selectAnnotation:(id)annotation;
- (void)selectAnnotationForPreview:(id)preview;
- (void)selectOrDeselectAnnotationView:(id)view;
- (void)setIsPreviewing:(BOOL)previewing;
- (void)setIsSwipeGestureEnabled:(BOOL)enabled;
- (void)setRenderingMode:(int64_t)mode;
- (void)setUserLocationTintColor:(id)color;
- (void)setupCamera;
- (void)setupConstraints;
- (void)setupGestures;
- (void)slideAnnotationIntoViewIfNeeded:(id)needed;
- (void)synchronize;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccordingToUserTrackingMode;
- (void)updateAnnotationPositionAfterPreview:(id)preview;
- (void)updateAnnotationStyle:(id)style;
- (void)updateCameraPositionForAnnotation:(id)annotation;
- (void)updateCameraPositionForMapRect:(id)rect withZoom:(BOOL)zoom;
- (void)updateCameraPositionForNoLocation;
- (void)updateCameraPositionWithLocation:(CLLocationCoordinate2D)location andAltitude:(double)altitude;
- (void)updateOverlayForAnnotation:(id)annotation withForce:(BOOL)force;
- (void)updatePreviewLocationForAnnotation:(id)annotation;
- (void)updateUserTrackingButtonState;
- (void)userLocationTapped:(id)tapped;
@end

@implementation FMMapView

- (FMMapView)init
{
  v5.receiver = self;
  v5.super_class = FMMapView;
  v2 = [(FMMapView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMMapView *)v2 initialize];
  }

  return v3;
}

- (FMMapView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FMMapView;
  v3 = [(FMMapView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FMMapView *)v3 initialize];
  }

  return v4;
}

- (void)didMoveToSuperview
{
  v10.receiver = self;
  v10.super_class = FMMapView;
  [(FMMapView *)&v10 didMoveToSuperview];
  superview = [(FMMapView *)self superview];

  if (superview)
  {
    [(FMMapView *)self setupConstraints];
    [(FMMapView *)self setupGestures];
    mapView = [(FMMapView *)self mapView];
    [mapView setDelegate:self];

    v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_synchronize];
    [(FMMapView *)self setDisplayLink:v5];

    displayLink = [(FMMapView *)self displayLink];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [displayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
  }

  else
  {
    displayLink2 = [(FMMapView *)self displayLink];

    if (displayLink2)
    {
      displayLink3 = [(FMMapView *)self displayLink];
      [displayLink3 invalidate];

      [(FMMapView *)self setDisplayLink:0];
      [(FMMapView *)self setUserTrackingButton:0];
    }

    [(FMMapView *)self invalidateLayoutTimer];
    displayLink = [MEMORY[0x277CCAB98] defaultCenter];
    [displayLink removeObserver:self];
  }
}

- (void)dealloc
{
  displayLink = [(FMMapView *)self displayLink];

  if (displayLink)
  {
    displayLink2 = [(FMMapView *)self displayLink];
    [displayLink2 invalidate];

    [(FMMapView *)self setDisplayLink:0];
    [(FMMapView *)self setUserTrackingButton:0];
  }

  [(FMMapView *)self invalidateLayoutTimer];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = FMMapView;
  [(FMMapView *)&v6 dealloc];
}

- (void)initialize
{
  v3 = *MEMORY[0x277CE4250];
  mEMORY[0x277CD4E48] = [MEMORY[0x277CD4E48] sharedLocationManager];
  [mEMORY[0x277CD4E48] setDesiredAccuracy:v3];

  +[FMAnnotationView preloadAssets];
  [(FMMapView *)self setCurrentTrackingMode:0];
  [(FMMapView *)self setCurrentSelectedState:0];
  [(FMMapView *)self setDoubleSelectionMode:0];
  [(FMMapView *)self setRenderingMode:0];
  [(FMMapView *)self setMaxZoomLevel:0.100000001];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431374 blue:1.0 alpha:1.0];
  [(FMMapView *)self setUserLocationTintColor:v5];

  [(FMMapView *)self setCanSelectUserAnnotation:1];
  [(FMMapView *)self setCanChangeUserTrackingMode:1];
  v6 = objc_opt_new();
  [(FMMapView *)self setAccuracyOverlays:v6];

  [(FMMapView *)self setTintAdjustmentMode:1];
  mEMORY[0x277CBFC10] = [MEMORY[0x277CBFC10] sharedManager];
  location = [mEMORY[0x277CBFC10] location];

  if (location)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD4F58]);
    v9 = [location copy];
    [v8 setLocation:v9];

    [(FMMapView *)self setUserLocation:v8];
    hasUserLocation = 1;
  }

  [(FMMapView *)self createMKMapView];
  [(FMMapView *)self createUserTrackingButton];
  [(FMMapView *)self setupCamera];
}

- (void)createMKMapView
{
  v3 = objc_alloc_init(MEMORY[0x277CD4EC8]);
  [(MKMapView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)v3 setCompassEnabled:0];
  [(MKMapView *)v3 setShowsUserLocation:1];
  filterIncludingAllCategories = [MEMORY[0x277CD4F10] filterIncludingAllCategories];
  [(MKMapView *)v3 setPointOfInterestFilter:filterIncludingAllCategories];

  [(MKMapView *)v3 setShowsBuildings:1];
  [(MKMapView *)v3 setShowsAttribution:0];
  [(MKMapView *)v3 _setShowsCurrentEnvironmentName:0];
  [(MKMapView *)v3 _setShowsPressedLabelMarkerEffect:0];
  [(MKMapView *)v3 setShowsTraffic:0];
  [(FMMapView *)self addSubview:v3];
  mapView = self->_mapView;
  self->_mapView = v3;
}

- (void)createUserTrackingButton
{
  v3 = [MEMORY[0x277CD4FC0] buttonWithUserTrackingView:self];
  [(FMMapView *)self setUserTrackingButton:v3];
}

- (void)setupCamera
{
  delegate = [(FMMapView *)self delegate];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:@"FMMapViewLastVisibleRect"];
  v6 = [standardUserDefaults objectForKey:@"FMMapViewLastVisibleInsets"];
  if (v5)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __24__FMMapView_setupCamera__block_invoke;
    v10 = &unk_278FDB8E0;
    v11 = v5;
    v12 = v6;
    selfCopy = self;
    v14 = delegate;
    dispatch_async(MEMORY[0x277D85CD0], &v7);
    [(FMMapView *)self setIsUserLocationUpdated:1, v7, v8, v9, v10];
  }
}

void __24__FMMapView_setupCamera__block_invoke(uint64_t a1)
{
  v47 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:*(a1 + 32) error:0];
  v2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:*(a1 + 40) error:0];
  v3 = [v47 objectForKeyedSubscript:@"x"];
  [v3 doubleValue];
  v5 = v4;
  v6 = [v47 objectForKeyedSubscript:@"y"];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v47 objectForKeyedSubscript:@"width"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v47 objectForKeyedSubscript:@"height"];
  [v12 doubleValue];
  [*(a1 + 48) setLastVisibleMapRect:{v5, v8, v11, v13}];

  v14 = [v2 objectForKeyedSubscript:@"top"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [v2 objectForKeyedSubscript:@"left"];
  [v17 doubleValue];
  v19 = v18;
  v20 = [v2 objectForKeyedSubscript:@"bottom"];
  [v20 doubleValue];
  v22 = v21;
  v23 = [v2 objectForKeyedSubscript:@"right"];
  [v23 doubleValue];
  [*(a1 + 48) setLastVisibleInsets:{v16, v19, v22, v24}];

  if (*(a1 + 56) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 56) edgeInsetsForState:{objc_msgSend(*(a1 + 48), "currentSelectedState")}];
    [*(a1 + 48) setLastVisibleInsets:?];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 56) attributionInsetsForState:{objc_msgSend(*(a1 + 48), "currentSelectedState")}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    v30 = 6.0;
    v26 = 0.0;
    v32 = -38.0;
    v28 = 0.0;
  }

  v33 = [*(a1 + 48) mapView];
  [*(a1 + 48) lastVisibleMapRect];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [*(a1 + 48) lastVisibleInsets];
  [v33 setVisibleMapRect:0 edgePadding:v35 animated:{v37, v39, v41, v42, v43, v44, v45}];

  v46 = [*(a1 + 48) mapView];
  [v46 _setAttributionInsets:{v26, v28, v30, v32}];
}

- (void)setupConstraints
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"mapView";
  mapView = [(FMMapView *)self mapView];
  v8[0] = mapView;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-0-[mapView]-0-|" options:0 metrics:0 views:v4];
  v6 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-0-[mapView]-0-|" options:0 metrics:0 views:v4];
  [(FMMapView *)self addConstraints:v5];
  [(FMMapView *)self addConstraints:v6];
}

- (void)setupGestures
{
  v4 = objc_alloc_init(FMMapGestureRecognizer);
  [(FMMapGestureRecognizer *)v4 setTouchDelegate:self];
  [(FMMapView *)self setMapGesture:v4];
  mapView = [(FMMapView *)self mapView];
  [mapView addGestureRecognizer:v4];
}

- (void)layoutSubviews
{
  mapView = [(FMMapView *)self mapView];
  if ([mapView mapType])
  {
    v4 = 0.5;
  }

  else
  {
    v4 = 0.35;
  }

  v6.receiver = self;
  v6.super_class = FMMapView;
  [(FMMapView *)&v6 layoutSubviews];
  [(FMMapView *)self invalidateLayoutTimer];
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_layoutMapView selector:0 userInfo:0 repeats:v4];
  [(FMMapView *)self setLayoutTimer:v5];
}

- (void)layoutMapView
{
  [(FMMapView *)self setLayoutTimer:0];
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  mapView = [(FMMapView *)self mapView];
  if ([mapView userTrackingMode] == 2 || -[FMMapView isPreventingMapUpdates](self, "isPreventingMapUpdates") || -[FMMapView isMapMoved](self, "isMapMoved"))
  {
  }

  else
  {
    isMapPositioningDisabled = [(FMMapView *)self isMapPositioningDisabled];

    if (!isMapPositioningDisabled)
    {
      if (selectedAnnotation)
      {
        [(FMMapView *)self updateCameraPositionForAnnotation:?];
      }

      else if ([(FMMapView *)self isAllAnnotationsShown])
      {
        [(FMMapView *)self setLastVisibleMapRect:*MEMORY[0x277CD4BB0], *(MEMORY[0x277CD4BB0] + 8), *(MEMORY[0x277CD4BB0] + 16), *(MEMORY[0x277CD4BB0] + 24)];
        [(FMMapView *)self displayAllAnnotations];
      }

      else
      {
        [(FMMapView *)self recenterVisibleAnnotations];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = FMMapView;
  [(FMMapView *)&v5 traitCollectionDidChange:change];
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];

  if (!selectedAnnotation)
  {
    [(FMMapView *)self setIsAllAnnotationsShown:1];
  }
}

- (void)setUserLocationTintColor:(id)color
{
  colorCopy = color;
  mapView = [(FMMapView *)self mapView];
  mapView2 = [(FMMapView *)self mapView];
  userLocation = [mapView2 userLocation];
  v8 = [mapView viewForAnnotation:userLocation];
  [v8 setTintColor:colorCopy];

  userLocationTintColor = self->_userLocationTintColor;
  self->_userLocationTintColor = colorCopy;
}

- (void)addAnnotation:(id)annotation
{
  annotationCopy = annotation;
  mapView = [(FMMapView *)self mapView];
  [mapView addAnnotation:annotationCopy];
}

- (void)addAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  mapView = [(FMMapView *)self mapView];
  [mapView addAnnotations:annotationsCopy];
}

- (void)removeAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(FMMapView *)self removeUserAnnotationIfNeeded:annotationCopy];
  mapView = [(FMMapView *)self mapView];
  [mapView removeAnnotation:annotationCopy];
}

- (void)removeAnnotations:(id)annotations
{
  v15 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [annotationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        [(FMMapView *)self removeUserAnnotationIfNeeded:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [annotationsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  mapView = [(FMMapView *)self mapView];
  [mapView removeAnnotations:annotationsCopy];
}

- (id)viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  mapView = [(FMMapView *)self mapView];
  v6 = [mapView viewForAnnotation:annotationCopy];

  return v6;
}

- (void)deselectAllAnnotations
{
  mapView = [(FMMapView *)self mapView];
  mapView2 = [(FMMapView *)self mapView];
  overlays = [mapView2 overlays];
  [mapView removeOverlays:overlays];

  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
}

- (void)selectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
  delegate = [(FMMapView *)self delegate];
  v5 = [(FMMapView *)self viewForAnnotation:annotationCopy];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v5];
  [(FMMapView *)self setSelectedAnnotation:annotationCopy];
  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
  [selectedAnnotationView setSelected:1 animated:1 delay:0.400000006];

  [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
  mapView = [(FMMapView *)self mapView];
  selectedAnnotations = [mapView selectedAnnotations];
  firstObject = [selectedAnnotations firstObject];
  userLocation = [(FMMapView *)self userLocation];
  v11 = [firstObject isEqual:userLocation];

  if (v11)
  {
    mapView2 = [(FMMapView *)self mapView];
    mapView3 = [(FMMapView *)self mapView];
    userLocation2 = [mapView3 userLocation];
    [mapView2 deselectAnnotation:userLocation2 animated:1];
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate didSelectAnnotation:annotationCopy];
  }

  if (annotationCopy)
  {
    [(FMMapView *)self depthSortAnnotations];
  }

  [(FMMapView *)self setIsMapAnimating:0];
  [(FMMapView *)self setLastVisibleMapRect:*MEMORY[0x277CD4BB0], *(MEMORY[0x277CD4BB0] + 8), *(MEMORY[0x277CD4BB0] + 16), *(MEMORY[0x277CD4BB0] + 24)];
  layoutTimer = [(FMMapView *)self layoutTimer];
  [layoutTimer invalidate];

  [(FMMapView *)self setLayoutTimer:0];
  [(FMMapView *)self repositionOnAnnotation:annotationCopy withZoom:1];
}

- (void)invalidateLayoutTimer
{
  layoutTimer = [(FMMapView *)self layoutTimer];

  if (layoutTimer)
  {
    layoutTimer2 = [(FMMapView *)self layoutTimer];
    [layoutTimer2 invalidate];

    [(FMMapView *)self setLayoutTimer:0];
  }
}

- (void)doubleSelectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [(FMMapView *)self invalidateLayoutTimer];
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
  [selectedAnnotationView setSelected:0 animated:1];

  [(FMMapView *)self didDoubleSelectAnnotation:annotationCopy];
}

- (void)removeUserAnnotationIfNeeded:(id)needed
{
  neededCopy = needed;
  userLocationView = [(FMMapView *)self userLocationView];
  currentDeviceAnnotation = [(FMMapView *)self currentDeviceAnnotation];
  if ([neededCopy isEqual:userLocationView])
  {
    [(FMMapView *)self setUserLocationView:0];
  }

  else if ([neededCopy isEqual:currentDeviceAnnotation])
  {
    [(FMMapView *)self setCurrentDeviceAnnotation:0];
  }
}

- (void)deselectAnnotationViewIfNeeded:(id)needed
{
  neededCopy = needed;
  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];

  v5 = neededCopy;
  if (selectedAnnotationView != neededCopy)
  {
    [(FMMapView *)self deselectAnnotationView:neededCopy];
    v5 = neededCopy;
  }
}

- (void)deselectAnnotationView:(id)view
{
  viewCopy = view;
  delegate = [(FMMapView *)self delegate];
  v5 = objc_opt_new();
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  [selectedAnnotation setOverlay:v5];

  [(FMMapView *)self setCurrentSelectedState:0];
  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
  [selectedAnnotationView setSelected:0 animated:1];

  [(FMMapView *)self setSelectedAnnotationView:0];
  [(FMMapView *)self setSelectedAnnotation:0];
  annotation = [viewCopy annotation];
  [(FMMapView *)self updateOverlayForAnnotation:annotation withForce:1];

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate didDeselectAnnotationView:viewCopy];
  }
}

- (void)didSelectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(FMMapView *)self delegate];
  isAllAnnotationsShown = [(FMMapView *)self isAllAnnotationsShown];
  v7 = [(FMMapView *)self viewForAnnotation:annotationCopy];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v7];
  [(FMMapView *)self setSelectedAnnotation:annotationCopy];
  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
  v9 = selectedAnnotationView;
  if (isAllAnnotationsShown)
  {
    [selectedAnnotationView setSelected:1 animated:1 delay:0.400000006];
  }

  else
  {
    [selectedAnnotationView setSelected:1 animated:1];
  }

  [(FMMapView *)self setCanSelectUserAnnotation:0];
  userSelectionTimer = [(FMMapView *)self userSelectionTimer];

  if (userSelectionTimer)
  {
    userSelectionTimer2 = [(FMMapView *)self userSelectionTimer];
    [userSelectionTimer2 invalidate];

    [(FMMapView *)self setUserSelectionTimer:0];
  }

  v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateCanSelectUserAnnotation selector:0 userInfo:0 repeats:0.5];
  [(FMMapView *)self setUserSelectionTimer:v12];

  annotation = [v7 annotation];
  [(FMMapView *)self updateOverlayForAnnotation:annotation withForce:1];

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate didSelectAnnotation:annotationCopy];
  }

  if ([(FMMapView *)self showUserLocationCallout])
  {
    mapView = [(FMMapView *)self mapView];
    mapView2 = [(FMMapView *)self mapView];
    userLocation = [mapView2 userLocation];
    [mapView deselectAnnotation:userLocation animated:1];
  }

  if (![(FMMapView *)self isMapPositioningDisabled])
  {
    [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
    if ([(FMMapView *)self isAllAnnotationsShown])
    {
      [(FMMapView *)self recenterVisibleAnnotations];
      [(FMMapView *)self setIsAllAnnotationsShown:0];
    }
  }

  if ([(FMMapView *)self renderingMode])
  {
    [(FMMapView *)self updateCameraPositionForAnnotation:annotationCopy];
  }

  else if (isAllAnnotationsShown)
  {
    v17 = dispatch_time(0, 400000000);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __33__FMMapView_didSelectAnnotation___block_invoke;
    v21 = &unk_278FDB908;
    selfCopy = self;
    v23 = annotationCopy;
    dispatch_after(v17, MEMORY[0x277D85CD0], &v18);
  }

  else
  {
    [(FMMapView *)self slideAnnotationIntoViewIfNeeded:annotationCopy];
  }

  [(FMMapView *)self depthSortAnnotations:v18];
}

- (void)didDoubleSelectAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(FMMapView *)self delegate];
  v6 = [(FMMapView *)self viewForAnnotation:annotationCopy];
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
  [(FMMapView *)self setCurrentSelectedState:2];
  [(FMMapView *)self setSelectedAnnotationView:v6];
  [(FMMapView *)self setSelectedAnnotation:annotationCopy];
  [v6 setSelected:1 animated:1];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate didDoubleSelectAnnotation:annotationCopy];
  }

  if ([(FMMapView *)self doubleSelectionMode])
  {
    v7 = dispatch_time(0, 500000000);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__FMMapView_didDoubleSelectAnnotation___block_invoke;
    v8[3] = &unk_278FDB908;
    v8[4] = self;
    v9 = v6;
    dispatch_after(v7, MEMORY[0x277D85CD0], v8);
  }

  else
  {
    [(FMMapView *)self repositionOnAnnotation:annotationCopy withZoom:1];
  }
}

- (void)selectOrDeselectAnnotationView:(id)view
{
  viewCopy = view;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:?];
  currentSelectedState = [(FMMapView *)self currentSelectedState];
  switch(currentSelectedState)
  {
    case 2:
      annotation = [viewCopy annotation];
      [(FMMapView *)self didSelectAnnotation:annotation];
      goto LABEL_8;
    case 1:
      annotation = [viewCopy annotation];
      [(FMMapView *)self didDoubleSelectAnnotation:annotation];
LABEL_8:

      break;
    case 0:
      annotation2 = [viewCopy annotation];
      [(FMMapView *)self didSelectAnnotation:annotation2];

      if (![(FMMapView *)self renderingMode])
      {
        [(FMMapView *)self setIsMapPositioningDisabled:1];
      }

      break;
  }

  MEMORY[0x2821F96F8]();
}

- (void)addOverlay:(id)overlay
{
  overlayCopy = overlay;
  mapView = [(FMMapView *)self mapView];
  [mapView addOverlay:overlayCopy];
}

- (void)addOverlays:(id)overlays
{
  overlaysCopy = overlays;
  mapView = [(FMMapView *)self mapView];
  [mapView addOverlays:overlaysCopy];
}

- (void)removeOverlay:(id)overlay
{
  overlayCopy = overlay;
  mapView = [(FMMapView *)self mapView];
  [mapView removeOverlay:overlayCopy];
}

- (void)removeOverlays:(id)overlays
{
  overlaysCopy = overlays;
  mapView = [(FMMapView *)self mapView];
  [mapView removeOverlays:overlaysCopy];
}

- (void)updateOverlayForAnnotation:(id)annotation withForce:(BOOL)force
{
  forceCopy = force;
  annotationCopy = annotation;
  if (![annotationCopy hasKnownLocation] || (objc_msgSend(annotationCopy, "isThisDevice") & 1) != 0 || (-[FMMapView selectedAnnotation](self, "selectedAnnotation"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != annotationCopy))
  {
    [(FMMapView *)self removeAllOverlaysAndCurrentAnnotationOverlay:annotationCopy];
    goto LABEL_5;
  }

  mapView = [(FMMapView *)self mapView];
  [mapView _zoomLevel];
  v9 = v8;

  [annotationCopy coordinate];
  v11 = v10;
  v13 = v12;
  v14 = [(FMMapView *)self viewForAnnotation:annotationCopy];
  if (v14)
  {
    [(FMMapView *)self coordinateForAnnotationView:v14];
    v11 = v15;
    v13 = v16;
  }

  v17 = v9 * 0.0000999999975;
  if ([(FMMapView *)self isMapAnimating]|| [(FMMapView *)self isFingerOnMap]|| [(FMMapView *)self isPreviewing])
  {
LABEL_13:
    if ([(FMMapView *)self shouldDisplayOverlay])
    {
      overlay = [annotationCopy overlay];
      v19 = [(FMMapView *)self isOverlayOnMap:overlay];

      if (v19 && !forceCopy)
      {
        goto LABEL_32;
      }
    }

    overlay2 = [annotationCopy overlay];
    [overlay2 coordinate];
    if (vabdd_f64(v21, v11) <= v17)
    {
      overlay3 = [annotationCopy overlay];
      [overlay3 coordinate];
      if (vabdd_f64(v23, v13) <= v17)
      {
        [annotationCopy horizontalAccuracy];
        v25 = v24;
        overlay4 = [annotationCopy overlay];
        [overlay4 radius];
        if (v25 == v27 && !forceCopy)
        {
          shouldDisplayOverlay = [(FMMapView *)self shouldDisplayOverlay];

          if (shouldDisplayOverlay)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_30:
    [(FMMapView *)self setShouldDisplayOverlay:1];
    [annotationCopy coordinate];
    v33 = annotationCopy;
    v11 = v34;
    v13 = v35;
    goto LABEL_31;
  }

  overlay5 = [annotationCopy overlay];
  [overlay5 coordinate];
  if (vabdd_f64(v30, v11) > v17)
  {
    goto LABEL_25;
  }

  overlay6 = [annotationCopy overlay];
  [overlay6 coordinate];
  if (vabdd_f64(v32, v13) > v17)
  {

LABEL_25:
    goto LABEL_26;
  }

  [annotationCopy horizontalAccuracy];
  v37 = v36;
  overlay7 = [annotationCopy overlay];
  [overlay7 radius];
  v40 = v39;

  if (v37 == v40)
  {
    goto LABEL_13;
  }

LABEL_26:
  [(FMMapView *)self setShouldDisplayOverlay:0];
  v33 = annotationCopy;
LABEL_31:
  [(FMMapView *)self refreshOverlayForAnnotation:v33 andCoordinate:v11, v13];
LABEL_32:

LABEL_5:
}

- (void)refreshOverlayForAnnotation:(id)annotation andCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  annotationCopy = annotation;
  [(FMMapView *)self removeAllOverlaysAndCurrentAnnotationOverlay:annotationCopy];
  [annotationCopy horizontalAccuracy];
  v9 = [(MKCircle *)FMAccuracyOverlay circleWithCenterCoordinate:latitude radius:longitude, v8];
  [annotationCopy setOverlay:v9];

  overlay = [annotationCopy overlay];
  [overlay setParentAnnotation:annotationCopy];

  mapView = [(FMMapView *)self mapView];
  overlay2 = [annotationCopy overlay];
  [mapView addOverlay:overlay2];

  accuracyOverlays = [(FMMapView *)self accuracyOverlays];
  overlay3 = [annotationCopy overlay];

  [accuracyOverlays addObject:overlay3];
}

- (void)removeAllOverlaysAndCurrentAnnotationOverlay:(id)overlay
{
  overlayCopy = overlay;
  mapView = [(FMMapView *)self mapView];
  overlay = [overlayCopy overlay];

  [mapView removeOverlay:overlay];
  mapView2 = [(FMMapView *)self mapView];
  accuracyOverlays = [(FMMapView *)self accuracyOverlays];
  [mapView2 removeOverlays:accuracyOverlays];

  accuracyOverlays2 = [(FMMapView *)self accuracyOverlays];
  [accuracyOverlays2 removeAllObjects];
}

- (BOOL)isOverlayOnMap:(id)map
{
  v16 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mapView = [(FMMapView *)self mapView];
  overlays = [mapView overlays];

  v7 = [overlays countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(overlays);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqual:mapCopy])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [overlays countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)updateCameraPositionWithLocation:(CLLocationCoordinate2D)location andAltitude:(double)altitude
{
  longitude = location.longitude;
  latitude = location.latitude;
  if (![(FMMapView *)self isUserSwiping])
  {
    mapView = [(FMMapView *)self mapView];
    v8 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:latitude fromEyeCoordinate:longitude eyeAltitude:{latitude, longitude, altitude}];
    [mapView setCamera:v8 animated:0];
  }
}

- (void)updateCameraPositionForAnnotation:(id)annotation
{
  v38[2] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  currentDeviceAnnotation = [(FMMapView *)self currentDeviceAnnotation];
  otherSelectedAnnotation = [(FMMapView *)self otherSelectedAnnotation];
  userLocation = [(FMMapView *)self userLocation];
  if (![(FMMapView *)self isUserSwiping]&& [(FMMapView *)self currentTrackingMode]!= 2 && ![(FMMapView *)self isPreventingMapUpdates])
  {
    if ([annotationCopy isEqual:selectedAnnotation] && !-[FMMapView isMapAnimating](self, "isMapAnimating"))
    {
      if (![(FMMapView *)self isMapPositioningDisabled]&& [(FMMapView *)self currentTrackingMode]!= 2)
      {
        if ([(FMMapView *)self currentTrackingMode]|| [(FMMapView *)self isAllAnnotationsShown])
        {
          if (selectedAnnotation)
          {
            if (userLocation)
            {
              if (([currentDeviceAnnotation isEqual:selectedAnnotation] & 1) == 0)
              {
                v38[0] = selectedAnnotation;
                v38[1] = userLocation;
                v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
                [(FMMapView *)self mapRectForAnnotations:v20 shouldIncludeRadius:1];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;

                if (v22 != *MEMORY[0x277CD4BB0] || v24 != *(MEMORY[0x277CD4BB0] + 8))
                {
                  mapView = [(FMMapView *)self mapView];
                  [mapView bounds];
                  v31 = v30 / v26;

                  [(FMMapView *)self maxZoomLevel];
                  if (v31 > v32)
                  {
                    [(FMMapView *)self maxZoomLevel];
                    [(FMMapView *)self normalizeMapRect:v22 toZoomScale:v24, v26, v28, v33];
                    v22 = v34;
                    v24 = v35;
                    v26 = v36;
                    v28 = v37;
                  }

                  [(FMMapView *)self updateCameraPositionForMapRect:1 withZoom:v22, v24, v26, v28];
                }
              }
            }
          }
        }

        else if (-[FMMapView currentSelectedState](self, "currentSelectedState") == 2 || -[FMMapView currentSelectedState](self, "currentSelectedState") == 1 || [annotationCopy isEqual:currentDeviceAnnotation])
        {
          [(FMMapView *)self repositionOnAnnotation:selectedAnnotation withZoom:1];
        }
      }

      [(FMMapView *)self updateOverlayForAnnotation:annotationCopy withForce:1];
    }

    else if (![(FMMapView *)self isAllAnnotationsShown]|| [(FMMapView *)self currentSelectedState]|| otherSelectedAnnotation)
    {
      if ([(FMMapView *)self userTrackingMode]== 1 && userLocation && !selectedAnnotation && ![(FMMapView *)self currentSelectedState]&& !otherSelectedAnnotation)
      {
        nearbyAnnotations = [(FMMapView *)self nearbyAnnotations];
        v19 = [nearbyAnnotations mutableCopy];

        [v19 addObject:userLocation];
        [(FMMapView *)self mapRectForAnnotations:v19 shouldIncludeRadius:1];
        [(FMMapView *)self repositionOnMapRectIfNeeded:?];
      }
    }

    else
    {
      nearbyAnnotations2 = [(FMMapView *)self nearbyAnnotations];
      [(FMMapView *)self mapRectForAnnotations:nearbyAnnotations2 shouldIncludeRadius:1];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(FMMapView *)self repositionOnMapRectIfNeeded:v11, v13, v15, v17];
    }
  }
}

- (void)repositionOnMapRectIfNeeded:(id)needed
{
  var1 = needed.var1.var1;
  var0 = needed.var1.var0;
  v5 = needed.var0.var1;
  v6 = needed.var0.var0;
  [(FMMapView *)self lastVisibleMapRect];
  v9 = v8;
  [(FMMapView *)self lastVisibleMapRect];
  if (v6 != *MEMORY[0x277CD4BB0] || v5 != *(MEMORY[0x277CD4BB0] + 8))
  {
    v12 = var0 * var1 / (v9 * v10);
    if (v12 < 0.7 || v12 > 1.3)
    {

      [(FMMapView *)self repositionToMapRect:1 withZoom:v6, v5, var0, var1];
    }
  }
}

- (void)updateCameraPositionForNoLocation
{
  [(FMMapView *)self lastVisibleMapRect];
  v5 = v4 + -10000.0;
  if (v3 + -10000.0 != *MEMORY[0x277CD4BB0] || v5 != *(MEMORY[0x277CD4BB0] + 8))
  {

    [(FMMapView *)self repositionToMapRect:1 withZoom:?];
  }
}

- (void)displayAllAnnotations
{
  if (![(FMMapView *)self isPreventingMapUpdates])
  {
    selectedAnnotation = [(FMMapView *)self selectedAnnotation];
    [(FMMapView *)self setIsGoingBackToAllAnnotation:selectedAnnotation != 0];

    [(FMMapView *)self deselectAllAnnotations];
    [(FMMapView *)self setSelectedAnnotation:0];
    [(FMMapView *)self setSelectedAnnotationView:0];
    [(FMMapView *)self setIsAllAnnotationsShown:1];
    [(FMMapView *)self setIsMapPositioningDisabled:0];
    layoutTimer = [(FMMapView *)self layoutTimer];
    [layoutTimer invalidate];

    [(FMMapView *)self setLayoutTimer:0];
    [(FMMapView *)self animateToAllAnnotation];

    [(FMMapView *)self setIsGoingBackToAllAnnotation:0];
  }
}

- (void)animateToAllAnnotation
{
  [(FMMapView *)self setRenderingMode:0];
  nearbyAnnotations = [(FMMapView *)self nearbyAnnotations];
  [(FMMapView *)self mapRectForAnnotations:nearbyAnnotations shouldIncludeRadius:1];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
  if (v5 != *MEMORY[0x277CD4BB0] || v7 != *(MEMORY[0x277CD4BB0] + 8))
  {

    [(FMMapView *)self repositionToMapRect:1 withZoom:v5, v7, v9, v11];
  }
}

- (void)setRenderingMode:(int64_t)mode
{
  if (self->_renderingMode != mode)
  {
    self->_renderingMode = mode;
    if (mode == 1)
    {
      [(FMMapView *)self setCurrentTrackingMode:0];
      [(FMMapView *)self _setUserTrackingMode:0 animated:0 fromTrackingButton:0];
    }

    [(FMMapView *)self animateRenderingModeChange];
  }
}

- (void)animateRenderingModeChange
{
  [(FMMapView *)self setIsMapAnimating:0];
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  [(FMMapView *)self setIsAllAnnotationsShown:0];
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  [(FMMapView *)self updateCameraPositionForAnnotation:selectedAnnotation];
}

- (void)refreshCameraPosition
{
  if (![(FMMapView *)self isUserSwiping])
  {
    [(FMMapView *)self lastVisibleMapRect];
    [(FMMapView *)self updateCameraPositionForMapRect:1 withZoom:?];

    [(FMMapView *)self depthSortAnnotations];
  }
}

- (void)updateCameraPositionForMapRect:(id)rect withZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  v44 = *MEMORY[0x277D85DE8];
  if (![(FMMapView *)self isMapPositioningDisabled]&& ![(FMMapView *)self isUserSwiping])
  {
    delegate = [(FMMapView *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate edgeInsetsForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
      v12 = v11;
      v38 = v14;
      v39 = v13;
      v16 = v15;
      v17 = LogCategory_Unspecified();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v45.top = v12;
        v45.right = v38;
        v45.left = v39;
        v45.bottom = v16;
        v18 = NSStringFromUIEdgeInsets(v45);
        *buf = 138412546;
        v41 = v18;
        v42 = 2048;
        currentSelectedState = [(FMMapView *)self currentSelectedState];
        _os_log_impl(&dword_24A315000, v17, OS_LOG_TYPE_DEFAULT, "FMMapView: delegate insets %@ currentState: %ld", buf, 0x16u);
      }
    }

    else
    {
      v12 = 38.0;
      v38 = 38.0;
      v39 = 38.0;
      v16 = 38.0;
    }

    v37 = v16;
    if (objc_opt_respondsToSelector())
    {
      [delegate attributionInsetsForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
      v36 = v19;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      v23 = 6.0;
      v36 = 0;
      v25 = 0xC043000000000000;
      v21 = 0;
    }

    v26 = v8 == *MEMORY[0x277CD4BB0] && v7 == *(MEMORY[0x277CD4BB0] + 8);
    if (!v26 || (var0 == *(MEMORY[0x277CD4BB0] + 16) ? (v27 = var1 == *(MEMORY[0x277CD4BB0] + 24)) : (v27 = 0), !v27))
    {
      [(FMMapView *)self lastVisibleMapRect];
      if (v31 != v8 || v28 != v7 || v29 != var0 || v30 != var1 || ([(FMMapView *)self lastVisibleInsets], v35 != v39) || v32 != v12 || v34 != v38 || v33 != v37 || [(FMMapView *)self isMapMoved])
      {
        [(FMMapView *)self animateMapToPosition:zoomCopy withInsets:v8 attributionInsets:v7 andZoom:var0, var1, v12, v39, v37, v38, v36, v21, *&v23, v25];
      }
    }
  }
}

- (void)animateMapToPosition:(double)position withInsets:(double)insets attributionInsets:(double)attributionInsets andZoom:(double)zoom
{
  *&v172[9] = *MEMORY[0x277D85DE8];
  selectedAnnotation = [self selectedAnnotation];
  mapView = [self mapView];
  [mapView visibleMapRect];
  v31 = v30;

  attributionInsetsCopy = attributionInsets;
  insetsCopy = insets;
  positionCopy = position;
  v32 = position + attributionInsets * 0.5;
  mapView2 = [self mapView];
  [mapView2 visibleMapRect];
  v36 = v35 + v34 * 0.5;
  mapView3 = [self mapView];
  [mapView3 visibleMapRect];
  v40 = v39 + v38 * 0.5;

  v173.x = a2 + insets * 0.5;
  v173.y = v32;
  v175.x = v36;
  v175.y = v40;
  v41 = MKMetersBetweenMapPoints(v173, v175);
  v42 = LogCategory_Unspecified();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [(FMMapView *)self animateMapToPosition:v42 withInsets:zoom attributionInsets:a7 andZoom:a8, a9];
  }

  [self safeAreaInsets];
  v44 = v43;
  [self safeAreaInsets];
  v46 = v45;
  isAllAnnotationsShown = [self isAllAnnotationsShown];
  isAllAnnotationsShown2 = [self isAllAnnotationsShown];
  mapView4 = [self mapView];
  [mapView4 _zoomLevel];
  if (v41 <= 600000.0 / v50)
  {
    v52 = fmin(vabdd_f64(v31, insetsCopy) / 10000.0, 0.5);
    if (v52 < 0.4)
    {
      v53 = 1;
    }

    else
    {
      v53 = isAllAnnotationsShown;
    }

    if (v53)
    {
      v52 = 0.4;
    }

    if ((isAllAnnotationsShown2 & (selectedAnnotation != 0)) != 0)
    {
      v52 = 0.5;
    }

    if (a11)
    {
      v51 = v52;
    }

    else
    {
      v51 = 0.4;
    }
  }

  else
  {

    if (![self isAllAnnotationsShown] || selectedAnnotation || objc_msgSend(self, "isGoingBackToAllAnnotation"))
    {
      v51 = 0.0;
    }

    else
    {
      v51 = 0.4;
    }
  }

  v54 = LogCategory_Unspecified();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    isMapAnimating = [self isMapAnimating];
    layoutTimer = [self layoutTimer];
    *buf = 67109888;
    *v170 = isMapAnimating;
    *&v170[4] = 1024;
    *&v170[6] = layoutTimer != 0;
    LOWORD(v171) = 1024;
    *(&v171 + 2) = [self isPreventingMapUpdates];
    HIWORD(v171) = 2048;
    *v172 = v51;
    _os_log_impl(&dword_24A315000, v54, OS_LOG_TYPE_DEFAULT, "animateMapToPosition isMapAnimating(%d) layoutTimer(%d) isPreventingMapUpdates(%d) duration(%f)", buf, 0x1Eu);
  }

  if (([self isMapAnimating] & 1) == 0)
  {
    layoutTimer2 = [self layoutTimer];
    if (!layoutTimer2 && ![self isPreventingMapUpdates])
    {
      goto LABEL_27;
    }
  }

  if (v51 == 0.0)
  {
LABEL_27:
    v160 = v51;
    zoomCopy = zoom;
    v159 = a8;
    v163 = zoom + v44;
    v164 = a8 + v46;
    [self setIsMapAnimating:{1, a19, a20}];
    [self setIsMapMoved:0];
    renderingMode = [self renderingMode];
    mapView5 = [self mapView];
    mapView6 = mapView5;
    if (renderingMode)
    {
      [mapView5 _setEdgeInsets:{v163, a7, v164, a9}];
      v61 = attributionInsetsCopy;
      v62 = insetsCopy;
      v63 = a2;
      v64 = positionCopy;
    }

    else
    {
      [mapView5 mapRectThatFits:a2 edgePadding:{positionCopy, insetsCopy, attributionInsetsCopy, v163, a7, v164, a9}];
      v63 = v65;
      v64 = v66;
      v62 = v67;
      v61 = v68;

      mapView6 = [self mapView];
      [mapView6 _setEdgeInsets:{38.0, 38.0, 38.0, 38.0}];
    }

    mapView7 = [self mapView];
    [mapView7 _setAttributionInsets:{a17, a18, v156, v157}];

    mapView8 = [self mapView];
    [mapView8 bounds];
    v72 = v71 - (a7 + a9);
    v74 = v73 - (v163 + v164);

    v75 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v63 forViewSize:{v64, v62, v61, v72, v74}];
    mapView9 = [self mapView];
    camera = [mapView9 camera];
    [camera altitude];
    v79 = v78;
    [v75 altitude];
    v81 = vabdd_f64(v79, v80);
    mapView10 = [self mapView];
    camera2 = [mapView10 camera];
    [camera2 centerCoordinate];
    v85 = v84;
    v87 = v86;
    [v75 centerCoordinate];
    [self distanceBetweenOrigin:v85 andDestination:{v87, v88, v89}];
    [self dampingForAltitude:v81 andDistance:v90];
    v92 = v91;

    v93 = LogCategory_Unspecified();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v174.width = v72;
      v174.height = v74;
      v152 = NSStringFromCGSize(v174);
      mapView11 = [self mapView];
      [mapView11 bounds];
      v154 = NSStringFromCGRect(v176);
      v177.top = v163;
      v177.bottom = v164;
      v177.left = a7;
      v177.right = a9;
      v155 = NSStringFromUIEdgeInsets(v177);
      *buf = 138412802;
      *v170 = v152;
      *&v170[8] = 2112;
      v171 = v154;
      v172[0] = 2112;
      *&v172[1] = v155;
      _os_log_debug_impl(&dword_24A315000, v93, OS_LOG_TYPE_DEBUG, "FMMapView: viewSize: %@ bounds: %@ safeInsets: %@", buf, 0x20u);
    }

    renderingMode2 = [self renderingMode];
    [v75 centerCoordinate];
    v97 = fabs(v96) <= 180.0;
    if (fabs(v95) > 90.0)
    {
      v97 = 0;
    }

    if (renderingMode2)
    {
      if (v97)
      {
        v98 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:v95 fromDistance:v96 pitch:400.0 heading:{50.0, 0.0}];

        mapView12 = [self mapView];
        camera3 = [mapView12 camera];
        [camera3 altitude];
        v102 = v101;
        [v98 altitude];
        v104 = vabdd_f64(v102, v103);
        mapView13 = [self mapView];
        camera4 = [mapView13 camera];
        [camera4 centerCoordinate];
        v108 = v107;
        v110 = v109;
        [v98 centerCoordinate];
        [self distanceBetweenOrigin:v108 andDestination:{v110, v111, v112}];
        [self dampingForAltitude:v104 andDistance:v113];
        v92 = v114;

        v75 = v98;
      }

      [v75 centerCoordinate];
      v117 = a7;
      if (fabs(v116) <= 180.0 && fabs(v115) <= 90.0)
      {
        v118 = a9;
        v119 = LogCategory_Unspecified();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEBUG))
        {
          [FMMapView animateMapToPosition:v75 withInsets:v119 attributionInsets:? andZoom:?];
        }

        mapView14 = [self mapView];
        v122 = mapView14;
        LODWORD(v123) = 1128792064;
        LODWORD(v124) = 1.0;
        v125 = v75;
        v126 = v160;
        goto LABEL_42;
      }
    }

    else
    {
      v117 = a7;
      if (v97)
      {
        v118 = a9;
        cameraBefore3DRendering = [self cameraBefore3DRendering];

        mapView14 = [self mapView];
        v122 = mapView14;
        if (cameraBefore3DRendering)
        {
          camera5 = [mapView14 camera];
          [camera5 altitude];
          v130 = v129;
          cameraBefore3DRendering2 = [self cameraBefore3DRendering];
          [cameraBefore3DRendering2 altitude];
          v133 = vabdd_f64(v130, v132);
          mapView15 = [self mapView];
          camera6 = [mapView15 camera];
          [camera6 centerCoordinate];
          v137 = v136;
          v139 = v138;
          cameraBefore3DRendering3 = [self cameraBefore3DRendering];
          [cameraBefore3DRendering3 centerCoordinate];
          [self distanceBetweenOrigin:v137 andDestination:{v139, v141, v142}];
          [self dampingForAltitude:v133 andDistance:v143];
          LODWORD(v133) = v144;

          cameraBefore3DRendering4 = [self cameraBefore3DRendering];
          [cameraBefore3DRendering4 setPitch:0.0];

          mapView16 = [self mapView];
          cameraBefore3DRendering5 = [self cameraBefore3DRendering];
          LODWORD(v148) = 1128792064;
          LODWORD(v149) = 1.0;
          LODWORD(v150) = LODWORD(v133);
          [mapView16 setCamera:cameraBefore3DRendering5 duration:v160 springMass:v149 springStiffness:v148 springDamping:v150 springVelocity:0.0];

          [self setCameraBefore3DRendering:0];
          goto LABEL_47;
        }

        LODWORD(v123) = 1128792064;
        LODWORD(v124) = 1.0;
        v125 = v75;
        v126 = v160;
LABEL_42:
        LODWORD(v121) = v92;
        [mapView14 setCamera:v125 duration:v126 springMass:v124 springStiffness:v123 springDamping:v121 springVelocity:0.0];

LABEL_47:
        [self setLastVisibleMapRect:{a2, positionCopy, insetsCopy, attributionInsetsCopy}];
        [self setLastVisibleInsets:{zoomCopy, v117, v159, v118}];
        v151 = dispatch_time(0, (v160 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke;
        block[3] = &unk_278FDB950;
        block[4] = self;
        *&block[5] = a2;
        *&block[6] = positionCopy;
        *&block[7] = insetsCopy;
        *&block[8] = attributionInsetsCopy;
        *&block[9] = zoomCopy;
        *&block[10] = v117;
        *&block[11] = v159;
        *&block[12] = v118;
        dispatch_after(v151, MEMORY[0x277D85CD0], block);

        goto LABEL_48;
      }
    }

    v118 = a9;
    goto LABEL_47;
  }

LABEL_48:
}

void __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsMapAnimating:0];
  [*(a1 + 32) depthSortAnnotations];
  [*(a1 + 32) synchronize];
  if ([*(a1 + 32) isAllAnnotationsShown])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke_2;
    v4[3] = &__block_descriptor_96_e5_v8__0l;
    v2 = *(a1 + 56);
    v5 = *(a1 + 40);
    v6 = v2;
    v3 = *(a1 + 88);
    v7 = *(a1 + 72);
    v8 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke_2(double *a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v23[0] = @"x";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:a1[4]];
  v24[0] = v3;
  v23[1] = @"y";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a1[5]];
  v24[1] = v4;
  v23[2] = @"width";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a1[6]];
  v24[2] = v5;
  v23[3] = @"height";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a1[7]];
  v24[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

  v21[0] = @"top";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a1[8]];
  v22[0] = v8;
  v21[1] = @"left";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a1[9]];
  v22[1] = v9;
  v21[2] = @"bottom";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:a1[10]];
  v22[2] = v10;
  v21[3] = @"right";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a1[11]];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v20 = 0;
  v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v20];
  v14 = v20;
  [v2 setObject:v13 forKey:@"FMMapViewLastVisibleRect"];

  if (v14)
  {
    v15 = LogCategory_Unspecified();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke_2_cold_1();
    }
  }

  v19 = 0;
  v16 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v19];
  v17 = v19;
  [v2 setObject:v16 forKey:@"FMMapViewLastVisibleInsets"];

  if (v17)
  {
    v18 = LogCategory_Unspecified();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke_2_cold_2();
    }
  }
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)repositionOnAnnotation:(id)annotation withZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  annotationCopy = annotation;
  v7 = *MEMORY[0x277CD4BB0];
  v8 = *(MEMORY[0x277CD4BB0] + 8);
  v9 = *(MEMORY[0x277CD4BB0] + 16);
  v10 = *(MEMORY[0x277CD4BB0] + 24);
  delegate = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = v8;
    v13 = v7;
    if (objc_opt_respondsToSelector())
    {
      [delegate mapPositionForAnnotation:annotationCopy];
      v13 = v14;
      v12 = v15;
      v9 = v16;
      v10 = v17;
    }

    if (v13 == v7 && v12 == v8)
    {
      userLocation = [(FMMapView *)self userLocation];
      [annotationCopy coordinate];
      v21 = v20;
      v23 = v22;
      if (userLocation && [annotationCopy isThisDevice])
      {
        [userLocation coordinate];
        v21 = v24;
        v23 = v25;
      }

      [annotationCopy horizontalAccuracy];
      [(FMMapView *)self mapRectMakeWithRadialDistanceForCoordinate:v21 andRadius:v23, v26];
      v13 = v27;
      v12 = v28;
      v9 = v29;
      v10 = v30;
    }

    if (v13 != v7 || v12 != v8)
    {
      [(FMMapView *)self setIsAllAnnotationsShown:0];
      [(FMMapView *)self setIsMapPositioningDisabled:0];
      [(FMMapView *)self repositionToMapRect:zoomCopy withZoom:v13, v12, v9, v10];
    }
  }

  else
  {
    v12 = v8;
    v13 = v7;
  }

  v32 = v13;
  v33 = v12;
  v34 = v9;
  v35 = v10;
  result.var1.var1 = v35;
  result.var1.var0 = v34;
  result.var0.var1 = v33;
  result.var0.var0 = v32;
  return result;
}

- (void)repositionToMapRect:(id)rect withZoom:(BOOL)zoom
{
  var1 = rect.var0.var1;
  var0 = rect.var0.var0;
  if (rect.var0.var0 != *MEMORY[0x277CD4BB0] || rect.var0.var1 != *(MEMORY[0x277CD4BB0] + 8))
  {
    zoomCopy = zoom;
    v8 = rect.var1.var1;
    v9 = rect.var1.var0;
    mapView = [(FMMapView *)self mapView];
    [mapView bounds];
    v13 = v12 / v9;

    [(FMMapView *)self maxZoomLevel];
    if (v13 > v14)
    {
      [(FMMapView *)self maxZoomLevel];
      [(FMMapView *)self normalizeMapRect:var0 toZoomScale:var1, v9, v8, v15];
      var0 = v16;
      var1 = v17;
      v9 = v18;
      v8 = v19;
    }

    [(FMMapView *)self updateCameraPositionForMapRect:zoomCopy withZoom:var0, var1, v9, v8];
  }
}

- (void)recenterVisibleAnnotations
{
  nearbyAnnotations = [(FMMapView *)self nearbyAnnotations];
  [(FMMapView *)self mapRectForAnnotations:nearbyAnnotations shouldIncludeRadius:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (v5 != *MEMORY[0x277CD4BB0] || v7 != *(MEMORY[0x277CD4BB0] + 8))
  {
    mapView = [(FMMapView *)self mapView];
    [mapView bounds];
    v15 = v14 / v9;

    [(FMMapView *)self maxZoomLevel];
    if (v15 > v16)
    {
      [(FMMapView *)self maxZoomLevel];
      [(FMMapView *)self normalizeMapRect:v5 toZoomScale:v7, v9, v11, v17];
      v5 = v18;
      v7 = v19;
      v9 = v20;
      v11 = v21;
    }

    [(FMMapView *)self setIsMapPositioningDisabled:0];

    [(FMMapView *)self repositionToMapRect:0 withZoom:v5, v7, v9, v11];
  }
}

- (void)slideAnnotationIntoViewIfNeeded:(id)needed
{
  neededCopy = needed;
  delegate = [(FMMapView *)self delegate];
  mapView = [(FMMapView *)self mapView];
  [neededCopy coordinate];
  v7 = v6;
  v9 = v8;
  mapView2 = [(FMMapView *)self mapView];
  [mapView convertCoordinate:mapView2 toPointToView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    [delegate annotationOnScreenTopThresholdForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
  }

  else
  {
    v15 = 185.0;
  }

  v16 = v15 - v14;
  if (v12 < 82.0)
  {
    v21 = 82.0 - v12;
    goto LABEL_12;
  }

  mapView3 = [(FMMapView *)self mapView];
  [mapView3 frame];
  v19 = v18 + -82.0;

  if (v16 <= 0.0 && v12 <= v19)
  {
    goto LABEL_14;
  }

  v21 = 0.0;
  v22 = neededCopy;
  if (v12 > v19)
  {
    mapView4 = [(FMMapView *)self mapView];
    [mapView4 frame];
    v21 = v24 + -82.0 - v12;

LABEL_12:
    v22 = neededCopy;
  }

  [v22 coordinate];
  [(FMMapView *)self moveCenterByOffset:v21 from:fmax(v16, 0.0), v25, v26];
LABEL_14:
}

- (void)moveCenterByOffset:(CGPoint)offset from:(CLLocationCoordinate2D)from
{
  y = offset.y;
  x = offset.x;
  v7 = [(FMMapView *)self mapView:offset.x];
  mapView = [(FMMapView *)self mapView];
  [mapView centerCoordinate];
  v10 = v9;
  v12 = v11;
  mapView2 = [(FMMapView *)self mapView];
  [v7 convertCoordinate:mapView2 toPointToView:{v10, v12}];
  v15 = v14;
  v17 = v16;

  mapView3 = [(FMMapView *)self mapView];
  mapView4 = [(FMMapView *)self mapView];
  [mapView3 convertPoint:mapView4 toCoordinateFromView:{v15 - x, v17 - y}];
  v21 = v20;
  v23 = v22;

  v26.latitude = v21;
  v26.longitude = v23;
  if (CLLocationCoordinate2DIsValid(v26))
  {
    mapView5 = [(FMMapView *)self mapView];
    [mapView5 setCenterCoordinate:1 animated:{v21, v23}];
  }
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectForAnnotations:(id)annotations shouldIncludeRadius:(BOOL)radius
{
  radiusCopy = radius;
  v64 = *MEMORY[0x277D85DE8];
  annotationsCopy = annotations;
  x = *MEMORY[0x277CD4BB0];
  y = *(MEMORY[0x277CD4BB0] + 8);
  width = *(MEMORY[0x277CD4BB0] + 16);
  height = *(MEMORY[0x277CD4BB0] + 24);
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = annotationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v12)
  {

    goto LABEL_29;
  }

  v13 = v12;
  v54 = !radiusCopy;
  v55 = 0;
  v14 = *v60;
  do
  {
    v15 = 0;
    do
    {
      if (*v60 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v59 + 1) + 8 * v15);
      [v16 coordinate];
      if ([(FMMapView *)self isValidLocation:?])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_10;
        }

        otherSelectedAnnotation = [(FMMapView *)self otherSelectedAnnotation];
        if ([v16 isEqual:otherSelectedAnnotation])
        {

LABEL_10:
          v57 = width;
          v58 = height;
          v18 = y;
          [v16 coordinate];
          v20 = v19;
          v22 = v21;
          v23 = 20.0;
          v24 = x;
          if ((objc_opt_respondsToSelector() & 1) != 0 && (([(FMMapView *)self isAllAnnotationsShown]| v54) & 1) == 0)
          {
            [v16 horizontalAccuracy];
            v23 = v25;
          }

          [(FMMapView *)self mapRectMakeWithRadialDistanceForCoordinate:v20 andRadius:v22, v23];
          v27 = v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          if ([v16 isEqual:selectedAnnotation])
          {
            [(FMMapView *)self mapRectMakeWithRadialDistanceForCoordinate:v20 andRadius:v22, 400.0];
            v27 = v34;
            v29 = v35;
            v31 = v36;
            v33 = v37;
            v55 = 1;
          }

          v65.origin.x = v24;
          v65.origin.y = v18;
          v65.size.width = v57;
          v65.size.height = v58;
          v70.origin.x = v27;
          v70.origin.y = v29;
          v70.size.width = v31;
          v70.size.height = v33;
          v66 = MKMapRectUnion(v65, v70);
          x = v66.origin.x;
          y = v66.origin.y;
          width = v66.size.width;
          height = v66.size.height;
          goto LABEL_16;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {

          goto LABEL_16;
        }

        hasKnownLocation = [v16 hasKnownLocation];

        if (hasKnownLocation)
        {
          goto LABEL_10;
        }
      }

LABEL_16:
      ++v15;
    }

    while (v13 != v15);
    v39 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
    v13 = v39;
  }

  while (v39);

  if (v55)
  {
    if (width / *(MEMORY[0x277CD4BB8] + 16) >= height / *(MEMORY[0x277CD4BB8] + 24))
    {
      v40 = width / *(MEMORY[0x277CD4BB8] + 16);
    }

    else
    {
      v40 = height / *(MEMORY[0x277CD4BB8] + 24);
    }

    [selectedAnnotation coordinate];
    v42 = v41;
    v44 = v43;
    [selectedAnnotation horizontalAccuracy];
    [(FMMapView *)self mapRectMakeWithRadialDistanceForCoordinate:v42 andRadius:v44, v45];
    v71.origin.x = v46;
    v71.size.width = v47;
    v71.origin.y = v48 - v40 * 45000000.0;
    v71.size.height = v40 * 45000000.0 + v49;
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v68 = MKMapRectUnion(v67, v71);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
  }

LABEL_29:

  v50 = x;
  v51 = y;
  v52 = width;
  v53 = height;
  result.var1.var1 = v53;
  result.var1.var0 = v52;
  result.var0.var1 = v51;
  result.var0.var0 = v50;
  return result;
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)normalizeMapRect:(id)rect toZoomScale:(double)scale
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v7 = rect.var0.var1;
  v8 = rect.var0.var0;
  mapView = [(FMMapView *)self mapView];
  [mapView bounds];
  v11 = var0 - v10 / scale;

  v12 = v8;
  v13 = v7;
  v14 = var0;
  v15 = var1;

  return MKMapRectInset(*&v12, v11 * 0.5, v11 * 0.5);
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)coordinate andRadius:(double)radius
{
  MEMORY[0x2821236A8](self, a2, coordinate, *&coordinate.longitude, radius);
  result.var1.var1 = v7;
  result.var1.var0 = v6;
  result.var0.var1 = v5;
  result.var0.var0 = v4;
  return result;
}

- (void)flashMapInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  mapView = [(FMMapView *)self mapView];
  [mapView frame];
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + right);
  v16 = v15 - (top + bottom);

  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v12, v14, v16}];
  [v17 setUserInteractionEnabled:0];
  greenColor = [MEMORY[0x277D75348] greenColor];
  v19 = [greenColor colorWithAlphaComponent:0.5];
  [v17 setDebugHighlight:v19];

  redColor = [MEMORY[0x277D75348] redColor];
  cGColor = [redColor CGColor];
  layer = [v17 layer];
  [layer setBorderColor:cGColor];

  layer2 = [v17 layer];
  [layer2 setBorderWidth:1.0];

  [(FMMapView *)self addSubview:v17];
  v24 = MEMORY[0x277D75D18];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __27__FMMapView_flashMapInset___block_invoke;
  v28[3] = &unk_278FDB978;
  v29 = v17;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __27__FMMapView_flashMapInset___block_invoke_2;
  v26[3] = &unk_278FDB9A0;
  v27 = v29;
  v25 = v29;
  [v24 animateWithDuration:v28 animations:v26 completion:6.0];
}

- (id)nearbyAnnotations
{
  v30 = *MEMORY[0x277D85DE8];
  userLocation = [(FMMapView *)self userLocation];
  v4 = objc_opt_new();
  annotationsSortedByDistance = [(FMMapView *)self annotationsSortedByDistance];
  if ([(FMMapView *)self isNearbyModeDisabled])
  {
    goto LABEL_2;
  }

  if ([annotationsSortedByDistance count])
  {
    v24 = userLocation;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = annotationsSortedByDistance;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          if ([v15 conformsToProtocol:&unk_285DA7C08])
          {
            [v15 distanceFromUser];
            v17 = v16;
            if (v16 >= 16000.0)
            {
              v18 = [v4 count];
              if ((v17 >= 160000.0 || v18 >= 4) && (v17 >= 160000.0 || v17 + -100.0 > v13))
              {
                goto LABEL_23;
              }
            }

            [v4 addObject:v15];
            v13 = v17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

LABEL_23:

    userLocation = v24;
  }

  if (![v4 count])
  {
    if (!userLocation || ([userLocation coordinate], v22 == 0.0) || (objc_msgSend(userLocation, "coordinate"), v23 == 0.0))
    {
LABEL_2:
      mapView = [(FMMapView *)self mapView];
      annotations = [mapView annotations];
      v8 = [annotations mutableCopy];

      v4 = v8;
      goto LABEL_25;
    }

    [v4 addObject:userLocation];
  }

LABEL_25:

  return v4;
}

- (id)annotationsSortedByDistance
{
  v31 = *MEMORY[0x277D85DE8];
  userLocation = [(FMMapView *)self userLocation];
  v4 = objc_opt_new();
  if (userLocation)
  {
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    [userLocation coordinate];
    v7 = v6;
    v25 = userLocation;
    [userLocation coordinate];
    v8 = [v5 initWithLatitude:v7 longitude:?];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    mapView = [(FMMapView *)self mapView];
    annotations = [mapView annotations];

    v11 = [annotations countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(annotations);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if ([v15 conformsToProtocol:&unk_285DA7C08])
          {
            [v15 coordinate];
            v17 = v16;
            v19 = v18;
            [v15 coordinate];
            if (v20 != -180.0)
            {
              [v15 coordinate];
              if (v21 != -180.0)
              {
                v22 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v17 longitude:v19];
                [v8 distanceFromLocation:v22];
                [v15 setDistanceFromUser:?];
                [v4 addObject:v15];
              }
            }
          }
        }

        v12 = [annotations countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v23 = [v4 sortedArrayUsingComparator:&__block_literal_global_2];

    userLocation = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t __40__FMMapView_annotationsSortedByDistance__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 distanceFromUser];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 distanceFromUser];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)view
{
  layer = [view layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  MidY = CGRectGetMidY(v26);
  mapView = [(FMMapView *)self mapView];
  mapView2 = [(FMMapView *)self mapView];
  [mapView convertPoint:mapView2 toCoordinateFromView:{MidX, MidY}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.longitude = v23;
  result.latitude = v22;
  return result;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  delegate = [(FMMapView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate customViewForAnnotation:annotationCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mapView = [(FMMapView *)self mapView];
    v11 = mapView;
    if (isKindOfClass)
    {
      v8 = [mapView dequeueReusableAnnotationViewWithIdentifier:@"FMMKUserAnnotationReuseIdentifier"];

      if (!v8)
      {
        v8 = [(MKUserLocationView *)[FMUserLocationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"FMMKUserAnnotationReuseIdentifier"];
        [(MKAnnotationView *)v8 setEnabled:0];
        [(FMUserLocationView *)v8 setUserInteractionEnabled:0];
        [(MKUserLocationView *)v8 setCanShowCallout:[(FMMapView *)self showUserLocationCallout]];
        userLocationTintColor = [(FMMapView *)self userLocationTintColor];
        [(FMUserLocationView *)v8 setTintColor:userLocationTintColor];

        [(FMMapView *)self setUserLocationView:v8];
        [(FMMapView *)self setUserLocation:annotationCopy];
        if ([(FMMapView *)self showUserLocationCallout])
        {
          v13 = [MEMORY[0x277D75220] buttonWithType:4];
          tintColor = [(FMMapView *)self tintColor];
          [v13 setTintColor:tintColor];

          [(MKAnnotationView *)v8 setEnabled:0];
          [(MKUserLocationView *)v8 setRightCalloutAccessoryView:v13];
          if (objc_opt_respondsToSelector())
          {
            [delegate updateTitlesForAnnotation:annotationCopy];
          }
        }
      }
    }

    else
    {
      v8 = [mapView dequeueReusableAnnotationViewWithIdentifier:@"FMAnnotationViewReuseIdentifier"];

      if (!v8)
      {
        v15 = objc_alloc_init(FMMapAnnotationGestureRecognizer);
        v16 = [FMAnnotationView alloc];
        tintColor2 = [(FMMapView *)annotationCopy tintColor];
        if (tintColor2)
        {
          selfCopy = annotationCopy;
        }

        else
        {
          selfCopy = self;
        }

        tintColor3 = [(FMMapView *)selfCopy tintColor];
        v8 = [(FMAnnotationView *)v16 initWithAnnotation:annotationCopy reuseIdentifier:@"FMAnnotationViewReuseIdentifier" tintColor:tintColor3];

        [(MKAnnotationView *)v8 setEnabled:0];
        [(FMMapAnnotationGestureRecognizer *)v15 setTouchDelegate:self];
        [(FMUserLocationView *)v8 addGestureRecognizer:v15];
        if (objc_opt_respondsToSelector())
        {
          delegate2 = [(FMMapView *)self delegate];
          [delegate2 annotationViewOfferedForLocationPreview:v8];
        }
      }

      if ([(FMMapView *)annotationCopy isThisDevice])
      {
        [(FMMapView *)self setCurrentDeviceAnnotation:annotationCopy];
      }

      selectedAnnotation = [(FMMapView *)self selectedAnnotation];
      v22 = [(FMMapView *)annotationCopy isEqual:selectedAnnotation];

      if (v22)
      {
        renderingMode = [(FMMapView *)self renderingMode];
        if ([(FMMapView *)self isFingerOnMap])
        {
          [(MKAnnotationView *)v8 setSelected:1 animated:1];
        }

        else
        {
          [(FMUserLocationView *)v8 setSelected:1 animated:1 delay:dbl_24A330050[renderingMode == 1]];
        }
      }

      [(FMUserLocationView *)v8 updateStyleForAnnotation:annotationCopy];
    }
  }

  return v8;
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  v20 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [viewsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        annotation = [v10 annotation];
        selectedAnnotation = [(FMMapView *)self selectedAnnotation];
        v13 = [annotation isEqual:selectedAnnotation];

        if (v13)
        {
          [(FMMapView *)self setSelectedAnnotationView:v10];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          annotation2 = [v10 annotation];
          [v10 updateStyleForAnnotation:annotation2];
        }
      }

      v7 = [viewsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(FMMapView *)self depthSortAnnotations];
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  overlayCopy = overlay;
  delegate = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate customRendererForOverlay:overlayCopy];
    if (v7)
    {
      goto LABEL_18;
    }
  }

  if (![(FMMapView *)self shouldDisplayOverlay])
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = overlayCopy;
    parentAnnotation = [v8 parentAnnotation];
    v7 = [objc_alloc(MEMORY[0x277CD4DA8]) initWithCircle:v8];
    if ([parentAnnotation conformsToProtocol:&unk_285DA7C08])
    {
      v10 = parentAnnotation;
      v11 = [(FMMapView *)self viewForAnnotation:v10];
      mapView = [(FMMapView *)self mapView];
      mapType = [mapView mapType];

      if (mapType)
      {
        v22 = 0.0;
        v23 = 0.0;
        v20 = 0.0;
        v21 = 0.0;
        tintColor = [v10 tintColor];
        [tintColor getHue:&v23 saturation:&v22 brightness:&v21 alpha:&v20];

        v15 = [MEMORY[0x277D75348] colorWithHue:v23 saturation:v22 brightness:v21 + 0.4 alpha:v20];
        [v7 setFillColor:v15];
        [v7 setAlpha:0.15];
      }

      else
      {
        tintColor2 = [v11 tintColor];
        [v7 setFillColor:tintColor2];

        [v7 setAlpha:0.2];
      }
    }

    if (!v7)
    {
LABEL_15:
      v18 = LogCategory_Unspecified();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [FMMapView mapView:rendererForOverlay:];
      }

      v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:overlayCopy];
    }
  }

  else
  {
    v16 = LogCategory_Unspecified();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FMMapView mapView:rendererForOverlay:];
    }

    v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:overlayCopy];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

LABEL_18:

  return v7;
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([annotationViewCopy isUserInteractionEnabled])
  {
    selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
    if (selectedAnnotationView == annotationViewCopy)
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(FMMapView *)self setPotentiallySelectedAnnotationView:annotationViewCopy];
        potentiallySelectedAnnotationView = [(FMMapView *)self potentiallySelectedAnnotationView];
        [(FMMapView *)self selectOrDeselectAnnotationView:potentiallySelectedAnnotationView];
LABEL_11:

        goto LABEL_14;
      }
    }

    annotation = [annotationViewCopy annotation];
    [(FMMapView *)self setOtherSelectedAnnotation:annotation];

    [(FMMapView *)self setLastVisibleMapRect:*MEMORY[0x277CD4BB0], *(MEMORY[0x277CD4BB0] + 8), *(MEMORY[0x277CD4BB0] + 16), *(MEMORY[0x277CD4BB0] + 24)];
    goto LABEL_14;
  }

  if ([(FMMapView *)self showUserLocationCallout]&& [(FMMapView *)self canSelectUserAnnotation])
  {
    potentiallySelectedAnnotationView = [(FMMapView *)self selectedAnnotationView];
    [(FMMapView *)self deselectAnnotationView:potentiallySelectedAnnotationView];
    goto LABEL_11;
  }

  if (![(FMMapView *)self canSelectUserAnnotation])
  {
    mapView = [(FMMapView *)self mapView];
    annotation2 = [annotationViewCopy annotation];
    [mapView deselectAnnotation:annotation2 animated:0];

    [annotationViewCopy setSelected:0 animated:0];
  }

LABEL_14:
  [(FMMapView *)self depthSortAnnotations];
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  [annotationViewCopy setSelected:1 animated:0];
  annotation = [annotationViewCopy annotation];
  userLocation = [(FMMapView *)self userLocation];
  v7 = [annotation isEqual:userLocation];

  if (v7)
  {
    [annotationViewCopy setEnabled:0];
  }

  annotation2 = [annotationViewCopy annotation];
  otherSelectedAnnotation = [(FMMapView *)self otherSelectedAnnotation];
  v10 = [annotation2 isEqual:otherSelectedAnnotation];

  if (v10)
  {
    [(FMMapView *)self setOtherSelectedAnnotation:0];
  }

  [(FMMapView *)self depthSortAnnotations];
}

- (void)clearUserLocation
{
  hasUserLocation = 0;
  [(FMMapView *)self setUserLocation:0];
  currentDeviceAnnotation = [(FMMapView *)self currentDeviceAnnotation];
  [(FMMapView *)self updateAnnotationStyle:currentDeviceAnnotation];
}

- (void)depthSortAnnotations
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = [MEMORY[0x277D07B40] stopwatchWithLabel:@"depthSortAnnotations"];
  [(FMMapView *)self otherSelectedAnnotation];
  v22 = v21 = self;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  mapView = [(FMMapView *)self mapView];
  _annotationViews = [mapView _annotationViews];

  v5 = [_annotationViews countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v24 = 0;
    v7 = 0;
    v8 = *v26;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(_annotationViews);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        annotation = [v10 annotation];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          v7 = v10;
LABEL_8:

          goto LABEL_12;
        }

        if ([annotation conformsToProtocol:&unk_285DA7C08])
        {
          v12 = annotation;
          if ([v12 isThisDevice])
          {
            v13 = v10;

            v24 = v13;
          }

          else
          {
            [v10 _setZIndex:20];
          }

          goto LABEL_8;
        }

LABEL_12:

        ++v9;
      }

      while (v6 != v9);
      v14 = [_annotationViews countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v14;
      if (!v14)
      {
        goto LABEL_18;
      }
    }
  }

  v24 = 0;
  v7 = 0;
LABEL_18:

  [v24 _setZIndex:19];
  selectedAnnotationView = [(FMMapView *)v21 selectedAnnotationView];
  if ([selectedAnnotationView isEqual:v24])
  {

    v16 = 2147483645;
  }

  else
  {
    currentTrackingMode = [(FMMapView *)v21 currentTrackingMode];

    if (currentTrackingMode)
    {
      v16 = 2147483645;
    }

    else
    {
      v16 = 18;
    }
  }

  [v7 setPreferredZIndex:v16];
  [v7 _setZIndex:v16];
  if (v24 && [(FMMapView *)v21 currentTrackingMode])
  {
    [v7 setPreferredZIndex:2147483645];
    [v7 _setZIndex:2147483645];
    [v24 _setZIndex:0x7FFFFFFFLL];
  }

  if (-[FMMapView showUserLocationCallout](v21, "showUserLocationCallout") && v7 && [v7 isSelected])
  {
    [v7 setPreferredZIndex:2147483645];
    [v7 _setZIndex:2147483645];
  }

  selectedAnnotationView2 = [(FMMapView *)v21 selectedAnnotationView];
  [selectedAnnotationView2 _setZIndex:2147483646];

  if (v22)
  {
    mapView2 = [(FMMapView *)v21 mapView];
    v20 = [mapView2 viewForAnnotation:v22];

    if (v20)
    {
      [v20 _setZIndex:2147483646];
    }
  }

  [v23 stop];
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated
{
  if ([(FMMapView *)self canChangeUserTrackingMode:view])
  {
    [(FMMapView *)self setCanChangeUserTrackingMode:0];

    [(FMMapView *)self updateAccordingToUserTrackingMode];
  }
}

- (void)updateAccordingToUserTrackingMode
{
  v41[2] = *MEMORY[0x277D85DE8];
  userLocation = [(FMMapView *)self userLocation];
  lastSelectedAnnotationBeforeTracking = [(FMMapView *)self lastSelectedAnnotationBeforeTracking];
  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  otherSelectedAnnotation = [(FMMapView *)self otherSelectedAnnotation];
  v7 = *MEMORY[0x277CD4BB0];
  v8 = *(MEMORY[0x277CD4BB0] + 8);
  v9 = *(MEMORY[0x277CD4BB0] + 16);
  v10 = *(MEMORY[0x277CD4BB0] + 24);
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  [(FMMapView *)self setIsAllAnnotationsShown:0];
  [(FMMapView *)self setIsSwitchingTrackingMode:1];
  [(FMMapView *)self setLastVisibleMapRect:v7, v8, v9, v10];
  mapView = [(FMMapView *)self mapView];
  userTrackingMode = [mapView userTrackingMode];

  if (userTrackingMode == 2)
  {
    goto LABEL_14;
  }

  if (userTrackingMode != 1)
  {
    if (lastSelectedAnnotationBeforeTracking)
    {
      [(FMMapView *)self updateCameraPositionForAnnotation:lastSelectedAnnotationBeforeTracking];
      [(FMMapView *)self setLastSelectedAnnotationBeforeTracking:0];
    }

    else
    {
      [(FMMapView *)self setIsMapMoved:1];
      [(FMMapView *)self displayAllAnnotations];
    }

LABEL_14:
    v20 = v8;
    v18 = v7;
    goto LABEL_15;
  }

  [(FMMapView *)self setLastSelectedAnnotationBeforeTracking:selectedAnnotation];
  if (selectedAnnotation | otherSelectedAnnotation && userLocation)
  {
    if (selectedAnnotation)
    {
      v13 = selectedAnnotation;
    }

    else
    {
      v13 = otherSelectedAnnotation;
    }

    v41[0] = v13;
    v41[1] = userLocation;
    v14 = MEMORY[0x277CBEA60];
    v15 = v13;
    v16 = [v14 arrayWithObjects:v41 count:2];

    [(FMMapView *)self mapRectForAnnotations:v16 shouldIncludeRadius:1];
    v18 = v17;
    v20 = v19;
    v9 = v21;
    v10 = v22;
  }

  else
  {
    v20 = v8;
    v18 = v7;
    if (userLocation)
    {
      nearbyAnnotations = [(FMMapView *)self nearbyAnnotations];
      v24 = [nearbyAnnotations mutableCopy];

      [v24 addObject:userLocation];
      [(FMMapView *)self mapRectForAnnotations:v24 shouldIncludeRadius:1];
      v18 = v25;
      v20 = v26;
      v9 = v27;
      v10 = v28;
    }
  }

LABEL_15:
  if (v18 == v7 && v20 == v8)
  {
    [(FMMapView *)self setIsSwitchingTrackingMode:0];
    [(FMMapView *)self setCanChangeUserTrackingMode:1];
  }

  else
  {
    mapView2 = [(FMMapView *)self mapView];
    [mapView2 bounds];
    v32 = v31 / v9;

    [(FMMapView *)self maxZoomLevel];
    if (v32 > v33)
    {
      [(FMMapView *)self maxZoomLevel];
      [(FMMapView *)self normalizeMapRect:v18 toZoomScale:v20, v9, v10, v34];
      v18 = v35;
      v20 = v36;
      v9 = v37;
      v10 = v38;
    }

    v39 = dispatch_time(0, 30000000);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __46__FMMapView_updateAccordingToUserTrackingMode__block_invoke;
    v40[3] = &unk_278FDB9E8;
    v40[4] = self;
    *&v40[5] = v18;
    *&v40[6] = v20;
    *&v40[7] = v9;
    *&v40[8] = v10;
    dispatch_after(v39, MEMORY[0x277D85CD0], v40);
  }
}

void __46__FMMapView_updateAccordingToUserTrackingMode__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCameraPositionForMapRect:1 withZoom:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setIsSwitchingTrackingMode:0];
  v2 = dispatch_time(0, 30000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FMMapView_updateAccordingToUserTrackingMode__block_invoke_2;
  block[3] = &unk_278FDB978;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)_setUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  v7 = [(FMMapView *)self userTrackingMode:mode];
  if (mode == 1)
  {
    v9 = 2;
    v8 = 1;
  }

  else if (mode == 2)
  {
    [(FMMapView *)self setIsMapPositioningDisabled:0];
    v8 = 2;
    v9 = 3;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  userTrackingButton = [(FMMapView *)self userTrackingButton];
  [userTrackingButton _setState:v9];

  [(FMMapView *)self setCurrentTrackingMode:v8];
  mapView = [(FMMapView *)self mapView];
  [mapView setUserTrackingMode:mode animated:1];

  if (v7 != mode)
  {

    [(FMMapView *)self depthSortAnnotations];
  }
}

- (int64_t)userTrackingMode
{
  currentTrackingMode = [(FMMapView *)self currentTrackingMode];
  if (currentTrackingMode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (currentTrackingMode == 2);
  }
}

- (BOOL)isCurrentlyRotated
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FMMapView.m" lineNumber:1476 description:@"FIXME: Test this code path.  As of Whitetail MapKit was never calling this method and it was just added for protocol conformance."];

  mapView = [(FMMapView *)self mapView];
  LOBYTE(self) = [mapView isCurrentlyRotated];

  return self;
}

- (void)updateUserTrackingButtonState
{
  v2 = hasUserLocation;
  userTrackingButton = [(FMMapView *)self userTrackingButton];
  [userTrackingButton setEnabled:v2];
}

- (void)synchronize
{
  v22 = [MEMORY[0x277D07B40] stopwatchWithLabel:@"FMMapView.synchronize"];
  userLocation = [(FMMapView *)self userLocation];
  userLocationView = [(FMMapView *)self userLocationView];
  currentDeviceAnnotation = [(FMMapView *)self currentDeviceAnnotation];
  v6 = currentDeviceAnnotation;
  if (userLocation)
  {
    if (currentDeviceAnnotation)
    {
      [userLocationView center];
      if (userLocationView)
      {
        v9 = v7;
        v10 = v8;
        v11 = [(FMMapView *)self viewForAnnotation:v6];
        [userLocationView center];
        v13 = v12;
        [userLocationView center];
        v15 = v14;
        [v11 center];
        v17 = v16;
        [v11 center];
        if (v11 && llround(v13 * v15) != llround(v17 * v18) && ![(FMMapView *)self isMapAnimating]&& hasUserLocation == 1)
        {
          [v11 setCenter:{v9, v10}];
        }
      }
    }
  }

  selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];

  if (selectedAnnotationView)
  {
    selectedAnnotationView2 = [(FMMapView *)self selectedAnnotationView];
    annotation = [selectedAnnotationView2 annotation];
    [(FMMapView *)self updateOverlayForAnnotation:annotation withForce:0];
  }

  if (![(FMMapView *)self isMapAnimating])
  {
    [(FMMapView *)self updateUserTrackingButtonState];
  }

  [v22 stop];
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  locationCopy = location;
  currentDeviceAnnotation = [(FMMapView *)self currentDeviceAnnotation];
  delegate = [(FMMapView *)self delegate];
  [(FMMapView *)self setUserLocation:locationCopy];
  if (locationCopy && currentDeviceAnnotation)
  {
    [locationCopy coordinate];
    v8 = v7;
    [currentDeviceAnnotation coordinate];
    if (vabdd_f64(v8, v9) >= 0.0001 || ([locationCopy coordinate], v11 = v10, objc_msgSend(currentDeviceAnnotation, "coordinate"), vabdd_f64(v11, v12) >= 0.0001))
    {
      [locationCopy coordinate];
      [currentDeviceAnnotation setCoordinate:?];
      [(FMMapView *)self updateCameraPositionForAnnotation:currentDeviceAnnotation];
      [(FMMapView *)self setIsMapAnimating:0];
      [(FMMapView *)self synchronize];
    }

LABEL_11:
    if ([(FMMapView *)self showUserLocationCallout]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate updateTitlesForAnnotation:locationCopy];
    }

    goto LABEL_14;
  }

  if (hasUserLocation == 1 && [(FMMapView *)self isAllAnnotationsShown]&& ![(FMMapView *)self isMapPositioningDisabled])
  {
    [(FMMapView *)self displayAllAnnotations];
  }

  if (locationCopy)
  {
    goto LABEL_11;
  }

LABEL_14:
  if ((hasUserLocation & 1) == 0)
  {
    hasUserLocation = 1;
    if (currentDeviceAnnotation)
    {
      [(FMMapView *)self updateAnnotationStyle:currentDeviceAnnotation];
    }

    if ([(FMMapView *)self isAllAnnotationsShown]&& ![(FMMapView *)self isMapPositioningDisabled])
    {
      [(FMMapView *)self setIsMapAnimating:0];
      [(FMMapView *)self setIsUserLocationUpdated:1];
      [(FMMapView *)self displayAllAnnotations];
    }
  }
}

- (void)updateAnnotationStyle:(id)style
{
  styleCopy = style;
  v5 = [(FMMapView *)self viewForAnnotation:styleCopy];
  [v5 updateStyleForAnnotation:styleCopy];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  if ([(FMMapView *)self isMapMoved:view])
  {

    [(FMMapView *)self setIsFingerOnMap:0];
  }
}

- (void)mapTouchEnded:(id)ended
{
  if (![(FMMapView *)self isMapMoved])
  {

    [(FMMapView *)self setIsFingerOnMap:0];
  }
}

- (void)mapTouchMoved:(id)moved
{
  if (![(FMMapView *)self isPreviewing])
  {
    delegate = [(FMMapView *)self delegate];
    [(FMMapView *)self setIsMapPositioningDisabled:1];
    [(FMMapView *)self setIsMapMoved:1];
    mapView = [(FMMapView *)self mapView];
    userTrackingMode = [mapView userTrackingMode];

    if (userTrackingMode != 2)
    {
      [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
    }

    [(FMMapView *)self depthSortAnnotations];
    if (![(FMMapView *)self renderingMode]&& delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate userDidMoveMap];
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)calloutButtonTapped:(id)tapped
{
  delegate = [(FMMapView *)self delegate];
  if (![(FMMapView *)self isFingerOnAnnotation]&& [(FMMapView *)self showUserLocationCallout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate userDidTapUserLocationCallOut];
  }
}

- (void)userLocationTapped:(id)tapped
{
  if ([(FMMapView *)self showUserLocationCallout])
  {
    mapView = [(FMMapView *)self mapView];
    userLocation = [mapView userLocation];

    if (userLocation)
    {
      mapView2 = [(FMMapView *)self mapView];
      mapView3 = [(FMMapView *)self mapView];
      userLocation2 = [mapView3 userLocation];
      v9 = [mapView2 viewForAnnotation:userLocation2];

      v10 = dispatch_time(0, 500000000);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__FMMapView_userLocationTapped___block_invoke;
      v12[3] = &unk_278FDB908;
      v13 = v9;
      selfCopy = self;
      v11 = v9;
      dispatch_after(v10, MEMORY[0x277D85CD0], v12);
    }
  }
}

void __32__FMMapView_userLocationTapped___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  v2 = [*(a1 + 40) mapView];
  v3 = [v2 selectedAnnotations];
  v4 = [v3 firstObject];
  v5 = [*(a1 + 32) annotation];
  v6 = [v4 isEqual:v5];

  v9 = [*(a1 + 40) mapView];
  v7 = [*(a1 + 40) mapView];
  v8 = [v7 userLocation];
  if (v6)
  {
    [v9 deselectAnnotation:v8 animated:1];
  }

  else
  {
    [v9 selectAnnotation:v8 animated:1];
  }
}

- (void)mapTapped:(id)tapped
{
  if (![(FMMapView *)self isPreviewing])
  {
    delegate = [(FMMapView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [delegate shouldTapDeselectAnnotation] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    [(FMMapView *)self setIsUserSwiping:0];
    if (![(FMMapView *)self renderingMode]&& (v4 & 1) == 0)
    {
      [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
      selectedAnnotationView = [(FMMapView *)self selectedAnnotationView];

      if (selectedAnnotationView)
      {
        [(FMMapView *)self setIsMapPositioningDisabled:1];
        selectedAnnotationView2 = [(FMMapView *)self selectedAnnotationView];
        [(FMMapView *)self deselectAnnotationView:selectedAnnotationView2];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [delegate userDidTapMap];
    }

    if (![(FMMapView *)self renderingMode]&& ![(FMMapView *)self isMapPositioningDisabled]&& [(FMMapView *)self isAllAnnotationsShown])
    {
      [(FMMapView *)self setIsMapAnimating:0];
      [(FMMapView *)self recenterVisibleAnnotations];
      [(FMMapView *)self setIsMapPositioningDisabled:1];
      [(FMMapView *)self setIsAllAnnotationsShown:0];
    }
  }
}

- (void)mapSwiped:(id)swiped withPercent:(double)percent
{
  delegate = [(FMMapView *)self delegate];
  if (![(FMMapView *)self renderingMode]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate userDidSwipeMapWithPercent:{fmin(percent, 1.0)}];
  }

  [(FMMapView *)self setIsUserSwiping:1];
}

- (void)mapSwipedBegin:(id)begin
{
  mapView = [(FMMapView *)self mapView];
  [mapView setUserInteractionEnabled:0];

  [(FMMapView *)self setIsUserSwiping:1];
}

- (void)mapSwipedEnd:(id)end withPercent:(double)percent
{
  delegate = [(FMMapView *)self delegate];
  [(FMMapView *)self setIsUserSwiping:0];
  layoutTimer = [(FMMapView *)self layoutTimer];
  [layoutTimer invalidate];

  [(FMMapView *)self setLayoutTimer:0];
  if (percent < 1.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate userDidSwipeCancel];
  }

  mapView = [(FMMapView *)self mapView];
  [mapView setUserInteractionEnabled:1];
}

- (void)setIsSwipeGestureEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_isSwipeGestureEnabled = enabled;
  mapGesture = [(FMMapView *)self mapGesture];
  [mapGesture setIsSwipeEnabled:enabledCopy];
}

- (float)dampingForAltitude:(double)altitude andDistance:(double)distance
{
  v4 = sqrt(distance * distance + altitude * altitude);
  if (v4 <= 350000.0)
  {
    v5 = 26.0;
  }

  else
  {
    v5 = 30.0;
  }

  selectedAnnotation = [(FMMapView *)self selectedAnnotation];
  if (selectedAnnotation)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = 0.0;
  }

  return fminf((powf(v4, v4 / 350000.0) + 17.0) + v7, v5);
}

- (double)distanceBetweenOrigin:(CLLocationCoordinate2D)origin andDestination:(CLLocationCoordinate2D)destination
{
  longitude = destination.longitude;
  latitude = destination.latitude;
  v6 = MKMapPointForCoordinate(origin);
  v14.latitude = latitude;
  v14.longitude = longitude;
  v7 = MKMapPointForCoordinate(v14);
  x = v7.x;
  y = v7.y;
  v10 = v6.x;
  v11 = v6.y;

  return MKMetersBetweenMapPoints(*&v10, *&x);
}

- (void)fingerOnAnnotation:(id)annotation
{
  userLocationView = [(FMMapView *)self userLocationView];
  [(FMMapView *)self setPotentiallySelectedAnnotationView:0];
  [(FMMapView *)self setIsFingerOnAnnotation:1];
  if ([(FMMapView *)self showUserLocationCallout]&& userLocationView)
  {
    [userLocationView setSelected:0];
  }

  MEMORY[0x2821F96F8]();
}

- (void)fingerOffAnnotation:(id)annotation
{
  annotationCopy = annotation;
  userLocationView = [(FMMapView *)self userLocationView];
  if (![(FMMapView *)self isMapAnimating])
  {
    potentiallySelectedAnnotationView = [(FMMapView *)self potentiallySelectedAnnotationView];

    if (!potentiallySelectedAnnotationView)
    {
      view = [annotationCopy view];
      [(FMMapView *)self setPotentiallySelectedAnnotationView:view];
    }

    potentiallySelectedAnnotationView2 = [(FMMapView *)self potentiallySelectedAnnotationView];
    [(FMMapView *)self selectOrDeselectAnnotationView:potentiallySelectedAnnotationView2];
  }

  [(FMMapView *)self setIsFingerOnAnnotation:0];
  if ([(FMMapView *)self showUserLocationCallout]&& userLocationView)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__FMMapView_fingerOffAnnotation___block_invoke;
    block[3] = &unk_278FDB978;
    v10 = userLocationView;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)updatePreviewLocationForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v5 = annotationCopy;
  if (annotationCopy)
  {
    [annotationCopy coordinate];
    v7 = v6 + -0.0002;
    [v5 coordinate];
    v9 = CLLocationCoordinate2DMake(v7, v8);
    v10 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:v9.latitude fromDistance:v9.longitude pitch:350.0 heading:{50.0, 0.0}];
    v11 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__FMMapView_updatePreviewLocationForAnnotation___block_invoke;
    v13[3] = &unk_278FDBA10;
    v13[4] = self;
    v14 = v10;
    v15 = v5;
    v12 = v10;
    [v11 performWithoutAnimation:v13];
  }
}

void __48__FMMapView_updatePreviewLocationForAnnotation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:0];

  [*(a1 + 32) updateOverlayForAnnotation:*(a1 + 48) withForce:1];
  v3 = [*(a1 + 32) viewForAnnotation:*(a1 + 48)];
  [v3 setSelected:1 animated:0];
}

- (void)updateAnnotationPositionAfterPreview:(id)preview
{
  previewCopy = preview;
  delegate = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = MEMORY[0x277CD4BB0];
    v6 = *MEMORY[0x277CD4BB0];
    v7 = *(MEMORY[0x277CD4BB0] + 8);
    if (objc_opt_respondsToSelector())
    {
      [delegate mapPositionForAnnotation:previewCopy];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v13 = *(v5 + 16);
      v15 = *(v5 + 24);
      v11 = v7;
      v9 = v6;
    }

    if (v9 == v6 && v11 == v7)
    {
      userLocation = [(FMMapView *)self userLocation];
      [previewCopy coordinate];
      v19 = v18;
      v21 = v20;
      if (userLocation && [previewCopy isThisDevice])
      {
        [userLocation coordinate];
        v19 = v22;
        v21 = v23;
      }

      [previewCopy horizontalAccuracy];
      [(FMMapView *)self mapRectMakeWithRadialDistanceForCoordinate:v19 andRadius:v21, v24];
      v9 = v25;
      v11 = v26;
      v13 = v27;
      v15 = v28;
    }

    if (v9 != v6 || v11 != v7)
    {
      [(FMMapView *)self setIsAllAnnotationsShown:0];
      [(FMMapView *)self setIsMapPositioningDisabled:0];
      mapView = [(FMMapView *)self mapView];
      [mapView bounds];
      v32 = v31 / v13;

      [(FMMapView *)self maxZoomLevel];
      if (v32 > v33)
      {
        [(FMMapView *)self maxZoomLevel];
        [(FMMapView *)self normalizeMapRect:v9 toZoomScale:v11, v13, v15, v34];
        v9 = v35;
        v11 = v36;
        v13 = v37;
        v15 = v38;
      }

      v50.x = v13 * 0.5 + v9;
      v50.y = v15 * 0.5 + v11;
      v39 = MKCoordinateForMapPoint(v50);
      mapView2 = [(FMMapView *)self mapView];
      if ([mapView2 mapType])
      {
        traitCollection = [(FMMapView *)self traitCollection];
        v42 = v39.latitude - dbl_24A330060[[traitCollection verticalSizeClass] == 2];
      }

      else
      {
        v42 = v39.latitude + -0.0013;
      }

      if (fabs(v39.longitude) <= 180.0 && fabs(v42) <= 90.0)
      {
        v43 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:v42 fromDistance:v39.longitude pitch:400.0 heading:{50.0, 0.0}];
        mapView3 = [(FMMapView *)self mapView];
        LODWORD(v45) = 1.0;
        LODWORD(v46) = 1.0;
        LODWORD(v47) = 20.0;
        [mapView3 setCamera:v43 duration:0.0 springMass:v45 springStiffness:v46 springDamping:v47 springVelocity:0.0];
      }
    }
  }
}

- (void)setIsPreviewing:(BOOL)previewing
{
  previewingCopy = previewing;
  self->_isPreviewing = previewing;
  mapGesture = [(FMMapView *)self mapGesture];
  [mapGesture setEnabled:!previewingCopy];
}

- (void)selectAnnotationForPreview:(id)preview
{
  previewCopy = preview;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
  v5 = [(FMMapView *)self viewForAnnotation:previewCopy];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v5];
  [(FMMapView *)self setSelectedAnnotation:previewCopy];
  [(FMMapView *)self updatePreviewLocationForAnnotation:previewCopy];

  v6 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FMMapView_selectAnnotationForPreview___block_invoke;
  block[3] = &unk_278FDB978;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

void __40__FMMapView_selectAnnotationForPreview___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) selectedAnnotationView];
  [v1 setSelected:1 animated:0];
}

- (FMMapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FMAnnotation)selectedAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedAnnotation);

  return WeakRetained;
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)lastVisibleMapRect
{
  x = self->_lastVisibleMapRect.origin.x;
  y = self->_lastVisibleMapRect.origin.y;
  width = self->_lastVisibleMapRect.size.width;
  height = self->_lastVisibleMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (FMAnnotation)lastSelectedAnnotationBeforeTracking
{
  WeakRetained = objc_loadWeakRetained(&self->_lastSelectedAnnotationBeforeTracking);

  return WeakRetained;
}

- (UIEdgeInsets)lastVisibleInsets
{
  top = self->_lastVisibleInsets.top;
  left = self->_lastVisibleInsets.left;
  bottom = self->_lastVisibleInsets.bottom;
  right = self->_lastVisibleInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MKUserLocationView)userLocationView
{
  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);

  return WeakRetained;
}

- (FMAnnotation)currentDeviceAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_currentDeviceAnnotation);

  return WeakRetained;
}

- (MKAnnotation)otherSelectedAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_otherSelectedAnnotation);

  return WeakRetained;
}

- (void)animateMapToPosition:(double)a3 withInsets:(double)a4 attributionInsets:(double)a5 andZoom:(double)a6 .cold.1(void *a1, NSObject *a2, double a3, double a4, double a5, double a6)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = NSStringFromUIEdgeInsets(*&a3);
  [a1 safeAreaInsets];
  v10 = 138412546;
  v11 = v8;
  v12 = 2048;
  v13 = v9;
  _os_log_debug_impl(&dword_24A315000, a2, OS_LOG_TYPE_DEBUG, "FMMapView: animateMapToPosition insets %@ safeArea: %f", &v10, 0x16u);
}

- (void)animateMapToPosition:(uint64_t)a1 withInsets:(NSObject *)a2 attributionInsets:andZoom:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24A315000, a2, OS_LOG_TYPE_DEBUG, "FMMapView: setting 3D camera %@", &v2, 0xCu);
}

@end