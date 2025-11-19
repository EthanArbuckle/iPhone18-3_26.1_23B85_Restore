@interface BKUIRotationArrowAnimationLayer
+ (id)animatorByEmbedding:(id)a3 color:(id)a4 radiusForOrientation:(id)a5;
+ (id)animatorWith:(CGRect)a3 color:(id)a4 radiusForOrientation:(id)a5;
- (BKUIRotationArrowAnimationLayer)initWith:(CGRect)a3 radiusForOrientation:(id)a4 arrowAngle:(double)a5 arrowLength:(double)a6 color:(id)a7;
- (CAShapeLayer)circleLayer;
- (CAShapeLayer)rotationLayer;
- (CGPoint)hostCenter;
- (CGSize)containerSize;
- (double)radius;
- (id)_extendedInit:(CGPoint)a3;
- (void)_animateArrowClockwise:(double)a3 duration:(double)a4 animationDelay:(double)a5;
- (void)_animateArrowCounterClockwise:(double)a3 duration:(double)a4 animationDelay:(double)a5;
- (void)_animateArrowPaths:(double)a3 delay:(double)a4 duration:(double)a5;
- (void)_animateArrowUpsideDown:(double)a3 duration:(double)a4 animationDelay:(double)a5;
- (void)_landscapeAnimationImpl:(double)a3 duration:(double)a4 animationDelay:(double)a5;
- (void)_layoutArrowContainer:(int64_t)a3;
- (void)_layoutArrowSubLayers;
- (void)_resetHideCircleLayerStrokeTo:(double)a3;
- (void)_rotateRotationLayerBy:(double)a3 startTime:(double)a4 fromDegree:(unint64_t)a5 toDegree:(unint64_t)a6;
- (void)_updateCircleLayerLayout:(int64_t)a3;
- (void)_zeroOutArrowStroke;
- (void)animateDirectionPath:(double)a3 orientation:(int64_t)a4 duration:(double)a5 animationDelay:(double)a6;
- (void)enableDebug:(BOOL)a3;
- (void)layoutSublayers;
- (void)resetLayout;
- (void)stopAnimationRemoveStroke;
@end

@implementation BKUIRotationArrowAnimationLayer

+ (id)animatorWith:(CGRect)a3 color:(id)a4 radiusForOrientation:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = a4;
  v12 = [[BKUIRotationArrowAnimationLayer alloc] initWith:v10 radiusForOrientation:v11 arrowAngle:x arrowLength:y color:width, height, 0.0, 0.0];

  return v12;
}

+ (id)animatorByEmbedding:(id)a3 color:(id)a4 radiusForOrientation:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [BKUIRotationArrowAnimationLayer alloc];
  [v9 bounds];
  v11 = [BKUIRotationArrowAnimationLayer initWith:v10 radiusForOrientation:"initWith:radiusForOrientation:arrowAngle:arrowLength:color:" arrowAngle:v7 arrowLength:v8 color:?];

  v12 = [v9 layer];
  [v12 addSublayer:v11];

  [v9 center];
  v13 = [(BKUIRotationArrowAnimationLayer *)v11 _extendedInit:?];
  [v9 center];
  [(BKUIRotationArrowAnimationLayer *)v11 setPosition:?];
  [v9 center];
  v15 = v14;
  v17 = v16;

  [(BKUIRotationArrowAnimationLayer *)v11 setHostCenter:v15, v17];

  return v11;
}

- (BKUIRotationArrowAnimationLayer)initWith:(CGRect)a3 radiusForOrientation:(id)a4 arrowAngle:(double)a5 arrowLength:(double)a6 color:(id)a7
{
  v11 = a4;
  v12 = a7;
  v20.receiver = self;
  v20.super_class = BKUIRotationArrowAnimationLayer;
  v13 = [(BKUIRotationArrowAnimationLayer *)&v20 init];
  if (v13)
  {
    v14 = [v11 copy];
    getOrientation = v13->_getOrientation;
    v13->_getOrientation = v14;

    v13->_arrowAngle = a5;
    v13->_arrowlength = a6;
    objc_storeStrong(&v13->_color, a7);
    v16 = (*(v11 + 2))(v11, 0);
    v17 = v16 + v16;
    v18 = (*(v11 + 2))(v11, 0);
    [(BKUIRotationArrowAnimationLayer *)v13 setBounds:0.0, 0.0, v17, v18 + v18];
  }

  return v13;
}

