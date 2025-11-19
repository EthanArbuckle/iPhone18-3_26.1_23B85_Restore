@interface CompassBackgroundView
- (BOOL)setCrosshairOffset:(CGSize)a3;
- (CompassBackgroundView)initWithFrame:(CGRect)a3 forCompass:(BOOL)a4;
- (id)_crosshairLayerWithBounds:(CGRect)a3;
- (id)_crosshairPathInRect:(CGRect)a3;
- (id)bearingLayer;
- (id)bubbleLayer;
- (id)crosshairLayer;
- (id)currentHeadingLayer;
- (id)largeCompassTicLayers;
- (id)prototypeLargeTicLayer;
- (id)prototypeSmallTicLayer;
- (id)rotatingLayer;
- (id)smallCompassTicLayers;
- (id)staticLayer;
- (void)layoutSubviews;
- (void)setCompassHeading:(double)a3;
@end

@implementation CompassBackgroundView

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = CompassBackgroundView;
  [(CompassBackgroundView *)&v35 layoutSubviews];
  p_compassCenter = &self->_compassCenter;
  [(CompassBackgroundView *)self bounds];
  v5 = v4 * 0.5;
  [(CompassBackgroundView *)self bounds];
  self->_compassCenter.x = v5;
  self->_compassCenter.y = v6 * 0.5;
  [(CompassBackgroundView *)self bounds];
  self->_ticLength = compassTicLength(v7);
  [(CompassBackgroundView *)self bounds];
  self->_bearingLength = bearingLength(v8);
  [(CompassBackgroundView *)self bounds];
  self->_currentHeadingLength = currentHeadingLength(v9);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v10 = [(CompassBackgroundView *)self prototypeSmallTicLayer];
  v11 = [MEMORY[0x277D75348] whiteColor];
  [v10 setBackgroundColor:{objc_msgSend(v11, "CGColor")}];

  v12 = [(CompassBackgroundView *)self prototypeLargeTicLayer];
  v13 = [MEMORY[0x277D75348] whiteColor];
  [v12 setBackgroundColor:{objc_msgSend(v13, "CGColor")}];

  v14 = [(CompassBackgroundView *)self currentHeadingLayer];
  v15 = [MEMORY[0x277D75348] whiteColor];
  [v14 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

  v16 = [(CompassBackgroundView *)self bearingLayer];
  v17 = [MEMORY[0x277D75348] whiteColor];
  [v16 setBackgroundColor:{objc_msgSend(v17, "CGColor")}];

  v18 = [(CompassBackgroundView *)self smallCompassTicLayers];
  [(CompassBackgroundView *)self bounds];
  [v18 setFrame:?];

  v19 = [(CompassBackgroundView *)self prototypeSmallTicLayer];
  [v19 setPosition:{self->_compassCenter.x, self->_compassCenter.y + self->_ticRadius}];

  if (self->_shownInCompass)
  {
    v20 = [(CompassBackgroundView *)self largeCompassTicLayers];
    [(CompassBackgroundView *)self bounds];
    [v20 setFrame:?];

    v21 = [(CompassBackgroundView *)self prototypeLargeTicLayer];
    [v21 setPosition:{p_compassCenter->x, self->_compassCenter.y + self->_ticRadius}];

    v22 = self->_ticRadius + (self->_currentHeadingLength - self->_ticLength) * 0.5;
    v23 = [(CompassBackgroundView *)self currentHeadingLayer];
    [v23 setPosition:{p_compassCenter->x, self->_compassCenter.y - v22}];

    v24 = [(CompassBackgroundView *)self bubbleLayer];
    [v24 setPosition:{vsubq_f64(*p_compassCenter, self->_currentOffset)}];

    v25 = [(CompassBackgroundView *)self crosshairLayer];
    [v25 setPosition:{p_compassCenter->x, self->_compassCenter.y}];
  }

  bearing = self->_bearing;
  if (bearing == 1.79769313e308)
  {
    [(CALayer *)self->_bearingLayer setHidden:1];
  }

  else
  {
    v27 = (bearing + 270.0) * 3.14159265 / 180.0;
    v28 = self->_ticRadius + (self->_bearingLength - self->_ticLength) * 0.5;
    x = p_compassCenter->x;
    v30 = __sincos_stret(v27);
    v31 = x + v28 * v30.__cosval;
    v32 = self->_compassCenter.y + v28 * v30.__sinval;
    v33 = [(CompassBackgroundView *)self bearingLayer];
    [v33 setPosition:{v31, v32}];
    CATransform3DMakeRotation(&v34, v27 + 1.57079633, 0.0, 0.0, 1.0);
    [v33 setTransform:&v34];
    [v33 setHidden:0];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (id)prototypeSmallTicLayer
{
  prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  if (!prototypeSmallTicLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_prototypeSmallTicLayer;
    self->_prototypeSmallTicLayer = v4;

    [(CALayer *)self->_prototypeSmallTicLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_prototypeSmallTicLayer setFrame:0.0, 0.0, 0.75, self->_ticLength];
    v6 = [(CompassBackgroundView *)self smallCompassTicLayers];
    [v6 addSublayer:self->_prototypeSmallTicLayer];

    prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  }

  return prototypeSmallTicLayer;
}

- (id)smallCompassTicLayers
{
  smallCompassTicLayers = self->_smallCompassTicLayers;
  if (!smallCompassTicLayers)
  {
    v4 = [MEMORY[0x277CD9F48] layer];
    v5 = self->_smallCompassTicLayers;
    self->_smallCompassTicLayers = v4;

    v6 = self->_smallCompassTicLayers;
    CATransform3DMakeRotation(&v9, 0.034906585, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v6 setInstanceTransform:&v9];
    [(CAReplicatorLayer *)self->_smallCompassTicLayers setInstanceCount:180];
    v7 = [(CompassBackgroundView *)self rotatingLayer];
    [v7 addSublayer:self->_smallCompassTicLayers];

    smallCompassTicLayers = self->_smallCompassTicLayers;
  }

  return smallCompassTicLayers;
}

- (id)prototypeLargeTicLayer
{
  prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  if (!prototypeLargeTicLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_prototypeLargeTicLayer;
    self->_prototypeLargeTicLayer = v4;

    [(CALayer *)self->_prototypeLargeTicLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_prototypeLargeTicLayer setFrame:0.0, 0.0, 2.5, self->_ticLength];
    v6 = [(CompassBackgroundView *)self largeCompassTicLayers];
    [v6 addSublayer:self->_prototypeLargeTicLayer];

    prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  }

  return prototypeLargeTicLayer;
}

- (id)rotatingLayer
{
  rotatingLayer = self->_rotatingLayer;
  if (!rotatingLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_rotatingLayer;
    self->_rotatingLayer = v4;

    v6 = self->_rotatingLayer;
    v7 = [(CompassBackgroundView *)self layer];
    [v7 frame];
    [(CALayer *)v6 setFrame:?];

    v8 = self->_rotatingLayer;
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [(CALayer *)v8 setCompositingFilter:v9];

    v10 = [(CompassBackgroundView *)self layer];
    [v10 addSublayer:self->_rotatingLayer];

    rotatingLayer = self->_rotatingLayer;
  }

  return rotatingLayer;
}

- (id)largeCompassTicLayers
{
  largeCompassTicLayers = self->_largeCompassTicLayers;
  if (!largeCompassTicLayers)
  {
    v4 = [MEMORY[0x277CD9F48] layer];
    v5 = self->_largeCompassTicLayers;
    self->_largeCompassTicLayers = v4;

    v6 = self->_largeCompassTicLayers;
    CATransform3DMakeRotation(&v9, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v6 setInstanceTransform:&v9];
    [(CAReplicatorLayer *)self->_largeCompassTicLayers setInstanceCount:12];
    v7 = [(CompassBackgroundView *)self rotatingLayer];
    [v7 addSublayer:self->_largeCompassTicLayers];

    largeCompassTicLayers = self->_largeCompassTicLayers;
  }

  return largeCompassTicLayers;
}

- (id)currentHeadingLayer
{
  currentHeadingLayer = self->_currentHeadingLayer;
  if (!currentHeadingLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_currentHeadingLayer;
    self->_currentHeadingLayer = v4;

    [(CALayer *)self->_currentHeadingLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_currentHeadingLayer setFrame:0.0, 0.0, 4.0, self->_currentHeadingLength];
    v6 = [(CompassBackgroundView *)self staticLayer];
    [v6 addSublayer:self->_currentHeadingLayer];

    currentHeadingLayer = self->_currentHeadingLayer;
  }

  return currentHeadingLayer;
}

- (id)staticLayer
{
  staticLayer = self->_staticLayer;
  if (!staticLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_staticLayer;
    self->_staticLayer = v4;

    v6 = self->_staticLayer;
    v7 = [(CompassBackgroundView *)self layer];
    [v7 frame];
    [(CALayer *)v6 setFrame:?];

    v8 = self->_staticLayer;
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [(CALayer *)v8 setCompositingFilter:v9];

    v10 = [(CompassBackgroundView *)self layer];
    [v10 addSublayer:self->_staticLayer];

    staticLayer = self->_staticLayer;
  }

  return staticLayer;
}

- (id)bearingLayer
{
  bearingLayer = self->_bearingLayer;
  if (!bearingLayer)
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_bearingLayer;
    self->_bearingLayer = v4;

    [(CALayer *)self->_bearingLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_bearingLayer setFrame:0.0, 0.0, 2.5, self->_bearingLength];
    v6 = [(CompassBackgroundView *)self rotatingLayer];
    [v6 addSublayer:self->_bearingLayer];

    bearingLayer = self->_bearingLayer;
  }

  return bearingLayer;
}

- (id)bubbleLayer
{
  bubbleLayer = self->_bubbleLayer;
  if (!bubbleLayer)
  {
    [(CompassBackgroundView *)self bounds];
    v5 = bubbleDiameter(v4);
    [(CompassBackgroundView *)self bounds];
    v7 = bubbleDiameter(v6);
    v8 = [MEMORY[0x277CD9ED0] layer];
    v9 = self->_bubbleLayer;
    self->_bubbleLayer = v8;

    [(CALayer *)self->_bubbleLayer setFrame:0.0, 0.0, v5, v7];
    v10 = [MEMORY[0x277CD9F90] layer];
    [v10 setAllowsEdgeAntialiasing:1];
    [v10 setFrame:{0.0, 0.0, v5, v7}];
    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.119999997];
    [v10 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v5, v7}];
    [v10 setPath:{objc_msgSend(v12, "CGPath")}];

    [(CALayer *)self->_bubbleLayer addSublayer:v10];
    [(CompassBackgroundView *)self bounds];
    v14 = bubbleDiameter(v13) * 0.5;
    [(CompassBackgroundView *)self bounds];
    v16 = smallCrosshairWidth(v15);
    [(CompassBackgroundView *)self bounds];
    v18 = [(CompassBackgroundView *)self _crosshairLayerWithBounds:0.0, 0.0, v16, smallCrosshairWidth(v17)];
    [v18 setPosition:{v14, v14}];
    [(CALayer *)self->_bubbleLayer addSublayer:v18];
    v19 = [(CompassBackgroundView *)self staticLayer];
    [v19 addSublayer:self->_bubbleLayer];

    bubbleLayer = self->_bubbleLayer;
  }

  return bubbleLayer;
}

