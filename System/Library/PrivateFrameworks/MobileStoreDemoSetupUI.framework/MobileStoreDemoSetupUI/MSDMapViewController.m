@interface MSDMapViewController
- (MSDMapViewController)initWithDelegate:(id)a3;
- (id)_getAnnotationWithStoreInfo:(id)a3;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_recenter:(id)a3;
- (void)_recenterToCoordinate:(CLLocationCoordinate2D)a3;
- (void)_removeAllStoreAnnotations;
- (void)_zoomToAnnotation;
- (void)annotateStores:(id)a3;
- (void)deselectAnnotation;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)stopUpdatingUserLocation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)zoomToStore:(id)a3;
@end

@implementation MSDMapViewController

- (MSDMapViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MSDMapViewController;
  v5 = [(MSDMapViewController *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277D75220] buttonWithType:1];
    [(MSDMapViewController *)v5 setRecenterButton:v6];

    v7 = [(MSDMapViewController *)v5 recenterButton];
    [v7 setHidden:1];

    [(MSDMapViewController *)v5 setUserLocation:0];
    [(MSDMapViewController *)v5 setDelegate:v4];
    v8 = objc_opt_new();
    [(MSDMapViewController *)v5 setMapView:v8];

    v9 = [(MSDMapViewController *)v5 mapView];
    [v9 setDelegate:v5];

    v10 = [(MSDMapViewController *)v5 mapView];
    [v10 setShowsUserLocation:1];

    v11 = [(MSDMapViewController *)v5 mapView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(MSDMapViewController *)v5 mapView];
    [v12 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"StoreAnnotation"];

    v13 = [(MSDMapViewController *)v5 mapView];
    [v13 registerClass:objc_opt_class() forAnnotationViewWithReuseIdentifier:@"StoreClusterAnnotation"];
  }

  return v5;
}

