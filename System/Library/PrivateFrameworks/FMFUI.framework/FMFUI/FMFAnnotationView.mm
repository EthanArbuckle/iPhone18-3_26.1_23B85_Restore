@interface FMFAnnotationView
- (BOOL)isLiveAnimated;
- (FMFAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier tintColor:(id)color;
- (id)buildAccuracyLayer;
- (id)buildPulseLayerWithDiameter:(double)diameter centeredInParentLayer:(id)layer;
- (id)buildStewieLayerWithDiameter:(double)diameter image:(id)image size:(CGSize)size offsetInParentLayer:(id)layer by:(CGPoint)by;
- (void)setIsLiveAnimated:(BOOL)animated;
- (void)startLiveAnimation;
- (void)stopLiveAnimation;
- (void)updateWithLocation:(id)location;
@end

@implementation FMFAnnotationView

- (FMFAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier tintColor:(id)color
{
  v20.receiver = self;
  v20.super_class = FMFAnnotationView;
  annotationCopy = annotation;
  v8 = [(FMAnnotationView *)&v20 initWithAnnotation:annotationCopy reuseIdentifier:identifier tintColor:color];
  v9 = [(FMFAnnotationView *)v8 buildAccuracyLayer:v20.receiver];
  [(FMFAnnotationView *)v8 setAccuracyLayer:v9];

  [(FMFAnnotationView *)v8 setLastAccuracyRadius:-1.0];
  locationOuterLayer = [(FMAnnotationView *)v8 locationOuterLayer];
  accuracyLayer = [(FMFAnnotationView *)v8 accuracyLayer];
  [locationOuterLayer addSublayer:accuracyLayer];

  v12 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:1];
  v13 = [MEMORY[0x277D755B8] _systemImageNamed:@"satellite.fill"];
  v14 = [v13 imageByApplyingSymbolConfiguration:v12];

  smallCircleLayer = [(FMAnnotationView *)v8 smallCircleLayer];
  v16 = [(FMFAnnotationView *)v8 buildStewieLayerWithDiameter:v14 image:smallCircleLayer size:26.0 offsetInParentLayer:22.0 by:22.0, 16.0, 16.0];
  [(FMFAnnotationView *)v8 setStewieSmallBadgeLayer:v16];

  largeCircleLayer = [(FMAnnotationView *)v8 largeCircleLayer];
  v18 = [(FMFAnnotationView *)v8 buildStewieLayerWithDiameter:v14 image:largeCircleLayer size:64.0 offsetInParentLayer:30.0 by:30.0, 46.0, 46.0];
  [(FMFAnnotationView *)v8 setStewieLargeBadgeLayer:v18];

  [(FMFAnnotationView *)v8 updateWithLocation:annotationCopy];
  return v8;
}

- (void)updateWithLocation:(id)location
{
  locationCopy = location;
  [locationCopy horizontalAccuracy];
  v6 = v5;
  locationType = [locationCopy locationType];
  v9 = v6 <= 200.0 && locationType == 2;
  [(FMFAnnotationView *)self setIsLiveAnimated:v9];
  locationType2 = [locationCopy locationType];
  [locationCopy horizontalAccuracy];
  v12 = v11;

  [(MKAnnotationView *)self _pointsForDistance:v12];
  v14 = v13;
  locationOuterLayer = [(FMAnnotationView *)self locationOuterLayer];
  [locationOuterLayer bounds];
  v17 = v16;
  locationOuterLayer2 = [(FMAnnotationView *)self locationOuterLayer];
  [locationOuterLayer2 bounds];
  v20 = v19;
  locationOuterLayer3 = [(FMAnnotationView *)self locationOuterLayer];
  [locationOuterLayer3 bounds];
  v23 = v22;
  locationOuterLayer4 = [(FMAnnotationView *)self locationOuterLayer];
  [locationOuterLayer4 bounds];
  v26 = v25;

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v28 = [systemBlueColor colorWithAlphaComponent:0.2];
  cGColor = [v28 CGColor];
  accuracyLayer = [(FMFAnnotationView *)self accuracyLayer];
  [accuracyLayer setFillColor:cGColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor2 = [clearColor CGColor];
  accuracyLayer2 = [(FMFAnnotationView *)self accuracyLayer];
  [accuracyLayer2 setStrokeColor:cGColor2];

  accuracyLayer3 = [(FMFAnnotationView *)self accuracyLayer];
  [accuracyLayer3 setLineWidth:3.0];

  [(FMFAnnotationView *)self lastAccuracyRadius];
  if (v35 != v14)
  {
    v36 = v14 + v14;
    v37 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v36, v36}];
    cGPath = [v37 CGPath];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    accuracyLayer4 = [(FMFAnnotationView *)self accuracyLayer];
    [accuracyLayer4 setPath:cGPath];

    accuracyLayer5 = [(FMFAnnotationView *)self accuracyLayer];
    [accuracyLayer5 setFrame:{v17 + v20 * 0.5 - v36 * 0.5, v23 + v26 * 0.5 - v36 * 0.5, v36, v36}];

    [MEMORY[0x277CD9FF0] commit];
  }

  v41 = 0.0;
  if (v6 > 200.0)
  {
    if ([(MKAnnotationView *)self isSelected])
    {
      v41 = 1.0;
    }

    else
    {
      v41 = 0.0;
    }
  }

  accuracyLayer6 = [(FMFAnnotationView *)self accuracyLayer];
  [accuracyLayer6 opacity];
  v44 = v43;

  if (v41 != v44)
  {
    v45 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v46 = MEMORY[0x277CCABB0];
    accuracyLayer7 = [(FMFAnnotationView *)self accuracyLayer];
    [accuracyLayer7 opacity];
    v48 = [v46 numberWithFloat:?];
    [v45 setFromValue:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    [v45 setToValue:v49];

    [v45 setDuration:0.5];
    [v45 setRemovedOnCompletion:0];
    accuracyLayer8 = [(FMFAnnotationView *)self accuracyLayer];
    [accuracyLayer8 addAnimation:v45 forKey:@"opacity"];
  }

  if (locationType2 == 3)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  stewieSmallBadgeLayer = [(FMFAnnotationView *)self stewieSmallBadgeLayer];
  *&v53 = v51;
  [stewieSmallBadgeLayer setOpacity:v53];

  stewieLargeBadgeLayer = [(FMFAnnotationView *)self stewieLargeBadgeLayer];
  *&v54 = v51;
  [stewieLargeBadgeLayer setOpacity:v54];
}

- (id)buildAccuracyLayer
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, 0.0, 0.0}];
  [v2 setPath:{objc_msgSend(v3, "CGPath")}];

  return v2;
}

