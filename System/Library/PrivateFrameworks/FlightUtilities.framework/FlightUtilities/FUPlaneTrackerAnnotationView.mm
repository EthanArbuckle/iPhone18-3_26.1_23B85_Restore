@interface FUPlaneTrackerAnnotationView
+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)a3 endPosition:(CLLocationCoordinate2D)a4 positionPercentage:(double)a5;
+ (id)defaultAnotation;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)currentLocation;
- (CLLocationCoordinate2D)endLocation;
- (CLLocationCoordinate2D)startLocation;
- (FUPlaneTrackerAnnotationView)init;
- (double)currentProgress;
- (void)didMoveToSuperview;
- (void)notifyWhenIsVisibleWithBlock:(id)a3;
- (void)setCurrentProgress:(double)a3;
- (void)setEndLocation:(CLLocationCoordinate2D)a3;
- (void)setPlaneImage:(id)a3;
- (void)setShowsPlane:(BOOL)a3;
- (void)setStartLatitude:(double)a3 startLongitude:(double)a4 endLatitude:(double)a5 endLongitude:(double)a6;
- (void)setStartLocation:(CLLocationCoordinate2D)a3;
@end

@implementation FUPlaneTrackerAnnotationView

- (void)setCurrentProgress:(double)a3
{
  v4 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v4 updatePlaneStateForProgress:a3];
}

- (void)setStartLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v5 setStartLocation:{latitude, longitude}];
}

- (void)setEndLocation:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v5 setEndLocation:{latitude, longitude}];
}

- (CLLocationCoordinate2D)startLocation
{
  v2 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v2 startLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (CLLocationCoordinate2D)endLocation
{
  v2 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v2 endLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (double)currentProgress
{
  v2 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v2 currentProgress];
  v4 = v3;

  return v4;
}

- (CLLocationCoordinate2D)currentLocation
{
  v2 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v2 currentLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setStartLatitude:(double)a3 startLongitude:(double)a4 endLatitude:(double)a5 endLongitude:(double)a6
{
  [(FUPlaneTrackerAnnotationView *)self setStartLocation:a3, a4];
  [(FUPlaneTrackerAnnotationView *)self setEndLocation:a5, a6];
  v9 = [(FUPlaneTrackerAnnotationView *)self layer];
  [v9 updatePlaneStateForProgress:0.0];
}

- (FUPlaneTrackerAnnotationView)init
{
  v13.receiver = self;
  v13.super_class = FUPlaneTrackerAnnotationView;
  v2 = [(FUPlaneTrackerAnnotationView *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(FUPlaneTrackerAnnotationView *)v2 layer];
    [v4 setAnchorPoint:{0.5, 0.5}];

    v5 = [MEMORY[0x277D75348] blackColor];
    v6 = [v5 CGColor];
    v7 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [v7 setShadowColor:v6];

    v8 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    LODWORD(v9) = 1061997773;
    [v8 setShadowOpacity:v9];

    v10 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [v10 setShadowRadius:2.0];

    v11 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [v11 setShadowOffset:{0.0, 0.0}];
  }

  return v3;
}

+ (id)defaultAnotation
{
  v2 = objc_alloc_init(FUPlaneTrackerAnnotationView);

  return v2;
}

+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)a3 endPosition:(CLLocationCoordinate2D)a4 positionPercentage:(double)a5
{
  [FUPlaneTrackerAnnotationLayer geodesicLocationForStartPosition:a3.latitude endPosition:a3.longitude positionPercentage:a4.latitude, a4.longitude, a5];
  result.longitude = v6;
  result.latitude = v5;
  return result;
}

- (void)setShowsPlane:(BOOL)a3
{
  if (self->_showsPlane != a3)
  {
    self->_showsPlane = a3;
    if (a3)
    {
      v4 = [MEMORY[0x277D755B8] systemImageNamed:@"airplane"];
      [(FUPlaneTrackerAnnotationView *)self setPlaneImage:v4];
    }

    else
    {

      [(FUPlaneTrackerAnnotationView *)self setPlaneImage:0];
    }
  }
}

- (void)setPlaneImage:(id)a3
{
  v4 = a3;
  v5 = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [v5 setPlaneImage:v4];

  v6 = [(FUPlaneTrackerAnnotationView *)self layer];
  [v6 bounds];
  [(FUPlaneTrackerAnnotationView *)self setFrame:?];
}

- (void)didMoveToSuperview
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = FUPlaneTrackerAnnotationView;
  [(MKAnnotationView *)&v13 didMoveToSuperview];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(FUPlaneTrackerAnnotationView *)self setViewAddedBlock:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenIsVisibleWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];

  if (!v5)
  {
    v6 = objc_opt_new();
    [(FUPlaneTrackerAnnotationView *)self setViewAddedBlock:v6];
  }

  v8 = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];
  v7 = MEMORY[0x24C24BAC0](v4);

  [v8 addObject:v7];
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end