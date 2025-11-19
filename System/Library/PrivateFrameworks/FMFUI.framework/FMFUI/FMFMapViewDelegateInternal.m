@interface FMFMapViewDelegateInternal
- ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)a3 andRadius:(double)a4;
- (BOOL)canSelectAnnotation:(id)a3;
- (CLLocationCoordinate2D)lastUserLocationCoordinate;
- (FMFMapViewDelegateInternal)initWithDelegate:(id)a3 mapView:(id)a4;
- (FMFMapViewDelegateInternalDelegate)delegate;
- (UIEdgeInsets)edgeInsetsWithMinApplied:(UIEdgeInsets)a3;
- (id)accuracyCircleForLocation:(id)a3;
- (id)fmfOverlayColor;
- (id)fmfOverlayColorSatellite;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_moveCenterByOffset:(CGPoint)a3 from:(CLLocationCoordinate2D)a4 mapView:(id)a5;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)selectAnnotation:(id)a3;
- (void)slideAnnotation:(id)a3 intoViewIfNeededForMapView:(id)a4;
- (void)zoomToFitAnnotationsForMapView:(id)a3 includeMe:(BOOL)a4 duration:(double)a5;
- (void)zoomToFitLocation:(id)a3 forMapView:(id)a4;
@end

@implementation FMFMapViewDelegateInternal

- (FMFMapViewDelegateInternal)initWithDelegate:(id)a3 mapView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(objc_opt_class());

  [(FMFMapViewDelegateInternal *)v8 setDelegate:v6];
  [(FMFMapViewDelegateInternal *)v8 setMapView:v7];
  objc_initWeak(&location, v8);
  v9 = objc_alloc_init(FMFWildcardGestureRecognizer);
  [(FMFMapViewDelegateInternal *)v8 setGr:v9];

  [(FMFWildcardGestureRecognizer *)v8->_gr setDelegate:v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke;
  v13[3] = &unk_278FE2B78;
  objc_copyWeak(&v14, &location);
  [(FMFWildcardGestureRecognizer *)v8->_gr setTouchesBeganCallback:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke_2;
  v11[3] = &unk_278FE2B78;
  objc_copyWeak(&v12, &location);
  [(FMFWildcardGestureRecognizer *)v8->_gr setTouchesEndedCallback:v11];
  [v7 addGestureRecognizer:v8->_gr];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRespondingToUserTouch:1];
}

void __55__FMFMapViewDelegateInternal_initWithDelegate_mapView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelector:sel_endTouches withObject:0 afterDelay:0.5];
}

- (BOOL)canSelectAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapViewDelegateInternal *)self delegate];
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

- (void)selectAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapViewDelegateInternal *)self mapView];
  [v5 selectAnnotation:v4 animated:1];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 dequeueReusableAnnotationViewWithIdentifier:@"fmfAnnotation"];
    v9 = [(FMFMapViewDelegateInternal *)self delegate];
    v10 = [v9 _internalAnnotationTintColor];
    if (v10)
    {
      [v7 setTintColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] fmfOrangeColor];
      [v7 setTintColor:v11];
    }

    v12 = [v7 handle];
    v13 = [v9 annotationImageForAnnotation:v7 andHandle:v12];
    [v7 setSmallAnnotationIcon:v13];
    [v7 setLargeAnnotationIcon:v13];

    if (!v8)
    {
      v14 = [FMFAnnotationView alloc];
      v15 = [v7 tintColor];
      v8 = [(FMFAnnotationView *)v14 initWithAnnotation:v7 reuseIdentifier:@"fmfAnnotation" tintColor:v15];
    }

    v16 = [v7 handle];
    v17 = [v16 cachedPrettyName];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v7 locationShortAddressWithAgeIncludeLocating];
    v20 = [v18 stringWithFormat:@"%@, %@", v17, v19];
    [(FMFAnnotationView *)v8 setAccessibilityLabel:v20];

    [(FMAnnotationView *)v8 setShouldPreventLargeAnnotationState:[(FMFMapViewDelegateInternal *)self canSelectAnnotation:v7]^ 1];
    if (!v17)
    {
      v21 = [v7 handle];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __56__FMFMapViewDelegateInternal_mapView_viewForAnnotation___block_invoke;
      v23[3] = &unk_278FE2B50;
      v24 = v6;
      v25 = v7;
      [v21 prettyNameWithCompletion:v23];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __56__FMFMapViewDelegateInternal_mapView_viewForAnnotation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) annotations];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) removeAnnotation:*(a1 + 40)];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 addAnnotation:v5];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 annotation];
    v10 = [(FMFMapViewDelegateInternal *)self delegate];
    [v10 didSelectLocation:v9];
    if (![(FMFMapViewDelegateInternal *)self isMapCenteringDisabled])
    {
      v11 = [v6 annotation];
      [(FMFMapViewDelegateInternal *)self slideAnnotation:v11 intoViewIfNeededForMapView:v12];
    }
  }
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 annotation];
    v10 = [(FMFMapViewDelegateInternal *)self selectedAnnotationView];
    v11 = [v10 annotation];
    v12 = [v6 annotation];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      [(FMFMapViewDelegateInternal *)self setSelectedAnnotationView:0];
    }

    v14 = [(FMFMapViewDelegateInternal *)self delegate];
    if (([v14 alwaysShowAccuracy] & 1) == 0)
    {
      v15 = [v16 overlays];
      [v16 removeOverlays:v15];
    }

    [v14 didDeselectLocation:v9];
  }
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v8 = a4;
  [v8 coordinate];
  if (vabdd_f64(v5, self->_lastUserLocationCoordinate.latitude) >= 0.0001 || ([v8 coordinate], vabdd_f64(v6, self->_lastUserLocationCoordinate.longitude) >= 0.0001))
  {
    [v8 coordinate];
    [(FMFMapViewDelegateInternal *)self setLastUserLocationCoordinate:?];
    v7 = [(FMFMapViewDelegateInternal *)self delegate];
    if ([v7 shouldZoomToFitMeAndLocations])
    {
      [v7 reZoomToFit];
    }

    [v7 didUpdateUserLocation:v8];
  }
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v6 = MEMORY[0x277CD4DA8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithCircle:v7];

  v10 = [v8 mapType];
  if (v10)
  {
    [(FMFMapViewDelegateInternal *)self fmfOverlayColorSatellite];
  }

  else
  {
    [(FMFMapViewDelegateInternal *)self fmfOverlayColor];
  }
  v11 = ;
  [v9 setFillColor:v11];

  return v9;
}

