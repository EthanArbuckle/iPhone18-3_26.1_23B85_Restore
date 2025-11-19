@interface CEKExpandingSlider
- (CEKExpandingSlider)initWithTitle:(id)a3 minimumValue:(double)a4 maximumValue:(double)a5 defaultValue:(double)a6;
- (CEKExpandingSliderDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (double)value;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_handleExpansionAnimationTimerFired:(id)a3;
- (void)_handleMarkedValueAnimationTimerFired:(id)a3;
- (void)_handlePress:(id)a3;
- (void)_handleSliderDidChangeValue:(id)a3;
- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5;
- (void)_updateColors;
- (void)_updateLabelColorsForProgress:(double)a3;
- (void)_updateMarkedValueAnimated:(BOOL)a3;
- (void)_updateSubviewVisibility;
- (void)_updateTickViewFrameForProgress:(double)a3;
- (void)_updateUIForValue:(double)a3 animated:(BOOL)a4;
- (void)animator:(id)a3 didUpdateValuesForKeys:(id)a4;
- (void)layoutSubviews;
- (void)setCollapsedCenterX:(double)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAlpha:(double)a3;
- (void)setValue:(double)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation CEKExpandingSlider

- (CEKExpandingSlider)initWithTitle:(id)a3 minimumValue:(double)a4 maximumValue:(double)a5 defaultValue:(double)a6
{
  v10 = a3;
  v40.receiver = self;
  v40.super_class = CEKExpandingSlider;
  v11 = *MEMORY[0x1E695F058];
  v12 = *(MEMORY[0x1E695F058] + 8);
  v13 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v15 = [(CEKExpandingSlider *)&v40 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
  if (v15)
  {
    v16 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(CEKExpandingSlider *)v15 setTintColor:v16];

    v15->_titleAlpha = 1.0;
    v17 = [[CEKSlider alloc] initWithTitle:v10];
    slider = v15->__slider;
    v15->__slider = v17;

    [(CEKSlider *)v15->__slider setSliderVerticalAlignment:2];
    [(CEKSlider *)v15->__slider setValueLabelVisibility:2];
    [(CEKSlider *)v15->__slider setTitleAlignment:2];
    [(CEKSlider *)v15->__slider setFontStyle:1];
    v19 = [(CEKSlider *)v15->__slider tickMarksConfiguration];
    [v19 setMainTickMarkInterval:5];

    v20 = [(CEKSlider *)v15->__slider tickMarksConfiguration];
    [v20 setTickMarkSpacing:7.0];

    [(CEKSlider *)v15->__slider setInteractiveWhenHidden:1];
    [(CEKSlider *)v15->__slider setMinimumValue:a4];
    [(CEKSlider *)v15->__slider setDefaultValue:a6];
    [(CEKSlider *)v15->__slider setMaximumValue:a5];
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
    [(UILabel *)v15->__titleLabel setText:v10];
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
    v31 = [(UIView *)v15->__levelIndicatorView layer];
    [v31 setAnchorPoint:{0.5, 0.0}];

    v32 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIView *)v15->__levelIndicatorView setBackgroundColor:v32];

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
    v37 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v38 = [(CEKExpandingSlider *)v15 registerForTraitChanges:v37 withAction:sel__updateColors];
  }

  return v15;
}

- (double)value
{
  v2 = [(CEKExpandingSlider *)self _slider];
  [v2 value];
  v4 = v3;

  return v4;
}

- (void)setValue:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(CEKExpandingSlider *)self value];
  if (v7 != a3)
  {
    v8 = [(CEKExpandingSlider *)self _slider];
    [v8 setValue:a3];

    [(CEKExpandingSlider *)self _updateUIForValue:v4 animated:a3];
  }
}

- (NSString)title
{
  v2 = [(CEKExpandingSlider *)self _slider];
  v3 = [v2 title];

  return v3;
}

- (void)setTitle:(id)a3
{
  v9 = a3;
  v4 = [(CEKExpandingSlider *)self _slider];
  v5 = [v4 title];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(CEKExpandingSlider *)self _slider];
    [v7 setTitle:v9];

    v8 = [(CEKExpandingSlider *)self _titleLabel];
    [v8 setText:v9];

    [(CEKExpandingSlider *)self setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)a3
{
  if (self->_titleAlpha != a3)
  {
    self->_titleAlpha = a3;
    [(CEKExpandingSlider *)self _updateSubviewVisibility];
  }
}

