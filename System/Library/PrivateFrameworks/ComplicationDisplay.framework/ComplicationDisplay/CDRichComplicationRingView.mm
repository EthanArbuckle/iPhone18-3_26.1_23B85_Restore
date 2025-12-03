@interface CDRichComplicationRingView
+ (id)_disabledLayerActions;
- (CDRichComplicationRingView)initWithCurveWidth:(double)width padding:(double)padding forDevice:(id)device withFilterStyle:(int64_t)style;
- (CGPath)_generatePath;
- (CGPoint)_pointAtProgress:(float)progress;
- (void)_layoutHeadTailView:(id)view forProgress:(double)progress;
- (void)_setupGradientLayer:(id)layer;
- (void)_updateGradient;
- (void)layoutSubviews;
- (void)setClockwise:(BOOL)clockwise;
- (void)setProgress:(double)progress;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation CDRichComplicationRingView

- (CDRichComplicationRingView)initWithCurveWidth:(double)width padding:(double)padding forDevice:(id)device withFilterStyle:(int64_t)style
{
  v20.receiver = self;
  v20.super_class = CDRichComplicationRingView;
  v8 = [(CDRichComplicationShapeView *)&v20 initForDevice:device withFilterStyle:style];
  v9 = v8;
  if (v8)
  {
    v8->_curveWidth = width;
    v8->_padding = padding;
    v8->_clockwise = 1;
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    foregroundView = v9->_foregroundView;
    v9->_foregroundView = v10;

    [(CDRichComplicationRingView *)v9 addSubview:v9->_foregroundView];
    v12 = [(CDRichComplicationRingView *)v9 _createHeadTailViewWithStartAngle:0 endAngle:-1.57079633 clockwise:1.57079633 additionalWidth:0.0];
    headLayer = v9->_headLayer;
    v9->_headLayer = v12;

    v14 = [(CDRichComplicationRingView *)v9 _createHeadTailViewWithStartAngle:1 endAngle:-1.57079633 clockwise:1.57079633 additionalWidth:2.0];
    tailStrokeLayer = v9->_tailStrokeLayer;
    v9->_tailStrokeLayer = v14;

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](v9->_tailStrokeLayer, "setFillColor:", [clearColor CGColor]);

    v17 = [(CDRichComplicationRingView *)v9 _createHeadTailViewWithStartAngle:1 endAngle:0.0 clockwise:6.28318531 additionalWidth:0.0];
    tailLayer = v9->_tailLayer;
    v9->_tailLayer = v17;
  }

  return v9;
}

- (void)setClockwise:(BOOL)clockwise
{
  self->_clockwise = clockwise;
  [(CDRichComplicationRingView *)self _updateGradient];

  [(CDRichComplicationShapeView *)self _updatePath];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationRingView;
  [(CDRichComplicationShapeView *)&v5 layoutSubviews];
  [(CDRichComplicationRingView *)self bounds];
  [(UIView *)self->_foregroundView setFrame:?];
  [(CDRichComplicationRingView *)self bringSubviewToFront:self->_foregroundView];
  [(CDRichComplicationRingView *)self _layoutHeadTailView:self->_headLayer forProgress:0.0];
  tailStrokeLayer = self->_tailStrokeLayer;
  [(CDRichComplicationShapeView *)self progress];
  [(CDRichComplicationRingView *)self _layoutHeadTailView:tailStrokeLayer forProgress:?];
  tailLayer = self->_tailLayer;
  [(CDRichComplicationShapeView *)self progress];
  [(CDRichComplicationRingView *)self _layoutHeadTailView:tailLayer forProgress:?];
}

- (void)setProgress:(double)progress
{
  if (progress == 0.0)
  {
    progressCopy = 0.001;
  }

  else
  {
    progressCopy = progress;
  }

  v5.receiver = self;
  v5.super_class = CDRichComplicationRingView;
  [(CDRichComplicationShapeView *)&v5 setProgress:progressCopy];
  [(CAShapeLayer *)self->_headLayer setHidden:progressCopy >= 1.0];
  [(CAShapeLayer *)self->_tailLayer setHidden:progressCopy < 0.95];
  [(CAShapeLayer *)self->_tailStrokeLayer setHidden:[(CAShapeLayer *)self->_tailLayer isHidden]];
  [(CDRichComplicationRingView *)self setNeedsLayout];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v7.receiver = self;
  v7.super_class = CDRichComplicationRingView;
  [(CDRichComplicationShapeView *)&v7 transitionToMonochromeWithFraction:?];
  filterProvider = [(CDRichComplicationShapeView *)self filterProvider];
  v6 = [filterProvider filtersForView:self style:-[CDRichComplicationShapeView filterStyle](self fraction:{"filterStyle"), fraction}];

  if (v6)
  {
    [(CAShapeLayer *)self->_headLayer setFilters:v6];
    [(CAShapeLayer *)self->_tailLayer setFilters:v6];
  }
}

