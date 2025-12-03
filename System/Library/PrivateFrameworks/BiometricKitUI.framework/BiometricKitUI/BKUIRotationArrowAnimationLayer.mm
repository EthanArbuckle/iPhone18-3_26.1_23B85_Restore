@interface BKUIRotationArrowAnimationLayer
+ (id)animatorByEmbedding:(id)embedding color:(id)color radiusForOrientation:(id)orientation;
+ (id)animatorWith:(CGRect)with color:(id)color radiusForOrientation:(id)orientation;
- (BKUIRotationArrowAnimationLayer)initWith:(CGRect)with radiusForOrientation:(id)orientation arrowAngle:(double)angle arrowLength:(double)length color:(id)color;
- (CAShapeLayer)circleLayer;
- (CAShapeLayer)rotationLayer;
- (CGPoint)hostCenter;
- (CGSize)containerSize;
- (double)radius;
- (id)_extendedInit:(CGPoint)init;
- (void)_animateArrowClockwise:(double)clockwise duration:(double)duration animationDelay:(double)delay;
- (void)_animateArrowCounterClockwise:(double)clockwise duration:(double)duration animationDelay:(double)delay;
- (void)_animateArrowPaths:(double)paths delay:(double)delay duration:(double)duration;
- (void)_animateArrowUpsideDown:(double)down duration:(double)duration animationDelay:(double)delay;
- (void)_landscapeAnimationImpl:(double)impl duration:(double)duration animationDelay:(double)delay;
- (void)_layoutArrowContainer:(int64_t)container;
- (void)_layoutArrowSubLayers;
- (void)_resetHideCircleLayerStrokeTo:(double)to;
- (void)_rotateRotationLayerBy:(double)by startTime:(double)time fromDegree:(unint64_t)degree toDegree:(unint64_t)toDegree;
- (void)_updateCircleLayerLayout:(int64_t)layout;
- (void)_zeroOutArrowStroke;
- (void)animateDirectionPath:(double)path orientation:(int64_t)orientation duration:(double)duration animationDelay:(double)delay;
- (void)enableDebug:(BOOL)debug;
- (void)layoutSublayers;
- (void)resetLayout;
- (void)stopAnimationRemoveStroke;
@end

@implementation BKUIRotationArrowAnimationLayer

+ (id)animatorWith:(CGRect)with color:(id)color radiusForOrientation:(id)orientation
{
  height = with.size.height;
  width = with.size.width;
  y = with.origin.y;
  x = with.origin.x;
  orientationCopy = orientation;
  colorCopy = color;
  v12 = [[BKUIRotationArrowAnimationLayer alloc] initWith:orientationCopy radiusForOrientation:colorCopy arrowAngle:x arrowLength:y color:width, height, 0.0, 0.0];

  return v12;
}

+ (id)animatorByEmbedding:(id)embedding color:(id)color radiusForOrientation:(id)orientation
{
  orientationCopy = orientation;
  colorCopy = color;
  embeddingCopy = embedding;
  v10 = [BKUIRotationArrowAnimationLayer alloc];
  [embeddingCopy bounds];
  v11 = [BKUIRotationArrowAnimationLayer initWith:v10 radiusForOrientation:"initWith:radiusForOrientation:arrowAngle:arrowLength:color:" arrowAngle:orientationCopy arrowLength:colorCopy color:?];

  layer = [embeddingCopy layer];
  [layer addSublayer:v11];

  [embeddingCopy center];
  v13 = [(BKUIRotationArrowAnimationLayer *)v11 _extendedInit:?];
  [embeddingCopy center];
  [(BKUIRotationArrowAnimationLayer *)v11 setPosition:?];
  [embeddingCopy center];
  v15 = v14;
  v17 = v16;

  [(BKUIRotationArrowAnimationLayer *)v11 setHostCenter:v15, v17];

  return v11;
}

