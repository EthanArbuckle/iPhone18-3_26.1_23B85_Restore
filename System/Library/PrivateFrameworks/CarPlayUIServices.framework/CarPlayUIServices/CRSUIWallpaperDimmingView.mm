@interface CRSUIWallpaperDimmingView
- (CRSUIWallpaperDimmingView)initWithFrame:(CGRect)frame;
- (void)setDim:(double)dim animated:(BOOL)animated;
- (void)setUseDimStyle:(unint64_t)style;
@end

@implementation CRSUIWallpaperDimmingView

- (CRSUIWallpaperDimmingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CRSUIWallpaperDimmingView;
  v3 = [(CRSUIWallpaperDimmingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CRSUIWallpaperDimmingView *)v3 setUseDimStyle:3];
    layer = [(CRSUIWallpaperDimmingView *)v4 layer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v7 = [blackColor colorWithAlphaComponent:0.1];
    [layer setBackgroundColor:{objc_msgSend(v7, "CGColor")}];
  }

  return v4;
}

- (void)setDim:(double)dim animated:(BOOL)animated
{
  animatedCopy = animated;
  layer = [(CRSUIWallpaperDimmingView *)self layer];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __45__CRSUIWallpaperDimmingView_setDim_animated___block_invoke;
  v13 = &unk_278DA0AE0;
  v7 = layer;
  v14 = v7;
  dimCopy = dim;
  v8 = MEMORY[0x245D2CF20](&v10);
  v9 = v8;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:4 delay:v8 options:0 mass:0.3388 stiffness:0.0 damping:1.0 initialVelocity:343.985 animations:37.0937 completion:{0.0, v10, v11, v12, v13}];
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

uint64_t __45__CRSUIWallpaperDimmingView_setDim_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *&v1 = v1;
  return [*(a1 + 32) setOpacity:v1];
}

- (void)setUseDimStyle:(unint64_t)style
{
  if (self->_currentDimStyle != style)
  {
    self->_currentDimStyle = style;
    if (style > 1)
    {
      layer = [(CRSUIWallpaperDimmingView *)self layer];
      [layer setFilters:MEMORY[0x277CBEBF8]];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!style)
      {
        dimmingColorMatrixFilter = self->_dimmingColorMatrixFilter;
        if (!dimmingColorMatrixFilter)
        {
          v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
          v8 = self->_dimmingColorMatrixFilter;
          self->_dimmingColorMatrixFilter = v7;

          [(CAFilter *)self->_dimmingColorMatrixFilter setName:@"DIMMING_COLOR_MATRIX"];
          v20[2] = xmmword_243237B40;
          v20[3] = unk_243237B50;
          v20[4] = xmmword_243237B60;
          v20[0] = xmmword_243237B20;
          v20[1] = unk_243237B30;
          v9 = self->_dimmingColorMatrixFilter;
          v10 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v20];
          [(CAFilter *)v9 setValue:v10 forKey:*MEMORY[0x277CDA440]];

          dimmingColorMatrixFilter = self->_dimmingColorMatrixFilter;
        }

        [v5 addObject:dimmingColorMatrixFilter];
      }

      luminanceCurveMapFilter = self->_luminanceCurveMapFilter;
      if (!luminanceCurveMapFilter)
      {
        v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA580]];
        [v12 setName:@"DIMMING_LUMINANCE_CURVE_MAP"];
        [v12 setValue:&unk_2855E8E28 forKey:*MEMORY[0x277CDA360]];
        v13 = self->_luminanceCurveMapFilter;
        self->_luminanceCurveMapFilter = v12;

        luminanceCurveMapFilter = self->_luminanceCurveMapFilter;
      }

      if (style)
      {
        v14 = &unk_2855E8ED8;
      }

      else
      {
        v14 = &unk_2855E8EC0;
      }

      [(CAFilter *)luminanceCurveMapFilter setValue:v14 forKey:*MEMORY[0x277CDA540]];
      [v5 addObject:self->_luminanceCurveMapFilter];
      saturationFilter = self->_saturationFilter;
      if (!saturationFilter)
      {
        v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
        [v16 setName:@"DIMMING_SATURATION"];
        [v16 setValue:&unk_2855E8E98 forKey:@"inputAmount"];
        v17 = self->_saturationFilter;
        self->_saturationFilter = v16;

        saturationFilter = self->_saturationFilter;
      }

      [v5 addObject:saturationFilter];
      layer2 = [(CRSUIWallpaperDimmingView *)self layer];
      [layer2 setFilters:v5];
    }
  }
}

@end