@interface _SFDimmingButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NSNumber)tapTargetSideMargin;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)_updateBackgroundColor;
- (void)_updateImageAlpha;
- (void)layoutSubviews;
- (void)setDimmableBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTapTargetSideMargin:(id)margin;
@end

@implementation _SFDimmingButton

- (void)_updateImageAlpha
{
  p_highlightedImageAlpha = &self->_highlightedImageAlpha;
  if (self->_highlightedImageAlpha != 0.0 || self->_normalImageAlpha != 0.0)
  {
    imageView = [(_SFDimmingButton *)self imageView];
    if (([(_SFDimmingButton *)self isHighlighted]& 1) == 0)
    {
      p_highlightedImageAlpha = &self->_normalImageAlpha;
    }

    [imageView setAlpha:*p_highlightedImageAlpha];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SFDimmingButton;
  [(_SFDimmingButton *)&v3 layoutSubviews];
  [(_SFDimmingButton *)self _updateImageAlpha];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(_SFDimmingButton *)self isHighlighted];
  v8.receiver = self;
  v8.super_class = _SFDimmingButton;
  [(_SFDimmingButton *)&v8 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    highlightAnimationDuration = 0.0;
    if (!highlightedCopy)
    {
      highlightAnimationDuration = self->_highlightAnimationDuration;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___SFDimmingButton_setHighlighted___block_invoke;
    v7[3] = &unk_1E721B360;
    v7[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659328 delay:v7 options:0 animations:highlightAnimationDuration completion:0.0];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if (!self->_tapTargetSideMargins)
  {
    selfCopy = self;
    v23 = &selfCopy;
LABEL_10:
    v23[1] = _SFDimmingButton;
    v22 = objc_msgSendSuper2(v23, sel_pointInside_withEvent_, eventCopy, x, y, selfCopy2);
    goto LABEL_11;
  }

  [(_SFDimmingButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(NSValue *)self->_tapTargetSideMargins CGPointValue];
  v18 = (44.0 - v13) * -0.5;
  if (v13 >= 44.0)
  {
    v18 = 0.0;
  }

  v19 = v18 - v16;
  v20 = (44.0 - v15) * -0.5;
  if (v15 >= 44.0)
  {
    v20 = 0.0;
  }

  v21 = v20 - v17;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v29 = CGRectInset(v28, v19, v21);
  v27.x = x;
  v27.y = y;
  if (!CGRectContainsPoint(v29, v27))
  {
    selfCopy2 = self;
    v23 = &selfCopy2;
    goto LABEL_10;
  }

  v22 = 1;
LABEL_11:

  return v22;
}

- (void)setDimmableBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_dimmableBackgroundColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_dimmableBackgroundColor, color);
    sf_darkenedColor = [(UIColor *)v8 sf_darkenedColor];
    cachedDimmedBackgroundColor = self->_cachedDimmedBackgroundColor;
    self->_cachedDimmedBackgroundColor = sf_darkenedColor;

    [(_SFDimmingButton *)self _updateBackgroundColor];
    colorCopy = v8;
  }
}

- (void)_updateBackgroundColor
{
  p_dimmableBackgroundColor = &self->_dimmableBackgroundColor;
  if (self->_dimmableBackgroundColor)
  {
    if ([(_SFDimmingButton *)self isHighlighted])
    {
      p_dimmableBackgroundColor = &self->_cachedDimmedBackgroundColor;
    }

    v4 = *p_dimmableBackgroundColor;

    [(_SFDimmingButton *)self setBackgroundColor:v4];
  }
}

- (void)setTapTargetSideMargin:(id)margin
{
  marginCopy = margin;
  v5 = marginCopy;
  if (marginCopy)
  {
    v6 = MEMORY[0x1E696B098];
    [marginCopy floatValue];
    v8 = v7;
    [v5 floatValue];
    *v11 = v8;
    *&v11[1] = v9;
    v10 = [v6 valueWithBytes:v11 objCType:"{CGPoint=dd}"];
    [(_SFDimmingButton *)self setTapTargetSideMargins:v10];
  }

  else
  {
    [(_SFDimmingButton *)self setTapTargetSideMargins:0];
  }
}

- (NSNumber)tapTargetSideMargin
{
  tapTargetSideMargins = self->_tapTargetSideMargins;
  if (tapTargetSideMargins)
  {
    v4 = MEMORY[0x1E696AD98];
    [tapTargetSideMargins CGPointValue];
    tapTargetSideMargins = [v4 numberWithDouble:?];
    v2 = vars8;
  }

  return tapTargetSideMargins;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v8.receiver = self;
  v8.super_class = _SFDimmingButton;
  v5 = [(_SFDimmingButton *)&v8 contextMenuInteraction:interaction configurationForMenuAtLocation:location.x, location.y];
  v6 = v5;
  if (self->_alwaysUsesUIMenuOrdering)
  {
    [v5 setPreferredMenuElementOrder:2];
  }

  return v6;
}

@end