- (id)_extendedInit:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(BKUIRotationArrowAnimationLayer *)self setContainerSize:28.0, 28.0];
  [(BKUIRotationArrowAnimationLayer *)self setHostCenter:x, y];
  v6 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [(BKUIRotationArrowAnimationLayer *)self addSublayer:v6];

  [(BKUIRotationArrowAnimationLayer *)self hostCenter];
  [(BKUIRotationArrowAnimationLayer *)self setPosition:?];
  v7 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  v8 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v7 addSublayer:v8];

  [(BKUIRotationArrowAnimationLayer *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v17 setFrame:{v10, v12, v14, v16}];

  v18 = [MEMORY[0x277CD9ED0] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowContainer:v18];

  v19 = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerLeft:v19];

  v20 = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerRight:v20];

  v21 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v21 setFrame:{0.0, 100.0, 28.0, 28.0}];

  v22 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v22 position];
  v24 = v23;
  v26 = v25;
  v27 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v27 setPosition:{v24, v26}];

  v28 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  v29 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v28 addSublayer:v29];

  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.5];
  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowSubLayers];
  [(BKUIRotationArrowAnimationLayer *)self enableDebug:0];
  return self;
}

- (CAShapeLayer)circleLayer
{
  if (!self->_circleLayer)
  {
    v3 = [MEMORY[0x277CD9F90] layer];
    circleLayer = self->_circleLayer;
    self->_circleLayer = v3;
  }

  [(BKUIRotationArrowAnimationLayer *)self _updateCircleLayerLayout:[(BKUIRotationArrowAnimationLayer *)self orientation]];
  v5 = self->_circleLayer;

  return v5;
}

- (CAShapeLayer)rotationLayer
{
  rotationLayer = self->_rotationLayer;
  if (!rotationLayer)
  {
    v4 = [MEMORY[0x277CD9F90] layer];
    v5 = self->_rotationLayer;
    self->_rotationLayer = v4;

    rotationLayer = self->_rotationLayer;
  }

  return rotationLayer;
}

- (void)_layoutArrowContainer:(int64_t)a3
{
  [(BKUIRotationArrowAnimationLayer *)self setOrientation:a3];
  v4 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v4 bounds];
  MidX = CGRectGetMidX(v28);
  v6 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v6 bounds];
  MidY = CGRectGetMidY(v29);
  v8 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v8 setPosition:{MidX, MidY}];

  v9 = +[BKUIDevice sharedInstance];
  LODWORD(v6) = [v9 isRestrictedToLandscapeEnrollment];

  v10 = [(BKUIRotationArrowAnimationLayer *)self orientation];
  if (!v6)
  {
    if (v10 == 1 || ![(BKUIRotationArrowAnimationLayer *)self orientation])
    {
      return;
    }

    v21 = [(BKUIRotationArrowAnimationLayer *)self orientation];
    v12 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [v12 frame];
    v14 = v22;
    if (v21 == 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v23 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
    [v23 bounds];
    v14 = v14 + v24 * -0.5;

    v15 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [v15 frame];
    v20 = v25;
    goto LABEL_10;
  }

  if (v10 == 4 || ![(BKUIRotationArrowAnimationLayer *)self orientation])
  {
    return;
  }

  v11 = [(BKUIRotationArrowAnimationLayer *)self orientation];
  v12 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v12 frame];
  v14 = v13;
  if (v11 != 3)
  {
    goto LABEL_9;
  }

LABEL_5:

  v15 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v15 frame];
  v17 = v16;
  v18 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v18 bounds];
  v20 = v17 + v19 * 0.5;

LABEL_10:
  v26 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v26 setFrame:{v14, v20, 28.0, 28.0}];
}

- (void)animateDirectionPath:(double)a3 orientation:(int64_t)a4 duration:(double)a5 animationDelay:(double)a6
{
  v11 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v11 setHidden:0];

  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowContainer:a4];
  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowSubLayers];
  [(BKUIRotationArrowAnimationLayer *)self setOrientation:a4];
  v12 = +[BKUIDevice sharedInstance];
  LODWORD(v11) = [v12 isRestrictedToLandscapeEnrollment];

  v13 = [(BKUIRotationArrowAnimationLayer *)self orientation];
  if (v11)
  {
    if (v13 != 3)
    {
      if (v13 != 2)
      {
        if (v13 != 1)
        {
          return;
        }

        goto LABEL_12;
      }

LABEL_9:

      [(BKUIRotationArrowAnimationLayer *)self _animateArrowClockwise:a3 duration:a5 animationDelay:a6];
      return;
    }
  }

  else if (v13 != 2)
  {
    if (v13 == 3)
    {
LABEL_12:

      [(BKUIRotationArrowAnimationLayer *)self _animateArrowCounterClockwise:a3 duration:a5 animationDelay:a6];
      return;
    }

    if (v13 != 4)
    {
      return;
    }

    goto LABEL_9;
  }

  [(BKUIRotationArrowAnimationLayer *)self _animateArrowUpsideDown:a3 duration:a5 animationDelay:a6];
}

