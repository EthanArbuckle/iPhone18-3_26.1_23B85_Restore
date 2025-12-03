@interface SFThemeColorEffectView
- (BOOL)_needsBlur;
- (SFThemeColorEffectView)initWithEffect:(id)effect;
- (SFThemeColorEffectView)initWithFrame:(CGRect)frame;
- (void)_applyTheme;
- (void)_updateFillColor;
- (void)setScrollPocketInteraction:(id)interaction;
- (void)setTheme:(id)theme;
- (void)setThemeColorVisibility:(double)visibility;
@end

@implementation SFThemeColorEffectView

- (BOOL)_needsBlur
{
  if (self->_themeColorVisibility < 1.0)
  {
    return 1;
  }

  themeColor = [(SFThemeColorBarTheme *)self->_theme themeColor];
  v3 = themeColor == 0;

  return v3;
}

- (void)_updateFillColor
{
  themeColor = [(SFThemeColorBarTheme *)self->_theme themeColor];
  if (themeColor || !self->_theme)
  {
    v6 = themeColor;
    v4 = [themeColor colorWithAlphaComponent:{_SFInterpolate(0.85, 1.0, self->_themeColorVisibility)}];
    contentView = [(UIVisualEffectView *)self->_effectView contentView];
    [contentView setBackgroundColor:v4];

    themeColor = v6;
  }
}

- (SFThemeColorEffectView)initWithEffect:(id)effect
{
  effectCopy = effect;
  v5 = [(SFThemeColorEffectView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(SFThemeColorEffectView *)v5 setEffect:effectCopy];
    v7 = v6;
  }

  return v6;
}

- (SFThemeColorEffectView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = SFThemeColorEffectView;
  v3 = [(SFThemeColorEffectView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFThemeColorEffectView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    darkeningView = v3->_darkeningView;
    v3->_darkeningView = v5;

    [(UIView *)v3->_darkeningView setAutoresizingMask:18];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798C0]];
    layer = [(UIView *)v3->_darkeningView layer];
    [layer setCompositingFilter:v7];

    [(SFThemeColorEffectView *)v3 addSubview:v3->_darkeningView];
    v9 = objc_alloc(MEMORY[0x1E69DD298]);
    [(SFThemeColorEffectView *)v3 bounds];
    v10 = [v9 initWithFrame:?];
    effectView = v3->_effectView;
    v3->_effectView = v10;

    [(UIVisualEffectView *)v3->_effectView setAutoresizingMask:18];
    [(SFThemeColorEffectView *)v3 addSubview:v3->_effectView];
    layer2 = [(SFThemeColorEffectView *)v3 layer];
    [layer2 setAllowsGroupBlending:0];

    v13 = v3;
  }

  return v3;
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  if (self->_theme != themeCopy)
  {
    v6 = themeCopy;
    objc_storeStrong(&self->_theme, theme);
    [(SFThemeColorEffectView *)self _applyTheme];
    themeCopy = v6;
  }
}

- (void)_applyTheme
{
  if (self->_theme && [(SFThemeColorEffectView *)self _needsBlur])
  {
    [(SFThemeColorBarTheme *)self->_theme applyBackdropEffectsToView:self->_effectView];
    themeColor = [(SFThemeColorBarTheme *)self->_theme themeColor];
    v4 = [themeColor colorWithAlphaComponent:1.0];
    [(UIView *)self->_darkeningView setBackgroundColor:v4];

    [(UIView *)self->_darkeningView setHidden:themeColor == 0];
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

- (void)setThemeColorVisibility:(double)visibility
{
  if (self->_themeColorVisibility != visibility)
  {
    _needsBlur = [(SFThemeColorEffectView *)self _needsBlur];
    self->_themeColorVisibility = visibility;
    if (_needsBlur == [(SFThemeColorEffectView *)self _needsBlur])
    {

      [(SFThemeColorEffectView *)self _updateFillColor];
    }

    else
    {

      [(SFThemeColorEffectView *)self _applyTheme];
    }
  }
}

- (void)setScrollPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = self->_scrollPocketInteraction;
    if (v5 != interactionCopy)
    {
      objc_storeStrong(&self->_scrollPocketInteraction, interaction);
      if (v5)
      {
        [(SFThemeColorEffectView *)self removeInteraction:v5];
      }

      if (interactionCopy)
      {
        [(SFThemeColorEffectView *)self addInteraction:interactionCopy];
      }
    }
  }
}

@end