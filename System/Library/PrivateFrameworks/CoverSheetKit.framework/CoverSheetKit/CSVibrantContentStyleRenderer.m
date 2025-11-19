@interface CSVibrantContentStyleRenderer
- (BOOL)_shouldUseGlassMaterialsForStyle:(id)a3;
- (CGRect)styleBoundingRect;
- (CSVibrantContentStyleRenderer)initWithVibrancyView:(id)a3 styleBoundingRect:(CGRect)a4;
- (void)_applyVibrantCompatibleStyle:(id)a3;
- (void)_removeGradientIfNeeded;
- (void)_updateForGlassStyle;
- (void)_updateForVibrantStyle:(id)a3;
- (void)clearAllStyling;
- (void)renderGlassMaterialStyle:(id)a3;
- (void)renderGradientStyle:(id)a3;
- (void)setStyleBoundingRect:(CGRect)a3;
@end

@implementation CSVibrantContentStyleRenderer

- (CSVibrantContentStyleRenderer)initWithVibrancyView:(id)a3 styleBoundingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v20.receiver = self;
  v20.super_class = CSVibrantContentStyleRenderer;
  v11 = [(CSVibrantContentStyleRenderer *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_vibrancyView, a3);
    v13 = [v10 contentView];
    contentView = v12->_contentView;
    v12->_contentView = v13;

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

- (void)setStyleBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_styleBoundingRect))
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

- (void)_updateForVibrantStyle:(id)a3
{
  v9 = a3;
  [(CSVibrantContentStyleRenderer *)self _removeGradientIfNeeded];
  if (!self->_vibrancyConfiguration)
  {
    v4 = objc_alloc(MEMORY[0x1E698E810]);
    v5 = [v9 vibrancyEffectType];
    v6 = [v9 vibrancyEffectColor];
    v7 = [v4 initWithEffectType:v5 backgroundType:0 color:v6];
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

- (BOOL)_shouldUseGlassMaterialsForStyle:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v5 BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [v7 objectForKey:@"SBSensitiveUIEnabled"];
    v6 = v8 != 0;
  }

  if (_os_feature_enabled_impl() && !(v6 | ((_os_feature_enabled_impl() & 1) == 0)) && [(CSVibrantContentStyleRenderer *)self _supportsRenderingStylesWithGlassMaterial])
  {
    v9 = [v4 supportsGlassAppearance];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_applyVibrantCompatibleStyle:(id)a3
{
  v4 = a3;
  if ([(CSVibrantContentStyleRenderer *)self _shouldUseGlassMaterialsForStyle:?])
  {
    [(CSVibrantContentStyleRenderer *)self _updateForGlassStyle];
  }

  else
  {
    [(CSVibrantContentStyleRenderer *)self _updateForVibrantStyle:v4];
  }
}

- (void)renderGradientStyle:(id)a3
{
  v4 = a3;
  if (self->_useComplicationRenderStyle)
  {
    [(CSVibrantContentStyleRenderer *)self clearAllStyling];
    v5 = objc_alloc_init(getPRPosterContentVibrantMonochromeStyleClass());
    [(CSVibrantContentStyleRenderer *)self applyStyle:v5];
  }

  else
  {
    [(BSUIVibrancyEffectView *)self->_vibrancyView setIsEnabled:0];
    v6 = [v4 colors];
    v5 = [v6 bs_map:&__block_literal_global_0];

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
    v15 = [v4 locations];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __53__CSVibrantContentStyleRenderer_renderGradientStyle___block_invoke_2;
    v28[3] = &__block_descriptor_64_e18__16__0__NSNumber_8l;
    *&v28[4] = v13;
    *&v28[5] = v14;
    *&v28[6] = MinX;
    *&v28[7] = v11;
    v16 = [v15 bs_map:v28];

    gradientView = self->_gradientView;
    if (!gradientView)
    {
      v18 = [[CSContentStyleGradientView alloc] initWithFrame:x, y, width, height];
      v19 = [(CSContentStyleGradientView *)v18 layer];
      [v19 setCompositingFilter:*MEMORY[0x1E6979D28]];

      [v4 startPoint];
      v21 = v20;
      v23 = v22;
      [v4 endPoint];
      [(CSContentStyleGradientView *)v18 setStartPoint:v21 endPoint:v23, v24, v25];
      v26 = self->_gradientView;
      self->_gradientView = v18;
      v27 = v18;

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

- (void)renderGlassMaterialStyle:(id)a3
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