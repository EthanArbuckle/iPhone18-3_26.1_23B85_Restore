@interface CompassBackgroundView
- (BOOL)setCrosshairOffset:(CGSize)offset;
- (CompassBackgroundView)initWithFrame:(CGRect)frame forCompass:(BOOL)compass;
- (id)_crosshairLayerWithBounds:(CGRect)bounds;
- (id)_crosshairPathInRect:(CGRect)rect;
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
- (void)setCompassHeading:(double)heading;
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
  prototypeSmallTicLayer = [(CompassBackgroundView *)self prototypeSmallTicLayer];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [prototypeSmallTicLayer setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];

  prototypeLargeTicLayer = [(CompassBackgroundView *)self prototypeLargeTicLayer];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [prototypeLargeTicLayer setBackgroundColor:{objc_msgSend(whiteColor2, "CGColor")}];

  currentHeadingLayer = [(CompassBackgroundView *)self currentHeadingLayer];
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
  [currentHeadingLayer setBackgroundColor:{objc_msgSend(whiteColor3, "CGColor")}];

  bearingLayer = [(CompassBackgroundView *)self bearingLayer];
  whiteColor4 = [MEMORY[0x277D75348] whiteColor];
  [bearingLayer setBackgroundColor:{objc_msgSend(whiteColor4, "CGColor")}];

  smallCompassTicLayers = [(CompassBackgroundView *)self smallCompassTicLayers];
  [(CompassBackgroundView *)self bounds];
  [smallCompassTicLayers setFrame:?];

  prototypeSmallTicLayer2 = [(CompassBackgroundView *)self prototypeSmallTicLayer];
  [prototypeSmallTicLayer2 setPosition:{self->_compassCenter.x, self->_compassCenter.y + self->_ticRadius}];

  if (self->_shownInCompass)
  {
    largeCompassTicLayers = [(CompassBackgroundView *)self largeCompassTicLayers];
    [(CompassBackgroundView *)self bounds];
    [largeCompassTicLayers setFrame:?];

    prototypeLargeTicLayer2 = [(CompassBackgroundView *)self prototypeLargeTicLayer];
    [prototypeLargeTicLayer2 setPosition:{p_compassCenter->x, self->_compassCenter.y + self->_ticRadius}];

    v22 = self->_ticRadius + (self->_currentHeadingLength - self->_ticLength) * 0.5;
    currentHeadingLayer2 = [(CompassBackgroundView *)self currentHeadingLayer];
    [currentHeadingLayer2 setPosition:{p_compassCenter->x, self->_compassCenter.y - v22}];

    bubbleLayer = [(CompassBackgroundView *)self bubbleLayer];
    [bubbleLayer setPosition:{vsubq_f64(*p_compassCenter, self->_currentOffset)}];

    crosshairLayer = [(CompassBackgroundView *)self crosshairLayer];
    [crosshairLayer setPosition:{p_compassCenter->x, self->_compassCenter.y}];
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
    bearingLayer2 = [(CompassBackgroundView *)self bearingLayer];
    [bearingLayer2 setPosition:{v31, v32}];
    CATransform3DMakeRotation(&v34, v27 + 1.57079633, 0.0, 0.0, 1.0);
    [bearingLayer2 setTransform:&v34];
    [bearingLayer2 setHidden:0];
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (id)prototypeSmallTicLayer
{
  prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  if (!prototypeSmallTicLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_prototypeSmallTicLayer;
    self->_prototypeSmallTicLayer = layer;

    [(CALayer *)self->_prototypeSmallTicLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_prototypeSmallTicLayer setFrame:0.0, 0.0, 0.75, self->_ticLength];
    smallCompassTicLayers = [(CompassBackgroundView *)self smallCompassTicLayers];
    [smallCompassTicLayers addSublayer:self->_prototypeSmallTicLayer];

    prototypeSmallTicLayer = self->_prototypeSmallTicLayer;
  }

  return prototypeSmallTicLayer;
}

- (id)smallCompassTicLayers
{
  smallCompassTicLayers = self->_smallCompassTicLayers;
  if (!smallCompassTicLayers)
  {
    layer = [MEMORY[0x277CD9F48] layer];
    v5 = self->_smallCompassTicLayers;
    self->_smallCompassTicLayers = layer;

    v6 = self->_smallCompassTicLayers;
    CATransform3DMakeRotation(&v9, 0.034906585, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v6 setInstanceTransform:&v9];
    [(CAReplicatorLayer *)self->_smallCompassTicLayers setInstanceCount:180];
    rotatingLayer = [(CompassBackgroundView *)self rotatingLayer];
    [rotatingLayer addSublayer:self->_smallCompassTicLayers];

    smallCompassTicLayers = self->_smallCompassTicLayers;
  }

  return smallCompassTicLayers;
}

- (id)prototypeLargeTicLayer
{
  prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  if (!prototypeLargeTicLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_prototypeLargeTicLayer;
    self->_prototypeLargeTicLayer = layer;

    [(CALayer *)self->_prototypeLargeTicLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_prototypeLargeTicLayer setFrame:0.0, 0.0, 2.5, self->_ticLength];
    largeCompassTicLayers = [(CompassBackgroundView *)self largeCompassTicLayers];
    [largeCompassTicLayers addSublayer:self->_prototypeLargeTicLayer];

    prototypeLargeTicLayer = self->_prototypeLargeTicLayer;
  }

  return prototypeLargeTicLayer;
}

- (id)rotatingLayer
{
  rotatingLayer = self->_rotatingLayer;
  if (!rotatingLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_rotatingLayer;
    self->_rotatingLayer = layer;

    v6 = self->_rotatingLayer;
    layer2 = [(CompassBackgroundView *)self layer];
    [layer2 frame];
    [(CALayer *)v6 setFrame:?];

    v8 = self->_rotatingLayer;
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [(CALayer *)v8 setCompositingFilter:v9];

    layer3 = [(CompassBackgroundView *)self layer];
    [layer3 addSublayer:self->_rotatingLayer];

    rotatingLayer = self->_rotatingLayer;
  }

  return rotatingLayer;
}

- (id)largeCompassTicLayers
{
  largeCompassTicLayers = self->_largeCompassTicLayers;
  if (!largeCompassTicLayers)
  {
    layer = [MEMORY[0x277CD9F48] layer];
    v5 = self->_largeCompassTicLayers;
    self->_largeCompassTicLayers = layer;

    v6 = self->_largeCompassTicLayers;
    CATransform3DMakeRotation(&v9, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v6 setInstanceTransform:&v9];
    [(CAReplicatorLayer *)self->_largeCompassTicLayers setInstanceCount:12];
    rotatingLayer = [(CompassBackgroundView *)self rotatingLayer];
    [rotatingLayer addSublayer:self->_largeCompassTicLayers];

    largeCompassTicLayers = self->_largeCompassTicLayers;
  }

  return largeCompassTicLayers;
}

- (id)currentHeadingLayer
{
  currentHeadingLayer = self->_currentHeadingLayer;
  if (!currentHeadingLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_currentHeadingLayer;
    self->_currentHeadingLayer = layer;

    [(CALayer *)self->_currentHeadingLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_currentHeadingLayer setFrame:0.0, 0.0, 4.0, self->_currentHeadingLength];
    staticLayer = [(CompassBackgroundView *)self staticLayer];
    [staticLayer addSublayer:self->_currentHeadingLayer];

    currentHeadingLayer = self->_currentHeadingLayer;
  }

  return currentHeadingLayer;
}

- (id)staticLayer
{
  staticLayer = self->_staticLayer;
  if (!staticLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_staticLayer;
    self->_staticLayer = layer;

    v6 = self->_staticLayer;
    layer2 = [(CompassBackgroundView *)self layer];
    [layer2 frame];
    [(CALayer *)v6 setFrame:?];

    v8 = self->_staticLayer;
    v9 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [(CALayer *)v8 setCompositingFilter:v9];

    layer3 = [(CompassBackgroundView *)self layer];
    [layer3 addSublayer:self->_staticLayer];

    staticLayer = self->_staticLayer;
  }

  return staticLayer;
}

- (id)bearingLayer
{
  bearingLayer = self->_bearingLayer;
  if (!bearingLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    v5 = self->_bearingLayer;
    self->_bearingLayer = layer;

    [(CALayer *)self->_bearingLayer setAllowsEdgeAntialiasing:1];
    [(CALayer *)self->_bearingLayer setFrame:0.0, 0.0, 2.5, self->_bearingLength];
    rotatingLayer = [(CompassBackgroundView *)self rotatingLayer];
    [rotatingLayer addSublayer:self->_bearingLayer];

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
    layer = [MEMORY[0x277CD9ED0] layer];
    v9 = self->_bubbleLayer;
    self->_bubbleLayer = layer;

    [(CALayer *)self->_bubbleLayer setFrame:0.0, 0.0, v5, v7];
    layer2 = [MEMORY[0x277CD9F90] layer];
    [layer2 setAllowsEdgeAntialiasing:1];
    [layer2 setFrame:{0.0, 0.0, v5, v7}];
    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.119999997];
    [layer2 setFillColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v5, v7}];
    [layer2 setPath:{objc_msgSend(v12, "CGPath")}];

    [(CALayer *)self->_bubbleLayer addSublayer:layer2];
    [(CompassBackgroundView *)self bounds];
    v14 = bubbleDiameter(v13) * 0.5;
    [(CompassBackgroundView *)self bounds];
    v16 = smallCrosshairWidth(v15);
    [(CompassBackgroundView *)self bounds];
    v18 = [(CompassBackgroundView *)self _crosshairLayerWithBounds:0.0, 0.0, v16, smallCrosshairWidth(v17)];
    [v18 setPosition:{v14, v14}];
    [(CALayer *)self->_bubbleLayer addSublayer:v18];
    staticLayer = [(CompassBackgroundView *)self staticLayer];
    [staticLayer addSublayer:self->_bubbleLayer];

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

    staticLayer = [(CompassBackgroundView *)self staticLayer];
    [staticLayer addSublayer:self->_crosshairLayer];

    crosshairLayer = self->_crosshairLayer;
  }

  return crosshairLayer;
}

