@interface HUCircularProgressView
- (HUCircularProgressView)initWithRadius:(double)a3;
- (HUCircularProgressView)initWithRadius:(double)a3 startAngle:(double)a4 endAngle:(double)a5 progress:(double)a6;
- (id)_lineCapStyle;
- (id)_progressBarFillDirection;
- (void)layoutSubviews;
- (void)setBaseLayerStrokeLineColor:(id)a3;
- (void)setProgressLayerStrokeLineColor:(id)a3;
- (void)updateProgressBy:(double)a3 animationDuration:(float)a4;
- (void)updateProgressTo:(double)a3 animationDuration:(float)a4;
@end

@implementation HUCircularProgressView

- (HUCircularProgressView)initWithRadius:(double)a3
{
  v11.receiver = self;
  v11.super_class = HUCircularProgressView;
  v4 = [(HUCircularProgressView *)&v11 initWithFrame:0.0, 0.0, a3, a3];
  v5 = v4;
  if (v4)
  {
    v4->_radius = a3;
    v4->_lineCapStyle = 0;
    v6 = [MEMORY[0x277D75348] systemGray2Color];
    baseLayerStrokeLineColor = v5->_baseLayerStrokeLineColor;
    v5->_baseLayerStrokeLineColor = v6;

    v8 = [MEMORY[0x277D75348] systemFillColor];
    progressLayerStrokeLineColor = v5->_progressLayerStrokeLineColor;
    v5->_progressLayerStrokeLineColor = v8;

    v5->_progressBarFillDirection = 0;
    v5->_removeProgressBarOnCompletion = 1;
  }

  return v5;
}

- (HUCircularProgressView)initWithRadius:(double)a3 startAngle:(double)a4 endAngle:(double)a5 progress:(double)a6
{
  result = [(HUCircularProgressView *)self initWithRadius:a3];
  if (result)
  {
    result->_startAngle = a4 + -1.57079633;
    result->_endAngle = a5 + -1.57079633;
    result->_fromValue = a6;
  }

  return result;
}

- (void)layoutSubviews
{
  v3 = [(HUCircularProgressView *)self layer];
  v4 = [v3 sublayers];
  [v4 makeObjectsPerformSelector:sel_removeFromSuperlayer];

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
  v16 = [v49 CGPath];
  v17 = [(HUCircularProgressView *)self baseLayer];
  [v17 setPath:v16];

  v18 = [(HUCircularProgressView *)self baseLayerStrokeLineColor];
  v19 = [v18 CGColor];
  v20 = [(HUCircularProgressView *)self baseLayer];
  [v20 setStrokeColor:v19];

  [(HUCircularProgressView *)self baseLayerStrokeLineWidth];
  v22 = v21;
  v23 = [(HUCircularProgressView *)self baseLayer];
  [v23 setLineWidth:v22];

  v24 = [(HUCircularProgressView *)self _lineCapStyle];
  v25 = [(HUCircularProgressView *)self baseLayer];
  [v25 setLineCap:v24];

  v26 = [MEMORY[0x277D75348] clearColor];
  v27 = [v26 CGColor];
  v28 = [(HUCircularProgressView *)self baseLayer];
  [v28 setFillColor:v27];

  v29 = [(HUCircularProgressView *)self layer];
  v30 = [(HUCircularProgressView *)self baseLayer];
  [v29 addSublayer:v30];

  [(HUCircularProgressView *)self progressLayerStrokeLineWidth];
  if (v31 > 0.0)
  {
    v32 = objc_opt_new();
    [(HUCircularProgressView *)self setProgressShapeLayer:v32];

    v33 = [v49 CGPath];
    v34 = [(HUCircularProgressView *)self progressShapeLayer];
    [v34 setPath:v33];

    v35 = [(HUCircularProgressView *)self progressLayerStrokeLineColor];
    v36 = [v35 CGColor];
    v37 = [(HUCircularProgressView *)self progressShapeLayer];
    [v37 setStrokeColor:v36];

    [(HUCircularProgressView *)self progressLayerStrokeLineWidth];
    v39 = v38;
    v40 = [(HUCircularProgressView *)self progressShapeLayer];
    [v40 setLineWidth:v39];

    v41 = [(HUCircularProgressView *)self progressShapeLayer];
    [v41 setStrokeEnd:0.0];

    v42 = [(HUCircularProgressView *)self _lineCapStyle];
    v43 = [(HUCircularProgressView *)self progressShapeLayer];
    [v43 setLineCap:v42];

    v44 = [MEMORY[0x277D75348] clearColor];
    v45 = [v44 CGColor];
    v46 = [(HUCircularProgressView *)self progressShapeLayer];
    [v46 setFillColor:v45];

    v47 = [(HUCircularProgressView *)self layer];
    v48 = [(HUCircularProgressView *)self progressShapeLayer];
    [v47 addSublayer:v48];
  }
}