- (BKUIRotationArrowAnimationLayer)initWith:(CGRect)with radiusForOrientation:(id)orientation arrowAngle:(double)angle arrowLength:(double)length color:(id)color
{
  orientationCopy = orientation;
  colorCopy = color;
  v20.receiver = self;
  v20.super_class = BKUIRotationArrowAnimationLayer;
  v13 = [(BKUIRotationArrowAnimationLayer *)&v20 init];
  if (v13)
  {
    v14 = [orientationCopy copy];
    getOrientation = v13->_getOrientation;
    v13->_getOrientation = v14;

    v13->_arrowAngle = angle;
    v13->_arrowlength = length;
    objc_storeStrong(&v13->_color, color);
    v16 = (*(orientationCopy + 2))(orientationCopy, 0);
    v17 = v16 + v16;
    v18 = (*(orientationCopy + 2))(orientationCopy, 0);
    [(BKUIRotationArrowAnimationLayer *)v13 setBounds:0.0, 0.0, v17, v18 + v18];
  }

  return v13;
}

- (id)_extendedInit:(CGPoint)init
{
  y = init.y;
  x = init.x;
  [(BKUIRotationArrowAnimationLayer *)self setContainerSize:28.0, 28.0];
  [(BKUIRotationArrowAnimationLayer *)self setHostCenter:x, y];
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [(BKUIRotationArrowAnimationLayer *)self addSublayer:circleLayer];

  [(BKUIRotationArrowAnimationLayer *)self hostCenter];
  [(BKUIRotationArrowAnimationLayer *)self setPosition:?];
  circleLayer2 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [circleLayer2 addSublayer:rotationLayer];

  [(BKUIRotationArrowAnimationLayer *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  circleLayer3 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer3 setFrame:{v10, v12, v14, v16}];

  layer = [MEMORY[0x277CD9ED0] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowContainer:layer];

  layer2 = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerLeft:layer2];

  layer3 = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerRight:layer3];

  arrowContainer = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer setFrame:{0.0, 100.0, 28.0, 28.0}];

  rotationLayer2 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer2 position];
  v24 = v23;
  v26 = v25;
  arrowContainer2 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer2 setPosition:{v24, v26}];

  rotationLayer3 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  arrowContainer3 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [rotationLayer3 addSublayer:arrowContainer3];

  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.5];
  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowSubLayers];
  [(BKUIRotationArrowAnimationLayer *)self enableDebug:0];
  return self;
}

- (CAShapeLayer)circleLayer
{
  if (!self->_circleLayer)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    circleLayer = self->_circleLayer;
    self->_circleLayer = layer;
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
    layer = [MEMORY[0x277CD9F90] layer];
    v5 = self->_rotationLayer;
    self->_rotationLayer = layer;

    rotationLayer = self->_rotationLayer;
  }

  return rotationLayer;
}

- (void)_layoutArrowContainer:(int64_t)container
{
  [(BKUIRotationArrowAnimationLayer *)self setOrientation:container];
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer bounds];
  MidX = CGRectGetMidX(v28);
  circleLayer2 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer2 bounds];
  MidY = CGRectGetMidY(v29);
  arrowContainer = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer setPosition:{MidX, MidY}];

  v9 = +[BKUIDevice sharedInstance];
  LODWORD(circleLayer2) = [v9 isRestrictedToLandscapeEnrollment];

  orientation = [(BKUIRotationArrowAnimationLayer *)self orientation];
  if (!circleLayer2)
  {
    if (orientation == 1 || ![(BKUIRotationArrowAnimationLayer *)self orientation])
    {
      return;
    }

    orientation2 = [(BKUIRotationArrowAnimationLayer *)self orientation];
    arrowContainer2 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [arrowContainer2 frame];
    v14 = v22;
    if (orientation2 == 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    circleLayer3 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
    [circleLayer3 bounds];
    v14 = v14 + v24 * -0.5;

    arrowContainer3 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [arrowContainer3 frame];
    v20 = v25;
    goto LABEL_10;
  }

  if (orientation == 4 || ![(BKUIRotationArrowAnimationLayer *)self orientation])
  {
    return;
  }

  orientation3 = [(BKUIRotationArrowAnimationLayer *)self orientation];
  arrowContainer2 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer2 frame];
  v14 = v13;
  if (orientation3 != 3)
  {
    goto LABEL_9;
  }

LABEL_5:

  arrowContainer3 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer3 frame];
  v17 = v16;
  circleLayer4 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer4 bounds];
  v20 = v17 + v19 * 0.5;

LABEL_10:
  arrowContainer4 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer4 setFrame:{v14, v20, 28.0, 28.0}];
}

