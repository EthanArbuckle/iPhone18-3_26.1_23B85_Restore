@interface FMMapView
- ($B5E4F2499D3E0A90C7E8AF059312C337)lastVisibleMapRect;
- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectForAnnotations:(id)a3 shouldIncludeRadius:(BOOL)a4;
- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)a3 andRadius:(double)a4;
- ($B5E4F2499D3E0A90C7E8AF059312C337)normalizeMapRect:(id)a3 toZoomScale:(double)a4;
- ($B5E4F2499D3E0A90C7E8AF059312C337)repositionOnAnnotation:(id)a3 withZoom:(BOOL)a4;
- (BOOL)isCurrentlyRotated;
- (BOOL)isOverlayOnMap:(id)a3;
- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)a3;
- (FMAnnotation)currentDeviceAnnotation;
- (FMAnnotation)lastSelectedAnnotationBeforeTracking;
- (FMAnnotation)selectedAnnotation;
- (FMMapView)init;
- (FMMapView)initWithCoder:(id)a3;
- (FMMapViewDelegate)delegate;
- (MKAnnotation)otherSelectedAnnotation;
- (MKUserLocationView)userLocationView;
- (UIEdgeInsets)lastVisibleInsets;
- (double)distanceBetweenOrigin:(CLLocationCoordinate2D)a3 andDestination:(CLLocationCoordinate2D)a4;
- (float)dampingForAltitude:(double)a3 andDistance:(double)a4;
- (id)annotationsSortedByDistance;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)nearbyAnnotations;
- (id)viewForAnnotation:(id)a3;
- (int64_t)userTrackingMode;
- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5;
- (void)addAnnotation:(id)a3;
- (void)addAnnotations:(id)a3;
- (void)addOverlay:(id)a3;
- (void)addOverlays:(id)a3;
- (void)animateMapToPosition:(double)a3 withInsets:(double)a4 attributionInsets:(double)a5 andZoom:(double)a6;
- (void)animateRenderingModeChange;
- (void)animateToAllAnnotation;
- (void)calloutButtonTapped:(id)a3;
- (void)clearUserLocation;
- (void)createMKMapView;
- (void)createUserTrackingButton;
- (void)dealloc;
- (void)depthSortAnnotations;
- (void)deselectAllAnnotations;
- (void)deselectAnnotationView:(id)a3;
- (void)deselectAnnotationViewIfNeeded:(id)a3;
- (void)didDoubleSelectAnnotation:(id)a3;
- (void)didMoveToSuperview;
- (void)didSelectAnnotation:(id)a3;
- (void)displayAllAnnotations;
- (void)doubleSelectAnnotation:(id)a3;
- (void)fingerOffAnnotation:(id)a3;
- (void)fingerOnAnnotation:(id)a3;
- (void)flashMapInset:(UIEdgeInsets)a3;
- (void)initialize;
- (void)invalidateLayoutTimer;
- (void)layoutMapView;
- (void)layoutSubviews;
- (void)mapSwiped:(id)a3 withPercent:(double)a4;
- (void)mapSwipedBegin:(id)a3;
- (void)mapSwipedEnd:(id)a3 withPercent:(double)a4;
- (void)mapTapped:(id)a3;
- (void)mapTouchEnded:(id)a3;
- (void)mapTouchMoved:(id)a3;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)moveCenterByOffset:(CGPoint)a3 from:(CLLocationCoordinate2D)a4;
- (void)recenterVisibleAnnotations;
- (void)refreshCameraPosition;
- (void)refreshOverlayForAnnotation:(id)a3 andCoordinate:(CLLocationCoordinate2D)a4;
- (void)removeAllOverlaysAndCurrentAnnotationOverlay:(id)a3;
- (void)removeAnnotation:(id)a3;
- (void)removeAnnotations:(id)a3;
- (void)removeOverlay:(id)a3;
- (void)removeOverlays:(id)a3;
- (void)removeUserAnnotationIfNeeded:(id)a3;
- (void)repositionOnMapRectIfNeeded:(id)a3;
- (void)repositionToMapRect:(id)a3 withZoom:(BOOL)a4;
- (void)selectAnnotation:(id)a3;
- (void)selectAnnotationForPreview:(id)a3;
- (void)selectOrDeselectAnnotationView:(id)a3;
- (void)setIsPreviewing:(BOOL)a3;
- (void)setIsSwipeGestureEnabled:(BOOL)a3;
- (void)setRenderingMode:(int64_t)a3;
- (void)setUserLocationTintColor:(id)a3;
- (void)setupCamera;
- (void)setupConstraints;
- (void)setupGestures;
- (void)slideAnnotationIntoViewIfNeeded:(id)a3;
- (void)synchronize;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAccordingToUserTrackingMode;
- (void)updateAnnotationPositionAfterPreview:(id)a3;
- (void)updateAnnotationStyle:(id)a3;
- (void)updateCameraPositionForAnnotation:(id)a3;
- (void)updateCameraPositionForMapRect:(id)a3 withZoom:(BOOL)a4;
- (void)updateCameraPositionForNoLocation;
- (void)updateCameraPositionWithLocation:(CLLocationCoordinate2D)a3 andAltitude:(double)a4;
- (void)updateOverlayForAnnotation:(id)a3 withForce:(BOOL)a4;
- (void)updatePreviewLocationForAnnotation:(id)a3;
- (void)updateUserTrackingButtonState;
- (void)userLocationTapped:(id)a3;
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

- (FMMapView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FMMapView;
  v3 = [(FMMapView *)&v6 initWithCoder:a3];
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
  v3 = [(FMMapView *)self superview];

  if (v3)
  {
    [(FMMapView *)self setupConstraints];
    [(FMMapView *)self setupGestures];
    v4 = [(FMMapView *)self mapView];
    [v4 setDelegate:self];

    v5 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_synchronize];
    [(FMMapView *)self setDisplayLink:v5];

    v6 = [(FMMapView *)self displayLink];
    v7 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v6 addToRunLoop:v7 forMode:*MEMORY[0x277CBE738]];
  }

  else
  {
    v8 = [(FMMapView *)self displayLink];

    if (v8)
    {
      v9 = [(FMMapView *)self displayLink];
      [v9 invalidate];

      [(FMMapView *)self setDisplayLink:0];
      [(FMMapView *)self setUserTrackingButton:0];
    }

    [(FMMapView *)self invalidateLayoutTimer];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self];
  }
}

- (void)dealloc
{
  v3 = [(FMMapView *)self displayLink];

  if (v3)
  {
    v4 = [(FMMapView *)self displayLink];
    [v4 invalidate];

    [(FMMapView *)self setDisplayLink:0];
    [(FMMapView *)self setUserTrackingButton:0];
  }

  [(FMMapView *)self invalidateLayoutTimer];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = FMMapView;
  [(FMMapView *)&v6 dealloc];
}

- (void)initialize
{
  v3 = *MEMORY[0x277CE4250];
  v4 = [MEMORY[0x277CD4E48] sharedLocationManager];
  [v4 setDesiredAccuracy:v3];

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
  v7 = [MEMORY[0x277CBFC10] sharedManager];
  v10 = [v7 location];

  if (v10)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD4F58]);
    v9 = [v10 copy];
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
  v4 = [MEMORY[0x277CD4F10] filterIncludingAllCategories];
  [(MKMapView *)v3 setPointOfInterestFilter:v4];

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
  v3 = [(FMMapView *)self delegate];
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 objectForKey:@"FMMapViewLastVisibleRect"];
  v6 = [v4 objectForKey:@"FMMapViewLastVisibleInsets"];
  if (v5)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __24__FMMapView_setupCamera__block_invoke;
    v10 = &unk_278FDB8E0;
    v11 = v5;
    v12 = v6;
    v13 = self;
    v14 = v3;
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
  v3 = [(FMMapView *)self mapView];
  v8[0] = v3;
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
  v3 = [(FMMapView *)self mapView];
  [v3 addGestureRecognizer:v4];
}

