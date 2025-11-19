@interface MUBlurView
- (MUBlurView)initWithBlurEffectStyle:(int64_t)a3;
- (MUBlurView)initWithGaussianBlurWithRadius:(double)a3;
- (MUBlurView)initWithVariableBlurWithRadius:(double)a3 maskImage:(id)a4;
- (UIView)nonBlurView;
- (UIView)variableBlurView;
- (UIVisualEffectView)materialBlurView;
- (id)_blurName;
- (id)_materialVisualEffect;
- (id)blurView;
- (id)blurViewIfExists;
- (id)description;
- (id)initGlassBlurWithTintColor:(id)a3 glassStyle:(unint64_t)a4;
- (void)_setup;
- (void)_transparencyStatusDidChange;
- (void)_update;
- (void)setBackgroundEffects:(id)a3;
- (void)setBlurGroupName:(id)a3;
- (void)setGlassStyle:(unint64_t)a3;
- (void)setNonBlurredColor:(id)a3;
- (void)setOverlayColor:(id)a3;
- (void)setShouldBlur:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation MUBlurView

- (void)_setup
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__transparencyStatusDidChange name:*MEMORY[0x1E69DD920] object:0];

  self->_shouldBlur = !UIAccessibilityIsReduceTransparencyEnabled();

  [(MUBlurView *)self _update];
}

- (void)_update
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __21__MUBlurView__update__block_invoke;
  aBlock[3] = &unk_1E821A268;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __21__MUBlurView__update__block_invoke_2;
  v8[3] = &unk_1E821A268;
  v8[4] = self;
  v4 = _Block_copy(v8);
  v5 = [(MUBlurView *)self style];
  if (v5 == 2)
  {
    v7 = v4;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = v3;
  if (v6 == 1)
  {
LABEL_8:
    v7[2]();
    goto LABEL_9;
  }

  if (!v6)
  {
    if ([(MUBlurView *)self shouldBlur])
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    goto LABEL_8;
  }

LABEL_9:
}