- (CompassBackgroundView)initWithFrame:(CGRect)frame forCompass:(BOOL)compass
{
  v6.receiver = self;
  v6.super_class = CompassBackgroundView;
  result = [(CompassBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_shownInCompass = compass;
    result->_bearing = 1.79769313e308;
  }

  return result;
}

- (id)_crosshairLayerWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setAllowsEdgeAntialiasing:1];
  [layer setBounds:{x, y, width, height}];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [layer setStrokeColor:{objc_msgSend(whiteColor, "CGColor")}];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [layer setLineWidth:1.0 / v11];

  height = [(CompassBackgroundView *)self _crosshairPathInRect:x, y, width, height];
  [layer setPath:{objc_msgSend(height, "CGPath")}];

  return layer;
}

- (id)_crosshairPathInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (BOOL)setCrosshairOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
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

- (void)setCompassHeading:(double)heading
{
  v7.receiver = self;
  v7.super_class = CompassBackgroundView;
  [(CompassRotatingView *)&v7 setCompassHeading:heading];
  rotatingLayer = [(CompassBackgroundView *)self rotatingLayer];
  v5 = MEMORY[0x277CCABB0];
  [(CompassRotatingView *)self angle];
  v6 = [v5 numberWithDouble:?];
  [rotatingLayer setValue:v6 forKeyPath:@"transform.rotation.z"];
}

@end