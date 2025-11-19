@interface NTKRingView
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKRingView)initWithFrame:(CGRect)a3 radius:(double)a4 ringWidth:(double)a5 overlapWidth:(double)a6;
- (int64_t)filterStyle;
- (void)_drawRingWithRadius:(double)a3 fillFraction:(double)a4 alpha:(double)a5 hidesOverlapShadow:(BOOL)a6;
- (void)drawRect:(CGRect)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKRingView

- (NTKRingView)initWithFrame:(CGRect)a3 radius:(double)a4 ringWidth:(double)a5 overlapWidth:(double)a6
{
  v13.receiver = self;
  v13.super_class = NTKRingView;
  v9 = [(CLKUIColoringView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_radius = a4;
    v9->_ringWidth = a5;
    v9->_overlapWidth = a6;
    v11 = [(NTKRingView *)v9 layer];
    [v11 setNeedsDisplayOnBoundsChange:1];

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

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKRingView *)self filterProvider];
  v9 = [v5 filtersForView:self style:-[NTKRingView filterStyle](self fraction:{"filterStyle"), a3}];

  v6 = [(NTKRingView *)self layer];
  v7 = v6;
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  [v6 setFilters:v8];
}

- (void)updateMonochromeColor
{
  v3 = [(NTKRingView *)self filterProvider];
  v7 = [v3 filtersForView:self style:{-[NTKRingView filterStyle](self, "filterStyle")}];

  v4 = [(NTKRingView *)self layer];
  v5 = v4;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  [v4 setFilters:v6];
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(NTKRingView *)self contentColor:a3.origin.x];
  [v4 set];

  [(NTKRingView *)self _drawBackgroundRings];
  radius = self->_radius;
  fillFraction = self->_fillFraction;
  hidesOverlapShadow = self->_hidesOverlapShadow;

  [(NTKRingView *)self _drawRingWithRadius:hidesOverlapShadow fillFraction:radius alpha:fillFraction hidesOverlapShadow:1.0];
}

- (void)_drawRingWithRadius:(double)a3 fillFraction:(double)a4 alpha:(double)a5 hidesOverlapShadow:(BOOL)a6
{
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  if (a4 < 0.999999881)
  {
    v13 = [MEMORY[0x277CBBB68] sharedRenderingContext];
    v14 = [v13 device];
    __73__NTKRingView__drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow___block_invoke(v14, v14);

    if (v12 >= 4.71238898 - (self->_ringWidth + *&_drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow____onePixel) / a3)
    {
      v12 = 4.71238898 - (self->_ringWidth + *&_drawRingWithRadius_fillFraction_alpha_hidesOverlapShadow____onePixel) / a3;
    }

    a6 = 1;
  }

  [(NTKRingView *)self bounds];
  MidX = CGRectGetMidX(v28);
  [(NTKRingView *)self bounds];
  v26 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:CGRectGetMidY(v29) endAngle:a3 clockwise:{-1.57079633, v12}];
  [v26 setLineWidth:self->_ringWidth];
  [v26 setLineCapStyle:1];
  [v26 strokeWithBlendMode:17 alpha:a5];
  if (!a6)
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
    v24 = [MEMORY[0x277D75348] clearColor];
    [v24 setStroke];

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