- (void)layoutSubviews
{
  v3 = [(FMMapView *)self mapView];
  if ([v3 mapType])
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
  v5 = [(FMMapView *)self selectedAnnotation];
  v3 = [(FMMapView *)self mapView];
  if ([v3 userTrackingMode] == 2 || -[FMMapView isPreventingMapUpdates](self, "isPreventingMapUpdates") || -[FMMapView isMapMoved](self, "isMapMoved"))
  {
  }

  else
  {
    v4 = [(FMMapView *)self isMapPositioningDisabled];

    if (!v4)
    {
      if (v5)
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

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = FMMapView;
  [(FMMapView *)&v5 traitCollectionDidChange:a3];
  v4 = [(FMMapView *)self selectedAnnotation];

  if (!v4)
  {
    [(FMMapView *)self setIsAllAnnotationsShown:1];
  }
}

- (void)setUserLocationTintColor:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  v6 = [(FMMapView *)self mapView];
  v7 = [v6 userLocation];
  v8 = [v5 viewForAnnotation:v7];
  [v8 setTintColor:v4];

  userLocationTintColor = self->_userLocationTintColor;
  self->_userLocationTintColor = v4;
}

- (void)addAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 addAnnotation:v4];
}

- (void)addAnnotations:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 addAnnotations:v4];
}

- (void)removeAnnotation:(id)a3
{
  v4 = a3;
  [(FMMapView *)self removeUserAnnotationIfNeeded:v4];
  v5 = [(FMMapView *)self mapView];
  [v5 removeAnnotation:v4];
}

- (void)removeAnnotations:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(FMMapView *)self removeUserAnnotationIfNeeded:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(FMMapView *)self mapView];
  [v9 removeAnnotations:v4];
}

- (id)viewForAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  v6 = [v5 viewForAnnotation:v4];

  return v6;
}

- (void)deselectAllAnnotations
{
  v3 = [(FMMapView *)self mapView];
  v4 = [(FMMapView *)self mapView];
  v5 = [v4 overlays];
  [v3 removeOverlays:v5];

  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
}

- (void)selectAnnotation:(id)a3
{
  v16 = a3;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
  v4 = [(FMMapView *)self delegate];
  v5 = [(FMMapView *)self viewForAnnotation:v16];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v5];
  [(FMMapView *)self setSelectedAnnotation:v16];
  v6 = [(FMMapView *)self selectedAnnotationView];
  [v6 setSelected:1 animated:1 delay:0.400000006];

  [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
  v7 = [(FMMapView *)self mapView];
  v8 = [v7 selectedAnnotations];
  v9 = [v8 firstObject];
  v10 = [(FMMapView *)self userLocation];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [(FMMapView *)self mapView];
    v13 = [(FMMapView *)self mapView];
    v14 = [v13 userLocation];
    [v12 deselectAnnotation:v14 animated:1];
  }

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 didSelectAnnotation:v16];
  }

  if (v16)
  {
    [(FMMapView *)self depthSortAnnotations];
  }

  [(FMMapView *)self setIsMapAnimating:0];
  [(FMMapView *)self setLastVisibleMapRect:*MEMORY[0x277CD4BB0], *(MEMORY[0x277CD4BB0] + 8), *(MEMORY[0x277CD4BB0] + 16), *(MEMORY[0x277CD4BB0] + 24)];
  v15 = [(FMMapView *)self layoutTimer];
  [v15 invalidate];

  [(FMMapView *)self setLayoutTimer:0];
  [(FMMapView *)self repositionOnAnnotation:v16 withZoom:1];
}

- (void)invalidateLayoutTimer
{
  v3 = [(FMMapView *)self layoutTimer];

  if (v3)
  {
    v4 = [(FMMapView *)self layoutTimer];
    [v4 invalidate];

    [(FMMapView *)self setLayoutTimer:0];
  }
}

- (void)doubleSelectAnnotation:(id)a3
{
  v5 = a3;
  [(FMMapView *)self invalidateLayoutTimer];
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  v4 = [(FMMapView *)self selectedAnnotationView];
  [v4 setSelected:0 animated:1];

  [(FMMapView *)self didDoubleSelectAnnotation:v5];
}

- (void)removeUserAnnotationIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(FMMapView *)self userLocationView];
  v5 = [(FMMapView *)self currentDeviceAnnotation];
  if ([v6 isEqual:v4])
  {
    [(FMMapView *)self setUserLocationView:0];
  }

  else if ([v6 isEqual:v5])
  {
    [(FMMapView *)self setCurrentDeviceAnnotation:0];
  }
}

- (void)deselectAnnotationViewIfNeeded:(id)a3
{
  v6 = a3;
  v4 = [(FMMapView *)self selectedAnnotationView];

  v5 = v6;
  if (v4 != v6)
  {
    [(FMMapView *)self deselectAnnotationView:v6];
    v5 = v6;
  }
}

- (void)deselectAnnotationView:(id)a3
{
  v9 = a3;
  v4 = [(FMMapView *)self delegate];
  v5 = objc_opt_new();
  v6 = [(FMMapView *)self selectedAnnotation];
  [v6 setOverlay:v5];

  [(FMMapView *)self setCurrentSelectedState:0];
  v7 = [(FMMapView *)self selectedAnnotationView];
  [v7 setSelected:0 animated:1];

  [(FMMapView *)self setSelectedAnnotationView:0];
  [(FMMapView *)self setSelectedAnnotation:0];
  v8 = [v9 annotation];
  [(FMMapView *)self updateOverlayForAnnotation:v8 withForce:1];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 didDeselectAnnotationView:v9];
  }
}

- (void)didSelectAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self delegate];
  v6 = [(FMMapView *)self isAllAnnotationsShown];
  v7 = [(FMMapView *)self viewForAnnotation:v4];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v7];
  [(FMMapView *)self setSelectedAnnotation:v4];
  v8 = [(FMMapView *)self selectedAnnotationView];
  v9 = v8;
  if (v6)
  {
    [v8 setSelected:1 animated:1 delay:0.400000006];
  }

  else
  {
    [v8 setSelected:1 animated:1];
  }

  [(FMMapView *)self setCanSelectUserAnnotation:0];
  v10 = [(FMMapView *)self userSelectionTimer];

  if (v10)
  {
    v11 = [(FMMapView *)self userSelectionTimer];
    [v11 invalidate];

    [(FMMapView *)self setUserSelectionTimer:0];
  }

  v12 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateCanSelectUserAnnotation selector:0 userInfo:0 repeats:0.5];
  [(FMMapView *)self setUserSelectionTimer:v12];

  v13 = [v7 annotation];
  [(FMMapView *)self updateOverlayForAnnotation:v13 withForce:1];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 didSelectAnnotation:v4];
  }

  if ([(FMMapView *)self showUserLocationCallout])
  {
    v14 = [(FMMapView *)self mapView];
    v15 = [(FMMapView *)self mapView];
    v16 = [v15 userLocation];
    [v14 deselectAnnotation:v16 animated:1];
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
    [(FMMapView *)self updateCameraPositionForAnnotation:v4];
  }

  else if (v6)
  {
    v17 = dispatch_time(0, 400000000);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __33__FMMapView_didSelectAnnotation___block_invoke;
    v21 = &unk_278FDB908;
    v22 = self;
    v23 = v4;
    dispatch_after(v17, MEMORY[0x277D85CD0], &v18);
  }

  else
  {
    [(FMMapView *)self slideAnnotationIntoViewIfNeeded:v4];
  }

  [(FMMapView *)self depthSortAnnotations:v18];
}

- (void)didDoubleSelectAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self delegate];
  v6 = [(FMMapView *)self viewForAnnotation:v4];
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
  [(FMMapView *)self setCurrentSelectedState:2];
  [(FMMapView *)self setSelectedAnnotationView:v6];
  [(FMMapView *)self setSelectedAnnotation:v4];
  [v6 setSelected:1 animated:1];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 didDoubleSelectAnnotation:v4];
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
    [(FMMapView *)self repositionOnAnnotation:v4 withZoom:1];
  }
}

