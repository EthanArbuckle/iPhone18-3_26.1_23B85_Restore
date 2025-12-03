@interface _PBUIDimmingView
+ (Class)layerClass;
- (_PBUIDimmingView)initWithFrame:(CGRect)frame;
- (void)setDim:(double)dim animated:(BOOL)animated;
- (void)setUseDimStyle:(unint64_t)style;
@end

@implementation _PBUIDimmingView

- (_PBUIDimmingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _PBUIDimmingView;
  v3 = [(_PBUIDimmingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (soft_PUIFeatureEnabled(11))
    {
      [(_PBUIDimmingView *)v3 setUseDimStyle:3];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(_PBUIDimmingView *)v3 setBackgroundColor:blackColor];
    }
  }

  return v3;
}

+ (Class)layerClass
{
  soft_PUIFeatureEnabled(11);
  v2 = objc_opt_class();

  return v2;
}

- (void)setDim:(double)dim animated:(BOOL)animated
{
  animatedCopy = animated;
  layer = [(_PBUIDimmingView *)self layer];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __36___PBUIDimmingView_setDim_animated___block_invoke;
  v13 = &unk_278362880;
  v7 = layer;
  v14 = v7;
  dimCopy = dim;
  v8 = MEMORY[0x223D62EE0](&v10);
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

- (void)setUseDimStyle:(unint64_t)style
{
  if (self->_currentDimStyle != style && soft_PUIFeatureEnabled(11))
  {
    self->_currentDimStyle = style;
    if (style > 1)
    {
      layer = [(_PBUIDimmingView *)self layer];
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
          v24[2] = xmmword_21E70D748;
          v24[3] = unk_21E70D758;
          v24[4] = xmmword_21E70D768;
          v24[0] = xmmword_21E70D728;
          v24[1] = unk_21E70D738;
          v9 = self->_dimmingColorMatrixFilter;
          v10 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v24];
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
        [v12 setValue:&unk_282FD5D08 forKey:*MEMORY[0x277CDA360]];
        v13 = self->_luminanceCurveMapFilter;
        self->_luminanceCurveMapFilter = v12;

        luminanceCurveMapFilter = self->_luminanceCurveMapFilter;
      }

      if (style)
      {
        v14 = &unk_282FD59C0;
      }

      else
      {
        v14 = &unk_282FD59A8;
      }

      [(CAFilter *)luminanceCurveMapFilter setValue:v14 forKey:*MEMORY[0x277CDA540]];
      [v5 addObject:self->_luminanceCurveMapFilter];
      saturationFilter = self->_saturationFilter;
      if (!saturationFilter)
      {
        v16 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2D0]];
        [v16 setName:@"DIMMING_SATURATION"];
        [v16 setValue:&unk_282FD5D78 forKey:@"inputAmount"];
        v17 = self->_saturationFilter;
        self->_saturationFilter = v16;

        saturationFilter = self->_saturationFilter;
      }

      [v5 addObject:saturationFilter];
      layer2 = [(_PBUIDimmingView *)self layer];
      v19 = objc_opt_class();
      v20 = layer2;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      [v22 setAllowsInPlaceFiltering:1];
      [v22 setFilters:v5];
    }
  }
}

@end