- (id)buildPulseLayerWithDiameter:(double)diameter centeredInParentLayer:(id)layer
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75348];
  layerCopy = layer;
  systemGreenColor = [v5 systemGreenColor];
  cGColor = [systemGreenColor CGColor];

  v9 = objc_opt_new();
  [layerCopy bounds];
  v11 = (v10 - diameter) * 0.5;
  [layerCopy bounds];
  [v9 setFrame:{v11, (v12 - diameter) * 0.5, diameter, diameter}];
  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  [v9 setPath:{objc_msgSend(v13, "CGPath")}];

  [v9 setAnchorPoint:{0.5, 0.5}];
  [v9 setFillColor:cGColor];
  [v9 setOpacity:0.0];
  v14 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
  [v14 setFromValue:&unk_285D9C5D0];
  [v14 setToValue:&unk_285D9C5E0];
  [v14 setDuration:1.5];
  [v14 setRemovedOnCompletion:0];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
  [v15 setFromValue:&unk_285D9C5F0];
  [v15 setToValue:&unk_285D9C600];
  [v15 setDuration:1.5];
  [v15 setRemovedOnCompletion:0];
  v16 = objc_opt_new();
  v22[0] = v14;
  v22[1] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v16 setAnimations:v17];

  [v16 setDuration:1.5];
  [v16 setRepeatCount:0.0];
  v18 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
  [v16 setTimingFunction:v18];

  [v15 setRemovedOnCompletion:0];
  LODWORD(v19) = 2139095039;
  [v16 setRepeatCount:v19];
  [layerCopy insertSublayer:v9 atIndex:0];

  [v9 addAnimation:v16 forKey:@"pulse"];
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isLiveAnimated
{
  smallPulseLayer = [(FMFAnnotationView *)self smallPulseLayer];
  animationKeys = [smallPulseLayer animationKeys];
  v4 = [animationKeys count] != 0;

  return v4;
}