- (id)fmfOverlayColor
{
  v2 = [(FMFMapViewDelegateInternal *)self delegate];
  v3 = [v2 _internalAnnotationTintColor];
  v4 = [v3 colorWithAlphaComponent:0.100000001];

  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.156862751 blue:0.0 alpha:0.0799999982];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)fmfOverlayColorSatellite
{
  v2 = [(FMFMapViewDelegateInternal *)self delegate];
  v3 = [v2 _internalAnnotationTintColor];
  v4 = [v3 colorWithAlphaComponent:0.200000003];

  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.156862751 blue:0.0 alpha:0.200000003];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (id)accuracyCircleForLocation:(id)a3
{
  v3 = MEMORY[0x277CD4DA0];
  v4 = a3;
  v5 = [v4 location];
  [v5 coordinate];
  v7 = v6;
  v9 = v8;
  v10 = [v4 location];

  [v10 horizontalAccuracy];
  v12 = [v3 circleWithCenterCoordinate:v7 radius:{v9, v11}];

  return v12;
}

- (void)slideAnnotation:(id)a3 intoViewIfNeededForMapView:(id)a4
{
  v19 = a3;
  v6 = a4;
  [v19 coordinate];
  [v6 convertCoordinate:v6 toPointToView:?];
  v8 = v7;
  v10 = 170.0 - v9;
  if (v7 < 52.0)
  {
    v11 = 52.0;
LABEL_3:
    v12 = v11 - v8;
    goto LABEL_4;
  }

  [v6 frame];
  v16 = v15 + -52.0;
  if (v10 <= 0.0 && v8 <= v16)
  {
    goto LABEL_11;
  }

  v12 = 0.0;
  if (v8 > v16)
  {
    [v6 frame];
    v11 = v18 + -52.0;
    goto LABEL_3;
  }

LABEL_4:
  [v19 coordinate];
  [(FMFMapViewDelegateInternal *)self _moveCenterByOffset:v6 from:v12 mapView:fmax(v10, 0.0), v13, v14];
LABEL_11:
}

- (void)_moveCenterByOffset:(CGPoint)a3 from:(CLLocationCoordinate2D)a4 mapView:(id)a5
{
  y = a3.y;
  x = a3.x;
  v11 = a5;
  [v11 centerCoordinate];
  [v11 convertCoordinate:v11 toPointToView:?];
  [v11 convertPoint:v11 toCoordinateFromView:{v7 - x, v8 - y}];
  latitude = v13.latitude;
  longitude = v13.longitude;
  if (CLLocationCoordinate2DIsValid(v13))
  {
    [v11 setCenterCoordinate:1 animated:{latitude, longitude}];
  }
}