- (void)selectOrDeselectAnnotationView:(id)a3
{
  v7 = a3;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:?];
  v4 = [(FMMapView *)self currentSelectedState];
  switch(v4)
  {
    case 2:
      v6 = [v7 annotation];
      [(FMMapView *)self didSelectAnnotation:v6];
      goto LABEL_8;
    case 1:
      v6 = [v7 annotation];
      [(FMMapView *)self didDoubleSelectAnnotation:v6];
LABEL_8:

      break;
    case 0:
      v5 = [v7 annotation];
      [(FMMapView *)self didSelectAnnotation:v5];

      if (![(FMMapView *)self renderingMode])
      {
        [(FMMapView *)self setIsMapPositioningDisabled:1];
      }

      break;
  }

  MEMORY[0x2821F96F8]();
}

- (void)addOverlay:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 addOverlay:v4];
}

- (void)addOverlays:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 addOverlays:v4];
}

- (void)removeOverlay:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 removeOverlay:v4];
}

- (void)removeOverlays:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  [v5 removeOverlays:v4];
}

- (void)updateOverlayForAnnotation:(id)a3 withForce:(BOOL)a4
{
  v4 = a4;
  v41 = a3;
  if (![v41 hasKnownLocation] || (objc_msgSend(v41, "isThisDevice") & 1) != 0 || (-[FMMapView selectedAnnotation](self, "selectedAnnotation"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v41))
  {
    [(FMMapView *)self removeAllOverlaysAndCurrentAnnotationOverlay:v41];
    goto LABEL_5;
  }

  v7 = [(FMMapView *)self mapView];
  [v7 _zoomLevel];
  v9 = v8;

  [v41 coordinate];
  v11 = v10;
  v13 = v12;
  v14 = [(FMMapView *)self viewForAnnotation:v41];
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
      v18 = [v41 overlay];
      v19 = [(FMMapView *)self isOverlayOnMap:v18];

      if (v19 && !v4)
      {
        goto LABEL_32;
      }
    }

    v20 = [v41 overlay];
    [v20 coordinate];
    if (vabdd_f64(v21, v11) <= v17)
    {
      v22 = [v41 overlay];
      [v22 coordinate];
      if (vabdd_f64(v23, v13) <= v17)
      {
        [v41 horizontalAccuracy];
        v25 = v24;
        v26 = [v41 overlay];
        [v26 radius];
        if (v25 == v27 && !v4)
        {
          v28 = [(FMMapView *)self shouldDisplayOverlay];

          if (v28)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }
      }
    }

LABEL_30:
    [(FMMapView *)self setShouldDisplayOverlay:1];
    [v41 coordinate];
    v33 = v41;
    v11 = v34;
    v13 = v35;
    goto LABEL_31;
  }

  v29 = [v41 overlay];
  [v29 coordinate];
  if (vabdd_f64(v30, v11) > v17)
  {
    goto LABEL_25;
  }

  v31 = [v41 overlay];
  [v31 coordinate];
  if (vabdd_f64(v32, v13) > v17)
  {

LABEL_25:
    goto LABEL_26;
  }

  [v41 horizontalAccuracy];
  v37 = v36;
  v38 = [v41 overlay];
  [v38 radius];
  v40 = v39;

  if (v37 == v40)
  {
    goto LABEL_13;
  }

LABEL_26:
  [(FMMapView *)self setShouldDisplayOverlay:0];
  v33 = v41;
LABEL_31:
  [(FMMapView *)self refreshOverlayForAnnotation:v33 andCoordinate:v11, v13];
LABEL_32:

LABEL_5:
}

- (void)refreshOverlayForAnnotation:(id)a3 andCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  [(FMMapView *)self removeAllOverlaysAndCurrentAnnotationOverlay:v7];
  [v7 horizontalAccuracy];
  v9 = [(MKCircle *)FMAccuracyOverlay circleWithCenterCoordinate:latitude radius:longitude, v8];
  [v7 setOverlay:v9];

  v10 = [v7 overlay];
  [v10 setParentAnnotation:v7];

  v11 = [(FMMapView *)self mapView];
  v12 = [v7 overlay];
  [v11 addOverlay:v12];

  v14 = [(FMMapView *)self accuracyOverlays];
  v13 = [v7 overlay];

  [v14 addObject:v13];
}

- (void)removeAllOverlaysAndCurrentAnnotationOverlay:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self mapView];
  v6 = [v4 overlay];

  [v5 removeOverlay:v6];
  v7 = [(FMMapView *)self mapView];
  v8 = [(FMMapView *)self accuracyOverlays];
  [v7 removeOverlays:v8];

  v9 = [(FMMapView *)self accuracyOverlays];
  [v9 removeAllObjects];
}

- (BOOL)isOverlayOnMap:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(FMMapView *)self mapView];
  v6 = [v5 overlays];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqual:v4])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)updateCameraPositionWithLocation:(CLLocationCoordinate2D)a3 andAltitude:(double)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  if (![(FMMapView *)self isUserSwiping])
  {
    v9 = [(FMMapView *)self mapView];
    v8 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:latitude fromEyeCoordinate:longitude eyeAltitude:{latitude, longitude, a4}];
    [v9 setCamera:v8 animated:0];
  }
}

