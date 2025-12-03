@interface CEKExpandingSlider
- (CEKExpandingSlider)initWithTitle:(id)title minimumValue:(double)value maximumValue:(double)maximumValue defaultValue:(double)defaultValue;
- (CEKExpandingSliderDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (double)value;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_handleExpansionAnimationTimerFired:(id)fired;
- (void)_handleMarkedValueAnimationTimerFired:(id)fired;
- (void)_handlePress:(id)press;
- (void)_handleSliderDidChangeValue:(id)value;
- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify;
- (void)_updateColors;
- (void)_updateLabelColorsForProgress:(double)progress;
- (void)_updateMarkedValueAnimated:(BOOL)animated;
- (void)_updateSubviewVisibility;
- (void)_updateTickViewFrameForProgress:(double)progress;
- (void)_updateUIForValue:(double)value animated:(BOOL)animated;
- (void)animator:(id)animator didUpdateValuesForKeys:(id)keys;
- (void)layoutSubviews;
- (void)setCollapsedCenterX:(double)x;
- (void)setTitle:(id)title;
- (void)setTitleAlpha:(double)alpha;
- (void)setValue:(double)value animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation CEKExpandingSlider

- (CEKExpandingSlider)initWithTitle:(id)title minimumValue:(double)value maximumValue:(double)maximumValue defaultValue:(double)defaultValue
{
  titleCopy = title;
  v40.receiver = self;
  v40.super_class = CEKExpandingSlider;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(CEKExpandingSlider *)&v40 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  if (v15)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKExpandingSlider *)v15 setTintColor:systemYellowColor];

    v15->_titleAlpha = 1.0;
    v17 = [[CEKSlider alloc] initWithTitle:titleCopy];
    slider = v15->__slider;
    v15->__slider = v17;

    [(CEKSlider *)v15->__slider setSliderVerticalAlignment:2];
    [(CEKSlider *)v15->__slider setValueLabelVisibility:2];
    [(CEKSlider *)v15->__slider setTitleAlignment:2];
    [(CEKSlider *)v15->__slider setFontStyle:1];
    tickMarksConfiguration = [(CEKSlider *)v15->__slider tickMarksConfiguration];
    [tickMarksConfiguration setMainTickMarkInterval:5];

    tickMarksConfiguration2 = [(CEKSlider *)v15->__slider tickMarksConfiguration];
    [tickMarksConfiguration2 setTickMarkSpacing:7.0];

    [(CEKSlider *)v15->__slider setInteractiveWhenHidden:1];
    [(CEKSlider *)v15->__slider setMinimumValue:value];
    [(CEKSlider *)v15->__slider setDefaultValue:defaultValue];
    [(CEKSlider *)v15->__slider setMaximumValue:maximumValue];
    [(CEKSlider *)v15->__slider addTarget:v15 action:sel__handleSliderDidChangeValue_ forControlEvents:4096];
    [(CEKExpandingSlider *)v15 addSubview:v15->__slider];
    v21 = objc_alloc_init(CEKExpandingTickMarksView);
    ticksView = v15->__ticksView;
    v15->__ticksView = v21;

    [(CEKExpandingTickMarksView *)v15->__ticksView setUserInteractionEnabled:0];
    [(CEKExpandingSlider *)v15 addSubview:v15->__ticksView];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    titleLabel = v15->__titleLabel;
    v15->__titleLabel = v23;

    [(UILabel *)v15->__titleLabel setUserInteractionEnabled:0];
    [(UILabel *)v15->__titleLabel setTextAlignment:1];
    [(UILabel *)v15->__titleLabel setLineBreakMode:0];
    [(UILabel *)v15->__titleLabel setNumberOfLines:0];
    [(UILabel *)v15->__titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v15->__titleLabel setText:titleCopy];
    v25 = CEKFontOfSizeAndStyle(1, 14.0);
    [(UILabel *)v15->__titleLabel setFont:v25];

    [(CEKExpandingSlider *)v15 addSubview:v15->__titleLabel];
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    valueLabel = v15->__valueLabel;
    v15->__valueLabel = v26;

    [(UILabel *)v15->__valueLabel setUserInteractionEnabled:0];
    [(UILabel *)v15->__valueLabel setTextAlignment:1];
    [(UILabel *)v15->__valueLabel setLineBreakMode:4];
    [(UILabel *)v15->__valueLabel setNumberOfLines:1];
    [(UILabel *)v15->__valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = CEKMonospacedStylisticNumeralFontOfSizeAndStyle(1, 14.0);
    [(UILabel *)v15->__valueLabel setFont:v28];

    [(CEKExpandingSlider *)v15 addSubview:v15->__valueLabel];
    v29 = objc_alloc_init(MEMORY[0x1E69DD250]);
    levelIndicatorView = v15->__levelIndicatorView;
    v15->__levelIndicatorView = v29;

    [(UIView *)v15->__levelIndicatorView setUserInteractionEnabled:0];
    layer = [(UIView *)v15->__levelIndicatorView layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    systemYellowColor2 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIView *)v15->__levelIndicatorView setBackgroundColor:systemYellowColor2];

    [(CEKExpandingSlider *)v15 addSubview:v15->__levelIndicatorView];
    v15->_markedValue = 1.79769313e308;
    v33 = objc_alloc_init(CEKAdditiveAnimator);
    animator = v15->__animator;
    v15->__animator = v33;

    [(CEKAdditiveAnimator *)v15->__animator setDelegate:v15];
    v35 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v15 action:sel__handlePress_];
    gestureRecognizer = v15->__gestureRecognizer;
    v15->__gestureRecognizer = v35;

    [(UILongPressGestureRecognizer *)v15->__gestureRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v15->__gestureRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v15->__gestureRecognizer setDelaysTouchesEnded:0];
    [(UILongPressGestureRecognizer *)v15->__gestureRecognizer setDelegate:v15];
    [(CEKExpandingSlider *)v15 addGestureRecognizer:v15->__gestureRecognizer];
    [(CEKExpandingSlider *)v15 _updateUIForValue:0 animated:0.0];
    [(CEKExpandingSlider *)v15 _updateSubviewVisibility];
    [(CEKExpandingSlider *)v15 _updateLabelColorsForProgress:0.0];
    [(CEKExpandingSlider *)v15 _updateColors];
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v38 = [(CEKExpandingSlider *)v15 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel__updateColors];
  }

  return v15;
}

