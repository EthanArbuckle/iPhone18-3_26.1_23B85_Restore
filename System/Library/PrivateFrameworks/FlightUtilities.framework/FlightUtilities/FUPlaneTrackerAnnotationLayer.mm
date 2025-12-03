@interface FUPlaneTrackerAnnotationLayer
+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage;
- (CALayer)planeImageLayer;
- (CLLocationCoordinate2D)currentLocation;
- (CLLocationCoordinate2D)endLocation;
- (CLLocationCoordinate2D)startLocation;
- (FUPlaneTrackerAnnotationLayer)init;
- (double)defaultHeadingForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage;
- (void)setPlaneImage:(id)image;
- (void)updatePlaneStateForProgress:(double)progress;
@end

@implementation FUPlaneTrackerAnnotationLayer

- (void)setPlaneImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v6 = v5;
  [imageCopy size];
  v8 = v7;
  planeImageLayer = [(FUPlaneTrackerAnnotationLayer *)self planeImageLayer];
  [planeImageLayer setBounds:{0.0, 0.0, v6, v8}];
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = v6;
  v16.size.height = v8;
  [planeImageLayer setPosition:{MidX, CGRectGetMidY(v16)}];
  v10 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  [v10 setFrame:{0.0, 0.0, v6, v8}];
  cGImage = [imageCopy CGImage];

  [v10 setContents:cGImage];
  [planeImageLayer setMask:v10];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [planeImageLayer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

  [(FUPlaneTrackerAnnotationLayer *)self setBounds:0.0, 0.0, v6, v8];
}

- (FUPlaneTrackerAnnotationLayer)init
{
  v5.receiver = self;
  v5.super_class = FUPlaneTrackerAnnotationLayer;
  v2 = [(FUPlaneTrackerAnnotationLayer *)&v5 init];
  if (v2)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    [(FUPlaneTrackerAnnotationLayer *)v2 setPlaneImageLayer:layer];
    [(FUPlaneTrackerAnnotationLayer *)v2 addSublayer:layer];
  }

  return v2;
}

- (void)updatePlaneStateForProgress:(double)progress
{
  [(FUPlaneTrackerAnnotationLayer *)self setCurrentProgress:?];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = objc_opt_class();
  [(FUPlaneTrackerAnnotationLayer *)self startLocation];
  v7 = v6;
  v9 = v8;
  [(FUPlaneTrackerAnnotationLayer *)self endLocation];
  [v5 geodesicLocationForStartPosition:v7 endPosition:v9 positionPercentage:{v10, v11, progress}];
  v13 = v12;
  v15 = v14;
  delegate = [(FUPlaneTrackerAnnotationLayer *)self delegate];
  [delegate setCoordinate:{v13, v15}];

  [(FUPlaneTrackerAnnotationLayer *)self startLocation];
  v18 = v17;
  v20 = v19;
  [(FUPlaneTrackerAnnotationLayer *)self endLocation];
  [(FUPlaneTrackerAnnotationLayer *)self defaultHeadingForStartPosition:v18 endPosition:v20 positionPercentage:v21, v22, progress];
  CGAffineTransformMakeRotation(&v26, v23 * -0.0174532925);
  planeImageLayer = [(FUPlaneTrackerAnnotationLayer *)self planeImageLayer];
  v25 = v26;
  [planeImageLayer setAffineTransform:&v25];

  [MEMORY[0x277CD9FF0] commit];
}

- (CLLocationCoordinate2D)currentLocation
{
  v3 = objc_opt_class();
  [(FUPlaneTrackerAnnotationLayer *)self startLocation];
  v5 = v4;
  v7 = v6;
  [(FUPlaneTrackerAnnotationLayer *)self endLocation];
  v9 = v8;
  v11 = v10;
  [(FUPlaneTrackerAnnotationLayer *)self currentProgress];

  [v3 geodesicLocationForStartPosition:v5 endPosition:v7 positionPercentage:{v9, v11, v12}];
  result.longitude = v14;
  result.latitude = v13;
  return result;
}

+ (CLLocationCoordinate2D)geodesicLocationForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage
{
  v6 = endPosition.latitude * 0.0174532925;
  v7 = position.longitude * 0.0174532925;
  v8 = endPosition.longitude * 0.0174532925;
  v27 = endPosition.longitude * 0.0174532925;
  v9 = __sincos_stret(position.latitude * 0.0174532925);
  v10 = __sincos_stret(v6);
  v11 = cos(v7 - v8);
  v12 = acos(v9.__cosval * v10.__cosval * v11 + v9.__sinval * v10.__sinval);
  v13 = sin((1.0 - percentage) * v12);
  v14 = sin(v12);
  v15 = v13 / v14;
  v16 = sin(v12 * percentage) / v14;
  v17 = __sincos_stret(v7);
  v18 = __sincos_stret(v27);
  v19 = v18.__cosval * (v10.__cosval * v16) + v9.__cosval * v15 * v17.__cosval;
  v20 = v18.__sinval * (v10.__cosval * v16) + v9.__cosval * v15 * v17.__sinval;
  v21 = atan2(v10.__sinval * v16 + v15 * v9.__sinval, sqrt(v20 * v20 + v19 * v19));
  v22 = atan2(v20, v19);
  v24 = CLLocationCoordinate2DMake(v21 * 57.2957795, v22 * 57.2957795);
  longitude = v24.longitude;
  latitude = -84.99;
  if (v24.latitude >= -84.99)
  {
    latitude = v24.latitude;
    if (v24.latitude > 84.99)
    {
      latitude = 84.99;
    }
  }

  v26 = latitude;
  result.longitude = longitude;
  result.latitude = v26;
  return result;
}

- (double)defaultHeadingForStartPosition:(CLLocationCoordinate2D)position endPosition:(CLLocationCoordinate2D)endPosition positionPercentage:(double)percentage
{
  longitude = endPosition.longitude;
  latitude = endPosition.latitude;
  v7 = position.longitude;
  v8 = position.latitude;
  if (percentage <= 0.99)
  {
    v9 = percentage + 0.01;
  }

  else
  {
    v9 = 1.0;
  }

  if (percentage <= 0.99)
  {
    percentageCopy = percentage;
  }

  else
  {
    percentageCopy = 0.99;
  }

  [objc_opt_class() geodesicLocationForStartPosition:position.latitude endPosition:position.longitude positionPercentage:{endPosition.latitude, endPosition.longitude, percentageCopy}];
  v11 = MKMapPointForCoordinate(v17);
  [objc_opt_class() geodesicLocationForStartPosition:v8 endPosition:v7 positionPercentage:{latitude, longitude, v9}];
  v12 = MKMapPointForCoordinate(v18);
  v13 = v12.x - v11.x;
  v14 = v12.y - v11.y;
  v15 = sqrt(v14 * v14 + v13 * v13);
  result = 0.0;
  if (v15 != 0.0)
  {
    return (atan2(v13 / v15, v14 / v15) + -1.57079633) * 57.2957795;
  }

  return result;
}

- (CLLocationCoordinate2D)startLocation
{
  latitude = self->_startLocation.latitude;
  longitude = self->_startLocation.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)endLocation
{
  latitude = self->_endLocation.latitude;
  longitude = self->_endLocation.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CALayer)planeImageLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_planeImageLayer);

  return WeakRetained;
}

@end