- (void)updateMonochromeColor
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationRingView;
  [(CDRichComplicationShapeView *)&v5 updateMonochromeColor];
  filterProvider = [(CDRichComplicationShapeView *)self filterProvider];
  v4 = [filterProvider filtersForView:self style:{-[CDRichComplicationShapeView filterStyle](self, "filterStyle")}];

  if (v4)
  {
    [(CAShapeLayer *)self->_headLayer setFilters:v4];
    [(CAShapeLayer *)self->_tailLayer setFilters:v4];
  }
}

- (void)_setupGradientLayer:(id)layer
{
  v3 = *MEMORY[0x277CDA698];
  layerCopy = layer;
  [layerCopy setType:v3];
  [layerCopy setStartPoint:{0.5, 0.5}];
  [layerCopy setEndPoint:{0.5, 1.0}];
  CGAffineTransformMakeRotation(&v6, 3.14159265);
  v5 = v6;
  [layerCopy setAffineTransform:&v5];
}

- (CGPoint)_pointAtProgress:(float)progress
{
  [(CDRichComplicationRingView *)self bounds];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v9 = CGRectGetWidth(v17) * 0.5;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v10 = CGRectGetHeight(v18) * 0.5;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v11 = CGRectGetWidth(v19) * 0.5 - self->_curveWidth * 0.5 - self->_padding;
  v12 = progress * 6.28318531;
  v13 = __sincosf_stret(v12);
  v14 = v10 + v13.__sinval * v11;
  v15 = v9 + v13.__cosval * v11;
  result.y = v14;
  result.x = v15;
  return result;
}

- (CGPath)_generatePath
{
  [(CDRichComplicationRingView *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetWidth(v12) * 0.5;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetHeight(v13) * 0.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = [MEMORY[0x277D75208] bezierPathWithArcCenter:self->_clockwise radius:v7 startAngle:v8 endAngle:CGRectGetWidth(v14) * 0.5 - self->_curveWidth * 0.5 - self->_padding clockwise:{-1.57079633, 4.71238898}];
  cGPath = [v9 CGPath];

  return cGPath;
}

- (void)_updateGradient
{
  v9.receiver = self;
  v9.super_class = CDRichComplicationRingView;
  [(CDRichComplicationShapeView *)&v9 _updateGradient];
  headLayer = self->_headLayer;
  gradientColors = [(CDRichComplicationShapeView *)self gradientColors];
  firstObject = [gradientColors firstObject];
  -[CAShapeLayer setFillColor:](headLayer, "setFillColor:", [firstObject CGColor]);

  tailLayer = self->_tailLayer;
  gradientColors2 = [(CDRichComplicationShapeView *)self gradientColors];
  lastObject = [gradientColors2 lastObject];
  -[CAShapeLayer setFillColor:](tailLayer, "setFillColor:", [lastObject CGColor]);
}

- (void)_layoutHeadTailView:(id)view forProgress:(double)progress
{
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v17.a = *MEMORY[0x277CBF2C0];
  *&v17.c = v14;
  *&v17.tx = *(MEMORY[0x277CBF2C0] + 32);
  viewCopy = view;
  [(CDRichComplicationRingView *)self bounds];
  v8 = v7 * 0.5;
  [(CDRichComplicationRingView *)self bounds];
  v10 = v9;
  v11 = v9 * 0.5;
  *&v16.a = *&v17.a;
  *&v16.c = v14;
  *&v16.tx = *&v17.tx;
  CGAffineTransformTranslate(&v17, &v16, v8, 0.0);
  v15 = v17;
  CGAffineTransformTranslate(&v16, &v15, 0.0, v11);
  v17 = v16;
  v15 = v16;
  CGAffineTransformRotate(&v16, &v15, progress * 3.14159265 + progress * 3.14159265);
  v17 = v16;
  v12 = -(v10 * 0.5) - self->_padding;
  v15 = v16;
  CGAffineTransformTranslate(&v16, &v15, 0.0, v12);
  v17 = v16;
  v13 = self->_curveWidth * 0.5;
  v15 = v16;
  CGAffineTransformTranslate(&v16, &v15, 0.0, v13);
  v17 = v16;
  [viewCopy setAffineTransform:&v16];
}

+ (id)_disabledLayerActions
{
  if (_disabledLayerActions_onceToken != -1)
  {
    +[CDRichComplicationRingView _disabledLayerActions];
  }

  v3 = _disabledLayerActions__dictionary;

  return v3;
}

void __51__CDRichComplicationRingView__disabledLayerActions__block_invoke()
{
  v5[9] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB68] null];
  v4[0] = @"instanceTransform";
  v4[1] = @"contentsMultiplyColor";
  v5[0] = v0;
  v5[1] = v0;
  v4[2] = @"transform";
  v4[3] = @"hidden";
  v5[2] = v0;
  v5[3] = v0;
  v4[4] = @"position";
  v4[5] = @"opacity";
  v5[4] = v0;
  v5[5] = v0;
  v4[6] = @"instanceCount";
  v4[7] = @"instanceDelay";
  v5[6] = v0;
  v5[7] = v0;
  v4[8] = @"backgroundColor";
  v5[8] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:9];
  v2 = _disabledLayerActions__dictionary;
  _disabledLayerActions__dictionary = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end