- (void)viewDidLoad
{
  v39[2] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = MSDMapViewController;
  [(MSDMapViewController *)&v38 viewDidLoad];
  v3 = [(MSDMapViewController *)self view];
  v4 = [(MSDMapViewController *)self mapView];
  [v3 addSubview:v4];

  v37 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v5 = [(MSDMapViewController *)self recenterButton];
  [v5 setImage:v37 forState:0];

  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v7 = [(MSDMapViewController *)self recenterButton];
  [v7 setTintColor:v6];

  v8 = [MEMORY[0x277D75348] whiteColor];
  v9 = [(MSDMapViewController *)self recenterButton];
  [v9 setBackgroundColor:v8];

  v10 = [(MSDMapViewController *)self recenterButton];
  v11 = [v10 layer];
  [v11 setCornerRadius:10.0];

  v12 = [(MSDMapViewController *)self recenterButton];
  v13 = [v12 layer];
  [v13 setBorderWidth:1.0];

  v14 = [MEMORY[0x277D75348] systemBlueColor];
  v15 = [v14 CGColor];
  v16 = [(MSDMapViewController *)self recenterButton];
  v17 = [v16 layer];
  [v17 setBorderColor:v15];

  v18 = [(MSDMapViewController *)self recenterButton];
  [v18 setContentEdgeInsets:{5.0, 5.0, 5.0, 5.0}];

  v19 = [(MSDMapViewController *)self recenterButton];
  [v19 addTarget:self action:sel__recenter_ forControlEvents:64];

  v20 = [(MSDMapViewController *)self recenterButton];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v21 = [(MSDMapViewController *)self view];
  v22 = [(MSDMapViewController *)self recenterButton];
  [v21 addSubview:v22];

  v36 = [(MSDMapViewController *)self recenterButton];
  v34 = [v36 trailingAnchor];
  v35 = [(MSDMapViewController *)self view];
  v23 = [v35 safeAreaLayoutGuide];
  v24 = [v23 trailingAnchor];
  v25 = [v34 constraintEqualToAnchor:v24 constant:-15.0];
  v39[0] = v25;
  v26 = [(MSDMapViewController *)self recenterButton];
  v27 = [v26 topAnchor];
  v28 = [(MSDMapViewController *)self view];
  v29 = [v28 safeAreaLayoutGuide];
  v30 = [v29 topAnchor];
  v31 = [v27 constraintEqualToAnchor:v30 constant:15.0];
  v39[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];

  [MEMORY[0x277CCAAD0] activateConstraints:v32];
  v33 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = MSDMapViewController;
  [(MSDMapViewController *)&v25 viewDidLayoutSubviews];
  v24 = [(MSDMapViewController *)self mapView];
  v22 = [v24 topAnchor];
  v23 = [(MSDMapViewController *)self view];
  v21 = [v23 topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v26[0] = v20;
  v19 = [(MSDMapViewController *)self mapView];
  v17 = [v19 bottomAnchor];
  v18 = [(MSDMapViewController *)self view];
  v16 = [v18 bottomAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v26[1] = v15;
  v14 = [(MSDMapViewController *)self mapView];
  v3 = [v14 leftAnchor];
  v4 = [(MSDMapViewController *)self view];
  v5 = [v4 leftAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v26[2] = v6;
  v7 = [(MSDMapViewController *)self mapView];
  v8 = [v7 rightAnchor];
  v9 = [(MSDMapViewController *)self view];
  v10 = [v9 rightAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v26[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v12];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)zoomToStore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v4;
    _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Zooming to store %{public}@...", &v17, 0xCu);
  }

  v6 = [(MSDMapViewController *)self _getAnnotationWithStoreInfo:v4];
  v7 = [(MSDMapViewController *)self mapView];
  v8 = [v7 selectedAnnotations];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [(MSDMapViewController *)self mapView];
    v11 = [v10 selectedAnnotations];
    v12 = [v11 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 memberAnnotations];
      v14 = [v13 firstObject];

      v12 = v14;
    }

    if ([v6 isSameLocation:v12])
    {
      [MSDMapViewController zoomToStore:v6];
      goto LABEL_13;
    }
  }

  if (v6)
  {
    v12 = [(MSDMapViewController *)self mapView];
    [v12 selectAnnotation:v6 animated:1];
  }

  else
  {
    v15 = defaultLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MSDMapViewController *)v4 zoomToStore:v15];
    }

    v12 = [v4 storeLocation];
    [v12 coordinate];
    [MSDMapViewController _zoomToCoordinate:"_zoomToCoordinate:withRadius:allowZoomOut:" withRadius:0 allowZoomOut:?];
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deselectAnnotation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(MSDMapViewController *)self mapView];
  v4 = [v3 selectedAnnotations];
  v5 = [v4 count];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(MSDMapViewController *)self mapView];
    v7 = [v6 selectedAnnotations];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = [(MSDMapViewController *)self mapView];
          [v13 deselectAnnotation:v12 animated:1];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)annotateStores:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    [(MSDMapViewController *)self _removeAllStoreAnnotations];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [(MSDMapViewController *)self mapView];
          v13 = [[MSDMapAnnotation alloc] initWithStoreInfo:v11];
          [v12 addAnnotation:v13];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(MSDMapViewController *)self _zoomToAnnotation];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)stopUpdatingUserLocation
{
  v3 = defaultLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_259BCA000, v3, OS_LOG_TYPE_DEFAULT, "Stopping User Location Update...", v5, 2u);
  }

  v4 = [(MSDMapViewController *)self mapView];
  [v4 setShowsUserLocation:0];
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MSDMapViewController *)v7 userLocation];

  if (!v8)
  {
    v9 = [(MSDMapViewController *)v7 recenterButton];
    [v9 setHidden:0];

    v10 = [v6 location];
    [v10 coordinate];
    [MSDMapViewController _zoomToCoordinate:v7 withRadius:"_zoomToCoordinate:withRadius:allowZoomOut:" allowZoomOut:0];
  }

  v11 = [v6 location];
  [(MSDMapViewController *)v7 setUserLocation:v11];

  v12 = [(MSDMapViewController *)v7 delegate];
  v13 = [(MSDMapViewController *)v7 userLocation];
  [v12 userLocationDidChange:v13];

  objc_sync_exit(v7);
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(MSDMapViewController *)self mapView];
    v8 = [v7 dequeueReusableAnnotationViewWithIdentifier:@"StoreClusterAnnotation" forAnnotation:v6];

    v9 = [MEMORY[0x277D75348] whiteColor];
    [v8 setGlyphTintColor:v9];

    v10 = [MEMORY[0x277D75348] systemRedColor];
    [v8 setMarkerTintColor:v10];
