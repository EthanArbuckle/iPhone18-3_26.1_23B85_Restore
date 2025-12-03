@interface FUPlaneTrackerAnnotationView
+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage;
+ (id)defaultAnotation;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)currentLocation;
- (CLLocationCoordinate2D)endLocation;
- (CLLocationCoordinate2D)startLocation;
- (FUPlaneTrackerAnnotationView)init;
- (double)currentProgress;
- (void)didMoveToSuperview;
- (void)notifyWhenIsVisibleWithBlock:(id)block;
- (void)setCurrentProgress:(double)progress;
- (void)setEndLocation:(CLLocationCoordinate2D)location;
- (void)setPlaneImage:(id)image;
- (void)setShowsPlane:(BOOL)plane;
- (void)setStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude;
- (void)setStartLocation:(CLLocationCoordinate2D)location;
@end

@implementation FUPlaneTrackerAnnotationView

- (void)setCurrentProgress:(double)progress
{
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer updatePlaneStateForProgress:progress];
}

- (void)setStartLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer setStartLocation:{latitude, longitude}];
}

- (void)setEndLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer setEndLocation:{latitude, longitude}];
}

- (CLLocationCoordinate2D)startLocation
{
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer startLocation];
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
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer endLocation];
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
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer currentProgress];
  v4 = v3;

  return v4;
}

- (CLLocationCoordinate2D)currentLocation
{
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer currentLocation];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setStartLatitude:(double)latitude startLongitude:(double)longitude endLatitude:(double)endLatitude endLongitude:(double)endLongitude
{
  [(FUPlaneTrackerAnnotationView *)self setStartLocation:latitude, longitude];
  [(FUPlaneTrackerAnnotationView *)self setEndLocation:endLatitude, endLongitude];
  layer = [(FUPlaneTrackerAnnotationView *)self layer];
  [layer updatePlaneStateForProgress:0.0];
}

- (FUPlaneTrackerAnnotationView)init
{
  v13.receiver = self;
  v13.super_class = FUPlaneTrackerAnnotationView;
  v2 = [(FUPlaneTrackerAnnotationView *)&v13 init];
  v3 = v2;
  if (v2)
  {
    layer = [(FUPlaneTrackerAnnotationView *)v2 layer];
    [layer setAnchorPoint:{0.5, 0.5}];

    blackColor = [MEMORY[0x277D75348] blackColor];
    cGColor = [blackColor CGColor];
    layer2 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [layer2 setShadowColor:cGColor];

    layer3 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    LODWORD(v9) = 1061997773;
    [layer3 setShadowOpacity:v9];

    layer4 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [layer4 setShadowRadius:2.0];

    layer5 = [(FUPlaneTrackerAnnotationView *)v3 layer];
    [layer5 setShadowOffset:{0.0, 0.0}];
  }

  return v3;
}

+ (id)defaultAnotation
{
  v2 = objc_alloc_init(FUPlaneTrackerAnnotationView);

  return v2;
}

+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage
{
  [FUPlaneTrackerAnnotationLayer geodesicLocationForStartPosition:position.latitude endPosition:position.longitude positionPercentage:endPosition.latitude, endPosition.longitude, percentage];
  result.longitude = v6;
  result.latitude = v5;
  return result;
}

- (void)setShowsPlane:(BOOL)plane
{
  if (self->_showsPlane != plane)
  {
    self->_showsPlane = plane;
    if (plane)
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

- (void)setPlaneImage:(id)image
{
  imageCopy = image;
  planeLayer = [(FUPlaneTrackerAnnotationView *)self planeLayer];
  [planeLayer setPlaneImage:imageCopy];

  layer = [(FUPlaneTrackerAnnotationView *)self layer];
  [layer bounds];
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
  viewAddedBlock = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];
  v4 = [viewAddedBlock countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(viewAddedBlock);
        }

        (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      v5 = [viewAddedBlock countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(FUPlaneTrackerAnnotationView *)self setViewAddedBlock:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyWhenIsVisibleWithBlock:(id)block
{
  blockCopy = block;
  viewAddedBlock = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];

  if (!viewAddedBlock)
  {
    v6 = objc_opt_new();
    [(FUPlaneTrackerAnnotationView *)self setViewAddedBlock:v6];
  }

  viewAddedBlock2 = [(FUPlaneTrackerAnnotationView *)self viewAddedBlock];
  v7 = MEMORY[0x24C24BAC0](blockCopy);

  [viewAddedBlock2 addObject:v7];
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