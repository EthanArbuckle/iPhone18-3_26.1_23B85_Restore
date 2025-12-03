@interface CDRichComplicationCurveView
- (CDRichComplicationCurveView)initWithCurveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style;
- (CGPath)_generatePath;
- (CGPoint)_centerPoint;
- (CGPoint)_pointAtProgress:(float)progress;
- (id)_normalizeGradientLocations:(id)locations;
- (void)_setupGradientLayer:(id)layer;
- (void)_updatePath;
- (void)layoutSubviews;
- (void)setBeginAngle:(double)angle;
- (void)setClockwise:(BOOL)clockwise;
- (void)setEndAngle:(double)angle;
@end

@implementation CDRichComplicationCurveView

- (CDRichComplicationCurveView)initWithCurveWidth:(double)width padding:(double)padding beginAngle:(double)angle endAngle:(double)endAngle forDevice:(id)device withFilterStyle:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = CDRichComplicationCurveView;
  result = [(CDRichComplicationShapeView *)&v13 initForDevice:device withFilterStyle:style];
  if (result)
  {
    result->_curveWidth = width;
    result->_padding = padding;
    result->_beginAngle = angle;
    result->_drawingBeginAngle = angle + 1.57079633;
    result->_endAngle = endAngle;
    result->_drawingEndAngle = endAngle + 1.57079633;
    result->_clockwise = 1;
  }

  return result;
}

- (void)setBeginAngle:(double)angle
{
  if (self->_beginAngle != angle)
  {
    self->_beginAngle = angle;
    self->_drawingBeginAngle = angle + 1.57079633;
    [(CDRichComplicationShapeView *)self _updateGradient];

    [(CDRichComplicationCurveView *)self _updatePath];
  }
}

- (void)setEndAngle:(double)angle
{
  if (self->_endAngle != angle)
  {
    self->_endAngle = angle;
    self->_drawingEndAngle = angle + 1.57079633;
    [(CDRichComplicationShapeView *)self _updateGradient];

    [(CDRichComplicationCurveView *)self _updatePath];
  }
}

- (void)setClockwise:(BOOL)clockwise
{
  if (self->_clockwise != clockwise)
  {
    self->_clockwise = clockwise;
    [(CDRichComplicationShapeView *)self _updateGradient];

    [(CDRichComplicationCurveView *)self _updatePath];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CDRichComplicationCurveView;
  [(CDRichComplicationShapeView *)&v11 layoutSubviews];
  curveWidth = self->_curveWidth;
  shapeLayer = [(CDRichComplicationShapeView *)self shapeLayer];
  PathBoundingBox = CGPathGetPathBoundingBox([shapeLayer path]);
  v13 = CGRectInset(PathBoundingBox, curveWidth * -0.5, curveWidth * -0.5);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  if (width < height)
  {
    width = height;
  }

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  gradientLayer = [(CDRichComplicationShapeView *)self gradientLayer];
  [gradientLayer setFrame:{x, y, width, width}];

  gradientLayer2 = [(CDRichComplicationShapeView *)self gradientLayer];
  [(CDRichComplicationCurveView *)self _setupGradientLayer:gradientLayer2];

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_setupGradientLayer:(id)layer
{
  layerCopy = layer;
  v4 = MEMORY[0x245D51E10]([(CDRichComplicationCurveView *)self bounds]);
  v6 = v5;
  gradientLayer = [(CDRichComplicationShapeView *)self gradientLayer];
  [gradientLayer frame];
  v9 = v8;
  v11 = v10;

  gradientLayer2 = [(CDRichComplicationShapeView *)self gradientLayer];
  [gradientLayer2 bounds];
  v14 = v13;
  v16 = v15;

  v17 = (v4 - v9) / v14;
  [layerCopy setType:*MEMORY[0x277CDA698]];
  [layerCopy setStartPoint:{v17, (v6 - v11) / v16}];
  [layerCopy setEndPoint:{v17, 100.0}];
}

- (CGPoint)_centerPoint
{
  [(CDRichComplicationCurveView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v6 = CGRectGetWidth(v10) * 0.5;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v7 = CGRectGetHeight(v11) * 0.5;
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

- (CGPoint)_pointAtProgress:(float)progress
{
  [(CDRichComplicationCurveView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CDRichComplicationCurveView *)self _centerPoint];
  v14 = v13;
  v16 = v15;
  v24.origin.x = v6;
  v24.origin.y = v8;
  v24.size.width = v10;
  v24.size.height = v12;
  v17 = CGRectGetWidth(v24) * 0.5 - self->_curveWidth * 0.5;
  v18 = v17 - self->_padding;
  *&v17 = progress;
  [(CDRichComplicationCurveView *)self _angleAtProgress:v17];
  *&v19 = v19;
  v20 = __sincosf_stret(*&v19);
  v21 = v16 + v20.__sinval * v18;
  v22 = v14 + v20.__cosval * v18;
  result.y = v21;
  result.x = v22;
  return result;
}

- (id)_normalizeGradientLocations:(id)locations
{
  v25 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  array = [MEMORY[0x277CBEB18] array];
  v6 = self->_drawingBeginAngle + -1.57079633;
  v7 = self->_drawingEndAngle + -1.57079633;
  if (v6 >= 0.0)
  {
    v8 = self->_drawingBeginAngle + -1.57079633;
  }

  else
  {
    v8 = v6 + 6.28318531;
  }

  if (v7 >= 0.0)
  {
    v9 = self->_drawingEndAngle + -1.57079633;
  }

  else
  {
    v9 = v7 + 6.28318531;
  }

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = locationsCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = v8 / 6.28318531;
    v14 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v20 + 1) + 8 * i) doubleValue];
        v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13 + (v9 / 6.28318531 - v13) * v16];
        [array addObject:v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];

  return array;
}

- (CGPath)_generatePath
{
  [(CDRichComplicationCurveView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CDRichComplicationCurveView *)self _centerPoint];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v15 = [MEMORY[0x277D75208] bezierPathWithArcCenter:self->_clockwise radius:v12 startAngle:v14 endAngle:CGRectGetWidth(v18) * 0.5 - self->_curveWidth * 0.5 - self->_padding clockwise:{self->_drawingBeginAngle, self->_drawingEndAngle}];
  cGPath = [v15 CGPath];

  return cGPath;
}

- (void)_updatePath
{
  v3.receiver = self;
  v3.super_class = CDRichComplicationCurveView;
  [(CDRichComplicationShapeView *)&v3 _updatePath];
  [(CDRichComplicationCurveView *)self setNeedsLayout];
}

@end