- (void)animateDirectionPath:(double)path orientation:(int64_t)orientation duration:(double)duration animationDelay:(double)delay
{
  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer setHidden:0];

  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowContainer:orientation];
  [(BKUIRotationArrowAnimationLayer *)self _layoutArrowSubLayers];
  [(BKUIRotationArrowAnimationLayer *)self setOrientation:orientation];
  v12 = +[BKUIDevice sharedInstance];
  LODWORD(rotationLayer) = [v12 isRestrictedToLandscapeEnrollment];

  orientation = [(BKUIRotationArrowAnimationLayer *)self orientation];
  if (rotationLayer)
  {
    if (orientation != 3)
    {
      if (orientation != 2)
      {
        if (orientation != 1)
        {
          return;
        }

        goto LABEL_12;
      }

LABEL_9:

      [(BKUIRotationArrowAnimationLayer *)self _animateArrowClockwise:path duration:duration animationDelay:delay];
      return;
    }
  }

  else if (orientation != 2)
  {
    if (orientation == 3)
    {
LABEL_12:

      [(BKUIRotationArrowAnimationLayer *)self _animateArrowCounterClockwise:path duration:duration animationDelay:delay];
      return;
    }

    if (orientation != 4)
    {
      return;
    }

    goto LABEL_9;
  }

  [(BKUIRotationArrowAnimationLayer *)self _animateArrowUpsideDown:path duration:duration animationDelay:delay];
}

- (void)stopAnimationRemoveStroke
{
  arrowLayerRight = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight removeAllAnimations];

  arrowLayerLeft = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft removeAllAnimations];

  [(BKUIRotationArrowAnimationLayer *)self _zeroOutArrowStroke];
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer removeAllAnimations];

  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer removeAllAnimations];
}

- (void)_layoutArrowSubLayers
{
  arrowContainer = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  superlayer = [arrowContainer superlayer];

  if (!superlayer)
  {
    rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
    arrowContainer2 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
    [rotationLayer addSublayer:arrowContainer2];
  }

  v7 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v7 isRestrictedToLandscapeEnrollment];

  orientation = [(BKUIRotationArrowAnimationLayer *)self orientation];
  v10 = 2;
  if (isRestrictedToLandscapeEnrollment)
  {
    v10 = 3;
  }

  if (orientation == v10)
  {
    v11 = 28.0;
  }

  else
  {
    v11 = 0.0;
  }

  if (orientation == v10)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 28.0;
  }

  bezierPath = [MEMORY[0x277D75208] bezierPath];
  [bezierPath moveToPoint:{14.0, 14.0}];
  [bezierPath addLineToPoint:{v11, v12}];
  color = [(BKUIRotationArrowAnimationLayer *)self color];
  cGColor = [color CGColor];
  arrowLayerLeft = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft setStrokeColor:cGColor];

  arrowLayerLeft2 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft2 setFillColor:0];

  arrowLayerLeft3 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft3 setLineWidth:6.0];

  v18 = *MEMORY[0x277CDA780];
  arrowLayerLeft4 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft4 setLineCap:v18];

  v20 = bezierPath;
  cGPath = [bezierPath CGPath];
  arrowLayerLeft5 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft5 setPath:cGPath];

  arrowContainer3 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  arrowLayerLeft6 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowContainer3 addSublayer:arrowLayerLeft6];

  bezierPath2 = [MEMORY[0x277D75208] bezierPath];
  [bezierPath2 moveToPoint:{14.0, 14.0}];
  [bezierPath2 addLineToPoint:{28.0, 28.0}];
  layer = [MEMORY[0x277CD9F90] layer];
  [(BKUIRotationArrowAnimationLayer *)self setArrowLayerRight:layer];

  color2 = [(BKUIRotationArrowAnimationLayer *)self color];
  cGColor2 = [color2 CGColor];
  arrowLayerRight = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight setStrokeColor:cGColor2];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor3 = [clearColor CGColor];
  arrowLayerRight2 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight2 setFillColor:cGColor3];

  arrowLayerRight3 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight3 setLineWidth:6.0];

  v34 = *MEMORY[0x277CDA7A0];
  arrowLayerRight4 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight4 setLineJoin:v34];

  arrowLayerRight5 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight5 setLineCap:v18];

  cGPath2 = [bezierPath2 CGPath];
  arrowLayerRight6 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight6 setPath:cGPath2];

  arrowContainer4 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  arrowLayerRight7 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowContainer4 addSublayer:arrowLayerRight7];

  [(BKUIRotationArrowAnimationLayer *)self _zeroOutArrowStroke];
}