- (id)crosshairLayer
{
  crosshairLayer = self->_crosshairLayer;
  if (!crosshairLayer)
  {
    [(CompassBackgroundView *)self bounds];
    v5 = crosshairWidth(v4);
    [(CompassBackgroundView *)self bounds];
    v7 = [(CompassBackgroundView *)self _crosshairLayerWithBounds:0.0, 0.0, v5, crosshairWidth(v6)];
    v8 = self->_crosshairLayer;
    self->_crosshairLayer = v7;

    v9 = [(CompassBackgroundView *)self staticLayer];
    [v9 addSublayer:self->_crosshairLayer];

    crosshairLayer = self->_crosshairLayer;
  }

  return crosshairLayer;
}

- (CompassBackgroundView)initWithFrame:(CGRect)a3 forCompass:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CompassBackgroundView;
  result = [(CompassBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_shownInCompass = a4;
    result->_bearing = 1.79769313e308;
  }

  return result;
}

- (id)_crosshairLayerWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [MEMORY[0x277CD9F90] layer];
  [v8 setAllowsEdgeAntialiasing:1];
  [v8 setBounds:{x, y, width, height}];
  v9 = [MEMORY[0x277D75348] whiteColor];
  [v8 setStrokeColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  [v8 setLineWidth:1.0 / v11];

  v12 = [(CompassBackgroundView *)self _crosshairPathInRect:x, y, width, height];
  [v8 setPath:{objc_msgSend(v12, "CGPath")}];

  return v8;
}