- (void)_setExpanded:(BOOL)a3 animated:(BOOL)a4 shouldNotify:(BOOL)a5
{
  if (self->_expanded != a3)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    self->_expanded = a3;
    v9 = 1.0;
    if (!a3)
    {
      [(CEKExpandingSlider *)self _updateSubviewVisibility];
      v9 = 0.0;
    }

    v10 = [(CEKExpandingSlider *)self _ticksView];
    [v10 setExpanded:v7 animated:v6];

    [(CEKExpandingSlider *)self setNeedsLayout];
    if (v6)
    {
      [(CEKExpandingSlider *)self _setExpansionAnimationCounter:[(CEKExpandingSlider *)self _expansionAnimationCounter]+ 1];
      v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      v12 = [(CEKExpandingSlider *)self _animator];
      [v12 setValue:@"CEKExpandingSliderAnimatorProgressKey" forKey:v11 duration:v9 timingCurve:0.35];

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

      if (!v5)
      {
        return;
      }
    }

    else
    {
      [(CEKExpandingSlider *)self _updateLabelColorsForProgress:v9];
      [(CEKExpandingSlider *)self _updateMarkedValueAnimated:0];
      if (!v5)
      {
        return;
      }
    }

    expanded = self->_expanded;
    v14 = [(CEKExpandingSlider *)self delegate];
    v15 = v14;
    if (expanded)
    {
      [v14 sliderWillExpand:self];
    }

    else
    {
      [v14 sliderWillCollapse:self];
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

  v4 = [(CEKExpandingSlider *)self _slider];
  [v4 setAlpha:v3];

  [(CEKExpandingSlider *)self titleAlpha];
  v6 = v5 * 0.6;
  v7 = [(CEKExpandingSlider *)self _slider];
  [v7 setTitleAlpha:v6];

  v8 = 0.0;
  if (![(CEKExpandingSlider *)self expanded])
  {
    [(CEKExpandingSlider *)self titleAlpha];
    v8 = v9;
  }

  v10 = [(CEKExpandingSlider *)self _titleLabel];
  [v10 setAlpha:v8];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = [(CEKExpandingSlider *)self _valueLabel];
  [v12 setAlpha:v11];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = [(CEKExpandingSlider *)self _ticksView];
  [v14 setAlpha:v13];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = [(CEKExpandingSlider *)self _levelIndicatorView];
  [v16 setAlpha:v15];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15.receiver = self;
  v15.super_class = CEKExpandingSlider;
  v7 = [(CEKExpandingSlider *)&v15 hitTest:a4 withEvent:?];
  [(CEKExpandingSlider *)self bounds];
  v9 = v8;
  if (![(CEKExpandingSlider *)self expanded])
  {
    v10 = [(CEKExpandingSlider *)self _ticksView];
    [v10 intrinsicContentSize];
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

- (void)setCollapsedCenterX:(double)a3
{
  if (self->_collapsedCenterX != a3)
  {
    self->_collapsedCenterX = a3;
    [(CEKExpandingSlider *)self setNeedsLayout];
  }
}

- (void)_updateColors
{
  v3 = [(CEKExpandingSlider *)self tintColor];
  v4 = [(CEKExpandingSlider *)self _slider];
  [v4 setTintColor:v3];

  v5 = [(CEKExpandingSlider *)self tintColor];
  v6 = [(CEKExpandingSlider *)self _levelIndicatorView];
  [v6 setBackgroundColor:v5];

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
  v2 = [(CEKExpandingSlider *)self _ticksView];
  [v2 intrinsicContentSize];
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
  v11 = [(CEKExpandingSlider *)self _slider];
  v84 = v8;
  v85 = v6;
  v83 = v10;
  [v11 setFrame:{v4, v6, v8, v10}];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(CEKExpandingSlider *)self _animator];
  v86 = v12;
  [v13 setValue:@"CEKExpandingSliderAnimatorProgressKey" forKey:0 duration:v12 timingCurve:0.0];

  v14 = [(CEKExpandingSlider *)self _slider];
  [v14 frameForTitleLabel];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:v23 fromView:v16, v18, v20, v22];
  v87 = v24;
  v88 = v25;
  v27 = v26;
  rect = v28;

  v29 = [(CEKExpandingSlider *)self _slider];
  [v29 frameForValueLabel];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:v38 fromView:v31, v33, v35, v37];
  v82 = v39;

  v40 = [(CEKExpandingSlider *)self _slider];
  [v40 frameForLevelIndicator];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:v49 fromView:v42, v44, v46, v48];
  v51 = v50;
  v53 = v52;
  v90 = v54;
  v56 = v55;

  v57 = [(CEKExpandingSlider *)self _titleLabel];
  [v57 intrinsicContentSize];
  v59 = v58;

  v60 = [(CEKExpandingSlider *)self _valueLabel];
  [v60 intrinsicContentSize];
  v62 = v61;

  if ([(CEKExpandingSlider *)self expanded])
  {
    v92.origin.x = v87;
    v92.size.width = v88;
    v92.origin.y = v27;
    v92.size.height = rect;
    v63 = v4;
    v64 = CGRectGetMaxX(v92) - v59;
    v65 = [(CEKExpandingSlider *)self _titleLabel];
    [v65 setFrame:{v64, v27, v59, 18.0}];

    v93.origin.x = v63;
    v93.size.width = v84;
    v93.origin.y = v85;
    v93.size.height = v83;
    CGRectGetMidX(v93);
    UIRoundToViewScale();
    v67 = v66;
    v68 = [(CEKExpandingSlider *)self _valueLabel];
    [v68 setFrame:{v67, v82, v62, 18.0}];

    v69 = v90;
  }

  else
  {
    [(CEKExpandingSlider *)self collapsedCenterX];
    UIRoundToViewScale();
    v71 = v70;
    v72 = [(CEKExpandingSlider *)self _titleLabel];
    [v72 setFrame:{v71, v27, v59, 18.0}];

    [(CEKExpandingSlider *)self collapsedCenterX];
    UIRoundToViewScale();
    v74 = v73;
    v94.origin.x = v87;
    v94.size.width = v88;
    v94.origin.y = v27;
    v94.size.height = rect;
    v75 = CGRectGetMaxY(v94) + -1.0;
    v76 = [(CEKExpandingSlider *)self _valueLabel];
    [v76 setFrame:{v74, v75, v62, 18.0}];

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

  v79 = [(CEKExpandingSlider *)self _levelIndicatorView];
  [v79 setFrame:{v51, v53, v69, v56}];

  v80 = [(CEKExpandingSlider *)self _animator];
  v81 = [v80 isAnimating];

  if ((v81 & 1) == 0)
  {
    [(CEKExpandingSlider *)self _updateTickViewFrameForProgress:v86];
  }
}

