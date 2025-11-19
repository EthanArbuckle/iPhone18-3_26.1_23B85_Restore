@interface FMFAnnotationView
- (BOOL)isLiveAnimated;
- (FMFAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 tintColor:(id)a5;
- (id)buildAccuracyLayer;
- (id)buildPulseLayerWithDiameter:(double)a3 centeredInParentLayer:(id)a4;
- (id)buildStewieLayerWithDiameter:(double)a3 image:(id)a4 size:(CGSize)a5 offsetInParentLayer:(id)a6 by:(CGPoint)a7;
- (void)setIsLiveAnimated:(BOOL)a3;
- (void)startLiveAnimation;
- (void)stopLiveAnimation;
- (void)updateWithLocation:(id)a3;
@end

@implementation FMFAnnotationView

- (FMFAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 tintColor:(id)a5
{
  v20.receiver = self;
  v20.super_class = FMFAnnotationView;
  v7 = a3;
  v8 = [(FMAnnotationView *)&v20 initWithAnnotation:v7 reuseIdentifier:a4 tintColor:a5];
  v9 = [(FMFAnnotationView *)v8 buildAccuracyLayer:v20.receiver];
  [(FMFAnnotationView *)v8 setAccuracyLayer:v9];

  [(FMFAnnotationView *)v8 setLastAccuracyRadius:-1.0];
  v10 = [(FMAnnotationView *)v8 locationOuterLayer];
  v11 = [(FMFAnnotationView *)v8 accuracyLayer];
  [v10 addSublayer:v11];

  v12 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:1];
  v13 = [MEMORY[0x277D755B8] _systemImageNamed:@"satellite.fill"];
  v14 = [v13 imageByApplyingSymbolConfiguration:v12];

  v15 = [(FMAnnotationView *)v8 smallCircleLayer];
  v16 = [(FMFAnnotationView *)v8 buildStewieLayerWithDiameter:v14 image:v15 size:26.0 offsetInParentLayer:22.0 by:22.0, 16.0, 16.0];
  [(FMFAnnotationView *)v8 setStewieSmallBadgeLayer:v16];

  v17 = [(FMAnnotationView *)v8 largeCircleLayer];
  v18 = [(FMFAnnotationView *)v8 buildStewieLayerWithDiameter:v14 image:v17 size:64.0 offsetInParentLayer:30.0 by:30.0, 46.0, 46.0];
  [(FMFAnnotationView *)v8 setStewieLargeBadgeLayer:v18];

  [(FMFAnnotationView *)v8 updateWithLocation:v7];
  return v8;
}

- (void)updateWithLocation:(id)a3
{
  v4 = a3;
  [v4 horizontalAccuracy];
  v6 = v5;
  v7 = [v4 locationType];
  v9 = v6 <= 200.0 && v7 == 2;
  [(FMFAnnotationView *)self setIsLiveAnimated:v9];
  v10 = [v4 locationType];
  [v4 horizontalAccuracy];
  v12 = v11;

  [(MKAnnotationView *)self _pointsForDistance:v12];
  v14 = v13;
  v15 = [(FMAnnotationView *)self locationOuterLayer];
  [v15 bounds];
  v17 = v16;
  v18 = [(FMAnnotationView *)self locationOuterLayer];
  [v18 bounds];
  v20 = v19;
  v21 = [(FMAnnotationView *)self locationOuterLayer];
  [v21 bounds];
  v23 = v22;
  v24 = [(FMAnnotationView *)self locationOuterLayer];
  [v24 bounds];
  v26 = v25;

  v27 = [MEMORY[0x277D75348] systemBlueColor];
  v28 = [v27 colorWithAlphaComponent:0.2];
  v29 = [v28 CGColor];
  v30 = [(FMFAnnotationView *)self accuracyLayer];
  [v30 setFillColor:v29];

  v31 = [MEMORY[0x277D75348] clearColor];
  v32 = [v31 CGColor];
  v33 = [(FMFAnnotationView *)self accuracyLayer];
  [v33 setStrokeColor:v32];

  v34 = [(FMFAnnotationView *)self accuracyLayer];
  [v34 setLineWidth:3.0];

  [(FMFAnnotationView *)self lastAccuracyRadius];
  if (v35 != v14)
  {
    v36 = v14 + v14;
    v37 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v36, v36}];
    v38 = [v37 CGPath];

    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v39 = [(FMFAnnotationView *)self accuracyLayer];
    [v39 setPath:v38];

    v40 = [(FMFAnnotationView *)self accuracyLayer];
    [v40 setFrame:{v17 + v20 * 0.5 - v36 * 0.5, v23 + v26 * 0.5 - v36 * 0.5, v36, v36}];

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

  v42 = [(FMFAnnotationView *)self accuracyLayer];
  [v42 opacity];
  v44 = v43;

  if (v41 != v44)
  {
    v45 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    v46 = MEMORY[0x277CCABB0];
    v47 = [(FMFAnnotationView *)self accuracyLayer];
    [v47 opacity];
    v48 = [v46 numberWithFloat:?];
    [v45 setFromValue:v48];

    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
    [v45 setToValue:v49];

    [v45 setDuration:0.5];
    [v45 setRemovedOnCompletion:0];
    v50 = [(FMFAnnotationView *)self accuracyLayer];
    [v50 addAnimation:v45 forKey:@"opacity"];
  }

  if (v10 == 3)
  {
    v51 = 1.0;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = [(FMFAnnotationView *)self stewieSmallBadgeLayer];
  *&v53 = v51;
  [v52 setOpacity:v53];

  v55 = [(FMFAnnotationView *)self stewieLargeBadgeLayer];
  *&v54 = v51;
  [v55 setOpacity:v54];
}

- (id)buildAccuracyLayer
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, 0.0, 0.0}];
  [v2 setPath:{objc_msgSend(v3, "CGPath")}];

  return v2;
}

