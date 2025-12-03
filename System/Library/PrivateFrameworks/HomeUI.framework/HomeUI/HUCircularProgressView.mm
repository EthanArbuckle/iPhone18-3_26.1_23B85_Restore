@interface HUCircularProgressView
- (HUCircularProgressView)initWithRadius:(double)radius;
- (HUCircularProgressView)initWithRadius:(double)radius startAngle:(double)angle endAngle:(double)endAngle progress:(double)progress;
- (id)_lineCapStyle;
- (id)_progressBarFillDirection;
- (void)layoutSubviews;
- (void)setBaseLayerStrokeLineColor:(id)color;
- (void)setProgressLayerStrokeLineColor:(id)color;
- (void)updateProgressBy:(double)by animationDuration:(float)duration;
- (void)updateProgressTo:(double)to animationDuration:(float)duration;
@end

@implementation HUCircularProgressView

- (HUCircularProgressView)initWithRadius:(double)radius
{
  v11.receiver = self;
  v11.super_class = HUCircularProgressView;
  radius = [(HUCircularProgressView *)&v11 initWithFrame:0.0, 0.0, radius, radius];
  v5 = radius;
  if (radius)
  {
    radius->_radius = radius;
    radius->_lineCapStyle = 0;
    systemGray2Color = [MEMORY[0x277D75348] systemGray2Color];
    baseLayerStrokeLineColor = v5->_baseLayerStrokeLineColor;
    v5->_baseLayerStrokeLineColor = systemGray2Color;

    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    progressLayerStrokeLineColor = v5->_progressLayerStrokeLineColor;
    v5->_progressLayerStrokeLineColor = systemFillColor;

    v5->_progressBarFillDirection = 0;
    v5->_removeProgressBarOnCompletion = 1;
  }

  return v5;
}

- (HUCircularProgressView)initWithRadius:(double)radius startAngle:(double)angle endAngle:(double)endAngle progress:(double)progress
{
  result = [(HUCircularProgressView *)self initWithRadius:radius];
  if (result)
  {
    result->_startAngle = angle + -1.57079633;
    result->_endAngle = endAngle + -1.57079633;
    result->_fromValue = progress;
  }

  return result;
}

- (void)layoutSubviews
{
  layer = [(HUCircularProgressView *)self layer];
  sublayers = [layer sublayers];
  [sublayers makeObjectsPerformSelector:sel_removeFromSuperlayer];

  v5 = objc_opt_new();
  [(HUCircularProgressView *)self setBaseLayer:v5];

  [(HUCircularProgressView *)self bounds];
  v7 = v6 * 0.5;
  [(HUCircularProgressView *)self bounds];
  v9 = v8 * 0.5;
  v10 = MEMORY[0x277D75208];
  [(HUCircularProgressView *)self radius];
  v12 = v11;
  [(HUCircularProgressView *)self startAngle];
  v14 = v13;
  [(HUCircularProgressView *)self endAngle];
  v49 = [v10 bezierPathWithArcCenter:-[HUCircularProgressView progressFillCounterClockwise](self radius:"progressFillCounterClockwise") ^ 1 startAngle:v7 endAngle:v9 clockwise:{v12, v14, v15}];
  cGPath = [v49 CGPath];
  baseLayer = [(HUCircularProgressView *)self baseLayer];
  [baseLayer setPath:cGPath];

  baseLayerStrokeLineColor = [(HUCircularProgressView *)self baseLayerStrokeLineColor];
  cGColor = [baseLayerStrokeLineColor CGColor];
  baseLayer2 = [(HUCircularProgressView *)self baseLayer];
  [baseLayer2 setStrokeColor:cGColor];

  [(HUCircularProgressView *)self baseLayerStrokeLineWidth];
  v22 = v21;
  baseLayer3 = [(HUCircularProgressView *)self baseLayer];
  [baseLayer3 setLineWidth:v22];

  _lineCapStyle = [(HUCircularProgressView *)self _lineCapStyle];
  baseLayer4 = [(HUCircularProgressView *)self baseLayer];
  [baseLayer4 setLineCap:_lineCapStyle];

  clearColor = [MEMORY[0x277D75348] clearColor];
  cGColor2 = [clearColor CGColor];
  baseLayer5 = [(HUCircularProgressView *)self baseLayer];
  [baseLayer5 setFillColor:cGColor2];

  layer2 = [(HUCircularProgressView *)self layer];
  baseLayer6 = [(HUCircularProgressView *)self baseLayer];
  [layer2 addSublayer:baseLayer6];

  [(HUCircularProgressView *)self progressLayerStrokeLineWidth];
  if (v31 > 0.0)
  {
    v32 = objc_opt_new();
    [(HUCircularProgressView *)self setProgressShapeLayer:v32];

    cGPath2 = [v49 CGPath];
    progressShapeLayer = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer setPath:cGPath2];

    progressLayerStrokeLineColor = [(HUCircularProgressView *)self progressLayerStrokeLineColor];
    cGColor3 = [progressLayerStrokeLineColor CGColor];
    progressShapeLayer2 = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer2 setStrokeColor:cGColor3];

    [(HUCircularProgressView *)self progressLayerStrokeLineWidth];
    v39 = v38;
    progressShapeLayer3 = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer3 setLineWidth:v39];

    progressShapeLayer4 = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer4 setStrokeEnd:0.0];

    _lineCapStyle2 = [(HUCircularProgressView *)self _lineCapStyle];
    progressShapeLayer5 = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer5 setLineCap:_lineCapStyle2];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    cGColor4 = [clearColor2 CGColor];
    progressShapeLayer6 = [(HUCircularProgressView *)self progressShapeLayer];
    [progressShapeLayer6 setFillColor:cGColor4];

    layer3 = [(HUCircularProgressView *)self layer];
    progressShapeLayer7 = [(HUCircularProgressView *)self progressShapeLayer];
    [layer3 addSublayer:progressShapeLayer7];
  }
}