- (void)updateCameraPositionForAnnotation:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMMapView *)self selectedAnnotation];
  v6 = [(FMMapView *)self currentDeviceAnnotation];
  v7 = [(FMMapView *)self otherSelectedAnnotation];
  v8 = [(FMMapView *)self userLocation];
  if (![(FMMapView *)self isUserSwiping]&& [(FMMapView *)self currentTrackingMode]!= 2 && ![(FMMapView *)self isPreventingMapUpdates])
  {
    if ([v4 isEqual:v5] && !-[FMMapView isMapAnimating](self, "isMapAnimating"))
    {
      if (![(FMMapView *)self isMapPositioningDisabled]&& [(FMMapView *)self currentTrackingMode]!= 2)
      {
        if ([(FMMapView *)self currentTrackingMode]|| [(FMMapView *)self isAllAnnotationsShown])
        {
          if (v5)
          {
            if (v8)
            {
              if (([v6 isEqual:v5] & 1) == 0)
              {
                v38[0] = v5;
                v38[1] = v8;
                v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
                [(FMMapView *)self mapRectForAnnotations:v20 shouldIncludeRadius:1];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;

                if (v22 != *MEMORY[0x277CD4BB0] || v24 != *(MEMORY[0x277CD4BB0] + 8))
                {
                  v29 = [(FMMapView *)self mapView];
                  [v29 bounds];
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

        else if (-[FMMapView currentSelectedState](self, "currentSelectedState") == 2 || -[FMMapView currentSelectedState](self, "currentSelectedState") == 1 || [v4 isEqual:v6])
        {
          [(FMMapView *)self repositionOnAnnotation:v5 withZoom:1];
        }
      }

      [(FMMapView *)self updateOverlayForAnnotation:v4 withForce:1];
    }

    else if (![(FMMapView *)self isAllAnnotationsShown]|| [(FMMapView *)self currentSelectedState]|| v7)
    {
      if ([(FMMapView *)self userTrackingMode]== 1 && v8 && !v5 && ![(FMMapView *)self currentSelectedState]&& !v7)
      {
        v18 = [(FMMapView *)self nearbyAnnotations];
        v19 = [v18 mutableCopy];

        [v19 addObject:v8];
        [(FMMapView *)self mapRectForAnnotations:v19 shouldIncludeRadius:1];
        [(FMMapView *)self repositionOnMapRectIfNeeded:?];
      }
    }

    else
    {
      v9 = [(FMMapView *)self nearbyAnnotations];
      [(FMMapView *)self mapRectForAnnotations:v9 shouldIncludeRadius:1];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [(FMMapView *)self repositionOnMapRectIfNeeded:v11, v13, v15, v17];
    }
  }
}

- (void)repositionOnMapRectIfNeeded:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
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
    v3 = [(FMMapView *)self selectedAnnotation];
    [(FMMapView *)self setIsGoingBackToAllAnnotation:v3 != 0];

    [(FMMapView *)self deselectAllAnnotations];
    [(FMMapView *)self setSelectedAnnotation:0];
    [(FMMapView *)self setSelectedAnnotationView:0];
    [(FMMapView *)self setIsAllAnnotationsShown:1];
    [(FMMapView *)self setIsMapPositioningDisabled:0];
    v4 = [(FMMapView *)self layoutTimer];
    [v4 invalidate];

    [(FMMapView *)self setLayoutTimer:0];
    [(FMMapView *)self animateToAllAnnotation];

    [(FMMapView *)self setIsGoingBackToAllAnnotation:0];
  }
}

- (void)animateToAllAnnotation
{
  [(FMMapView *)self setRenderingMode:0];
  v3 = [(FMMapView *)self nearbyAnnotations];
  [(FMMapView *)self mapRectForAnnotations:v3 shouldIncludeRadius:1];
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

- (void)setRenderingMode:(int64_t)a3
{
  if (self->_renderingMode != a3)
  {
    self->_renderingMode = a3;
    if (a3 == 1)
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
  v3 = [(FMMapView *)self selectedAnnotation];
  [(FMMapView *)self updateCameraPositionForAnnotation:v3];
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

- (void)updateCameraPositionForMapRect:(id)a3 withZoom:(BOOL)a4
{
  v4 = a4;
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v44 = *MEMORY[0x277D85DE8];
  if (![(FMMapView *)self isMapPositioningDisabled]&& ![(FMMapView *)self isUserSwiping])
  {
    v10 = [(FMMapView *)self delegate];
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 edgeInsetsForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
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
        v43 = [(FMMapView *)self currentSelectedState];
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
      [v10 attributionInsetsForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
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
        [(FMMapView *)self animateMapToPosition:v4 withInsets:v8 attributionInsets:v7 andZoom:var0, var1, v12, v39, v37, v38, v36, v21, *&v23, v25];
      }
    }
  }
}

- (void)animateMapToPosition:(double)a3 withInsets:(double)a4 attributionInsets:(double)a5 andZoom:(double)a6
{
  *&v172[9] = *MEMORY[0x277D85DE8];
  v28 = [a1 selectedAnnotation];
  v29 = [a1 mapView];
  [v29 visibleMapRect];
  v31 = v30;

  v166 = a5;
  v167 = a4;
  v165 = a3;
  v32 = a3 + a5 * 0.5;
  v33 = [a1 mapView];
  [v33 visibleMapRect];
  v36 = v35 + v34 * 0.5;
  v37 = [a1 mapView];
  [v37 visibleMapRect];
  v40 = v39 + v38 * 0.5;

  v173.x = a2 + a4 * 0.5;
  v173.y = v32;
  v175.x = v36;
  v175.y = v40;
  v41 = MKMetersBetweenMapPoints(v173, v175);
  v42 = LogCategory_Unspecified();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [(FMMapView *)a1 animateMapToPosition:v42 withInsets:a6 attributionInsets:a7 andZoom:a8, a9];
  }

  [a1 safeAreaInsets];
  v44 = v43;
  [a1 safeAreaInsets];
  v46 = v45;
  v47 = [a1 isAllAnnotationsShown];
  v48 = [a1 isAllAnnotationsShown];
  v49 = [a1 mapView];
  [v49 _zoomLevel];
  if (v41 <= 600000.0 / v50)
  {
    v52 = fmin(vabdd_f64(v31, v167) / 10000.0, 0.5);
    if (v52 < 0.4)
    {
      v53 = 1;
    }

    else
    {
      v53 = v47;
    }

    if (v53)
    {
      v52 = 0.4;
    }

    if ((v48 & (v28 != 0)) != 0)
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

    if (![a1 isAllAnnotationsShown] || v28 || objc_msgSend(a1, "isGoingBackToAllAnnotation"))
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
    v55 = [a1 isMapAnimating];
    v56 = [a1 layoutTimer];
    *buf = 67109888;
    *v170 = v55;
    *&v170[4] = 1024;
    *&v170[6] = v56 != 0;
    LOWORD(v171) = 1024;
    *(&v171 + 2) = [a1 isPreventingMapUpdates];
    HIWORD(v171) = 2048;
    *v172 = v51;
    _os_log_impl(&dword_24A315000, v54, OS_LOG_TYPE_DEFAULT, "animateMapToPosition isMapAnimating(%d) layoutTimer(%d) isPreventingMapUpdates(%d) duration(%f)", buf, 0x1Eu);
  }

  if (([a1 isMapAnimating] & 1) == 0)
  {
    v57 = [a1 layoutTimer];
    if (!v57 && ![a1 isPreventingMapUpdates])
    {
      goto LABEL_27;
    }
  }

  if (v51 == 0.0)
  {
LABEL_27:
    v160 = v51;
    v158 = a6;
    v159 = a8;
    v163 = a6 + v44;
    v164 = a8 + v46;
    [a1 setIsMapAnimating:{1, a19, a20}];
    [a1 setIsMapMoved:0];
    v58 = [a1 renderingMode];
    v59 = [a1 mapView];
    v60 = v59;
    if (v58)
    {
      [v59 _setEdgeInsets:{v163, a7, v164, a9}];
      v61 = v166;
      v62 = v167;
      v63 = a2;
      v64 = v165;
    }

    else
    {
      [v59 mapRectThatFits:a2 edgePadding:{v165, v167, v166, v163, a7, v164, a9}];
      v63 = v65;
      v64 = v66;
      v62 = v67;
      v61 = v68;

      v60 = [a1 mapView];
      [v60 _setEdgeInsets:{38.0, 38.0, 38.0, 38.0}];
    }

    v69 = [a1 mapView];
    [v69 _setAttributionInsets:{a17, a18, v156, v157}];

    v70 = [a1 mapView];
    [v70 bounds];
    v72 = v71 - (a7 + a9);
    v74 = v73 - (v163 + v164);

    v75 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v63 forViewSize:{v64, v62, v61, v72, v74}];
    v76 = [a1 mapView];
    v77 = [v76 camera];
    [v77 altitude];
    v79 = v78;
    [v75 altitude];
    v81 = vabdd_f64(v79, v80);
    v82 = [a1 mapView];
    v83 = [v82 camera];
    [v83 centerCoordinate];
    v85 = v84;
    v87 = v86;
    [v75 centerCoordinate];
    [a1 distanceBetweenOrigin:v85 andDestination:{v87, v88, v89}];
    [a1 dampingForAltitude:v81 andDistance:v90];
    v92 = v91;

    v93 = LogCategory_Unspecified();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v174.width = v72;
      v174.height = v74;
      v152 = NSStringFromCGSize(v174);
      v153 = [a1 mapView];
      [v153 bounds];
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

    v94 = [a1 renderingMode];
    [v75 centerCoordinate];
    v97 = fabs(v96) <= 180.0;
    if (fabs(v95) > 90.0)
    {
      v97 = 0;
    }

    if (v94)
    {
      if (v97)
      {
        v98 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:v95 fromDistance:v96 pitch:400.0 heading:{50.0, 0.0}];

        v99 = [a1 mapView];
        v100 = [v99 camera];
        [v100 altitude];
        v102 = v101;
        [v98 altitude];
        v104 = vabdd_f64(v102, v103);
        v105 = [a1 mapView];
        v106 = [v105 camera];
        [v106 centerCoordinate];
        v108 = v107;
        v110 = v109;
        [v98 centerCoordinate];
        [a1 distanceBetweenOrigin:v108 andDestination:{v110, v111, v112}];
        [a1 dampingForAltitude:v104 andDistance:v113];
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

        v120 = [a1 mapView];
        v122 = v120;
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
        v127 = [a1 cameraBefore3DRendering];

        v120 = [a1 mapView];
        v122 = v120;
        if (v127)
        {
          v128 = [v120 camera];
          [v128 altitude];
          v130 = v129;
          v131 = [a1 cameraBefore3DRendering];
          [v131 altitude];
          v133 = vabdd_f64(v130, v132);
          v134 = [a1 mapView];
          v135 = [v134 camera];
          [v135 centerCoordinate];
          v137 = v136;
          v139 = v138;
          v140 = [a1 cameraBefore3DRendering];
          [v140 centerCoordinate];
          [a1 distanceBetweenOrigin:v137 andDestination:{v139, v141, v142}];
          [a1 dampingForAltitude:v133 andDistance:v143];
          LODWORD(v133) = v144;

          v145 = [a1 cameraBefore3DRendering];
          [v145 setPitch:0.0];

          v146 = [a1 mapView];
          v147 = [a1 cameraBefore3DRendering];
          LODWORD(v148) = 1128792064;
          LODWORD(v149) = 1.0;
          LODWORD(v150) = LODWORD(v133);
          [v146 setCamera:v147 duration:v160 springMass:v149 springStiffness:v148 springDamping:v150 springVelocity:0.0];

          [a1 setCameraBefore3DRendering:0];
          goto LABEL_47;
        }

        LODWORD(v123) = 1128792064;
        LODWORD(v124) = 1.0;
        v125 = v75;
        v126 = v160;
LABEL_42:
        LODWORD(v121) = v92;
        [v120 setCamera:v125 duration:v126 springMass:v124 springStiffness:v123 springDamping:v121 springVelocity:0.0];

LABEL_47:
        [a1 setLastVisibleMapRect:{a2, v165, v167, v166}];
        [a1 setLastVisibleInsets:{v158, v117, v159, v118}];
        v151 = dispatch_time(0, (v160 * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__FMMapView_animateMapToPosition_withInsets_attributionInsets_andZoom___block_invoke;
        block[3] = &unk_278FDB950;
        block[4] = a1;
        *&block[5] = a2;
        *&block[6] = v165;
        *&block[7] = v167;
        *&block[8] = v166;
        *&block[9] = v158;
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

- ($B5E4F2499D3E0A90C7E8AF059312C337)repositionOnAnnotation:(id)a3 withZoom:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = *MEMORY[0x277CD4BB0];
  v8 = *(MEMORY[0x277CD4BB0] + 8);
  v9 = *(MEMORY[0x277CD4BB0] + 16);
  v10 = *(MEMORY[0x277CD4BB0] + 24);
  v11 = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = v8;
    v13 = v7;
    if (objc_opt_respondsToSelector())
    {
      [v11 mapPositionForAnnotation:v6];
      v13 = v14;
      v12 = v15;
      v9 = v16;
      v10 = v17;
    }

    if (v13 == v7 && v12 == v8)
    {
      v19 = [(FMMapView *)self userLocation];
      [v6 coordinate];
      v21 = v20;
      v23 = v22;
      if (v19 && [v6 isThisDevice])
      {
        [v19 coordinate];
        v21 = v24;
        v23 = v25;
      }

      [v6 horizontalAccuracy];
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
      [(FMMapView *)self repositionToMapRect:v4 withZoom:v13, v12, v9, v10];
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

- (void)repositionToMapRect:(id)a3 withZoom:(BOOL)a4
{
  var1 = a3.var0.var1;
  var0 = a3.var0.var0;
  if (a3.var0.var0 != *MEMORY[0x277CD4BB0] || a3.var0.var1 != *(MEMORY[0x277CD4BB0] + 8))
  {
    v7 = a4;
    v8 = a3.var1.var1;
    v9 = a3.var1.var0;
    v11 = [(FMMapView *)self mapView];
    [v11 bounds];
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

    [(FMMapView *)self updateCameraPositionForMapRect:v7 withZoom:var0, var1, v9, v8];
  }
}

- (void)recenterVisibleAnnotations
{
  v3 = [(FMMapView *)self nearbyAnnotations];
  [(FMMapView *)self mapRectForAnnotations:v3 shouldIncludeRadius:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (v5 != *MEMORY[0x277CD4BB0] || v7 != *(MEMORY[0x277CD4BB0] + 8))
  {
    v13 = [(FMMapView *)self mapView];
    [v13 bounds];
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

- (void)slideAnnotationIntoViewIfNeeded:(id)a3
{
  v27 = a3;
  v4 = [(FMMapView *)self delegate];
  v5 = [(FMMapView *)self mapView];
  [v27 coordinate];
  v7 = v6;
  v9 = v8;
  v10 = [(FMMapView *)self mapView];
  [v5 convertCoordinate:v10 toPointToView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  if (objc_opt_respondsToSelector())
  {
    [v4 annotationOnScreenTopThresholdForState:{-[FMMapView currentSelectedState](self, "currentSelectedState")}];
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

  v17 = [(FMMapView *)self mapView];
  [v17 frame];
  v19 = v18 + -82.0;

  if (v16 <= 0.0 && v12 <= v19)
  {
    goto LABEL_14;
  }

  v21 = 0.0;
  v22 = v27;
  if (v12 > v19)
  {
    v23 = [(FMMapView *)self mapView];
    [v23 frame];
    v21 = v24 + -82.0 - v12;

LABEL_12:
    v22 = v27;
  }

  [v22 coordinate];
  [(FMMapView *)self moveCenterByOffset:v21 from:fmax(v16, 0.0), v25, v26];
LABEL_14:
}

- (void)moveCenterByOffset:(CGPoint)a3 from:(CLLocationCoordinate2D)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(FMMapView *)self mapView:a3.x];
  v8 = [(FMMapView *)self mapView];
  [v8 centerCoordinate];
  v10 = v9;
  v12 = v11;
  v13 = [(FMMapView *)self mapView];
  [v7 convertCoordinate:v13 toPointToView:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = [(FMMapView *)self mapView];
  v19 = [(FMMapView *)self mapView];
  [v18 convertPoint:v19 toCoordinateFromView:{v15 - x, v17 - y}];
  v21 = v20;
  v23 = v22;

  v26.latitude = v21;
  v26.longitude = v23;
  if (CLLocationCoordinate2DIsValid(v26))
  {
    v24 = [(FMMapView *)self mapView];
    [v24 setCenterCoordinate:1 animated:{v21, v23}];
  }
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectForAnnotations:(id)a3 shouldIncludeRadius:(BOOL)a4
{
  v4 = a4;
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  x = *MEMORY[0x277CD4BB0];
  y = *(MEMORY[0x277CD4BB0] + 8);
  width = *(MEMORY[0x277CD4BB0] + 16);
  height = *(MEMORY[0x277CD4BB0] + 24);
  v56 = [(FMMapView *)self selectedAnnotation];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (!v12)
  {

    goto LABEL_29;
  }

  v13 = v12;
  v54 = !v4;
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

        v17 = [(FMMapView *)self otherSelectedAnnotation];
        if ([v16 isEqual:v17])
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
          if ([v16 isEqual:v56])
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

        v38 = [v16 hasKnownLocation];

        if (v38)
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

    [v56 coordinate];
    v42 = v41;
    v44 = v43;
    [v56 horizontalAccuracy];
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

- ($B5E4F2499D3E0A90C7E8AF059312C337)normalizeMapRect:(id)a3 toZoomScale:(double)a4
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v7 = a3.var0.var1;
  v8 = a3.var0.var0;
  v9 = [(FMMapView *)self mapView];
  [v9 bounds];
  v11 = var0 - v10 / a4;

  v12 = v8;
  v13 = v7;
  v14 = var0;
  v15 = var1;

  return MKMapRectInset(*&v12, v11 * 0.5, v11 * 0.5);
}

- ($B5E4F2499D3E0A90C7E8AF059312C337)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)a3 andRadius:(double)a4
{
  MEMORY[0x2821236A8](self, a2, a3, *&a3.longitude, a4);
  result.var1.var1 = v7;
  result.var1.var0 = v6;
  result.var0.var1 = v5;
  result.var0.var0 = v4;
  return result;
}

- (void)flashMapInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(FMMapView *)self mapView];
  [v8 frame];
  v10 = left + v9;
  v12 = top + v11;
  v14 = v13 - (left + right);
  v16 = v15 - (top + bottom);

  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v10, v12, v14, v16}];
  [v17 setUserInteractionEnabled:0];
  v18 = [MEMORY[0x277D75348] greenColor];
  v19 = [v18 colorWithAlphaComponent:0.5];
  [v17 setDebugHighlight:v19];

  v20 = [MEMORY[0x277D75348] redColor];
  v21 = [v20 CGColor];
  v22 = [v17 layer];
  [v22 setBorderColor:v21];

  v23 = [v17 layer];
  [v23 setBorderWidth:1.0];

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
  v3 = [(FMMapView *)self userLocation];
  v4 = objc_opt_new();
  v5 = [(FMMapView *)self annotationsSortedByDistance];
  if ([(FMMapView *)self isNearbyModeDisabled])
  {
    goto LABEL_2;
  }

  if ([v5 count])
  {
    v24 = v3;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v5;
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

    v3 = v24;
  }

  if (![v4 count])
  {
    if (!v3 || ([v3 coordinate], v22 == 0.0) || (objc_msgSend(v3, "coordinate"), v23 == 0.0))
    {
LABEL_2:
      v6 = [(FMMapView *)self mapView];
      v7 = [v6 annotations];
      v8 = [v7 mutableCopy];

      v4 = v8;
      goto LABEL_25;
    }

    [v4 addObject:v3];
  }

LABEL_25:

  return v4;
}

- (id)annotationsSortedByDistance
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(FMMapView *)self userLocation];
  v4 = objc_opt_new();
  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    [v3 coordinate];
    v7 = v6;
    v25 = v3;
    [v3 coordinate];
    v8 = [v5 initWithLatitude:v7 longitude:?];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(FMMapView *)self mapView];
    v10 = [v9 annotations];

    v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v10);
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

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v23 = [v4 sortedArrayUsingComparator:&__block_literal_global_2];

    v3 = v25;
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

- (CLLocationCoordinate2D)coordinateForAnnotationView:(id)a3
{
  v4 = [a3 layer];
  v5 = [v4 presentationLayer];
  [v5 frame];
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
  v16 = [(FMMapView *)self mapView];
  v17 = [(FMMapView *)self mapView];
  [v16 convertPoint:v17 toCoordinateFromView:{MidX, MidY}];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.longitude = v23;
  result.latitude = v22;
  return result;
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [(FMMapView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 customViewForAnnotation:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = [(FMMapView *)self mapView];
    v11 = v10;
    if (isKindOfClass)
    {
      v8 = [v10 dequeueReusableAnnotationViewWithIdentifier:@"FMMKUserAnnotationReuseIdentifier"];

      if (!v8)
      {
        v8 = [(MKUserLocationView *)[FMUserLocationView alloc] initWithAnnotation:v5 reuseIdentifier:@"FMMKUserAnnotationReuseIdentifier"];
        [(MKAnnotationView *)v8 setEnabled:0];
        [(FMUserLocationView *)v8 setUserInteractionEnabled:0];
        [(MKUserLocationView *)v8 setCanShowCallout:[(FMMapView *)self showUserLocationCallout]];
        v12 = [(FMMapView *)self userLocationTintColor];
        [(FMUserLocationView *)v8 setTintColor:v12];

        [(FMMapView *)self setUserLocationView:v8];
        [(FMMapView *)self setUserLocation:v5];
        if ([(FMMapView *)self showUserLocationCallout])
        {
          v13 = [MEMORY[0x277D75220] buttonWithType:4];
          v14 = [(FMMapView *)self tintColor];
          [v13 setTintColor:v14];

          [(MKAnnotationView *)v8 setEnabled:0];
          [(MKUserLocationView *)v8 setRightCalloutAccessoryView:v13];
          if (objc_opt_respondsToSelector())
          {
            [v6 updateTitlesForAnnotation:v5];
          }
        }
      }
    }

    else
    {
      v8 = [v10 dequeueReusableAnnotationViewWithIdentifier:@"FMAnnotationViewReuseIdentifier"];

      if (!v8)
      {
        v15 = objc_alloc_init(FMMapAnnotationGestureRecognizer);
        v16 = [FMAnnotationView alloc];
        v17 = [(FMMapView *)v5 tintColor];
        if (v17)
        {
          v18 = v5;
        }

        else
        {
          v18 = self;
        }

        v19 = [(FMMapView *)v18 tintColor];
        v8 = [(FMAnnotationView *)v16 initWithAnnotation:v5 reuseIdentifier:@"FMAnnotationViewReuseIdentifier" tintColor:v19];

        [(MKAnnotationView *)v8 setEnabled:0];
        [(FMMapAnnotationGestureRecognizer *)v15 setTouchDelegate:self];
        [(FMUserLocationView *)v8 addGestureRecognizer:v15];
        if (objc_opt_respondsToSelector())
        {
          v20 = [(FMMapView *)self delegate];
          [v20 annotationViewOfferedForLocationPreview:v8];
        }
      }

      if ([(FMMapView *)v5 isThisDevice])
      {
        [(FMMapView *)self setCurrentDeviceAnnotation:v5];
      }

      v21 = [(FMMapView *)self selectedAnnotation];
      v22 = [(FMMapView *)v5 isEqual:v21];

      if (v22)
      {
        v23 = [(FMMapView *)self renderingMode];
        if ([(FMMapView *)self isFingerOnMap])
        {
          [(MKAnnotationView *)v8 setSelected:1 animated:1];
        }

        else
        {
          [(FMUserLocationView *)v8 setSelected:1 animated:1 delay:dbl_24A330050[v23 == 1]];
        }
      }

      [(FMUserLocationView *)v8 updateStyleForAnnotation:v5];
    }
  }

  return v8;
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 annotation];
        v12 = [(FMMapView *)self selectedAnnotation];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [(FMMapView *)self setSelectedAnnotationView:v10];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v10 annotation];
          [v10 updateStyleForAnnotation:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(FMMapView *)self depthSortAnnotations];
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  v6 = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 customRendererForOverlay:v5];
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
    v8 = v5;
    v9 = [v8 parentAnnotation];
    v7 = [objc_alloc(MEMORY[0x277CD4DA8]) initWithCircle:v8];
    if ([v9 conformsToProtocol:&unk_285DA7C08])
    {
      v10 = v9;
      v11 = [(FMMapView *)self viewForAnnotation:v10];
      v12 = [(FMMapView *)self mapView];
      v13 = [v12 mapType];

      if (v13)
      {
        v22 = 0.0;
        v23 = 0.0;
        v20 = 0.0;
        v21 = 0.0;
        v14 = [v10 tintColor];
        [v14 getHue:&v23 saturation:&v22 brightness:&v21 alpha:&v20];

        v15 = [MEMORY[0x277D75348] colorWithHue:v23 saturation:v22 brightness:v21 + 0.4 alpha:v20];
        [v7 setFillColor:v15];
        [v7 setAlpha:0.15];
      }

      else
      {
        v17 = [v11 tintColor];
        [v7 setFillColor:v17];

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

      v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:v5];
    }
  }

  else
  {
    v16 = LogCategory_Unspecified();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FMMapView mapView:rendererForOverlay:];
    }

    v7 = [objc_alloc(MEMORY[0x277CD4EE8]) initWithOverlay:v5];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

LABEL_18:

  return v7;
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || ([v11 isUserInteractionEnabled])
  {
    v5 = [(FMMapView *)self selectedAnnotationView];
    if (v5 == v11)
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(FMMapView *)self setPotentiallySelectedAnnotationView:v11];
        v7 = [(FMMapView *)self potentiallySelectedAnnotationView];
        [(FMMapView *)self selectOrDeselectAnnotationView:v7];
LABEL_11:

        goto LABEL_14;
      }
    }

    v8 = [v11 annotation];
    [(FMMapView *)self setOtherSelectedAnnotation:v8];

    [(FMMapView *)self setLastVisibleMapRect:*MEMORY[0x277CD4BB0], *(MEMORY[0x277CD4BB0] + 8), *(MEMORY[0x277CD4BB0] + 16), *(MEMORY[0x277CD4BB0] + 24)];
    goto LABEL_14;
  }

  if ([(FMMapView *)self showUserLocationCallout]&& [(FMMapView *)self canSelectUserAnnotation])
  {
    v7 = [(FMMapView *)self selectedAnnotationView];
    [(FMMapView *)self deselectAnnotationView:v7];
    goto LABEL_11;
  }

  if (![(FMMapView *)self canSelectUserAnnotation])
  {
    v9 = [(FMMapView *)self mapView];
    v10 = [v11 annotation];
    [v9 deselectAnnotation:v10 animated:0];

    [v11 setSelected:0 animated:0];
  }