- (void)stopAnimationRemoveStroke
{
  v3 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v3 removeAllAnimations];

  v4 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v4 removeAllAnimations];

  [(BKUIRotationArrowAnimationLayer *)self _zeroOutArrowStroke];
  v5 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v5 removeAllAnimations];

  v6 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v6 removeAllAnimations];
}

- (void)_layoutArrowSubLayers
{
  v3 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  v4 = [v3 superlayer];

  if (!v4)
  {
    v5 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
    v6 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [v5 addSublayer:v6];
  }

  v7 = +[BKUIDevice sharedInstance];
  v8 = [v7 isRestrictedToLandscapeEnrollment];

  v9 = [(BKUIRotationArrowAnimationLayer *)self orientation];
  v10 = 2;
  if (v8)
  {
    v10 = 3;
  }

  if (v9 == v10)
  {
    v11 = 28.0;
  }

  else
  {
    v11 = 0.0;
  }

  if (v9 == v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 28.0;
  }

  v41 = [MEMORY[0x277D75208] bezierPath];
  [v41 moveToPoint:{14.0, 14.0}];
  [v41 addLineToPoint:{v11, v12}];
  v13 = [(BKUIRotationArrowAnimationLayer *)self color];
  v14 = [v13 CGColor];
  v15 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v15 setStrokeColor:v14];

  v16 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v16 setFillColor:0];

  v17 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v17 setLineWidth:6.0];

  v18 = *MEMORY[0x277CDA780];
  v19 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v19 setLineCap:v18];

  v20 = v41;
  v21 = [v41 CGPath];
  v22 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v22 setPath:v21];

  v23 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  v24 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v23 addSublayer:v24];

  v25 = [MEMORY[0x277D75208] bezierPath];
  [v25 moveToPoint:{14.0, 14.0}];
  [v25 addLineToPoint:{28.0, 28.0}];
  v26 = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerRight:v26];

  v27 = [(BKUIRotationArrowAnimationLayer *)self color];
  v28 = [v27 CGColor];
  v29 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v29 setStrokeColor:v28];

  v30 = [MEMORY[0x277D75348] clearColor];
  v31 = [v30 CGColor];
  v32 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v32 setFillColor:v31];

  v33 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v33 setLineWidth:6.0];

  v34 = *MEMORY[0x277CDA7A0];
  v35 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v35 setLineJoin:v34];

  v36 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v36 setLineCap:v18];

  v37 = [v25 CGPath];
  v38 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v38 setPath:v37];

  v39 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  v40 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v39 addSublayer:v40];

  [(BKUIRotationArrowAnimationLayer *)self _zeroOutArrowStroke];
}

- (double)radius
{
  v3 = [(BKUIRotationArrowAnimationLayer *)self getOrientation];
  v4 = v3[2](v3, [(BKUIRotationArrowAnimationLayer *)self orientation]);

  return v4;
}

- (void)_animateArrowPaths:(double)a3 delay:(double)a4 duration:(double)a5
{
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"strokeEnd", a3, a4}];
  v8 = a5 * 0.5;
  [v15 setDuration:v8];
  [v15 setFromValue:&unk_2853CC928];
  [v15 setToValue:&unk_2853CC938];
  [v15 setAutoreverses:1];
  [v15 setBeginTime:a3];
  v9 = *MEMORY[0x277CDA7B8];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v10];

  v11 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v11 addAnimation:v15 forKey:@"strokeEnd"];

  v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v12 setDuration:v8];
  [v12 setFromValue:&unk_2853CC928];
  [v12 setToValue:&unk_2853CC938];
  [v12 setAutoreverses:1];
  [v12 setBeginTime:a3];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:v9];
  [v12 setTimingFunction:v13];

  v14 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v14 addAnimation:v12 forKey:@"strokeEnd"];
}