- (void)setBaseLayerStrokeLineColor:(id)a3
{
  objc_storeStrong(&self->_baseLayerStrokeLineColor, a3);

  [(HUCircularProgressView *)self setNeedsLayout];
}

- (void)setProgressLayerStrokeLineColor:(id)a3
{
  objc_storeStrong(&self->_progressLayerStrokeLineColor, a3);

  [(HUCircularProgressView *)self setNeedsLayout];
}

- (void)updateProgressBy:(double)a3 animationDuration:(float)a4
{
  v19 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  v7 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v8 = [v7 numberWithDouble:?];
  [v19 setFromValue:v8];

  v9 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v11 = [v9 numberWithDouble:v10 + a3];
  [v19 setToValue:v11];

  [v19 setDuration:a4];
  [v19 setRemovedOnCompletion:0];
  v12 = [(HUCircularProgressView *)self _progressBarFillDirection];
  [v19 setFillMode:v12];

  v13 = [v19 toValue];
  [v13 floatValue];
  v15 = v14;

  if (v15 >= 1.0)
  {
    [v19 setRemovedOnCompletion:{-[HUCircularProgressView removeProgressBarOnCompletion](self, "removeProgressBarOnCompletion")}];
    [(HUCircularProgressView *)self setFromValue:0.0];
    [v19 setDuration:0.0];
  }

  else
  {
    v16 = [v19 toValue];
    [v16 floatValue];
    [(HUCircularProgressView *)self setFromValue:v17];
  }

  v18 = [(HUCircularProgressView *)self progressShapeLayer];
  [v18 addAnimation:v19 forKey:@"progressStrokeKey"];
}

- (void)updateProgressTo:(double)a3 animationDuration:(float)a4
{
  v17 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  v7 = MEMORY[0x277CCABB0];
  [(HUCircularProgressView *)self fromValue];
  v8 = [v7 numberWithDouble:?];
  [v17 setFromValue:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v17 setToValue:v9];

  [v17 setDuration:a4];
  [v17 setRemovedOnCompletion:0];
  v10 = [(HUCircularProgressView *)self _progressBarFillDirection];
  [v17 setFillMode:v10];

  v11 = [v17 toValue];
  [v11 floatValue];
  v13 = v12;

  if (v13 >= 1.0)
  {
    [v17 setRemovedOnCompletion:{-[HUCircularProgressView removeProgressBarOnCompletion](self, "removeProgressBarOnCompletion")}];
    [(HUCircularProgressView *)self setFromValue:0.0];
    [v17 setDuration:0.0];
  }

  else
  {
    v14 = [v17 toValue];
    [v14 floatValue];
    [(HUCircularProgressView *)self setFromValue:v15];
  }

  v16 = [(HUCircularProgressView *)self progressShapeLayer];
  [v16 addAnimation:v17 forKey:@"progressStrokeKey"];
}

- (id)_lineCapStyle
{
  v2 = [(HUCircularProgressView *)self lineCapStyle];
  v3 = MEMORY[0x277CDA778];
  v4 = MEMORY[0x277CDA780];
  if (v2 != 1)
  {
    v4 = MEMORY[0x277CDA788];
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

- (id)_progressBarFillDirection
{
  v2 = [(HUCircularProgressView *)self progressBarFillDirection];
  v3 = MEMORY[0x277CDA228];
  if (v2 != 1)
  {
    v3 = MEMORY[0x277CDA238];
  }

  v4 = *v3;

  return v4;
}

@end