LABEL_8:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v5;
    v11 = [(MSDMapViewController *)self mapView];
    v8 = [v11 dequeueReusableAnnotationViewWithIdentifier:@"StoreAnnotation"];

    [v8 setClusteringIdentifier:*MEMORY[0x277CD4BC8]];
    v12 = [v10 storeInfo];
    v13 = [v12 isHQ];

    if (v13)
    {
      v14 = @"building.2.fill";
    }

    else
    {
      v14 = @"mappin";
    }

    v15 = [MEMORY[0x277D755B8] systemImageNamed:v14];
    [v8 setGlyphImage:v15];

    v16 = [MEMORY[0x277D75348] whiteColor];
    [v8 setGlyphTintColor:v16];

    v17 = [MEMORY[0x277D75348] systemRedColor];
    [v8 setMarkerTintColor:v17];

    goto LABEL_8;
  }

  v18 = defaultLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = objc_opt_class();
    v19 = v23;
    _os_log_impl(&dword_259BCA000, v18, OS_LOG_TYPE_DEFAULT, "Unrecognized annotation class: %{public}@, ignoring...", &v22, 0xCu);
  }

  v8 = 0;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v5 annotation];
  if (isKindOfClass)
  {
    v9 = objc_alloc(MEMORY[0x277CD4DB0]);
    v40[0] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v11 = [v9 initWithMemberAnnotations:v10];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if ((v12 & 1) == 0)
    {
      goto LABEL_23;
    }

    v11 = [v5 annotation];
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (([v11 isSameCoordinate] & 1) != 0 || objc_msgSend(v11, "isInCloseProximity"))
  {
    v13 = objc_opt_new();
    v14 = [v11 memberAnnotations];
    v15 = [v14 firstObject];

    v16 = [v15 storeInfo];
    v17 = [v16 storeLocation];
    [v17 coordinate];
    v19 = v18;
    v21 = v20;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [v11 memberAnnotations];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v31 + 1) + 8 * v26) storeInfo];
          [v13 addObject:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v24);
    }

    v28 = defaultLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[MSDMapViewController mapView:didSelectAnnotationView:]";
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_259BCA000, v28, OS_LOG_TYPE_DEFAULT, "%s - stores %@ selected", buf, 0x16u);
    }

    if ([v11 isSameCoordinate])
    {
      [(MSDMapViewController *)self _zoomToCoordinate:0 withRadius:v19 allowZoomOut:v21, 300.0];
    }

    else
    {
      [(MSDMapViewController *)self _recenterToCoordinate:v19, v21];
    }

    v29 = [(MSDMapViewController *)self delegate];
    [v29 didSelectStores:v13 forViewController:self];
  }

  else
  {
    v13 = [(MSDMapViewController *)self mapView];
    v15 = [v11 memberAnnotations];
    [v13 showAnnotations:v15 animated:1];
  }

LABEL_23:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [v5 annotation];
  if (isKindOfClass)
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 storeInfo];
      v30 = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      *buf = 136315394;
      v32 = "[MSDMapViewController mapView:didDeselectAnnotationView:]";
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_259BCA000, v9, OS_LOG_TYPE_DEFAULT, "%s - stores %{public}@ de-selected", buf, 0x16u);
    }

    v12 = [(MSDMapViewController *)self delegate];
    v13 = [v8 storeInfo];
    v29 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v12 didDeselectStores:v14 forViewController:self];

    goto LABEL_18;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v8 = objc_opt_new();
    v12 = [v5 annotation];
    if (([v12 isSameCoordinate] & 1) == 0 && !objc_msgSend(v12, "isInCloseProximity"))
    {
      goto LABEL_19;
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v12 memberAnnotations];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * v20) storeInfo];
          [v8 addObject:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    v22 = defaultLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[MSDMapViewController mapView:didDeselectAnnotationView:]";
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&dword_259BCA000, v22, OS_LOG_TYPE_DEFAULT, "%s - stores %@ de-selected", buf, 0x16u);
    }

    v13 = [(MSDMapViewController *)self delegate];
    [v13 didDeselectStores:v8 forViewController:self];
LABEL_18:

LABEL_19:
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_zoomToAnnotation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MSDMapViewController *)self deselectAnnotation];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MSDMapViewController *)self mapView];
  v5 = [v4 annotations];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v10 storeInfo];
          if ([v11 isNearby])
          {
            [v3 addObject:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [(MSDMapViewController *)self mapView];
  [v12 showAnnotations:v3 animated:1];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_recenter:(id)a3
{
  v4 = [(MSDMapViewController *)self userLocation];

  if (v4)
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_259BCA000, v5, OS_LOG_TYPE_DEFAULT, "Recentering to current user location...", v7, 2u);
    }

    v6 = [(MSDMapViewController *)self userLocation];
    [v6 coordinate];
    [MSDMapViewController _zoomToCoordinate:"_zoomToCoordinate:withRadius:allowZoomOut:" withRadius:1 allowZoomOut:?];

    [(MSDMapViewController *)self deselectAnnotation];
  }
}

- (void)_recenterToCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [(MSDMapViewController *)self mapView];
  [v6 region];
  v8 = v7;
  v10 = v9;

  v11 = [(MSDMapViewController *)self mapView];
  [v11 setRegion:1 animated:{latitude, longitude, v8, v10}];
}

- (id)_getAnnotationWithStoreInfo:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(MSDMapViewController *)self mapView];
  v5 = [v4 annotations];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 storeInfo];
          v13 = [v12 appleID];
          v14 = [v18 appleID];
          v15 = [v13 isEqual:v14];

          if (v15)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_removeAllStoreAnnotations
{
  v5 = [(MSDMapViewController *)self mapView];
  v3 = [(MSDMapViewController *)self mapView];
  v4 = [v3 annotations];
  [v5 removeAnnotations:v4];
}

- (void)zoomToStore:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_259BCA000, a2, OS_LOG_TYPE_ERROR, "Unable to find annotation for store: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)zoomToStore:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1 storeInfo];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_259BCA000, v2, OS_LOG_TYPE_DEFAULT, "Store %{public}@ have coordinate already zoomed, skipping", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end