void __21__MUBlurView__update__block_invoke(uint64_t a1)
{
  v30[4] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 520) removeFromSuperview];
  [*(a1 + 32) setBackgroundColor:0];
  v2 = *(a1 + 32);
  if (*(v2 + 410) != 1)
  {
    [v2 _setBackground:0];
    v5 = [*(a1 + 32) backgroundEffects];
    v6 = [*(a1 + 32) materialBlurView];
    [v6 setBackgroundEffects:v5];

    v7 = *(a1 + 32);
    v8 = [v7 blurView];
    [v7 insertSubview:v8 atIndex:0];

    v22 = MEMORY[0x1E696ACD8];
    v29 = [*(a1 + 32) blurView];
    v28 = [v29 leadingAnchor];
    v27 = [*(a1 + 32) leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v30[0] = v26;
    v25 = [*(a1 + 32) blurView];
    v24 = [v25 trailingAnchor];
    v23 = [*(a1 + 32) trailingAnchor];
    v9 = [v24 constraintEqualToAnchor:v23];
    v30[1] = v9;
    v10 = [*(a1 + 32) blurView];
    v11 = [v10 topAnchor];
    v12 = [*(a1 + 32) topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v30[2] = v13;
    v14 = [*(a1 + 32) blurView];
    v15 = [v14 bottomAnchor];
    v16 = [*(a1 + 32) bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v30[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v18];

    goto LABEL_9;
  }

  v3 = *(v2 + 488);
  switch(v3)
  {
    case 2:
      v21 = *MEMORY[0x1E69E9840];

      [v2 _mapsui_setScrimGlassBackground];
      break;
    case 1:
      v20 = *MEMORY[0x1E69E9840];

      [v2 _mapsui_setNonAdaptiveSignGlassBackground];
      break;
    case 0:
      v4 = *MEMORY[0x1E69E9840];

      [v2 _mapsui_setNonAdaptiveGlassBackground];
      return;
    default:
LABEL_9:
      v19 = *MEMORY[0x1E69E9840];
      return;
  }
}

- (UIVisualEffectView)materialBlurView
{
  materialBlurView = self->_materialBlurView;
  if (!materialBlurView)
  {
    if (self->_isVariableBlur)
    {
      materialBlurView = 0;
    }

    else
    {
      v4 = [(MUBlurView *)self _materialVisualEffect];
      v5 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v4];
      v6 = self->_materialBlurView;
      self->_materialBlurView = v5;

      [(UIVisualEffectView *)self->_materialBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(MUBlurView *)self blurGroupName];
      [(UIVisualEffectView *)self->_materialBlurView _setGroupName:v7];

      v8 = [(MUBlurView *)self overlayColor];
      v9 = [(UIVisualEffectView *)self->_materialBlurView contentView];
      [v9 setBackgroundColor:v8];

      if ([(NSArray *)self->_backgroundEffects count])
      {
        [(UIVisualEffectView *)self->_materialBlurView setBackgroundEffects:self->_backgroundEffects];
      }

      else
      {
        v10 = [(UIVisualEffectView *)self->_materialBlurView backgroundEffects];
        backgroundEffects = self->_backgroundEffects;
        self->_backgroundEffects = v10;
      }

      materialBlurView = self->_materialBlurView;
    }
  }

  return materialBlurView;
}

- (id)blurView
{
  if (self->_isVariableBlur)
  {
    [(MUBlurView *)self variableBlurView];
  }

  else
  {
    [(MUBlurView *)self materialBlurView];
  }
  v2 = ;

  return v2;
}

- (UIView)variableBlurView
{
  variableBlurView = self->_variableBlurView;
  if (!variableBlurView)
  {
    if (self->_isVariableBlur)
    {
      v4 = [[_MUVariableBlurView alloc] initWithRadius:self->_variableBlurMaskImage maskImage:self->_blurRadius];
      v5 = self->_variableBlurView;
      self->_variableBlurView = &v4->super;

      [(UIView *)self->_variableBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
      variableBlurView = self->_variableBlurView;
    }

    else
    {
      variableBlurView = 0;
    }
  }

  return variableBlurView;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  shouldBlur = self->_shouldBlur;
  style = self->_style;
  v7 = @"Dynamic";
  if (style == 1)
  {
    v7 = @"Always";
  }

  if (style == 2)
  {
    v8 = @"Off";
  }

  else
  {
    v8 = v7;
  }

  v9 = [(MUBlurView *)self _blurName];
  v10 = [v3 stringWithFormat:@"<%@: %p, shouldBlur: %d, style: %@, blurName: %@>", v4, self, shouldBlur, v8, v9];

  return v10;
}

- (id)_blurName
{
  if (self->_isGaussianBlur)
  {
    return @"Gaussian";
  }

  if (self->_isGlassBlur)
  {
    return @"Glass";
  }

  if (self->_isVariableBlur)
  {
    return @"Variable";
  }

  return @"Material";
}

- (void)_transparencyStatusDidChange
{
  v3 = !UIAccessibilityIsReduceTransparencyEnabled();

  [(MUBlurView *)self setShouldBlur:v3];
}

- (void)setBackgroundEffects:(id)a3
{
  v4 = a3;
  v5 = self->_backgroundEffects;
  v6 = v4;
  v7 = v6;
  if (v6 | v5)
  {
    v11 = v6;
    v8 = [v5 isEqual:v6];

    v7 = v11;
    if ((v8 & 1) == 0 && !self->_isVariableBlur)
    {
      v9 = [v11 copy];
      backgroundEffects = self->_backgroundEffects;
      self->_backgroundEffects = v9;

      v6 = [(MUBlurView *)self _update];
      v7 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setNonBlurredColor:(id)a3
{
  v4 = a3;
  v5 = self->_nonBlurredColor;
  v6 = v4;
  v7 = v6;
  if (v6 | v5)
  {
    v11 = v6;
    v8 = [v5 isEqual:v6];

    v7 = v11;
    if ((v8 & 1) == 0)
    {
      v9 = [v11 copy];
      nonBlurredColor = self->_nonBlurredColor;
      self->_nonBlurredColor = v9;

      if ([(MUBlurView *)self style]== 2)
      {
        v6 = [(MUBlurView *)self setBackgroundColor:self->_nonBlurredColor];
      }

      else
      {
        v6 = [(MUBlurView *)self _update];
      }

      v7 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setBlurGroupName:(id)a3
{
  v4 = a3;
  v5 = self->_blurGroupName;
  v6 = v4;
  v7 = v6;
  if (v6 | v5)
  {
    v11 = v6;
    v8 = [v5 isEqual:v6];

    v7 = v11;
    if ((v8 & 1) == 0 && !self->_isVariableBlur)
    {
      v9 = [v11 copy];
      blurGroupName = self->_blurGroupName;
      self->_blurGroupName = v9;

      v6 = [(UIVisualEffectView *)self->_materialBlurView _setGroupName:self->_blurGroupName];
      v7 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setOverlayColor:(id)a3
{
  v4 = a3;
  v5 = self->_overlayColor;
  v6 = v4;
  v7 = v6;
  if (v6 | v5)
  {
    v12 = v6;
    v8 = [v5 isEqual:v6];

    v7 = v12;
    if ((v8 & 1) == 0 && !self->_isVariableBlur)
    {
      v9 = [v12 copy];
      overlayColor = self->_overlayColor;
      self->_overlayColor = v9;

      v11 = [(UIVisualEffectView *)self->_materialBlurView contentView];
      [v11 setBackgroundColor:v12];

      v6 = [(UIView *)self->_nonBlurView setBackgroundColor:v12];
      v7 = v12;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (UIView)nonBlurView
{
  nonBlurView = self->_nonBlurView;
  if (!nonBlurView)
  {
    v4 = objc_opt_new();
    v5 = self->_nonBlurView;
    self->_nonBlurView = v4;

    [(UIView *)self->_nonBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(MUBlurView *)self overlayColor];
    [(UIView *)self->_nonBlurView setBackgroundColor:v6];

    nonBlurView = self->_nonBlurView;
  }

  return nonBlurView;
}

- (id)_materialVisualEffect
{
  if (self->_isGaussianBlur)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithBlurRadius:self->_blurRadius];
  }

  else
  {
    if (self->_isGlassBlur)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Glass blur does not produce a material effect!"];
    }

    v3 = [MEMORY[0x1E69DC730] effectWithStyle:self->_blurEffectStyle];
  }

  return v3;
}

- (id)blurViewIfExists
{
  if (self->_isVariableBlur)
  {
    v2 = &OBJC_IVAR___MUBlurView__variableBlurView;
  }

  else
  {
    v2 = &OBJC_IVAR___MUBlurView__materialBlurView;
  }

  return *(&self->super.super.super.isa + *v2);
}

void __21__MUBlurView__update__block_invoke_2(uint64_t a1)
{
  v25[4] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setBackground:0];
  v2 = [*(a1 + 32) blurViewIfExists];
  [v2 removeFromSuperview];

  v3 = [*(a1 + 32) nonBlurredColor];
  [*(a1 + 32) setBackgroundColor:v3];

  v4 = *(a1 + 32);
  v5 = [v4 nonBlurView];
  [v4 insertSubview:v5 atIndex:0];

  v17 = MEMORY[0x1E696ACD8];
  v24 = [*(a1 + 32) nonBlurView];
  v23 = [v24 leadingAnchor];
  v22 = [*(a1 + 32) leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v25[0] = v21;
  v20 = [*(a1 + 32) nonBlurView];
  v19 = [v20 trailingAnchor];
  v18 = [*(a1 + 32) trailingAnchor];
  v6 = [v19 constraintEqualToAnchor:v18];
  v25[1] = v6;
  v7 = [*(a1 + 32) nonBlurView];
  v8 = [v7 topAnchor];
  v9 = [*(a1 + 32) topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v25[2] = v10;
  v11 = [*(a1 + 32) nonBlurView];
  v12 = [v11 bottomAnchor];
  v13 = [*(a1 + 32) bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v25[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setGlassStyle:(unint64_t)a3
{
  if (self->_glassStyle != a3)
  {
    self->_glassStyle = a3;
    [(MUBlurView *)self _update];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(MUBlurView *)self _update];
  }
}

- (void)setShouldBlur:(BOOL)a3
{
  if (self->_shouldBlur != a3)
  {
    self->_shouldBlur = a3;
    if (![(MUBlurView *)self style])
    {

      [(MUBlurView *)self _update];
    }
  }
}

- (id)initGlassBlurWithTintColor:(id)a3 glassStyle:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MUBlurView;
  v8 = [(MUBlurView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_isGlassBlur = 1;
    v8->_glassStyle = a4;
    objc_storeStrong(&v8->_glassTintColor, a3);
    [(MUBlurView *)v9 _setup];
  }

  return v9;
}

- (MUBlurView)initWithVariableBlurWithRadius:(double)a3 maskImage:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MUBlurView;
  v8 = [(MUBlurView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    v8->_isVariableBlur = 1;
    v8->_blurRadius = a3;
    objc_storeStrong(&v8->_variableBlurMaskImage, a4);
    [(MUBlurView *)v9 _setup];
  }

  return v9;
}

- (MUBlurView)initWithGaussianBlurWithRadius:(double)a3
{
  v7.receiver = self;
  v7.super_class = MUBlurView;
  v4 = [(MUBlurView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_isGaussianBlur = 1;
    v4->_blurRadius = a3;
    [(MUBlurView *)v4 _setup];
  }

  return v5;
}

- (MUBlurView)initWithBlurEffectStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = MUBlurView;
  v4 = [(MUBlurView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_blurEffectStyle = a3;
    [(MUBlurView *)v4 _setup];
  }

  return v5;
}

@end