- (id)buildPulseLayerWithDiameter:(double)a3 centeredInParentLayer:(id)a4
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75348];
  v6 = a4;
  v7 = [v5 systemGreenColor];
  v8 = [v7 CGColor];

  v9 = objc_opt_new();
  [v6 bounds];
  v11 = (v10 - a3) * 0.5;
  [v6 bounds];
  [v9 setFrame:{v11, (v12 - a3) * 0.5, a3, a3}];
  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, a3, a3}];
  [v9 setPath:{objc_msgSend(v13, "CGPath")}];

  [v9 setAnchorPoint:{0.5, 0.5}];
  [v9 setFillColor:v8];
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
  [v6 insertSublayer:v9 atIndex:0];

  [v9 addAnimation:v16 forKey:@"pulse"];
  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isLiveAnimated
{
  v2 = [(FMFAnnotationView *)self smallPulseLayer];
  v3 = [v2 animationKeys];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)setIsLiveAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(FMFAnnotationView *)self isLiveAnimated]!= a3)
  {
    if (v3)
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
  v3 = [(FMAnnotationView *)self smallCircleLayer];
  v4 = [(FMFAnnotationView *)self buildPulseLayerWithDiameter:v3 centeredInParentLayer:26.0];
  [(FMFAnnotationView *)self setSmallPulseLayer:v4];

  v6 = [(FMAnnotationView *)self largeCircleLayer];
  v5 = [(FMFAnnotationView *)self buildPulseLayerWithDiameter:v6 centeredInParentLayer:64.0];
  [(FMFAnnotationView *)self setLargePulseLayer:v5];
}

- (void)stopLiveAnimation
{
  v3 = [(FMFAnnotationView *)self smallPulseLayer];
  [v3 removeAllAnimations];

  v4 = [(FMFAnnotationView *)self smallPulseLayer];
  [v4 removeFromSuperlayer];

  [(FMFAnnotationView *)self setSmallPulseLayer:0];
  v5 = [(FMFAnnotationView *)self largePulseLayer];
  [v5 removeAllAnimations];

  v6 = [(FMFAnnotationView *)self largePulseLayer];
  [v6 removeFromSuperlayer];

  [(FMFAnnotationView *)self setLargePulseLayer:0];
}

- (id)buildStewieLayerWithDiameter:(double)a3 image:(id)a4 size:(CGSize)a5 offsetInParentLayer:(id)a6 by:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a5.height;
  width = a5.width;
  v13 = a6;
  v14 = a4;
  v15 = objc_opt_new();
  [v13 bounds];
  v17 = x + (v16 - a3) * 0.5;
  [v13 bounds];
  [v15 setFrame:{v17, y + (v18 - a3) * 0.5, width, height}];
  v19 = objc_opt_new();
  [v19 setFrame:{0.0, 0.0, width, height}];
  v20 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, width, height}];
  [v19 setPath:{objc_msgSend(v20, "CGPath")}];

  v21 = [MEMORY[0x277D75348] whiteColor];
  [v19 setFillColor:{objc_msgSend(v21, "CGColor")}];

  v22 = objc_opt_new();
  [v19 frame];
  v31 = CGRectInset(v30, 2.0, 2.0);
  [v22 setFrame:{v31.origin.x, v31.origin.y, v31.size.width, v31.size.height}];
  v23 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, width + -4.0, height + -4.0}];
  [v22 setPath:{objc_msgSend(v23, "CGPath")}];

  v24 = [MEMORY[0x277D75348] blackColor];
  [v22 setFillColor:{objc_msgSend(v24, "CGColor")}];

  v25 = objc_opt_new();
  [v22 frame];
  v33 = CGRectInset(v32, 2.0, 2.0);
  [v25 setFrame:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
  [v25 setContentsGravity:*MEMORY[0x277CDA720]];
  v26 = [MEMORY[0x277D75348] whiteColor];
  v27 = [v14 tintedImageWithColor:v26];

  [v25 setContents:{objc_msgSend(v27, "CGImage")}];
  [v15 addSublayer:v19];
  [v15 addSublayer:v22];
  [v15 addSublayer:v25];
  [v13 addSublayer:v15];

  return v15;
}

@end