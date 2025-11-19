@interface SFThemeColorEffectView
- (BOOL)_needsBlur;
- (SFThemeColorEffectView)initWithEffect:(id)a3;
- (SFThemeColorEffectView)initWithFrame:(CGRect)a3;
- (void)_applyTheme;
- (void)_updateFillColor;
- (void)setScrollPocketInteraction:(id)a3;
- (void)setTheme:(id)a3;
- (void)setThemeColorVisibility:(double)a3;
@end

@implementation SFThemeColorEffectView

- (BOOL)_needsBlur
{
  if (self->_themeColorVisibility < 1.0)
  {
    return 1;
  }

  v2 = [(SFThemeColorBarTheme *)self->_theme themeColor];
  v3 = v2 == 0;

  return v3;
}

- (void)_updateFillColor
{
  v3 = [(SFThemeColorBarTheme *)self->_theme themeColor];
  if (v3 || !self->_theme)
  {
    v6 = v3;
    v4 = [v3 colorWithAlphaComponent:{_SFInterpolate(0.85, 1.0, self->_themeColorVisibility)}];
    v5 = [(UIVisualEffectView *)self->_effectView contentView];
    [v5 setBackgroundColor:v4];

    v3 = v6;
  }
}

- (SFThemeColorEffectView)initWithEffect:(id)a3
{
  v4 = a3;
  v5 = [(SFThemeColorEffectView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(SFThemeColorEffectView *)v5 setEffect:v4];
    v7 = v6;
  }

  return v6;
}

- (SFThemeColorEffectView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = SFThemeColorEffectView;
  v3 = [(SFThemeColorEffectView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFThemeColorEffectView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    darkeningView = v3->_darkeningView;
    v3->_darkeningView = v5;

    [(UIView *)v3->_darkeningView setAutoresizingMask:18];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C0]];
    v8 = [(UIView *)v3->_darkeningView layer];
    [v8 setCompositingFilter:v7];

    [(SFThemeColorEffectView *)v3 addSubview:v3->_darkeningView];
    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    [(SFThemeColorEffectView *)v3 bounds];
    v10 = [v9 initWithFrame:?];
    effectView = v3->_effectView;
    v3->_effectView = v10;

    [(UIVisualEffectView *)v3->_effectView setAutoresizingMask:18];
    [(SFThemeColorEffectView *)v3 addSubview:v3->_effectView];
    v12 = [(SFThemeColorEffectView *)v3 layer];
    [v12 setAllowsGroupBlending:0];

    v13 = v3;
  }

  return v3;
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  if (self->_theme != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_theme, a3);
    [(SFThemeColorEffectView *)self _applyTheme];
    v5 = v6;
  }
}

- (void)_applyTheme
{
  if (self->_theme && [(SFThemeColorEffectView *)self _needsBlur])
  {
    [(SFThemeColorBarTheme *)self->_theme applyBackdropEffectsToView:self->_effectView];
    v3 = [(SFThemeColorBarTheme *)self->_theme themeColor];
    v4 = [v3 colorWithAlphaComponent:1.0];
    [(UIView *)self->_darkeningView setBackgroundColor:v4];

    [(UIView *)self->_darkeningView setHidden:v3 == 0];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
    [(UIVisualEffectView *)self->_effectView setBackgroundEffects:MEMORY[0x1E695E0F0]];
    [(UIVisualEffectView *)self->_effectView setContentEffects:v5];
    [(UIView *)self->_darkeningView setHidden:1];
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFThemeColorEffectView__applyTheme__block_invoke;
  v6[3] = &unk_1E721B360;
  v6[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v6];
}

- (void)setThemeColorVisibility:(double)a3
{
  if (self->_themeColorVisibility != a3)
  {
    v5 = [(SFThemeColorEffectView *)self _needsBlur];
    self->_themeColorVisibility = a3;
    if (v5 == [(SFThemeColorEffectView *)self _needsBlur])
    {

      [(SFThemeColorEffectView *)self _updateFillColor];
    }

    else
    {

      [(SFThemeColorEffectView *)self _applyTheme];
    }
  }
}

- (void)setScrollPocketInteraction:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = self->_scrollPocketInteraction;
    if (v5 != v6)
    {
      objc_storeStrong(&self->_scrollPocketInteraction, a3);
      if (v5)
      {
        [(SFThemeColorEffectView *)self removeInteraction:v5];
      }

      if (v6)
      {
        [(SFThemeColorEffectView *)self addInteraction:v6];
      }
    }
  }
}

@end