- (void)animator:(id)a3 didUpdateValuesForKeys:(id)a4
{
  v5 = [(CEKExpandingSlider *)self _animator:a3];
  [v5 valueForKey:@"CEKExpandingSliderAnimatorProgressKey"];
  v7 = v6;

  [(CEKExpandingSlider *)self _updateTickViewFrameForProgress:v7];

  [(CEKExpandingSlider *)self _updateLabelColorsForProgress:v7];
}

- (void)_updateTickViewFrameForProgress:(double)a3
{
  v5 = [(CEKExpandingSlider *)self _ticksView];
  [v5 intrinsicContentSize];
  v7 = v6;
  v9 = v8;

  v10 = [(CEKExpandingSlider *)self _slider];
  [v10 frameForTicksView];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(CEKExpandingSlider *)self _slider];
  [(CEKExpandingSlider *)self convertRect:v19 fromView:v12, v14, v16, v18];
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [(CEKExpandingSlider *)self collapsedCenterX];
  v27 = CEKInterpolate(v26 + v7 * -0.5, v21, a3);
  v28 = CEKInterpolate(v7, v25, a3);
  v29 = [(CEKExpandingSlider *)self _ticksView];
  [v29 setFrame:{v27, v23, v28, v9}];
}

- (void)_updateLabelColorsForProgress:(double)a3
{
  v5 = CEKInterpolateClamped(1.0, 0.6, a3);
  v6 = [MEMORY[0x1E69DC888] labelColor];
  v7 = [v6 colorWithAlphaComponent:v5];
  v8 = [(CEKExpandingSlider *)self _titleLabel];
  [v8 setTextColor:v7];

  if ([(CEKExpandingSlider *)self expanded])
  {
    v16 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v9 = [(CEKExpandingSlider *)self tintColor];
    v10 = [(CEKExpandingSlider *)self traitCollection];
    v11 = [v9 resolvedColorWithTraitCollection:v10];

    [v11 getRed:&v17 green:&v16 blue:&v15 alpha:0];
    v17 = CEKInterpolateClamped(1.0, v17, a3);
    v16 = CEKInterpolateClamped(1.0, v16, a3);
    v15 = CEKInterpolateClamped(1.0, v15, a3);
    v12 = [MEMORY[0x1E69DC888] colorWithRed:v17 green:v16 blue:v15 alpha:1.0];
    v13 = [(CEKExpandingSlider *)self _valueLabel];
    [v13 setTextColor:v12];
  }

  else
  {
    v11 = [MEMORY[0x1E69DC888] labelColor];
    v14 = [(CEKExpandingSlider *)self _valueLabel];
    [v14 setTextColor:v11];
  }
}