- (id)_crosshairPathInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = objc_alloc_init(MEMORY[0x277D75208]);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  [v7 moveToPoint:{MidX, CGRectGetMinY(v15)}];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [v7 addLineToPoint:{v9, CGRectGetMaxY(v17)}];
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  [v7 moveToPoint:{MinX, CGRectGetMidY(v19)}];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [v7 addLineToPoint:{MaxX, CGRectGetMidY(v21)}];

  return v7;
}

- (BOOL)setCrosshairOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CompassBackgroundView *)self bounds];
  v7 = bubbleDiameter(v6);
  p_currentOffset = &self->_currentOffset;
  if (vabdd_f64(p_currentOffset->x, width * v7 / 5.0) < 0.5 && vabdd_f64(p_currentOffset->y, height * v7 / 5.0) < 0.5)
  {
    return 0;
  }

  CGPointRoundToPixel();
  p_currentOffset->x = v10;
  p_currentOffset->y = v11;
  return 1;
}

- (void)setCompassHeading:(double)a3
{
  v7.receiver = self;
  v7.super_class = CompassBackgroundView;
  [(CompassRotatingView *)&v7 setCompassHeading:a3];
  v4 = [(CompassBackgroundView *)self rotatingLayer];
  v5 = MEMORY[0x277CCABB0];
  [(CompassRotatingView *)self angle];
  v6 = [v5 numberWithDouble:?];
  [v4 setValue:v6 forKeyPath:@"transform.rotation.z"];
}

@end