- (void)zoomToFitLocation:(id)a3 forMapView:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 coordinate];
  v8 = v7;
  v10 = v9;
  if ([(FMFMapViewDelegateInternal *)self regionIsValid:?])
  {
    [FMFMapUtilities mapRectForCoordinateRegion:v8, v10, 0.003, 0.003];
    v46 = v12;
    v47 = v11;
    v44 = v14;
    v45 = v13;
    v15 = [(FMFMapViewDelegateInternal *)self delegate];
    [v15 edgeInsets];
    [(FMFMapViewDelegateInternal *)self edgeInsetsWithMinApplied:?];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [(FMFMapViewDelegateInternal *)self mapView];
    [v24 bounds];
    v26 = v25;
    v28 = v27;

    v29 = [(FMFMapViewDelegateInternal *)self mapView];
    [v29 mapRectThatFits:v47 edgePadding:{v46, v45, v44, v17, v19, v21, v23}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v31 forViewSize:{v33, v35, v37, v26, v28}];
    v39 = LogCategory_Daemon();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v38 debugDescription];
      *buf = 138412290;
      v51 = v40;
      _os_log_impl(&dword_24A4E3000, v39, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: camera updated %@", buf, 0xCu);
    }

    if ([FMFMapUtilities doNotAnimateToNewLocation:v6 forMapView:v8, v10])
    {
      v41 = [(FMFMapViewDelegateInternal *)self mapView];
      [v41 setCamera:v38 animated:0];
    }

    else
    {
      v42 = MEMORY[0x277D75D18];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __59__FMFMapViewDelegateInternal_zoomToFitLocation_forMapView___block_invoke;
      v48[3] = &unk_278FE2A10;
      v48[4] = self;
      v49 = v38;
      [v42 animateWithDuration:v48 animations:0.200000003];
    }
  }

  else
  {
    v15 = LogCategory_Daemon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, v15, OS_LOG_TYPE_DEFAULT, "Not zooming due to invalid region (0,0).", buf, 2u);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __59__FMFMapViewDelegateInternal_zoomToFitLocation_forMapView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:1];
}

- (void)zoomToFitAnnotationsForMapView:(id)a3 includeMe:(BOOL)a4 duration:(double)a5
{
  v108 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 userTrackingMode] != 2)
  {
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24A4E3000, v9, OS_LOG_TYPE_DEFAULT, "zoomToFitAnnotationsForMapView", buf, 2u);
    }

    v10 = [(FMFMapViewDelegateInternal *)self delegate];
    if (![v10 viewWillAppearCalled])
    {
      goto LABEL_46;
    }

    v11 = [v8 annotations];
    if (a4)
    {
      v12 = [(FMFMapViewDelegateInternal *)self mapView];
      v13 = [v12 selectedAnnotations];
      v14 = [v13 count];

      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = [(FMFMapViewDelegateInternal *)self mapView];
      v16 = [v15 selectedAnnotations];
      v17 = [v16 mutableCopy];

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v18 = [(FMFMapViewDelegateInternal *)self mapView];
      v19 = [v18 annotations];

      v20 = [v19 countByEnumeratingWithState:&v96 objects:v106 count:16];
      if (v20)
      {
        v21 = v20;
        v90 = v11;
        v92 = v10;
        v22 = *v97;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v97 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v96 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v17 addObject:v24];
              goto LABEL_27;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v96 objects:v106 count:16];
          if (v21)
          {
            continue;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v17 = [MEMORY[0x277CBEB18] array];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v19 = v11;
      v25 = [v19 countByEnumeratingWithState:&v100 objects:v107 count:16];
      if (v25)
      {
        v26 = v25;
        v90 = v11;
        v92 = v10;
        v27 = *v101;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v101 != v27)
            {
              objc_enumerationMutation(v19);
            }

            v29 = *(*(&v100 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v17 addObject:v29];
            }
          }

          v26 = [v19 countByEnumeratingWithState:&v100 objects:v107 count:16];
        }

        while (v26);
LABEL_27:
        v11 = v90;
        v10 = v92;
      }
    }

    v11 = v17;
