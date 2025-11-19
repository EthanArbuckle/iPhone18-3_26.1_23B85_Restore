@interface CPUIMediaButton
- (BOOL)canShowHighlight;
- (CGSize)intrinsicContentSize;
- (CPUIMediaButton)initWithFrame:(CGRect)a3;
- (id)colorForKnobFocusLayer;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)a3;
- (void)setShowBezelInTouch:(BOOL)a3;
- (void)setShowHighlight:(BOOL)a3;
- (void)updateButtonOpacityForKnobUnfocused;
@end

@implementation CPUIMediaButton

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = CPUIMediaButton;
  [(CPUIMediaButton *)&v33 layoutSubviews];
  v3 = [(CPUIMediaButton *)self canShowHighlight];
  if ([(CPUIMediaButton *)self showHighlight])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CPUIMediaButton *)self isHighlighted];
  }

  v5 = [(CPUIMediaButton *)self isFocused];
  v6 = [(CPUIMediaButton *)self isSelected];
  v7 = [MEMORY[0x277D75348] clearColor];
  if (([(CPUIMediaButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    [(CPUIMediaButton *)self tintColorForUnhighlightedTextLabel];
  }
  v8 = ;
  v9 = [(CPUIMediaButton *)self layer];
  if (!v3 && ![(CPUIMediaButton *)self showBezelInTouch])
  {
    goto LABEL_16;
  }

  focusColorLayer = self->_focusColorLayer;
  if (!focusColorLayer)
  {
    v11 = [MEMORY[0x277CD9ED0] layer];
    v12 = self->_focusColorLayer;
    self->_focusColorLayer = v11;

    [(CALayer *)self->_focusColorLayer setCornerCurve:*MEMORY[0x277CDA138]];
    [(CPUIMediaButton *)self focusLayerCornerRadius];
    [(CALayer *)self->_focusColorLayer setCornerRadius:?];
    focusColorLayer = self->_focusColorLayer;
  }

  [v9 addSublayer:focusColorLayer];
  v13 = self->_focusColorLayer;
  [(CPUIMediaButton *)self bounds];
  [(CALayer *)v13 setFrame:?];
  LODWORD(v14) = 1.0;
  [(CALayer *)self->_focusColorLayer setOpacity:v14];
  if (!v3)
  {
LABEL_16:
    if (v6)
    {
      v16 = [(CPUIMediaButton *)self colorForTouchContentSelected];
      if ([(CPUIMediaButton *)self showBezelInTouch])
      {
        v17 = [(CPUIMediaButton *)self colorForTouchFocusLayerSelected];
LABEL_21:
        v18 = v17;
        v19 = 0;
        v20 = 0;
        v15 = v7;
LABEL_31:

        v15 = v18;
        goto LABEL_32;
      }
    }

    else
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
      v16 = [(CPUIMediaButton *)self colorForKnobFocusLayer];
      if ([(CPUIMediaButton *)self showBezelInTouch])
      {
        v17 = [(CPUIMediaButton *)self colorForTouchFocusLayer];
        goto LABEL_21;
      }
    }

    v19 = 0;
    v20 = 0;
    v15 = v7;
    goto LABEL_32;
  }

  v15 = [(CPUIMediaButton *)self colorForKnobFocusLayer];

  if (v6)
  {
    if (v5 || ![(CPUIMediaButton *)self shouldUpdateButtonOpacityForKnobUnfocused])
    {
      v22 = [(CPUIMediaButton *)self colorForKnobFocusLayerSelected];

      v15 = v22;
    }

    else
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
    }

    v16 = [(CPUIMediaButton *)self colorForKnobContentSelected];
    v20 = v5;
    if (v5)
    {
LABEL_30:
      v18 = [(CPUIMediaButton *)self colorForKnobFocused];
      v19 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
    }

    v16 = [(CPUIMediaButton *)self colorForKnobFocusLayer];
    v20 = 0;
    if (v5)
    {
      goto LABEL_30;
    }
  }

  if (v4)
  {
    LODWORD(v21) = 1.0;
    [(CALayer *)self->_focusColorLayer setOpacity:v21];
    v18 = [(CPUIMediaButton *)self colorForKnobFocused];
    v19 = 0;
    goto LABEL_31;
  }

  v19 = 0;
LABEL_32:
  -[CALayer setBackgroundColor:](self->_focusColorLayer, "setBackgroundColor:", [v15 CGColor]);
  v23 = [(CPUIMediaButton *)self titleLabel];
  v24 = [v23 layer];

  v25 = [(CPUIMediaButton *)self imageView];
  v26 = [v25 layer];

  v27 = [(CPUIMediaButton *)self imageView];
  [v27 setTintColor:v16];

  [(CPUIMediaButton *)self setTitleColor:v8 forState:0];
  v28 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA310]];
  v29 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA620]];
  v30 = v29;
  if (v20)
  {
    v31 = v28;
  }

  else
  {
    v31 = v29;
  }

  [v26 setCompositingFilter:v31];
  if (v19)
  {
    v32 = v28;
  }

  else
  {
    v32 = v30;
  }

  [v24 setCompositingFilter:v32];
  [v9 addSublayer:v26];
  [v9 addSublayer:v24];
}

- (void)updateButtonOpacityForKnobUnfocused
{
  v3 = [(CPUIMediaButton *)self traitCollection];
  v4 = [v3 userInterfaceStyle] == 1;

  focusColorLayer = self->_focusColorLayer;
  LODWORD(v6) = dword_2431E2678[v4];

  [(CALayer *)focusColorLayer setOpacity:v6];
}

- (CPUIMediaButton)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CPUIMediaButton;
  v3 = [(CPUIMediaButton *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CPUIMediaButton *)v3 titleLabel];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [v5 setFont:v6];

    [(CPUIMediaButton *)v4 setShowsTouchWhenHighlighted:0];
    [(CPUIMediaButton *)v4 setAdjustsImageWhenDisabled:0];
    [(CPUIMediaButton *)v4 setAdjustsImageWhenHighlighted:0];
  }

  return v4;
}

- (BOOL)canShowHighlight
{
  v2 = [(CPUIMediaButton *)self traitCollection];
  v3 = CPUITraitCollectionSupportsFocus(v2);

  return v3;
}

- (void)setShowBezelInTouch:(BOOL)a3
{
  if (self->_showBezelInTouch != a3)
  {
    self->_showBezelInTouch = a3;
    [(CPUIMediaButton *)self _updateButtonStyle];
  }
}

- (void)setShowHighlight:(BOOL)a3
{
  if (self->_showHighlight != a3)
  {
    self->_showHighlight = a3;
    [(CPUIMediaButton *)self _updateButtonStyle];
  }
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if ([(CPUIMediaButton *)self isHidden]!= a3)
  {
    v6.receiver = self;
    v6.super_class = CPUIMediaButton;
    [(CPUIMediaButton *)&v6 setHidden:v3];
    if ([(CPUIMediaButton *)self isFocused])
    {
      if (v3)
      {
        v5 = [(CPUIMediaButton *)self superview];
        [v5 setNeedsFocusUpdate];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(CPUIMediaButton *)self titleLabel];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4 + 12.0;
  v6 = [(CPUIMediaButton *)self titleLabel];
  v7 = [v6 font];
  [v7 lineHeight];
  v9 = v8;

  v10 = v5;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)colorForKnobFocusLayer
{
  if ([(CPUIMediaButton *)self isFocused])
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v2 = ;

  return v2;
}

@end