- (void)_rotateRotationLayerBy:(double)a3 startTime:(double)a4 fromDegree:(unint64_t)a5 toDegree:(unint64_t)a6
{
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  [v15 setDuration:a3];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a5 * 3.14159265 / 180.0];
  [v15 setFromValue:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a6 * 3.14159265 / 180.0];
  [v15 setToValue:v12];

  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v13];

  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:*MEMORY[0x277CDA238]];
  [v15 setBeginTime:a4];
  v14 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v14 addAnimation:v15 forKey:@"rotationZ"];
}

- (void)_animateArrowUpsideDown:(double)a3 duration:(double)a4 animationDelay:(double)a5
{
  v8 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  v9 = *(MEMORY[0x277CD9DE8] + 80);
  v24[4] = *(MEMORY[0x277CD9DE8] + 64);
  v24[5] = v9;
  v10 = *(MEMORY[0x277CD9DE8] + 112);
  v24[6] = *(MEMORY[0x277CD9DE8] + 96);
  v24[7] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 16);
  v24[0] = *MEMORY[0x277CD9DE8];
  v24[1] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 48);
  v24[2] = *(MEMORY[0x277CD9DE8] + 32);
  v24[3] = v12;
  [v8 setTransform:v24];

  v13 = CACurrentMediaTime();
  v14 = v13 + a5;
  [(BKUIRotationArrowAnimationLayer *)self _animateArrowPaths:v13 + a5 delay:a5 duration:a4];
  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.25];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v15 setDuration:a4 + a4 * -0.031];
  [v15 setFromValue:&unk_2853CC948];
  [v15 setToValue:&unk_2853CC958];
  [v15 setBeginTime:v14 + a4 * 0.01419];
  LODWORD(v16) = 1054280253;
  LODWORD(v17) = 1058306785;
  LODWORD(v18) = 1065185444;
  v19 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v16 :0.0 :v17 :v18];
  [v15 setTimingFunction:v19];

  [v15 setRemovedOnCompletion:0];
  v20 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v20 addAnimation:v15 forKey:@"strokeEnd"];

  v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v21 setDuration:a4 - a4 * 0.35];
  [v21 setFromValue:&unk_2853CC948];
  [v21 setToValue:&unk_2853CC958];
  v22 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v21 setTimingFunction:v22];

  [v21 setRemovedOnCompletion:0];
  [v21 setFillMode:*MEMORY[0x277CDA238]];
  [v21 setBeginTime:v14 + a4 * 0.35];
  v23 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v23 addAnimation:v21 forKey:@"strokeStart"];

  [(BKUIRotationArrowAnimationLayer *)self _rotateRotationLayerBy:0 startTime:180 fromDegree:a4 toDegree:v14];
}

- (void)_animateArrowClockwise:(double)a3 duration:(double)a4 animationDelay:(double)a5
{
  v9 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  v10 = *(MEMORY[0x277CD9DE8] + 80);
  v14[4] = *(MEMORY[0x277CD9DE8] + 64);
  v14[5] = v10;
  v11 = *(MEMORY[0x277CD9DE8] + 112);
  v14[6] = *(MEMORY[0x277CD9DE8] + 96);
  v14[7] = v11;
  v12 = *(MEMORY[0x277CD9DE8] + 16);
  v14[0] = *MEMORY[0x277CD9DE8];
  v14[1] = v12;
  v13 = *(MEMORY[0x277CD9DE8] + 48);
  v14[2] = *(MEMORY[0x277CD9DE8] + 32);
  v14[3] = v13;
  [v9 setTransform:v14];

  [(BKUIRotationArrowAnimationLayer *)self _landscapeAnimationImpl:a3 duration:a4 animationDelay:a5];
}

- (void)_animateArrowCounterClockwise:(double)a3 duration:(double)a4 animationDelay:(double)a5
{
  CATransform3DMakeRotation(&v11, 3.14159265, 0.0, 1.0, 0.0);
  v9 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  v10 = v11;
  [v9 setTransform:&v10];

  [(BKUIRotationArrowAnimationLayer *)self _landscapeAnimationImpl:a3 duration:a4 animationDelay:a5];
}

