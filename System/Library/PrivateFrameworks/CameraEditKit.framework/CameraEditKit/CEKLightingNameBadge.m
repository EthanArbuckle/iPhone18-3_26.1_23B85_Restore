@interface CEKLightingNameBadge
- (CEKLightingNameBadge)initWithFrame:(CGRect)a3;
- (void)_updateColorsAnimated:(BOOL)a3;
- (void)_updateText;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLightingType:(int64_t)a3;
- (void)tintColorDidChange;
@end

@implementation CEKLightingNameBadge

- (CEKLightingNameBadge)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CEKLightingNameBadge;
  v3 = [(CEKBadgeTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKLightingNameBadge *)v3 setTintColor:v4];

    v3->_lightingType = 1;
    [(CEKLightingNameBadge *)v3 _updateText];
    [(CEKLightingNameBadge *)v3 _updateColorsAnimated:0];
  }

  return v3;
}

- (void)setLightingType:(int64_t)a3
{
  if (self->_lightingType != a3)
  {
    self->_lightingType = a3;
    [(CEKLightingNameBadge *)self _updateText];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(CEKLightingNameBadge *)self _updateColorsAnimated:a4];
  }
}

- (void)_updateText
{
  v3 = [CEKLightingEffectManager displayNameForLightingType:[(CEKLightingNameBadge *)self lightingType]];
  [(CEKBadgeTextView *)self _setText:v3];
}

- (void)_updateColorsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(CEKLightingNameBadge *)self isHighlighted])
  {
    v5 = [(CEKLightingNameBadge *)self tintColor];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v5 = [v7 colorWithAlphaComponent:0.3];

    v8 = [MEMORY[0x1E69DC888] labelColor];
    v6 = [v8 colorWithAlphaComponent:0.3];
  }

  [(CEKBadgeView *)self _setContentColor:v6];
  [(CEKBadgeView *)self _setFillColor:v5];
  if (v3)
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
    v15 = self;
    v11 = v17;
    [v10 animateWithDuration:v16 animations:v13 completion:0.17];
  }

  else
  {
    v12 = [(CEKLightingNameBadge *)self _snapshotView];
    [v12 removeFromSuperview];

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