- (double)radius
{
  getOrientation = [(BKUIRotationArrowAnimationLayer *)self getOrientation];
  v4 = getOrientation[2](getOrientation, [(BKUIRotationArrowAnimationLayer *)self orientation]);

  return v4;
}

- (void)_animateArrowPaths:(double)paths delay:(double)delay duration:(double)duration
{
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:{@"strokeEnd", paths, delay}];
  v8 = duration * 0.5;
  [v15 setDuration:v8];
  [v15 setFromValue:&unk_2853CC928];
  [v15 setToValue:&unk_2853CC938];
  [v15 setAutoreverses:1];
  [v15 setBeginTime:paths];
  v9 = *MEMORY[0x277CDA7B8];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v10];

  arrowLayerRight = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight addAnimation:v15 forKey:@"strokeEnd"];

  v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v12 setDuration:v8];
  [v12 setFromValue:&unk_2853CC928];
  [v12 setToValue:&unk_2853CC938];
  [v12 setAutoreverses:1];
  [v12 setBeginTime:paths];
  v13 = [MEMORY[0x277CD9EF8] functionWithName:v9];
  [v12 setTimingFunction:v13];

  arrowLayerLeft = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft addAnimation:v12 forKey:@"strokeEnd"];
}

- (void)_rotateRotationLayerBy:(double)by startTime:(double)time fromDegree:(unint64_t)degree toDegree:(unint64_t)toDegree
{
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.rotation.z"];
  [v15 setDuration:by];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:degree * 3.14159265 / 180.0];
  [v15 setFromValue:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:toDegree * 3.14159265 / 180.0];
  [v15 setToValue:v12];

  v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v15 setTimingFunction:v13];

  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:*MEMORY[0x277CDA238]];
  [v15 setBeginTime:time];
  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer addAnimation:v15 forKey:@"rotationZ"];
}

- (void)_animateArrowUpsideDown:(double)down duration:(double)duration animationDelay:(double)delay
{
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
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
  [circleLayer setTransform:v24];

  v13 = CACurrentMediaTime();
  v14 = v13 + delay;
  [(BKUIRotationArrowAnimationLayer *)self _animateArrowPaths:v13 + delay delay:delay duration:duration];
  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.25];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v15 setDuration:duration + duration * -0.031];
  [v15 setFromValue:&unk_2853CC948];
  [v15 setToValue:&unk_2853CC958];
  [v15 setBeginTime:v14 + duration * 0.01419];
  LODWORD(v16) = 1054280253;
  LODWORD(v17) = 1058306785;
  LODWORD(v18) = 1065185444;
  v19 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v16 :0.0 :v17 :v18];
  [v15 setTimingFunction:v19];

  [v15 setRemovedOnCompletion:0];
  circleLayer2 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer2 addAnimation:v15 forKey:@"strokeEnd"];

  v21 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v21 setDuration:duration - duration * 0.35];
  [v21 setFromValue:&unk_2853CC948];
  [v21 setToValue:&unk_2853CC958];
  v22 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v21 setTimingFunction:v22];

  [v21 setRemovedOnCompletion:0];
  [v21 setFillMode:*MEMORY[0x277CDA238]];
  [v21 setBeginTime:v14 + duration * 0.35];
  circleLayer3 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer3 addAnimation:v21 forKey:@"strokeStart"];

  [(BKUIRotationArrowAnimationLayer *)self _rotateRotationLayerBy:0 startTime:180 fromDegree:duration toDegree:v14];
}

- (void)_animateArrowClockwise:(double)clockwise duration:(double)duration animationDelay:(double)delay
{
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
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
  [circleLayer setTransform:v14];

  [(BKUIRotationArrowAnimationLayer *)self _landscapeAnimationImpl:clockwise duration:duration animationDelay:delay];
}

- (void)_animateArrowCounterClockwise:(double)clockwise duration:(double)duration animationDelay:(double)delay
{
  CATransform3DMakeRotation(&v11, 3.14159265, 0.0, 1.0, 0.0);
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  v10 = v11;
  [circleLayer setTransform:&v10];

  [(BKUIRotationArrowAnimationLayer *)self _landscapeAnimationImpl:clockwise duration:duration animationDelay:delay];
}