LABEL_29:
    [FMFMapUtilities regionForAnnotations:v11];
    latitude = v30;
    longitude = v32;
    latitudeDelta = v34;
    longitudeDelta = v36;
    v38 = [v11 firstObject];
    if ([v10 alwaysShowAccuracy] && !a4)
    {
      [v38 coordinate];
      v40 = v39;
      v42 = v41;
      v43 = [v38 location];
      [v43 horizontalAccuracy];
      [(FMFMapViewDelegateInternal *)self mapRectMakeWithRadialDistanceForCoordinate:v40 andRadius:v42, v44];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v109.origin.x = v46;
      v109.origin.y = v48;
      v109.size.width = v50;
      v109.size.height = v52;
      v110 = MKCoordinateRegionForMapRect(v109);
      latitude = v110.center.latitude;
      longitude = v110.center.longitude;
      latitudeDelta = v110.span.latitudeDelta;
      longitudeDelta = v110.span.longitudeDelta;
    }

    if (latitudeDelta < 0.003)
    {
      latitudeDelta = 0.003;
    }

    if (longitudeDelta < 0.003)
    {
      longitudeDelta = 0.003;
    }

    if ([(FMFMapViewDelegateInternal *)self regionIsValid:latitude, longitude, latitudeDelta, longitudeDelta])
    {
      v93 = a5;
      v87 = longitude;
      v88 = latitude;
      [FMFMapUtilities mapRectForCoordinateRegion:latitude, longitude, latitudeDelta, longitudeDelta];
      v89 = v54;
      v91 = v53;
      v56 = v55;
      v58 = v57;
      [v10 edgeInsets];
      [(FMFMapViewDelegateInternal *)self edgeInsetsWithMinApplied:?];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = [(FMFMapViewDelegateInternal *)self mapView];
      [v67 bounds];
      v69 = v68;
      v71 = v70;

      v72 = [(FMFMapViewDelegateInternal *)self mapView];
      [v72 mapRectThatFits:v91 edgePadding:{v89, v56, v58, v60, v62, v64, v66}];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;

      v81 = [MEMORY[0x277CD4E58] _cameraLookingAtMapRect:v74 forViewSize:{v76, v78, v80, v69, v71}];
      v82 = LogCategory_Daemon();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = [v81 debugDescription];
        *buf = 138412290;
        v105 = v83;
        _os_log_impl(&dword_24A4E3000, v82, OS_LOG_TYPE_DEFAULT, "FMFMapViewDelegateInternal: zoomToFitAnnotationsForMapView new camera %@", buf, 0xCu);
      }

      if (v93 <= 0.0 || [FMFMapUtilities doNotAnimateToNewLocation:v8 forMapView:v88, v87])
      {
        v84 = [(FMFMapViewDelegateInternal *)self mapView];
        [v84 setCamera:v81 animated:0];
      }

      else
      {
        v85 = MEMORY[0x277D75D18];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __80__FMFMapViewDelegateInternal_zoomToFitAnnotationsForMapView_includeMe_duration___block_invoke;
        v94[3] = &unk_278FE2A10;
        v94[4] = self;
        v81 = v81;
        v95 = v81;
        [v85 animateWithDuration:196614 delay:v94 options:&__block_literal_global_1 animations:v93 completion:0.0];
      }
    }

    else
    {
      v81 = LogCategory_Daemon();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A4E3000, v81, OS_LOG_TYPE_DEFAULT, "Not zooming due to invalid region (0,0).", buf, 2u);
      }
    }

LABEL_46:
  }

  v86 = *MEMORY[0x277D85DE8];
}

void __80__FMFMapViewDelegateInternal_zoomToFitAnnotationsForMapView_includeMe_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:1];
}

- ($7A2C3A43EE5A76686BB0A44688CCB5FC)mapRectMakeWithRadialDistanceForCoordinate:(CLLocationCoordinate2D)a3 andRadius:(double)a4
{
  latitude = a3.latitude;
  v6 = MKMapPointForCoordinate(a3);
  v7 = MEMORY[0x24C2193E0](latitude) * a4;
  v8 = v6.x - v7;
  v9 = v6.y - v7;
  v10 = v7 + v7;
  v11 = v10;
  result.var1.var1 = v11;
  result.var1.var0 = v10;
  result.var0.var1 = v9;
  result.var0.var0 = v8;
  return result;
}

- (UIEdgeInsets)edgeInsetsWithMinApplied:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v22 = *MEMORY[0x277D85DE8];
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218752;
    v15 = top;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    v20 = 2048;
    v21 = bottom;
    _os_log_impl(&dword_24A4E3000, v7, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: before top: %f, left: %f, right: %f, bottom: %f", &v14, 0x2Au);
  }

  if (top < 48.0)
  {
    top = 48.0;
  }

  if (left < 38.0)
  {
    left = 38.0;
  }

  if (right < 38.0)
  {
    right = 38.0;
  }

  if (bottom < 48.0)
  {
    bottom = 48.0;
  }

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218752;
    v15 = top;
    v16 = 2048;
    v17 = left;
    v18 = 2048;
    v19 = right;
    v20 = 2048;
    v21 = bottom;
    _os_log_impl(&dword_24A4E3000, v8, OS_LOG_TYPE_DEFAULT, "FMMapViewDelegateInternal: after top: %f, left: %f, right: %f, bottom: %f", &v14, 0x2Au);
  }

  v9 = *MEMORY[0x277D85DE8];
  v10 = top;
  v11 = left;
  v12 = bottom;
  v13 = right;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (FMFMapViewDelegateInternalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationCoordinate2D)lastUserLocationCoordinate
{
  latitude = self->_lastUserLocationCoordinate.latitude;
  longitude = self->_lastUserLocationCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end