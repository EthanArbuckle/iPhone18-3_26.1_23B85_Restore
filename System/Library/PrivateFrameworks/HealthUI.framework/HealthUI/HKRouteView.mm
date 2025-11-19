@interface HKRouteView
- (HKRouteView)init;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)routeImageForSharing;
- (void)_addAnnotation:(id)a3 isStartPoint:(BOOL)a4;
- (void)_clearMapViewIfNeeded;
- (void)_displayMapRouteForLocationReadings;
- (void)_setRouteMapType:(unint64_t)a3;
- (void)_toggleMapType;
- (void)setLocationReadings:(id)a3;
@end

@implementation HKRouteView

- (HKRouteView)init
{
  v10.receiver = self;
  v10.super_class = HKRouteView;
  v2 = [(HKRouteView *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(HKRouteView *)v2 _clearMapViewIfNeeded];
    v4 = [MEMORY[0x1E69DC738] buttonWithType:0];
    toggleMapTypeButton = v3->_toggleMapTypeButton;
    v3->_toggleMapTypeButton = v4;

    v6 = v3->_toggleMapTypeButton;
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v8 = [v7 colorWithAlphaComponent:0.8];
    [(UIButton *)v6 setBackgroundColor:v8];

    [(UIButton *)v3->_toggleMapTypeButton _setCornerRadius:9.0];
    [(HKRouteView *)v3 _setRouteMapType:5];
    [(HKRouteView *)v3 addSubview:v3->_toggleMapTypeButton];
  }

  return v3;
}

- (void)_clearMapViewIfNeeded
{
  mapView = self->_mapView;
  if (mapView)
  {
    [(MKMapView *)mapView removeFromSuperview];
  }

  v4 = objc_alloc_init(MEMORY[0x1E696F2C0]);
  v5 = self->_mapView;
  self->_mapView = v4;

  [(MKMapView *)self->_mapView setShowsScale:1];
  [(MKMapView *)self->_mapView setShowsCompass:1];
  [(MKMapView *)self->_mapView setMapType:5];
  [(MKMapView *)self->_mapView setDelegate:self];
  [(HKRouteView *)self addSubview:self->_mapView];
  [(MKMapView *)self->_mapView hk_alignConstraintsWithView:self];
  [(MKMapView *)self->_mapView _compassInsets];
  [(MKMapView *)self->_mapView _setCompassInsets:59.0];
  v6 = self->_mapView;

  [(MKMapView *)v6 _setCompassViewSize:1 style:0];
}

- (void)_setRouteMapType:(unint64_t)a3
{
  [(MKMapView *)self->_mapView setMapType:?];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v5 localizedStringForKey:@"WORKOUT_ROUTE_MAP_ACCESSIBILITY_LABEL_MAP_VIEW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  if (a3 == 5)
  {
    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v7 = [v6 localizedStringForKey:@"WORKOUT_ROUTE_MAP_ACCESSIBILITY_LABEL_SATELLITE_VIEW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    v8 = @"Activity-satellite-view";
    v13 = v7;
  }

  else
  {
    v8 = @"Activity-map-view";
  }

  toggleMapTypeButton = self->_toggleMapTypeButton;
  v10 = MEMORY[0x1E69DCAB8];
  v11 = HKHealthUIFrameworkBundle();
  v12 = [v10 imageNamed:v8 inBundle:v11];
  [(UIButton *)toggleMapTypeButton setImage:v12 forState:0];

  [(UIButton *)self->_toggleMapTypeButton setAccessibilityLabel:v13];
}

- (id)routeImageForSharing
{
  [(HKRouteView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 scale];
  v9 = v8;
  v14.width = v4;
  v14.height = v6;
  UIGraphicsBeginImageContextWithOptions(v14, 0, v9);

  v10 = [(MKMapView *)self->_mapView layer];
  [v10 renderInContext:UIGraphicsGetCurrentContext()];

  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v11;
}

- (void)_toggleMapType
{
  if ([(MKMapView *)self->_mapView mapType]== MKMapTypeMutedStandard)
  {
    v3 = 1;
  }

  else
  {
    v3 = 5;
  }

  [(HKRouteView *)self _setRouteMapType:v3];
}

- (void)_addAnnotation:(id)a3 isStartPoint:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = objc_alloc_init(HKMapPointAnnotation);
  [v6 coordinate];
  v8 = v7;
  v10 = v9;

  [(MKPointAnnotation *)v11 setCoordinate:v8, v10];
  [(HKMapPointAnnotation *)v11 setIsStartPoint:v4];
  [(MKMapView *)self->_mapView addAnnotation:v11];
}

- (void)_displayMapRouteForLocationReadings
{
  v3 = [(HKLocationReadings *)self->_locationReadings count];
  locationReadings = self->_locationReadings;
  if (v3 == 1)
  {
    v5 = [(HKLocationReadings *)locationReadings allValidLocations];
    v6 = [v5 firstObject];
    [(HKRouteView *)self _addAnnotation:v6 isStartPoint:1];

    v7 = [(HKLocationReadings *)self->_locationReadings allValidLocations];
    v8 = [v7 firstObject];
    [v8 coordinate];
    v9 = MKMapPointForCoordinate(v22);

    [(MKMapView *)self->_mapView setVisibleMapRect:0 animated:v9.x, v9.y, 1500.0, 1500.0];
    mapView = self->_mapView;
    v20 = [(HKLocationReadings *)self->_locationReadings allValidLocations];
    v11 = [v20 firstObject];
    [v11 coordinate];
    [(MKMapView *)mapView setCenterCoordinate:?];
  }

  else
  {
    v12 = [(HKLocationReadings *)locationReadings count];
    v13 = malloc_type_malloc(16 * v12, 0x1000040451B5BE8uLL);
    v14 = [(HKLocationReadings *)self->_locationReadings firstObject];
    [(HKRouteView *)self _addAnnotation:v14 isStartPoint:1];

    v15 = [(HKLocationReadings *)self->_locationReadings lastObject];
    [(HKRouteView *)self _addAnnotation:v15 isStartPoint:0];

    if (v12)
    {
      v16 = 0;
      v17 = v13 + 8;
      do
      {
        v18 = [(HKLocationReadings *)self->_locationReadings allValidLocations];
        v19 = [v18 objectAtIndexedSubscript:v16];

        [v19 coordinate];
        *(v17 - 8) = MKMapPointForCoordinate(v23);

        ++v16;
        v17 += 16;
      }

      while (v12 != v16);
    }

    v20 = [MEMORY[0x1E696F368] polylineWithPoints:v13 count:v12];
    [(MKMapView *)self->_mapView addOverlay:v20 level:0];
    free(v13);
    [v20 boundingMapRect];
    [MKMapView setVisibleMapRect:"setVisibleMapRect:edgePadding:animated:" edgePadding:0 animated:?];
  }
}

- (void)setLocationReadings:(id)a3
{
  objc_storeStrong(&self->_locationReadings, a3);
  [(HKRouteView *)self _clearMapViewIfNeeded];

  [(HKRouteView *)self _displayMapRouteForLocationReadings];
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:v4 reuseIdentifier:0];
    if ([v4 isStartPoint])
    {
      HKUIStandardMapGreenColor();
    }

    else
    {
      HKUIStandardMapRedColor();
    }
    v6 = ;
    [v5 setMarkerTintColor:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a4;
  v6 = [[_GradientPolylineRenderer alloc] initWithOverlay:v5 locationReadings:self->_locationReadings];

  [(MKOverlayPathRenderer *)v6 setLineWidth:15.0];

  return v6;
}

@end