- (void)setIsLiveAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(FMFAnnotationView *)self isLiveAnimated]!= animated)
  {
    if (animatedCopy)
    {

      [(FMFAnnotationView *)self startLiveAnimation];
    }

    else
    {

      [(FMFAnnotationView *)self stopLiveAnimation];
    }
  }
}

- (void)startLiveAnimation
{
  smallCircleLayer = [(FMAnnotationView *)self smallCircleLayer];
  v4 = [(FMFAnnotationView *)self buildPulseLayerWithDiameter:smallCircleLayer centeredInParentLayer:26.0];
  [(FMFAnnotationView *)self setSmallPulseLayer:v4];

  largeCircleLayer = [(FMAnnotationView *)self largeCircleLayer];
  v5 = [(FMFAnnotationView *)self buildPulseLayerWithDiameter:largeCircleLayer centeredInParentLayer:64.0];
  [(FMFAnnotationView *)self setLargePulseLayer:v5];
}

- (void)stopLiveAnimation
{
  smallPulseLayer = [(FMFAnnotationView *)self smallPulseLayer];
  [smallPulseLayer removeAllAnimations];

  smallPulseLayer2 = [(FMFAnnotationView *)self smallPulseLayer];
  [smallPulseLayer2 removeFromSuperlayer];

  [(FMFAnnotationView *)self setSmallPulseLayer:0];
  largePulseLayer = [(FMFAnnotationView *)self largePulseLayer];
  [largePulseLayer removeAllAnimations];

  largePulseLayer2 = [(FMFAnnotationView *)self largePulseLayer];
  [largePulseLayer2 removeFromSuperlayer];

  [(FMFAnnotationView *)self setLargePulseLayer:0];
}

- (id)buildStewieLayerWithDiameter:(double)diameter image:(id)image size:(CGSize)size offsetInParentLayer:(id)layer by:(CGPoint)by
{
  y = by.y;
  x = by.x;
  height = size.height;
  width = size.width;
  layerCopy = layer;
  imageCopy = image;
  v15 = objc_opt_new();
  [layerCopy bounds];
  v17 = x + (v16 - diameter) * 0.5;
  [layerCopy bounds];
  [v15 setFrame:{v17, y + (v18 - diameter) * 0.5, width, height}];
  v19 = objc_opt_new();
  [v19 setFrame:{0.0, 0.0, width, height}];
  v20 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, width, height}];
  [v19 setPath:{objc_msgSend(v20, "CGPath")}];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v19 setFillColor:{objc_msgSend(whiteColor, "CGColor")}];

  v22 = objc_opt_new();
  [v19 frame];
  v31 = CGRectInset(v30, 2.0, 2.0);
  [v22 setFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
  v23 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, width + -4.0, height + -4.0}];
  [v22 setPath:{objc_msgSend(v23, "CGPath")}];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [v22 setFillColor:{objc_msgSend(blackColor, "CGColor")}];

  v25 = objc_opt_new();
  [v22 frame];
  v33 = CGRectInset(v32, 2.0, 2.0);
  [v25 setFrame:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
  [v25 setContentsGravity:*MEMORY[0x277CDA720]];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v27 = [imageCopy tintedImageWithColor:whiteColor2];

  [v25 setContents:{objc_msgSend(v27, "CGImage")}];
  [v15 addSublayer:v19];
  [v15 addSublayer:v22];
  [v15 addSublayer:v25];
  [layerCopy addSublayer:v15];

  return v15;
}

@end