- (void)_updateMarkedValueAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CEKExpandingSlider *)self _gestureRecognizer];
  v6 = [v5 state];

  if ((v6 - 1) < 2 || ([(CEKExpandingSlider *)self _markedValueAnimationTimer], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [(CEKExpandingSlider *)self markedValue];
    v9 = v8;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  v10 = [(CEKExpandingSlider *)self _slider];
  [v10 setMarkedValue:v3 animated:v9];
}

- (void)_handlePress:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {
      [(CEKExpandingSlider *)self _setExpanded:1 animated:1 shouldNotify:1];
      v14 = [(CEKExpandingSlider *)self _markedValueAnimationTimer];
      [v14 invalidate];

      [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:0];
      v15 = [(CEKExpandingSlider *)self _expansionAnimationTimer];
      [v15 invalidate];

      [(CEKExpandingSlider *)self _setExpansionAnimationTimer:0];
    }
  }

  else
  {
    v5 = MEMORY[0x1E695DFF0];
    v6 = [(CEKExpandingSlider *)self _slider];
    [v6 animationDuration];
    v8 = [v5 timerWithTimeInterval:self target:sel__handleMarkedValueAnimationTimerFired_ selector:0 userInfo:0 repeats:1.0 - v7];
    [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:v8];

    v9 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v10 = [(CEKExpandingSlider *)self _markedValueAnimationTimer];
    v11 = *MEMORY[0x1E695DA28];
    [v9 addTimer:v10 forMode:*MEMORY[0x1E695DA28]];

    v12 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__handleExpansionAnimationTimerFired_ selector:0 userInfo:0 repeats:1.0];
    [(CEKExpandingSlider *)self _setExpansionAnimationTimer:v12];

    v16 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v13 = [(CEKExpandingSlider *)self _expansionAnimationTimer];
    [v16 addTimer:v13 forMode:v11];
  }
}

- (void)_handleMarkedValueAnimationTimerFired:(id)a3
{
  [(CEKExpandingSlider *)self _setMarkedValueAnimationTimer:0];

  [(CEKExpandingSlider *)self _updateMarkedValueAnimated:1];
}

- (void)_handleExpansionAnimationTimerFired:(id)a3
{
  [(CEKExpandingSlider *)self _setExpansionAnimationTimer:0];

  [(CEKExpandingSlider *)self _setExpanded:0 animated:1 shouldNotify:1];
}

- (void)_handleSliderDidChangeValue:(id)a3
{
  [a3 value];
  [(CEKExpandingSlider *)self _updateUIForValue:0 animated:?];

  [(CEKExpandingSlider *)self sendActionsForControlEvents:4096];
}

- (void)_updateUIForValue:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [(CEKExpandingSlider *)self _slider];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * 100.0];
  v9 = [v7 formattedIntegerStringFromNumber:v8];
  v10 = [(CEKExpandingSlider *)self _valueLabel];
  [v10 setAttributedText:v9];

  v11 = [(CEKExpandingSlider *)self _ticksView];
  [v11 setSelectedValue:v4 animated:a3];

  [(CEKExpandingSlider *)self setNeedsLayout];
}

- (CEKExpandingSliderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end