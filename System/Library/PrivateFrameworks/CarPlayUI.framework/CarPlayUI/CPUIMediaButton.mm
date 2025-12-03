@interface CPUIMediaButton
- (BOOL)canShowHighlight;
- (CGSize)intrinsicContentSize;
- (CPUIMediaButton)initWithFrame:(CGRect)frame;
- (id)colorForKnobFocusLayer;
- (void)layoutSubviews;
- (void)setHidden:(BOOL)hidden;
- (void)setShowBezelInTouch:(BOOL)touch;
- (void)setShowHighlight:(BOOL)highlight;
- (void)updateButtonOpacityForKnobUnfocused;
@end

@implementation CPUIMediaButton

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = CPUIMediaButton;
  [(CPUIMediaButton *)&v33 layoutSubviews];
  canShowHighlight = [(CPUIMediaButton *)self canShowHighlight];
  if ([(CPUIMediaButton *)self showHighlight])
  {
    isHighlighted = 1;
  }

  else
  {
    isHighlighted = [(CPUIMediaButton *)self isHighlighted];
  }

  isFocused = [(CPUIMediaButton *)self isFocused];
  isSelected = [(CPUIMediaButton *)self isSelected];
  clearColor = [MEMORY[0x277D75348] clearColor];
  if (([(CPUIMediaButton *)self isHighlighted]& 1) != 0)
  {
    [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
  }

  else
  {
    [(CPUIMediaButton *)self tintColorForUnhighlightedTextLabel];
  }
  v8 = ;
  layer = [(CPUIMediaButton *)self layer];
  if (!canShowHighlight && ![(CPUIMediaButton *)self showBezelInTouch])
  {
    goto LABEL_16;
  }

  focusColorLayer = self->_focusColorLayer;
  if (!focusColorLayer)
  {
    layer2 = [MEMORY[0x277CD9ED0] layer];
    v12 = self->_focusColorLayer;
    self->_focusColorLayer = layer2;

    [(CALayer *)self->_focusColorLayer setCornerCurve:*MEMORY[0x277CDA138]];
    [(CPUIMediaButton *)self focusLayerCornerRadius];
    [(CALayer *)self->_focusColorLayer setCornerRadius:?];
    focusColorLayer = self->_focusColorLayer;
  }

  [layer addSublayer:focusColorLayer];
  v13 = self->_focusColorLayer;
  [(CPUIMediaButton *)self bounds];
  [(CALayer *)v13 setFrame:?];
  LODWORD(v14) = 1.0;
  [(CALayer *)self->_focusColorLayer setOpacity:v14];
  if (!canShowHighlight)
  {
LABEL_16:
    if (isSelected)
    {
      colorForTouchContentSelected = [(CPUIMediaButton *)self colorForTouchContentSelected];
      if ([(CPUIMediaButton *)self showBezelInTouch])
      {
        colorForTouchFocusLayerSelected = [(CPUIMediaButton *)self colorForTouchFocusLayerSelected];
LABEL_21:
        colorForKnobFocused = colorForTouchFocusLayerSelected;
        v19 = 0;
        v20 = 0;
        colorForKnobFocusLayer = clearColor;
LABEL_31:

        colorForKnobFocusLayer = colorForKnobFocused;
        goto LABEL_32;
      }
    }

    else
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
      colorForTouchContentSelected = [(CPUIMediaButton *)self colorForKnobFocusLayer];
      if ([(CPUIMediaButton *)self showBezelInTouch])
      {
        colorForTouchFocusLayerSelected = [(CPUIMediaButton *)self colorForTouchFocusLayer];
        goto LABEL_21;
      }
    }

    v19 = 0;
    v20 = 0;
    colorForKnobFocusLayer = clearColor;
    goto LABEL_32;
  }

  colorForKnobFocusLayer = [(CPUIMediaButton *)self colorForKnobFocusLayer];

  if (isSelected)
  {
    if (isFocused || ![(CPUIMediaButton *)self shouldUpdateButtonOpacityForKnobUnfocused])
    {
      colorForKnobFocusLayerSelected = [(CPUIMediaButton *)self colorForKnobFocusLayerSelected];

      colorForKnobFocusLayer = colorForKnobFocusLayerSelected;
    }

    else
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
    }

    colorForTouchContentSelected = [(CPUIMediaButton *)self colorForKnobContentSelected];
    v20 = isFocused;
    if (isFocused)
    {
LABEL_30:
      colorForKnobFocused = [(CPUIMediaButton *)self colorForKnobFocused];
      v19 = 1;
      goto LABEL_31;
    }
  }

  else
  {
    if ((isFocused & 1) == 0)
    {
      [(CPUIMediaButton *)self updateButtonOpacityForKnobUnfocused];
    }

    colorForTouchContentSelected = [(CPUIMediaButton *)self colorForKnobFocusLayer];
    v20 = 0;
    if (isFocused)
    {
      goto LABEL_30;
    }
  }

  if (isHighlighted)
  {
    LODWORD(v21) = 1.0;
    [(CALayer *)self->_focusColorLayer setOpacity:v21];
    colorForKnobFocused = [(CPUIMediaButton *)self colorForKnobFocused];
    v19 = 0;
    goto LABEL_31;
  }

  v19 = 0;