- (void)_landscapeAnimationImpl:(double)impl duration:(double)duration animationDelay:(double)delay
{
  v8 = CACurrentMediaTime();
  v9 = v8 + delay;
  [(BKUIRotationArrowAnimationLayer *)self _animateArrowPaths:v8 + delay delay:delay duration:duration];
  [(BKUIRotationArrowAnimationLayer *)self _resetHideCircleLayerStrokeTo:0.5];
  v16 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v16 setDuration:duration - duration * 0.023];
  [v16 setFromValue:&unk_2853CC968];
  [v16 setToValue:&unk_2853CC958];
  [v16 setBeginTime:v9 + duration * 0.023];
  v10 = *MEMORY[0x277CDA7B8];
  v11 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
  [v16 setTimingFunction:v11];

  [v16 setRemovedOnCompletion:0];
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer addAnimation:v16 forKey:@"strokeEnd"];

  v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeStart"];
  [v13 setDuration:duration - duration * 0.35];
  [v13 setFromValue:&unk_2853CC968];
  [v13 setToValue:&unk_2853CC958];
  v14 = [MEMORY[0x277CD9EF8] functionWithName:v10];
  [v13 setTimingFunction:v14];

  [v13 setRemovedOnCompletion:0];
  [v13 setFillMode:*MEMORY[0x277CDA238]];
  [v13 setBeginTime:v9 + duration * 0.35];
  circleLayer2 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer2 addAnimation:v13 forKey:@"strokeStart"];

  [(BKUIRotationArrowAnimationLayer *)self _rotateRotationLayerBy:0 startTime:90 fromDegree:duration toDegree:v9 + duration * 0.01];
}

- (void)_updateCircleLayerLayout:(int64_t)layout
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
  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer setFrame:{v11, v13, v15, v17}];
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = BKUIRotationArrowAnimationLayer;
  [(BKUIRotationArrowAnimationLayer *)&v3 layoutSublayers];
  [(BKUIRotationArrowAnimationLayer *)self _updateCircleLayerLayout:[(BKUIRotationArrowAnimationLayer *)self orientation]];
}

- (void)enableDebug:(BOOL)debug
{
  debugCopy = debug;
  greenColor = [MEMORY[0x277D75348] greenColor];
  cGColor = [greenColor CGColor];
  arrowContainer = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer setBorderColor:cGColor];

  v8 = debugCopy;
  arrowContainer2 = [(BKUIRotationArrowAnimationLayer *)self arrowContainer];
  [arrowContainer2 setBorderWidth:v8];

  greenColor2 = [MEMORY[0x277D75348] greenColor];
  cGColor2 = [greenColor2 CGColor];
  arrowLayerLeft = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft setBorderColor:cGColor2];

  arrowLayerLeft2 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft2 setBorderWidth:v8];

  blueColor = [MEMORY[0x277D75348] blueColor];
  cGColor3 = [blueColor CGColor];
  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer setBorderColor:cGColor3];

  rotationLayer2 = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer2 setBorderWidth:v8];

  redColor = [MEMORY[0x277D75348] redColor];
  -[BKUIRotationArrowAnimationLayer setBorderColor:](self, "setBorderColor:", [redColor CGColor]);

  [(BKUIRotationArrowAnimationLayer *)self setBorderWidth:v8];
}

- (void)_resetHideCircleLayerStrokeTo:(double)to
{
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer setHidden:1];

  circleLayer2 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer2 setStrokeEnd:to];

  circleLayer3 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer3 setStrokeStart:to];

  circleLayer4 = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer4 setHidden:0];
}

- (void)_zeroOutArrowStroke
{
  arrowLayerRight = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight setStrokeStart:0.0];

  arrowLayerRight2 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerRight];
  [arrowLayerRight2 setStrokeEnd:0.0];

  arrowLayerLeft = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft setStrokeStart:0.0];

  arrowLayerLeft2 = [(BKUIRotationArrowAnimationLayer *)self arrowLayerLeft];
  [arrowLayerLeft2 setStrokeEnd:0.0];
}

- (void)resetLayout
{
  circleLayer = [(BKUIRotationArrowAnimationLayer *)self circleLayer];
  [circleLayer setHidden:1];

  rotationLayer = [(BKUIRotationArrowAnimationLayer *)self rotationLayer];
  [rotationLayer setHidden:1];

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