- (void)_landscapeAnimationImpl:(double)a3 duration:(double)a4 animationDelay:(double)a5
{
  v8 = CACurrentMediaTime();
  v9 = v8 + a5;
  [(BKUIRotationArrowAnimationLayer *)self _animateArrowPaths:v8 + a5 delay:a5 duration:a4];
  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.5];
  v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v16 setDuration:a4 - a4 * 0.023];
  [v16 setFromValue:&unk_2853CC968];
  [v16 setToValue:&unk_2853CC958];
  [v16 setBeginTime:v9 + a4 * 0.023];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v16 setTimingFunction:v11];

  [v16 setRemovedOnCompletion:0];
  v12 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v12 addAnimation:v16 forKey:@"strokeEnd"];

  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v13 setDuration:a4 - a4 * 0.35];
  [v13 setFromValue:&unk_2853CC968];
  [v13 setToValue:&unk_2853CC958];
  v14 = [MEMORY[0x277CD9EF8] functionWithName:v10];
  [v13 setTimingFunction:v14];

  [v13 setRemovedOnCompletion:0];
  [v13 setFillMode:*MEMORY[0x277CDA238]];
  [v13 setBeginTime:v9 + a4 * 0.35];
  v15 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v15 addAnimation:v13 forKey:@"strokeStart"];

  [(BKUIRotationArrowAnimationLayer *)self _rotateRotationLayerBy:0 startTime:90 fromDegree:a4 toDegree:v9 + a4 * 0.01];
}

- (void)_updateCircleLayerLayout:(int64_t)a3
{
  [(BKUIRotationArrowAnimationLayer *)self radius];
  v5 = v4 + v4;
  [(BKUIRotationArrowAnimationLayer *)self radius];
  v7 = v6 + v6;
  v19 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v5, v6 + v6}];
  [(CAShapeLayer *)self->_circleLayer setBounds:0.0, 0.0, v5, v7];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.490196079 blue:1.0 alpha:1.0];
  -[CAShapeLayer setStrokeColor:](self->_circleLayer, "setStrokeColor:", [v8 CGColor]);

  [(CAShapeLayer *)self->_circleLayer setFillColor:0];
  [(CAShapeLayer *)self->_circleLayer setLineWidth:6.0];
  [(CAShapeLayer *)self->_circleLayer setLineCap:*MEMORY[0x277CDA780]];
  [(CAShapeLayer *)self->_circleLayer setAnchorPoint:0.5, 0.5];
  v9 = v19;
  -[CAShapeLayer setPath:](self->_circleLayer, "setPath:", [v19 CGPath]);
  [(CAShapeLayer *)self->_circleLayer bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v18 setFrame:{v11, v13, v15, v17}];
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = BKUIRotationArrowAnimationLayer;
  [(BKUIRotationArrowAnimationLayer *)&v3 layoutSublayers];
  [(BKUIRotationArrowAnimationLayer *)self _updateCircleLayerLayout:[(BKUIRotationArrowAnimationLayer *)self orientation]];
}

- (void)enableDebug:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75348] greenColor];
  v6 = [v5 CGColor];
  v7 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v7 setBorderColor:v6];

  v8 = v3;
  v9 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [v9 setBorderWidth:v8];

  v10 = [MEMORY[0x277D75348] greenColor];
  v11 = [v10 CGColor];
  v12 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v12 setBorderColor:v11];

  v13 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v13 setBorderWidth:v8];

  v14 = [MEMORY[0x277D75348] blueColor];
  v15 = [v14 CGColor];
  v16 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v16 setBorderColor:v15];

  v17 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v17 setBorderWidth:v8];

  v18 = [MEMORY[0x277D75348] redColor];
  -[BKUIRotationArrowAnimationLayer setBorderColor:](self, "setBorderColor:", [v18 CGColor]);

  [(BKUIRotationArrowAnimationLayer *)self setBorderWidth:v8];
}

- (void)_resetHideCircleLayerStrokeTo:(double)a3
{
  v5 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v5 setHidden:1];

  v6 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v6 setStrokeEnd:a3];

  v7 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v7 setStrokeStart:a3];

  v8 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v8 setHidden:0];
}

- (void)_zeroOutArrowStroke
{
  v3 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v3 setStrokeStart:0.0];

  v4 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [v4 setStrokeEnd:0.0];

  v5 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v5 setStrokeStart:0.0];

  v6 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [v6 setStrokeEnd:0.0];
}

- (void)resetLayout
{
  v3 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [v3 setHidden:1];

  v4 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [v4 setHidden:1];

  [(BKUIRotationArrowAnimationLayer *)self stopAnimationRemoveStroke];
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)hostCenter
{
  x = self->_hostCenter.x;
  y = self->_hostCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end