LABEL_14:
  [(FMMapView *)self depthSortAnnotations];
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v11 = a4;
  [v11 setSelected:1 animated:0];
  v5 = [v11 annotation];
  v6 = [(FMMapView *)self userLocation];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [v11 setEnabled:0];
  }

  v8 = [v11 annotation];
  v9 = [(FMMapView *)self otherSelectedAnnotation];
  v10 = [v8 isEqual:v9];

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
  v3 = [(FMMapView *)self currentDeviceAnnotation];
  [(FMMapView *)self updateAnnotationStyle:v3];
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
  v3 = [(FMMapView *)self mapView];
  v4 = [v3 _annotationViews];

  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 annotation];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v7;
          v7 = v10;
LABEL_8:

          goto LABEL_12;
        }

        if ([v11 conformsToProtocol:&unk_285DA7C08])
        {
          v12 = v11;
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
      v14 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v15 = [(FMMapView *)v21 selectedAnnotationView];
  if ([v15 isEqual:v24])
  {

    v16 = 2147483645;
  }

  else
  {
    v17 = [(FMMapView *)v21 currentTrackingMode];

    if (v17)
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

  v18 = [(FMMapView *)v21 selectedAnnotationView];
  [v18 _setZIndex:2147483646];

  if (v22)
  {
    v19 = [(FMMapView *)v21 mapView];
    v20 = [v19 viewForAnnotation:v22];

    if (v20)
    {
      [v20 _setZIndex:2147483646];
    }
  }

  [v23 stop];
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5
{
  if ([(FMMapView *)self canChangeUserTrackingMode:a3])
  {
    [(FMMapView *)self setCanChangeUserTrackingMode:0];

    [(FMMapView *)self updateAccordingToUserTrackingMode];
  }
}

- (void)updateAccordingToUserTrackingMode
{
  v41[2] = *MEMORY[0x277D85DE8];
  v3 = [(FMMapView *)self userLocation];
  v4 = [(FMMapView *)self lastSelectedAnnotationBeforeTracking];
  v5 = [(FMMapView *)self selectedAnnotation];
  v6 = [(FMMapView *)self otherSelectedAnnotation];
  v7 = *MEMORY[0x277CD4BB0];
  v8 = *(MEMORY[0x277CD4BB0] + 8);
  v9 = *(MEMORY[0x277CD4BB0] + 16);
  v10 = *(MEMORY[0x277CD4BB0] + 24);
  [(FMMapView *)self setIsMapPositioningDisabled:0];
  [(FMMapView *)self setIsAllAnnotationsShown:0];
  [(FMMapView *)self setIsSwitchingTrackingMode:1];
  [(FMMapView *)self setLastVisibleMapRect:v7, v8, v9, v10];
  v11 = [(FMMapView *)self mapView];
  v12 = [v11 userTrackingMode];

  if (v12 == 2)
  {
    goto LABEL_14;
  }

  if (v12 != 1)
  {
    if (v4)
    {
      [(FMMapView *)self updateCameraPositionForAnnotation:v4];
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

  [(FMMapView *)self setLastSelectedAnnotationBeforeTracking:v5];
  if (v5 | v6 && v3)
  {
    if (v5)
    {
      v13 = v5;
    }

    else
    {
      v13 = v6;
    }

    v41[0] = v13;
    v41[1] = v3;
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
    if (v3)
    {
      v23 = [(FMMapView *)self nearbyAnnotations];
      v24 = [v23 mutableCopy];

      [v24 addObject:v3];
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
    v30 = [(FMMapView *)self mapView];
    [v30 bounds];
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

- (void)_setUserTrackingMode:(int64_t)a3 animated:(BOOL)a4 fromTrackingButton:(BOOL)a5
{
  v7 = [(FMMapView *)self userTrackingMode:a3];
  if (a3 == 1)
  {
    v9 = 2;
    v8 = 1;
  }

  else if (a3 == 2)
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

  v10 = [(FMMapView *)self userTrackingButton];
  [v10 _setState:v9];

  [(FMMapView *)self setCurrentTrackingMode:v8];
  v11 = [(FMMapView *)self mapView];
  [v11 setUserTrackingMode:a3 animated:1];

  if (v7 != a3)
  {

    [(FMMapView *)self depthSortAnnotations];
  }
}

- (int64_t)userTrackingMode
{
  v2 = [(FMMapView *)self currentTrackingMode];
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
  [v4 handleFailureInMethod:a2 object:self file:@"FMMapView.m" lineNumber:1476 description:@"FIXME: Test this code path.  As of Whitetail MapKit was never calling this method and it was just added for protocol conformance."];

  v5 = [(FMMapView *)self mapView];
  LOBYTE(self) = [v5 isCurrentlyRotated];

  return self;
}

- (void)updateUserTrackingButtonState
{
  v2 = hasUserLocation;
  v3 = [(FMMapView *)self userTrackingButton];
  [v3 setEnabled:v2];
}

- (void)synchronize
{
  v22 = [MEMORY[0x277D07B40] stopwatchWithLabel:@"FMMapView.synchronize"];
  v3 = [(FMMapView *)self userLocation];
  v4 = [(FMMapView *)self userLocationView];
  v5 = [(FMMapView *)self currentDeviceAnnotation];
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      [v4 center];
      if (v4)
      {
        v9 = v7;
        v10 = v8;
        v11 = [(FMMapView *)self viewForAnnotation:v6];
        [v4 center];
        v13 = v12;
        [v4 center];
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

  v19 = [(FMMapView *)self selectedAnnotationView];

  if (v19)
  {
    v20 = [(FMMapView *)self selectedAnnotationView];
    v21 = [v20 annotation];
    [(FMMapView *)self updateOverlayForAnnotation:v21 withForce:0];
  }

  if (![(FMMapView *)self isMapAnimating])
  {
    [(FMMapView *)self updateUserTrackingButtonState];
  }

  [v22 stop];
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v13 = a4;
  v5 = [(FMMapView *)self currentDeviceAnnotation];
  v6 = [(FMMapView *)self delegate];
  [(FMMapView *)self setUserLocation:v13];
  if (v13 && v5)
  {
    [v13 coordinate];
    v8 = v7;
    [v5 coordinate];
    if (vabdd_f64(v8, v9) >= 0.0001 || ([v13 coordinate], v11 = v10, objc_msgSend(v5, "coordinate"), vabdd_f64(v11, v12) >= 0.0001))
    {
      [v13 coordinate];
      [v5 setCoordinate:?];
      [(FMMapView *)self updateCameraPositionForAnnotation:v5];
      [(FMMapView *)self setIsMapAnimating:0];
      [(FMMapView *)self synchronize];
    }

LABEL_11:
    if ([(FMMapView *)self showUserLocationCallout]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 updateTitlesForAnnotation:v13];
    }

    goto LABEL_14;
  }

  if (hasUserLocation == 1 && [(FMMapView *)self isAllAnnotationsShown]&& ![(FMMapView *)self isMapPositioningDisabled])
  {
    [(FMMapView *)self displayAllAnnotations];
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_14:
  if ((hasUserLocation & 1) == 0)
  {
    hasUserLocation = 1;
    if (v5)
    {
      [(FMMapView *)self updateAnnotationStyle:v5];
    }

    if ([(FMMapView *)self isAllAnnotationsShown]&& ![(FMMapView *)self isMapPositioningDisabled])
    {
      [(FMMapView *)self setIsMapAnimating:0];
      [(FMMapView *)self setIsUserLocationUpdated:1];
      [(FMMapView *)self displayAllAnnotations];
    }
  }
}

- (void)updateAnnotationStyle:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self viewForAnnotation:v4];
  [v5 updateStyleForAnnotation:v4];
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  if ([(FMMapView *)self isMapMoved:a3])
  {

    [(FMMapView *)self setIsFingerOnMap:0];
  }
}

- (void)mapTouchEnded:(id)a3
{
  if (![(FMMapView *)self isMapMoved])
  {

    [(FMMapView *)self setIsFingerOnMap:0];
  }
}

- (void)mapTouchMoved:(id)a3
{
  if (![(FMMapView *)self isPreviewing])
  {
    v6 = [(FMMapView *)self delegate];
    [(FMMapView *)self setIsMapPositioningDisabled:1];
    [(FMMapView *)self setIsMapMoved:1];
    v4 = [(FMMapView *)self mapView];
    v5 = [v4 userTrackingMode];

    if (v5 != 2)
    {
      [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
    }

    [(FMMapView *)self depthSortAnnotations];
    if (![(FMMapView *)self renderingMode]&& v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 userDidMoveMap];
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)calloutButtonTapped:(id)a3
{
  v4 = [(FMMapView *)self delegate];
  if (![(FMMapView *)self isFingerOnAnnotation]&& [(FMMapView *)self showUserLocationCallout]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 userDidTapUserLocationCallOut];
  }
}

- (void)userLocationTapped:(id)a3
{
  if ([(FMMapView *)self showUserLocationCallout])
  {
    v4 = [(FMMapView *)self mapView];
    v5 = [v4 userLocation];

    if (v5)
    {
      v6 = [(FMMapView *)self mapView];
      v7 = [(FMMapView *)self mapView];
      v8 = [v7 userLocation];
      v9 = [v6 viewForAnnotation:v8];

      v10 = dispatch_time(0, 500000000);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __32__FMMapView_userLocationTapped___block_invoke;
      v12[3] = &unk_278FDB908;
      v13 = v9;
      v14 = self;
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

- (void)mapTapped:(id)a3
{
  if (![(FMMapView *)self isPreviewing])
  {
    v7 = [(FMMapView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [v7 shouldTapDeselectAnnotation] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    [(FMMapView *)self setIsUserSwiping:0];
    if (![(FMMapView *)self renderingMode]&& (v4 & 1) == 0)
    {
      [(FMMapView *)self _setUserTrackingMode:0 animated:1 fromTrackingButton:0];
      v5 = [(FMMapView *)self selectedAnnotationView];

      if (v5)
      {
        [(FMMapView *)self setIsMapPositioningDisabled:1];
        v6 = [(FMMapView *)self selectedAnnotationView];
        [(FMMapView *)self deselectAnnotationView:v6];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 userDidTapMap];
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

- (void)mapSwiped:(id)a3 withPercent:(double)a4
{
  v6 = [(FMMapView *)self delegate];
  if (![(FMMapView *)self renderingMode]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 userDidSwipeMapWithPercent:{fmin(a4, 1.0)}];
  }

  [(FMMapView *)self setIsUserSwiping:1];
}

- (void)mapSwipedBegin:(id)a3
{
  v4 = [(FMMapView *)self mapView];
  [v4 setUserInteractionEnabled:0];

  [(FMMapView *)self setIsUserSwiping:1];
}

- (void)mapSwipedEnd:(id)a3 withPercent:(double)a4
{
  v8 = [(FMMapView *)self delegate];
  [(FMMapView *)self setIsUserSwiping:0];
  v6 = [(FMMapView *)self layoutTimer];
  [v6 invalidate];

  [(FMMapView *)self setLayoutTimer:0];
  if (a4 < 1.0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 userDidSwipeCancel];
  }

  v7 = [(FMMapView *)self mapView];
  [v7 setUserInteractionEnabled:1];
}

- (void)setIsSwipeGestureEnabled:(BOOL)a3
{
  v3 = a3;
  self->_isSwipeGestureEnabled = a3;
  v4 = [(FMMapView *)self mapGesture];
  [v4 setIsSwipeEnabled:v3];
}

- (float)dampingForAltitude:(double)a3 andDistance:(double)a4
{
  v4 = sqrt(a4 * a4 + a3 * a3);
  if (v4 <= 350000.0)
  {
    v5 = 26.0;
  }

  else
  {
    v5 = 30.0;
  }

  v6 = [(FMMapView *)self selectedAnnotation];
  if (v6)
  {
    v7 = 2.0;
  }

  else
  {
    v7 = 0.0;
  }

  return fminf((powf(v4, v4 / 350000.0) + 17.0) + v7, v5);
}

- (double)distanceBetweenOrigin:(CLLocationCoordinate2D)a3 andDestination:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v6 = MKMapPointForCoordinate(a3);
  v14.latitude = latitude;
  v14.longitude = longitude;
  v7 = MKMapPointForCoordinate(v14);
  x = v7.x;
  y = v7.y;
  v10 = v6.x;
  v11 = v6.y;

  return MKMetersBetweenMapPoints(*&v10, *&x);
}

- (void)fingerOnAnnotation:(id)a3
{
  v4 = [(FMMapView *)self userLocationView];
  [(FMMapView *)self setPotentiallySelectedAnnotationView:0];
  [(FMMapView *)self setIsFingerOnAnnotation:1];
  if ([(FMMapView *)self showUserLocationCallout]&& v4)
  {
    [v4 setSelected:0];
  }

  MEMORY[0x2821F96F8]();
}

- (void)fingerOffAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMMapView *)self userLocationView];
  if (![(FMMapView *)self isMapAnimating])
  {
    v6 = [(FMMapView *)self potentiallySelectedAnnotationView];

    if (!v6)
    {
      v7 = [v4 view];
      [(FMMapView *)self setPotentiallySelectedAnnotationView:v7];
    }

    v8 = [(FMMapView *)self potentiallySelectedAnnotationView];
    [(FMMapView *)self selectOrDeselectAnnotationView:v8];
  }

  [(FMMapView *)self setIsFingerOnAnnotation:0];
  if ([(FMMapView *)self showUserLocationCallout]&& v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__FMMapView_fingerOffAnnotation___block_invoke;
    block[3] = &unk_278FDB978;
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)updatePreviewLocationForAnnotation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 coordinate];
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

- (void)updateAnnotationPositionAfterPreview:(id)a3
{
  v48 = a3;
  v4 = [(FMMapView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = MEMORY[0x277CD4BB0];
    v6 = *MEMORY[0x277CD4BB0];
    v7 = *(MEMORY[0x277CD4BB0] + 8);
    if (objc_opt_respondsToSelector())
    {
      [v4 mapPositionForAnnotation:v48];
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
      v17 = [(FMMapView *)self userLocation];
      [v48 coordinate];
      v19 = v18;
      v21 = v20;
      if (v17 && [v48 isThisDevice])
      {
        [v17 coordinate];
        v19 = v22;
        v21 = v23;
      }

      [v48 horizontalAccuracy];
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
      v30 = [(FMMapView *)self mapView];
      [v30 bounds];
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
      v40 = [(FMMapView *)self mapView];
      if ([v40 mapType])
      {
        v41 = [(FMMapView *)self traitCollection];
        v42 = v39.latitude - dbl_24A330060[[v41 verticalSizeClass] == 2];
      }

      else
      {
        v42 = v39.latitude + -0.0013;
      }

      if (fabs(v39.longitude) <= 180.0 && fabs(v42) <= 90.0)
      {
        v43 = [MEMORY[0x277CD4E58] cameraLookingAtCenterCoordinate:v42 fromDistance:v39.longitude pitch:400.0 heading:{50.0, 0.0}];
        v44 = [(FMMapView *)self mapView];
        LODWORD(v45) = 1.0;
        LODWORD(v46) = 1.0;
        LODWORD(v47) = 20.0;
        [v44 setCamera:v43 duration:0.0 springMass:v45 springStiffness:v46 springDamping:v47 springVelocity:0.0];
      }
    }
  }
}

- (void)setIsPreviewing:(BOOL)a3
{
  v3 = a3;
  self->_isPreviewing = a3;
  v4 = [(FMMapView *)self mapGesture];
  [v4 setEnabled:!v3];
}

- (void)selectAnnotationForPreview:(id)a3
{
  v4 = a3;
  [(FMMapView *)self deselectAnnotationViewIfNeeded:0];
  v5 = [(FMMapView *)self viewForAnnotation:v4];
  [(FMMapView *)self setCurrentSelectedState:1];
  [(FMMapView *)self setSelectedAnnotationView:v5];
  [(FMMapView *)self setSelectedAnnotation:v4];
  [(FMMapView *)self updatePreviewLocationForAnnotation:v4];

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