- (void)setBaseLayerStrokeLineColor:(id)color
{
  objc_storeStrong(&self->_baseLayerStrokeLineColor, color);

  [(HUCircularProgressView *)self setNeedsLayout];
}

- (void)setProgressLayerStrokeLineColor:(id)color
{
  objc_storeStrong(&self->_progressLayerStrokeLineColor, color);

  [(HUCircularProgressView *)self setNeedsLayout];
}

- (void)updateProgressBy:(double)by animationDuration:(float)duration
{
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  v7 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v8 = [v7 numberWithDouble:?];
  [v19 setFromValue:v8];

  v9 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v11 = [v9 numberWithDouble:v10 + by];
  [v19 setToValue:v11];

  [v19 setDuration:duration];
  [v19 setRemovedOnCompletion:0];
  _progressBarFillDirection = [(HUCircularProgressView *)self _progressBarFillDirection];
  [v19 setFillMode:_progressBarFillDirection];

  toValue = [v19 toValue];
  [toValue floatValue];
  v15 = v14;

  if (v15 >= 1.0)
  {
    [v19 setRemovedOnCompletion:{-[HUCircularProgressView removeProgressBarOnCompletion](self, "removeProgressBarOnCompletion")}];
    [(HUCircularProgressView *)self setFromValue:0.0];
    [v19 setDuration:0.0];
  }

  else
  {
    toValue2 = [v19 toValue];
    [toValue2 floatValue];
    [(HUCircularProgressView *)self setFromValue:v17];
  }

  progressShapeLayer = [(HUCircularProgressView *)self progressShapeLayer];
  [progressShapeLayer addAnimation:v19 forKey:@"progressStrokeKey"];
}

- (void)updateProgressTo:(double)to animationDuration:(float)duration
{
  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  v7 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v8 = [v7 numberWithDouble:?];
  [v17 setFromValue:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:to];
  [v17 setToValue:v9];

  [v17 setDuration:duration];
  [v17 setRemovedOnCompletion:0];
  _progressBarFillDirection = [(HUCircularProgressView *)self _progressBarFillDirection];
  [v17 setFillMode:_progressBarFillDirection];

  toValue = [v17 toValue];
  [toValue floatValue];
  v13 = v12;

  if (v13 >= 1.0)
  {
    [v17 setRemovedOnCompletion:{-[HUCircularProgressView removeProgressBarOnCompletion](self, "removeProgressBarOnCompletion")}];
    [(HUCircularProgressView *)self setFromValue:0.0];
    [v17 setDuration:0.0];
  }

  else
  {
    toValue2 = [v17 toValue];
    [toValue2 floatValue];
    [(HUCircularProgressView *)self setFromValue:v15];
  }

  progressShapeLayer = [(HUCircularProgressView *)self progressShapeLayer];
  [progressShapeLayer addAnimation:v17 forKey:@"progressStrokeKey"];
}

- (id)_lineCapStyle
{
  lineCapStyle = [(HUCircularProgressView *)self lineCapStyle];
  v3 = MEMORY[0x277CDA778];
  v4 = MEMORY[0x277CDA780];
  if (lineCapStyle != 1)
  {
    v4 = MEMORY[0x277CDA788];
  }

  if (lineCapStyle != 2)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

- (id)_progressBarFillDirection
{
  progressBarFillDirection = [(HUCircularProgressView *)self progressBarFillDirection];
  v3 = MEMORY[0x277CDA228];
  if (progressBarFillDirection != 1)
  {
    v3 = MEMORY[0x277CDA238];
  }

  v4 = *v3;

  return v4;
}

@end