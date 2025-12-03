@interface CEKLightingNameBadge
- (CEKLightingNameBadge)initWithFrame:(CGRect)frame;
- (void)_updateColorsAnimated:(BOOL)animated;
- (void)_updateText;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLightingType:(int64_t)type;
- (void)tintColorDidChange;
@end

@implementation CEKLightingNameBadge

- (CEKLightingNameBadge)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CEKLightingNameBadge;
  v3 = [(CEKBadgeTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKLightingNameBadge *)v3 setTintColor:systemYellowColor];

    v3->_lightingType = 1;
    [(CEKLightingNameBadge *)v3 _updateText];
    [(CEKLightingNameBadge *)v3 _updateColorsAnimated:0];
  }

  return v3;
}

- (void)setLightingType:(int64_t)type
{
  if (self->_lightingType != type)
  {
    self->_lightingType = type;
    [(CEKLightingNameBadge *)self _updateText];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(CEKLightingNameBadge *)self _updateColorsAnimated:animated];
  }
}

- (void)_updateText
{
  v3 = [CEKLightingEffectManager displayNameForLightingType:[(CEKLightingNameBadge *)self lightingType]];
  [(CEKBadgeTextView *)self _setText:v3];
}

- (void)_updateColorsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(CEKLightingNameBadge *)self isHighlighted])
  {
    tintColor = [(CEKLightingNameBadge *)self tintColor];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    tintColor = [systemBackgroundColor colorWithAlphaComponent:0.3];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v6 = [labelColor colorWithAlphaComponent:0.3];
  }

  [(CEKBadgeView *)self _setContentColor:v6];
  [(CEKBadgeView *)self _setFillColor:tintColor];
  if (animatedCopy)
  {
    v9 = [(CEKLightingNameBadge *)self snapshotViewAfterScreenUpdates:0];
    [(CEKLightingNameBadge *)self bounds];
    [v9 setFrame:?];
    [(CEKLightingNameBadge *)self addSubview:v9];
    [(CEKLightingNameBadge *)self _setSnapshotView:v9];
    v10 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__CEKLightingNameBadge__updateColorsAnimated___block_invoke;
    v16[3] = &unk_1E7CC6358;
    v17 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__CEKLightingNameBadge__updateColorsAnimated___block_invoke_2;
    v13[3] = &unk_1E7CC6410;
    v14 = v17;
    selfCopy = self;
    v11 = v17;
    [v10 animateWithDuration:v16 animations:v13 completion:0.17];
  }

  else
  {
    _snapshotView = [(CEKLightingNameBadge *)self _snapshotView];
    [_snapshotView removeFromSuperview];

    [(CEKLightingNameBadge *)self _setSnapshotView:0];
  }
}

void __46__CEKLightingNameBadge__updateColorsAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) _snapshotView];
  v3 = *(a1 + 32);

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _setSnapshotView:0];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKLightingNameBadge;
  [(CEKLightingNameBadge *)&v3 tintColorDidChange];
  [(CEKLightingNameBadge *)self _updateColorsAnimated:0];
}

@end