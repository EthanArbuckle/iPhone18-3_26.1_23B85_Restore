@interface NTKRingView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKRingView)initWithFrame:(CGRect)frame radius:(double)radius ringWidth:(double)width overlapWidth:(double)overlapWidth;
- (int64_t)filterStyle;
- (void)_drawRingWithRadius:(double)radius fillFraction:(double)fraction alpha:(double)alpha hidesOverlapShadow:(BOOL)shadow;
- (void)drawRect:(CGRect)rect;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRingView

- (NTKRingView)initWithFrame:(CGRect)frame radius:(double)radius ringWidth:(double)width overlapWidth:(double)overlapWidth
{
  v13.receiver = self;
  v13.super_class = NTKRingView;
  v9 = [(CLKUIColoringView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_radius = radius;
    v9->_ringWidth = width;
    v9->_overlapWidth = overlapWidth;
    layer = [(NTKRingView *)v9 layer];
    [layer setNeedsDisplayOnBoundsChange:1];

    [(NTKRingView *)v10 setOpaque:0];
  }

  return v10;
}

- (int64_t)filterStyle
{
  if (self->_shouldUseMonochromeAccentColor)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  filterProvider = [(NTKRingView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:-[NTKRingView filterStyle](self fraction:{"filterStyle"), fraction}];

  layer = [(NTKRingView *)self layer];
  v7 = layer;
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  [layer setFilters:v8];
}

- (void)updateMonochromeColor
{
  filterProvider = [(NTKRingView *)self filterProvider];
  v7 = [filterProvider filtersForView:self style:{-[NTKRingView filterStyle](self, "filterStyle")}];

  layer = [(NTKRingView *)self layer];
  v5 = layer;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  [layer setFilters:v6];
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(NTKRingView *)self contentColor:rect.origin.x];
  [v4 set];

  [(NTKRingView *)self _drawBackgroundRings];
  radius = self->_radius;
  fillFraction = self->_fillFraction;
  hidesOverlapShadow = self->_hidesOverlapShadow;

  [(NTKRingView *)self _drawRingWithRadius:hidesOverlapShadow fillFraction:radius alpha:fillFraction hidesOverlapShadow:1.0];
}

- (void)_drawRingWithRadius:(double)radius fillFraction:(double)fraction alpha:(double)alpha hidesOverlapShadow:(BOOL)shadow
{
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  if (fraction < 0.999999881)
  {
    mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
    device = [mEMORY[0x277CBBB68] device];
    __73__NTKRingView__drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow___block_invoke(device, device);

    if (v12 >= 4.71238898 - (self->_ringWidth + *&_drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow____onePixel) / radius)
    {
      v12 = 4.71238898 - (self->_ringWidth + *&_drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow____onePixel) / radius;
    }

    shadow = 1;
  }

  [(NTKRingView *)self bounds];
  MidX = CGRectGetMidX(v28);
  [(NTKRingView *)self bounds];
  v26 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:CGRectGetMidY(v29) endAngle:radius clockwise:{-1.57079633, v12}];
  [v26 setLineWidth:self->_ringWidth];
  [v26 setLineCapStyle:1];
  [v26 strokeWithBlendMode:17 alpha:alpha];
  if (!shadow)
  {
    CLKInterpolateBetweenFloatsClipped();
    v17 = v16;
    [(NTKRingView *)self bounds];
    v18 = CGRectGetMidX(v30);
    [(NTKRingView *)self bounds];
    MidY = CGRectGetMidY(v31);
    v20 = (self->_ringWidth + self->_overlapWidth) * 0.5;
    radius = self->_radius;
    v22 = v17;
    v23 = __sincosf_stret(v22);
    clearColor = [MEMORY[0x277D75348] clearColor];
    [clearColor setStroke];

    v25 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:v18 + radius * v23.__cosval startAngle:MidY + radius * v23.__sinval endAngle:v20 clockwise:{v17, v17 + 3.14159265}];
    [v25 setLineWidth:self->_overlapWidth];
    [v25 setLineCapStyle:0];
    [v25 strokeWithBlendMode:16 alpha:1.0];
  }
}

uint64_t __73__NTKRingView__drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_30);
  if (_block_invoke___cachedDevice_30)
  {
    v3 = _block_invoke___cachedDevice_30 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_30))
  {
    v5 = _block_invoke_value_20;
  }

  else
  {
    _block_invoke___cachedDevice_30 = v2;
    _block_invoke___previousCLKDeviceVersion_30 = [v2 version];
    [v2 screenScale];
    *&_drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow____onePixel = 1.0 / v6;
    v5 = 1;
    _block_invoke_value_20 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_30);

  return v5;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end