- (double)value
{
  _slider = [(CEKExpandingSlider *)self _slider];
  [_slider value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)value animated:(BOOL)animated
{
  animatedCopy = animated;
  [(CEKExpandingSlider *)self value];
  if (v7 != value)
  {
    _slider = [(CEKExpandingSlider *)self _slider];
    [_slider setValue:value];

    [(CEKExpandingSlider *)self _updateUIForValue:animatedCopy animated:value];
  }
}

- (NSString)title
{
  _slider = [(CEKExpandingSlider *)self _slider];
  title = [_slider title];

  return title;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _slider = [(CEKExpandingSlider *)self _slider];
  title = [_slider title];
  v6 = [titleCopy isEqualToString:title];

  if ((v6 & 1) == 0)
  {
    _slider2 = [(CEKExpandingSlider *)self _slider];
    [_slider2 setTitle:titleCopy];

    _titleLabel = [(CEKExpandingSlider *)self _titleLabel];
    [_titleLabel setText:titleCopy];

    [(CEKExpandingSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)alpha
{
  if (self->_titleAlpha != alpha)
  {
    self->_titleAlpha = alpha;
    [(CEKExpandingSlider *)self _updateSubviewVisibility];
  }
}

- (void)_setExpanded:(BOOL)expanded animated:(BOOL)animated shouldNotify:(BOOL)notify
{
  if (self->_expanded != expanded)
  {
    notifyCopy = notify;
    animatedCopy = animated;
    expandedCopy = expanded;
    self->_expanded = expanded;
    v9 = 1.0;
    if (!expanded)
    {
      [(CEKExpandingSlider *)self _updateSubviewVisibility];
      v9 = 0.0;
    }

    _ticksView = [(CEKExpandingSlider *)self _ticksView];
    [_ticksView setExpanded:expandedCopy animated:animatedCopy];

    [(CEKExpandingSlider *)self setNeedsLayout];
    if (animatedCopy)
    {
      [(CEKExpandingSlider *)self _setExpansionAnimationCounter:[(CEKExpandingSlider *)self _expansionAnimationCounter]+ 1];
      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      _animator = [(CEKExpandingSlider *)self _animator];
      [_animator setValue:@"CEKExpandingSliderAnimatorProgressKey" forKey:v11 duration:v9 timingCurve:0.35];

      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setAnimationTimingFunction:v11];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __57__CEKExpandingSlider__setExpanded_animated_shouldNotify___block_invoke;
      v17[3] = &unk_1E7CC6358;
      v17[4] = self;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__CEKExpandingSlider__setExpanded_animated_shouldNotify___block_invoke_2;
      v16[3] = &unk_1E7CC63C8;
      v16[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v17 options:v16 animations:0.35 completion:0.0];
      [MEMORY[0x1E6979518] commit];

      if (!notifyCopy)
      {
        return;
      }
    }

    else
    {
      [(CEKExpandingSlider *)self _updateLabelColorsForProgress:v9];
      [(CEKExpandingSlider *)self _updateMarkedValueAnimated:0];
      if (!notifyCopy)
      {
        return;
      }
    }

    expanded = self->_expanded;
    delegate = [(CEKExpandingSlider *)self delegate];
    v15 = delegate;
    if (expanded)
    {
      [delegate sliderWillExpand:self];
    }

    else
    {
      [delegate sliderWillCollapse:self];
    }
  }
}

uint64_t __57__CEKExpandingSlider__setExpanded_animated_shouldNotify___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setExpansionAnimationCounter:{objc_msgSend(*(a1 + 32), "_expansionAnimationCounter") - 1}];
  result = [*(a1 + 32) _expansionAnimationCounter];
  if (!result)
  {
    [*(a1 + 32) _updateSubviewVisibility];
    v3 = *(a1 + 32);

    return [v3 _updateMarkedValueAnimated:1];
  }

  return result;
}

- (void)_updateSubviewVisibility
{
  if ([(CEKExpandingSlider *)self expanded])
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  _slider = [(CEKExpandingSlider *)self _slider];
  [_slider setAlpha:v3];

  [(CEKExpandingSlider *)self titleAlpha];
  v6 = v5 * 0.6;
  _slider2 = [(CEKExpandingSlider *)self _slider];
  [_slider2 setTitleAlpha:v6];

  v8 = 0.0;
  if (![(CEKExpandingSlider *)self expanded])
  {
    [(CEKExpandingSlider *)self titleAlpha];
    v8 = v9;
  }

  _titleLabel = [(CEKExpandingSlider *)self _titleLabel];
  [_titleLabel setAlpha:v8];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  _valueLabel = [(CEKExpandingSlider *)self _valueLabel];
  [_valueLabel setAlpha:v11];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  _ticksView = [(CEKExpandingSlider *)self _ticksView];
  [_ticksView setAlpha:v13];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  _levelIndicatorView = [(CEKExpandingSlider *)self _levelIndicatorView];
  [_levelIndicatorView setAlpha:v15];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v15.receiver = self;
  v15.super_class = CEKExpandingSlider;
  v7 = [(CEKExpandingSlider *)&v15 hitTest:event withEvent:?];
  [(CEKExpandingSlider *)self bounds];
  v9 = v8;
  if (![(CEKExpandingSlider *)self expanded])
  {
    _ticksView = [(CEKExpandingSlider *)self _ticksView];
    [_ticksView intrinsicContentSize];
    v12 = v11;

    [(CEKExpandingSlider *)self collapsedCenterX];
    v18.origin.x = v13 + v12 * -0.5;
    v18.origin.y = 0.0;
    v18.size.width = v12;
    v18.size.height = v9;
    v17.x = x;
    v17.y = y;
    if (!CGRectContainsPoint(v18, v17))
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)setCollapsedCenterX:(double)x
{
  if (self->_collapsedCenterX != x)
  {
    self->_collapsedCenterX = x;
    [(CEKExpandingSlider *)self setNeedsLayout];
  }
}

- (void)_updateColors
{
  tintColor = [(CEKExpandingSlider *)self tintColor];
  _slider = [(CEKExpandingSlider *)self _slider];
  [_slider setTintColor:tintColor];

  tintColor2 = [(CEKExpandingSlider *)self tintColor];
  _levelIndicatorView = [(CEKExpandingSlider *)self _levelIndicatorView];
  [_levelIndicatorView setBackgroundColor:tintColor2];

  if (![(CEKExpandingSlider *)self expanded])
  {

    [(CEKExpandingSlider *)self _updateLabelColorsForProgress:0.0];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CEKExpandingSlider;
  [(CEKExpandingSlider *)&v3 tintColorDidChange];
  [(CEKExpandingSlider *)self _updateColors];
}

- (CGSize)intrinsicContentSize
{
  _ticksView = [(CEKExpandingSlider *)self _ticksView];
  [_ticksView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v91.receiver = self;
  v91.super_class = CEKExpandingSlider;
  [(CEKExpandingSlider *)&v91 layoutSubviews];
  [(CEKExpandingSlider *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _slider = [(CEKExpandingSlider *)self _slider];
  v84 = v8;
  v85 = v6;
  v83 = v10;
  [_slider setFrame:{v4, v6, v8, v10}];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  _animator = [(CEKExpandingSlider *)self _animator];
  v86 = v12;
  [_animator setValue:@"CEKExpandingSliderAnimatorProgressKey" forKey:0 duration:v12 timingCurve:0.0];

  _slider2 = [(CEKExpandingSlider *)self _slider];
  [_slider2 frameForTitleLabel];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  _slider3 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:_slider3 fromView:v16, v18, v20, v22];
  v87 = v24;
  v88 = v25;
  v27 = v26;
  rect = v28;

  _slider4 = [(CEKExpandingSlider *)self _slider];
  [_slider4 frameForValueLabel];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  _slider5 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:_slider5 fromView:v31, v33, v35, v37];
  v82 = v39;

  _slider6 = [(CEKExpandingSlider *)self _slider];
  [_slider6 frameForLevelIndicator];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  _slider7 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:_slider7 fromView:v42, v44, v46, v48];
  v51 = v50;
  v53 = v52;
  v90 = v54;
  v56 = v55;

  _titleLabel = [(CEKExpandingSlider *)self _titleLabel];
  [_titleLabel intrinsicContentSize];
  v59 = v58;

  _valueLabel = [(CEKExpandingSlider *)self _valueLabel];
  [_valueLabel intrinsicContentSize];
  v62 = v61;

  if ([(CEKExpandingSlider *)self expanded])
  {
    v92.origin.x = v87;
    v92.size.width = v88;
    v92.origin.y = v27;
    v92.size.height = rect;
    v63 = v4;
    v64 = CGRectGetMaxX(v92) - v59;
    _titleLabel2 = [(CEKExpandingSlider *)self _titleLabel];
    [_titleLabel2 setFrame:{v64, v27, v59, 18.0}];

    v93.origin.x = v63;
    v93.size.width = v84;
    v93.origin.y = v85;
    v93.size.height = v83;
    CGRectGetMidX(v93);
    UIRoundToViewScale();
    v67 = v66;
    _valueLabel2 = [(CEKExpandingSlider *)self _valueLabel];
    [_valueLabel2 setFrame:{v67, v82, v62, 18.0}];

    v69 = v90;
  }

  else
  {
    [(CEKExpandingSlider *)self collapsedCenterX];
    UIRoundToViewScale();
    v71 = v70;
    _titleLabel3 = [(CEKExpandingSlider *)self _titleLabel];
    [_titleLabel3 setFrame:{v71, v27, v59, 18.0}];

    [(CEKExpandingSlider *)self collapsedCenterX];
    UIRoundToViewScale();
    v74 = v73;
    v94.origin.x = v87;
    v94.size.width = v88;
    v94.origin.y = v27;
    v94.size.height = rect;
    v75 = CGRectGetMaxY(v94) + -1.0;
    _valueLabel3 = [(CEKExpandingSlider *)self _valueLabel];
    [_valueLabel3 setFrame:{v74, v75, v62, 18.0}];

    [(CEKExpandingSlider *)self collapsedCenterX];
    v78 = v77 + -0.5;
    v95.origin.x = v51;
    v95.origin.y = v53;
    v69 = v90;
    v95.size.width = v90;
    v95.size.height = v56;
    v53 = CGRectGetMaxY(v95) + -10.0;
    v56 = 10.0;
    v51 = v78;
  }

  _levelIndicatorView = [(CEKExpandingSlider *)self _levelIndicatorView];
  [_levelIndicatorView setFrame:{v51, v53, v69, v56}];

  _animator2 = [(CEKExpandingSlider *)self _animator];
  isAnimating = [_animator2 isAnimating];

  if ((isAnimating & 1) == 0)
  {
    [(CEKExpandingSlider *)self _updateTickViewFrameForProgress:v86];
  }
}

- (void)animator:(id)animator didUpdateValuesForKeys:(id)keys
{
  v5 = [(CEKExpandingSlider *)self _animator:animator];
  [v5 valueForKey:@"CEKExpandingSliderAnimatorProgressKey"];
  v7 = v6;

  [(CEKExpandingSlider *)self _updateTickViewFrameForProgress:v7];

  [(CEKExpandingSlider *)self _updateLabelColorsForProgress:v7];
}

- (void)_updateTickViewFrameForProgress:(double)progress
{
  _ticksView = [(CEKExpandingSlider *)self _ticksView];
  [_ticksView intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  _slider = [(CEKExpandingSlider *)self _slider];
  [_slider frameForTicksView];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  _slider2 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:_slider2 fromView:v12, v14, v16, v18];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(CEKExpandingSlider *)self collapsedCenterX];
  v27 = CEKInterpolate(v26 + v7 * -0.5, v21, progress);
  v28 = CEKInterpolate(v7, v25, progress);
  _ticksView2 = [(CEKExpandingSlider *)self _ticksView];
  [_ticksView2 setFrame:{v27, v23, v28, v9}];
}

- (void)_updateLabelColorsForProgress:(double)progress
{
  v5 = CEKInterpolateClamped(1.0, 0.6, progress);
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7 = [labelColor colorWithAlphaComponent:v5];
  _titleLabel = [(CEKExpandingSlider *)self _titleLabel];
  [_titleLabel setTextColor:v7];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    tintColor = [(CEKExpandingSlider *)self tintColor];
    traitCollection = [(CEKExpandingSlider *)self traitCollection];
    labelColor2 = [tintColor resolvedColorWithTraitCollection:traitCollection];

    [labelColor2 getRed:&v17 green:&v16 blue:&v15 alpha:0];
    v17 = CEKInterpolateClamped(1.0, v17, progress);
    v16 = CEKInterpolateClamped(1.0, v16, progress);
    v15 = CEKInterpolateClamped(1.0, v15, progress);
    v12 = [MEMORY[0x1E69DC888] colorWithRed:v17 green:v16 blue:v15 alpha:1.0];
    _valueLabel = [(CEKExpandingSlider *)self _valueLabel];
    [_valueLabel setTextColor:v12];
  }

  else
  {
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    _valueLabel2 = [(CEKExpandingSlider *)self _valueLabel];
    [_valueLabel2 setTextColor:labelColor2];
  }
}

- (void)_updateMarkedValueAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _gestureRecognizer = [(CEKExpandingSlider *)self _gestureRecognizer];
  state = [_gestureRecognizer state];

  if ((state - 1) < 2 || ([(CEKExpandingSlider *)self _markedValueAnimationTimer], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(CEKExpandingSlider *)self markedValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  _slider = [(CEKExpandingSlider *)self _slider];
  [_slider setMarkedValue:animatedCopy animated:v9];
}

- (void)_handlePress:(id)press
{
  state = [press state];
  if ((state - 3) >= 2)
  {
    if (state == 1)
    {
      [(CEKExpandingSlider *)self _setExpanded:1 animated:1 shouldNotify:1];
      _markedValueAnimationTimer = [(CEKExpandingSlider *)self _markedValueAnimationTimer];
      [_markedValueAnimationTimer invalidate];

      [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:0];
      _expansionAnimationTimer = [(CEKExpandingSlider *)self _expansionAnimationTimer];
      [_expansionAnimationTimer invalidate];

      [(CEKExpandingSlider *)self _setExpansionAnimationTimer:0];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695DFF0];
    _slider = [(CEKExpandingSlider *)self _slider];
    [_slider animationDuration];
    v8 = [v5 timerWithTimeInterval:self target:sel__handleMarkedValueAnimationTimerFired_ selector:0 userInfo:0 repeats:1.0 - v7];
    [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:v8];

    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    _markedValueAnimationTimer2 = [(CEKExpandingSlider *)self _markedValueAnimationTimer];
    v11 = *MEMORY[0x1E695DA28];
    [currentRunLoop addTimer:_markedValueAnimationTimer2 forMode:*MEMORY[0x1E695DA28]];

    v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleExpansionAnimationTimerFired_ selector:0 userInfo:0 repeats:1.0];
    [(CEKExpandingSlider *)self _setExpansionAnimationTimer:v12];

    currentRunLoop2 = [MEMORY[0x1E695DFD0] currentRunLoop];
    _expansionAnimationTimer2 = [(CEKExpandingSlider *)self _expansionAnimationTimer];
    [currentRunLoop2 addTimer:_expansionAnimationTimer2 forMode:v11];
  }
}

- (void)_handleMarkedValueAnimationTimerFired:(id)fired
{
  [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:0];

  [(CEKExpandingSlider *)self _updateMarkedValueAnimated:1];
}

- (void)_handleExpansionAnimationTimerFired:(id)fired
{
  [(CEKExpandingSlider *)self _setExpansionAnimationTimer:0];

  [(CEKExpandingSlider *)self _setExpanded:0 animated:1 shouldNotify:1];
}

- (void)_handleSliderDidChangeValue:(id)value
{
  [value value];
  [(CEKExpandingSlider *)self _updateUIForValue:0 animated:?];

  [(CEKExpandingSlider *)self sendActionsForControlEvents:4096];
}

- (void)_updateUIForValue:(double)value animated:(BOOL)animated
{
  animatedCopy = animated;
  _slider = [(CEKExpandingSlider *)self _slider];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:value * 100.0];
  v9 = [_slider formattedIntegerStringFromNumber:v8];
  _valueLabel = [(CEKExpandingSlider *)self _valueLabel];
  [_valueLabel setAttributedText:v9];

  _ticksView = [(CEKExpandingSlider *)self _ticksView];
  [_ticksView setSelectedValue:animatedCopy animated:value];

  [(CEKExpandingSlider *)self setNeedsLayout];
}

- (CEKExpandingSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end