LABEL_32:
  -[CALayer setBackgroundColor:](self->_focusColorLayer, "setBackgroundColor:", [colorForKnobFocusLayer CGColor]);
  titleLabel = [(CPUIMediaButton *)self titleLabel];
  layer3 = [titleLabel layer];

  imageView = [(CPUIMediaButton *)self imageView];
  layer4 = [imageView layer];

  imageView2 = [(CPUIMediaButton *)self imageView];
  [imageView2 setTintColor:colorForTouchContentSelected];

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

  [layer4 setCompositingFilter:v31];
  if (v19)
  {
    v32 = v28;
  }

  else
  {
    v32 = v30;
  }

  [layer3 setCompositingFilter:v32];
  [layer addSublayer:layer4];
  [layer addSublayer:layer3];
}

- (void)updateButtonOpacityForKnobUnfocused
{
  traitCollection = [(CPUIMediaButton *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 1;

  focusColorLayer = self->_focusColorLayer;
  LODWORD(v6) = dword_2431E2678[v4];

  [(CALayer *)focusColorLayer setOpacity:v6];
}

- (CPUIMediaButton)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CPUIMediaButton;
  v3 = [(CPUIMediaButton *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(CPUIMediaButton *)v3 titleLabel];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [titleLabel setFont:v6];

    [(CPUIMediaButton *)v4 setShowsTouchWhenHighlighted:0];
    [(CPUIMediaButton *)v4 setAdjustsImageWhenDisabled:0];
    [(CPUIMediaButton *)v4 setAdjustsImageWhenHighlighted:0];
  }

  return v4;
}

- (BOOL)canShowHighlight
{
  traitCollection = [(CPUIMediaButton *)self traitCollection];
  v3 = CPUITraitCollectionSupportsFocus(traitCollection);

  return v3;
}

- (void)setShowBezelInTouch:(BOOL)touch
{
  if (self->_showBezelInTouch != touch)
  {
    self->_showBezelInTouch = touch;
    [(CPUIMediaButton *)self _updateButtonStyle];
  }
}

- (void)setShowHighlight:(BOOL)highlight
{
  if (self->_showHighlight != highlight)
  {
    self->_showHighlight = highlight;
    [(CPUIMediaButton *)self _updateButtonStyle];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(CPUIMediaButton *)self isHidden]!= hidden)
  {
    v6.receiver = self;
    v6.super_class = CPUIMediaButton;
    [(CPUIMediaButton *)&v6 setHidden:hiddenCopy];
    if ([(CPUIMediaButton *)self isFocused])
    {
      if (hiddenCopy)
      {
        superview = [(CPUIMediaButton *)self superview];
        [superview setNeedsFocusUpdate];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(CPUIMediaButton *)self titleLabel];
  [titleLabel sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4 + 12.0;
  titleLabel2 = [(CPUIMediaButton *)self titleLabel];
  font = [titleLabel2 font];
  [font lineHeight];
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