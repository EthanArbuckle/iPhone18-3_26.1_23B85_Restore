@interface CSVibrantContentStyleRenderer
- (BOOL)_shouldUseGlassMaterialsForStyle:(id)style;
- (CGRect)styleBoundingRect;
- (CSVibrantContentStyleRenderer)initWithVibrancyView:(id)view styleBoundingRect:(CGRect)rect;
- (void)_applyVibrantCompatibleStyle:(id)style;
- (void)_removeGradientIfNeeded;
- (void)_updateForGlassStyle;
- (void)_updateForVibrantStyle:(id)style;
- (void)clearAllStyling;
- (void)renderGlassMaterialStyle:(id)style;
- (void)renderGradientStyle:(id)style;
- (void)setStyleBoundingRect:(CGRect)rect;
@end

@implementation CSVibrantContentStyleRenderer

- (CSVibrantContentStyleRenderer)initWithVibrancyView:(id)view styleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = CSVibrantContentStyleRenderer;
  v11 = [(CSVibrantContentStyleRenderer *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vibrancyView, view);
    contentView = [viewCopy contentView];
    contentView = v12->_contentView;
    v12->_contentView = contentView;

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    if (CGRectIsEmpty(v21))
    {
      [(UIView *)v12->_contentView bounds];
      x = v15;
      y = v16;
      width = v17;
      height = v18;
    }

    v12->_styleBoundingRect.origin.x = x;
    v12->_styleBoundingRect.origin.y = y;
    v12->_styleBoundingRect.size.width = width;
    v12->_styleBoundingRect.size.height = height;
  }

  return v12;
}

- (void)setStyleBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(rect, self->_styleBoundingRect))
  {
    self->_styleBoundingRect.origin.x = x;
    self->_styleBoundingRect.origin.y = y;
    self->_styleBoundingRect.size.width = width;
    self->_styleBoundingRect.size.height = height;
  }
}

- (void)clearAllStyling
{
  [(CSVibrantContentStyleRenderer *)self _removeGradientIfNeeded];
  vibrancyConfiguration = self->_vibrancyConfiguration;
  self->_vibrancyConfiguration = 0;

  vibrancyView = self->_vibrancyView;

  [(BSUIVibrancyEffectView *)vibrancyView setIsEnabled:0];
}

- (void)_removeGradientIfNeeded
{
  [(CSContentStyleGradientView *)self->_gradientView removeFromSuperview];
  gradientView = self->_gradientView;
  self->_gradientView = 0;
}

- (void)_updateForVibrantStyle:(id)style
{
  styleCopy = style;
  [(CSVibrantContentStyleRenderer *)self _removeGradientIfNeeded];
  if (!self->_vibrancyConfiguration)
  {
    v4 = objc_alloc(MEMORY[0x1E698E810]);
    vibrancyEffectType = [styleCopy vibrancyEffectType];
    vibrancyEffectColor = [styleCopy vibrancyEffectColor];
    v7 = [v4 initWithEffectType:vibrancyEffectType backgroundType:0 color:vibrancyEffectColor];
    vibrancyConfiguration = self->_vibrancyConfiguration;
    self->_vibrancyConfiguration = v7;
  }

  [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:1];
  [(BSUIVibrancyEffectView *)self->_vibrancyView setConfiguration:self->_vibrancyConfiguration];
}

- (void)_updateForGlassStyle
{
  [(CSVibrantContentStyleRenderer *)self _removeGradientIfNeeded];
  vibrancyView = self->_vibrancyView;

  [(BSUIVibrancyEffectView *)vibrancyView setIsEnabled:0];
}

- (BOOL)_shouldUseGlassMaterialsForStyle:(id)style
{
  styleCopy = style;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    v6 = 0;
  }

  else
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults2 objectForKey:@"SBSensitiveUIEnabled"];
    v6 = v8 != 0;
  }

  if (_os_feature_enabled_impl() && !(v6 | ((_os_feature_enabled_impl() & 1) == 0)) && [(CSVibrantContentStyleRenderer *)self _supportsRenderingStylesWithGlassMaterial])
  {
    supportsGlassAppearance = [styleCopy supportsGlassAppearance];
  }

  else
  {
    supportsGlassAppearance = 0;
  }

  return supportsGlassAppearance;
}

- (void)_applyVibrantCompatibleStyle:(id)style
{
  styleCopy = style;
  if ([(CSVibrantContentStyleRenderer *)self _shouldUseGlassMaterialsForStyle:?])
  {
    [(CSVibrantContentStyleRenderer *)self _updateForGlassStyle];
  }

  else
  {
    [(CSVibrantContentStyleRenderer *)self _updateForVibrantStyle:styleCopy];
  }
}

- (void)renderGradientStyle:(id)style
{
  styleCopy = style;
  if (self->_useComplicationRenderStyle)
  {
    [(CSVibrantContentStyleRenderer *)self clearAllStyling];
    v5 = objc_alloc_init(getPRPosterContentVibrantMonochromeStyleClass());
    [(CSVibrantContentStyleRenderer *)self applyStyle:v5];
  }

  else
  {
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
    colors = [styleCopy colors];
    v5 = [colors bs_map:&__block_literal_global_0];

    [(UIView *)self->_contentView bounds];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v11 = CGRectGetWidth(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MinX = CGRectGetMinX(v30);
    v13 = CGRectGetWidth(self->_styleBoundingRect);
    v14 = CGRectGetMinX(self->_styleBoundingRect);
    locations = [styleCopy locations];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__CSVibrantContentStyleRenderer_renderGradientStyle___block_invoke_2;
    v28[3] = &__block_descriptor_64_e18__16__0__NSNumber_8l;
    *&v28[4] = v13;
    *&v28[5] = v14;
    *&v28[6] = MinX;
    *&v28[7] = v11;
    v16 = [locations bs_map:v28];

    gradientView = self->_gradientView;
    if (!gradientView)
    {
      height = [[CSContentStyleGradientView alloc] initWithFrame:x, y, width, height];
      layer = [(CSContentStyleGradientView *)height layer];
      [layer setCompositingFilter:*MEMORY[0x1E6979D28]];

      [styleCopy startPoint];
      v21 = v20;
      v23 = v22;
      [styleCopy endPoint];
      [(CSContentStyleGradientView *)height setStartPoint:v21 endPoint:v23, v24, v25];
      v26 = self->_gradientView;
      self->_gradientView = height;
      v27 = height;

      [(UIView *)self->_contentView addSubview:v27];
      [(CSContentStyleGradientView *)self->_gradientView setAutoresizingMask:18];

      gradientView = self->_gradientView;
    }

    [(CSContentStyleGradientView *)gradientView setColors:v5 locations:v16 type:*MEMORY[0x1E6979DA0]];
  }
}

uint64_t __53__CSVibrantContentStyleRenderer_renderGradientStyle___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

id __53__CSVibrantContentStyleRenderer_renderGradientStyle___block_invoke_2(double *a1, void *a2)
{
  v3 = a2;
  [v3 floatValue];
  v5 = v4;
  if ((BSFloatIsZero() & 1) != 0 || BSFloatIsOne())
  {
    v6 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:(a1[5] - a1[6] + a1[4] * v5) / a1[7]];
  }

  v7 = v6;

  return v7;
}

- (void)renderGlassMaterialStyle:(id)style
{
  if (self->_useComplicationRenderStyle)
  {
    [(CSVibrantContentStyleRenderer *)self clearAllStyling];
    v4 = objc_alloc_init(getPRPosterContentVibrantMonochromeStyleClass());
    [(CSVibrantContentStyleRenderer *)self applyStyle:v4];
  }

  else
  {

    [(CSVibrantContentStyleRenderer *)self _updateForGlassStyle];
  }
}

- (CGRect)styleBoundingRect
{
  x = self->_styleBoundingRect.origin.x;
  y = self->_styleBoundingRect.origin.y;
  width = self->_styleBoundingRect.size.width;
  height = self->_styleBoundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end