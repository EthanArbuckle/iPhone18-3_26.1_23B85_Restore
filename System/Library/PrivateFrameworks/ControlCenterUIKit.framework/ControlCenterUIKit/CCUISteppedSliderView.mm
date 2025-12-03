@interface CCUISteppedSliderView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CCUISteppedSliderView)initWithFrame:(CGRect)frame;
- (float)_valueForTouchLocation:(CGPoint)location;
- (float)_valueFromStep:(unint64_t)step;
- (id)_additionalTopLevelBlockingGestureRecognizers;
- (id)_createBackgroundViewForStep:(unint64_t)step;
- (id)_createSeparatorView;
- (unint64_t)_stepFromValue:(float)value avoidCurrentStep:(BOOL)step;
- (void)_adjustStepIfNecessaryForFirstStepBehaviorChange;
- (void)_createSeparatorViewsForNumberOfSteps:(unint64_t)steps;
- (void)_createStepViewsForNumberOfSteps:(unint64_t)steps;
- (void)_handleHoverGestureRecognizer:(id)recognizer;
- (void)_handleValueTapGestureRecognizer:(id)recognizer;
- (void)_layoutStepViews;
- (void)_updateStepFromValue:(float)value toggleCurrentStep:(BOOL)step andUpdateValue:(BOOL)updateValue;
- (void)_updateStepViewVisibility;
- (void)applyContinuousSliderCornerRadius:(double)radius;
- (void)applyInoperativeAppearance:(BOOL)appearance;
- (void)contentModuleWillTransitionToExpandedContentMode:(BOOL)mode;
- (void)didMoveToWindow;
- (void)layoutElasticContentViews;
- (void)setFirstStepIsDisabled:(BOOL)disabled;
- (void)setFirstStepIsOff:(BOOL)off;
- (void)setInoperative:(BOOL)inoperative;
- (void)setNumberOfSteps:(unint64_t)steps;
- (void)setStep:(unint64_t)step;
- (void)setValue:(float)value isAdjusted:(BOOL)adjusted andUpdateStep:(BOOL)step animated:(BOOL)animated;
- (void)setValueVisible:(BOOL)visible;
@end

@implementation CCUISteppedSliderView

- (CCUISteppedSliderView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = CCUISteppedSliderView;
  v3 = [(CCUIBaseSliderView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_numberOfSteps = 2;
    v3->_firstStepIsDisabled = 0;
    v3->_firstStepIsOff = 0;
    v3->_valueAdjustedForSteppedSlider = -1.0;
    [(CCUISteppedSliderView *)v3 _createStepViewsForNumberOfSteps:2];
    [(CCUISteppedSliderView *)v4 bounds];
    v9 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    stepViewsContainer = v4->_stepViewsContainer;
    v4->_stepViewsContainer = v9;

    [(UIView *)v4->_stepViewsContainer setUserInteractionEnabled:0];
    [(UIView *)v4->_stepViewsContainer setClipsToBounds:1];
    glyphContainerView = [(CCUIBaseSliderView *)v4 glyphContainerView];
    [glyphContainerView addSubview:v4->_stepViewsContainer];

    v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleValueTapGestureRecognizer_];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v12;

    [(UITapGestureRecognizer *)v4->_tapGestureRecognizer setDelegate:v4];
    [(UITapGestureRecognizer *)v4->_tapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v4->_tapGestureRecognizer setDelaysTouchesEnded:0];
    [(CCUISteppedSliderView *)v4 addGestureRecognizer:v4->_tapGestureRecognizer];
    [(CCUIBaseSliderView *)v4 setShouldProvideBuiltInFeedback:0];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v16 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__handleHoverGestureRecognizer_];
      hoverGestureRecognizer = v4->_hoverGestureRecognizer;
      v4->_hoverGestureRecognizer = v16;

      [(CCUISteppedSliderView *)v4 addGestureRecognizer:v4->_hoverGestureRecognizer];
    }
  }

  return v4;
}

- (void)setValue:(float)value isAdjusted:(BOOL)adjusted andUpdateStep:(BOOL)step animated:(BOOL)animated
{
  animatedCopy = animated;
  stepCopy = step;
  adjustedCopy = adjusted;
  [(CCUIBaseSliderView *)self value];
  if (*&v11 != value)
  {
    valueCopy = -1.0;
    if (adjustedCopy)
    {
      valueCopy = value;
    }

    self->_valueAdjustedForSteppedSlider = valueCopy;
    if (stepCopy)
    {
      *&v11 = value;
      self->_step = [(CCUISteppedSliderView *)self _stepFromValue:v11];
    }

    v13.receiver = self;
    v13.super_class = CCUISteppedSliderView;
    *&v11 = value;
    [(CCUIBaseSliderView *)&v13 setValue:animatedCopy animated:v11];
  }
}

- (void)setStep:(unint64_t)step
{
  if (self->_step != step && self->_numberOfSteps >= step || self->_valueAdjustedForSteppedSlider != -1.0)
  {
    self->_step = step;
    [(CCUISteppedSliderView *)self _valueFromStep:?];
    [(CCUISteppedSliderView *)self setValue:0 isAdjusted:0 andUpdateStep:0 animated:?];

    [(CCUISteppedSliderView *)self setNeedsLayout];
  }
}

- (void)setNumberOfSteps:(unint64_t)steps
{
  if (steps <= 1)
  {
    stepsCopy = 1;
  }

  else
  {
    stepsCopy = steps;
  }

  if (self->_numberOfSteps != stepsCopy)
  {
    self->_numberOfSteps = stepsCopy;
    [(CCUISteppedSliderView *)self _createStepViewsForNumberOfSteps:stepsCopy];
    [(CCUISteppedSliderView *)self _createSeparatorViewsForNumberOfSteps:stepsCopy];
    if (!self->_selectionFeedbackGenerator)
    {
      lightConfiguration = [MEMORY[0x1E69DD6E8] lightConfiguration];
      v8 = [lightConfiguration tweakedConfigurationForClass:objc_opt_class() usage:@"sliderDetent"];

      v6 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v8 view:self];
      selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
      self->_selectionFeedbackGenerator = v6;
    }
  }
}

- (void)setFirstStepIsDisabled:(BOOL)disabled
{
  if (self->_firstStepIsDisabled != disabled)
  {
    self->_firstStepIsDisabled = disabled;
    [(CCUISteppedSliderView *)self _createStepViewsForNumberOfSteps:self->_numberOfSteps];

    [(CCUISteppedSliderView *)self _adjustStepIfNecessaryForFirstStepBehaviorChange];
  }
}

- (void)setFirstStepIsOff:(BOOL)off
{
  if (self->_firstStepIsOff != off)
  {
    self->_firstStepIsOff = off;
    [(CCUISteppedSliderView *)self _createStepViewsForNumberOfSteps:self->_numberOfSteps];

    [(CCUISteppedSliderView *)self _adjustStepIfNecessaryForFirstStepBehaviorChange];
  }
}

- (void)setInoperative:(BOOL)inoperative
{
  inoperativeCopy = inoperative;
  v5.receiver = self;
  v5.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v5 setInoperative:?];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:!inoperativeCopy];
}

- (void)setValueVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v6 setValueVisible:?];
  v5 = 0.0;
  if (visibleCopy)
  {
    v5 = 1.0;
  }

  [(UIView *)self->_stepViewsContainer setAlpha:v5];
}

- (void)applyInoperativeAppearance:(BOOL)appearance
{
  v4.receiver = self;
  v4.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v4 applyInoperativeAppearance:appearance];
  [(CCUISteppedSliderView *)self _updateStepViewVisibility];
}

- (void)applyContinuousSliderCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v5 applyContinuousSliderCornerRadius:?];
  [(UIView *)self->_stepViewsContainer _setContinuousCornerRadius:radius];
}

- (void)layoutElasticContentViews
{
  v5.receiver = self;
  v5.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v5 layoutElasticContentViews];
  stepViewsContainer = self->_stepViewsContainer;
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  [(UIView *)stepViewsContainer setFrame:?];

  [(CCUIBaseSliderView *)self value];
  [(CCUISteppedSliderView *)self _updateStepFromValue:0 toggleCurrentStep:0 andUpdateValue:?];
  [(CCUISteppedSliderView *)self _layoutStepViews];
  [(CCUISteppedSliderView *)self _updateStepViewVisibility];
}

- (void)_layoutStepViews
{
  shouldIntegralizeContentLayout = [(CCUIBaseSliderView *)self shouldIntegralizeContentLayout];
  shouldIntegralizeValueLayout = [(CCUIBaseSliderView *)self shouldIntegralizeValueLayout];
  traitCollection = [(CCUISteppedSliderView *)self traitCollection];
  [traitCollection displayScale];
  v46 = v6;

  [(UIView *)self->_stepViewsContainer bounds];
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v47 = CGRectGetWidth(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v45 = CGRectGetHeight(v49);
  numberOfSteps = self->_numberOfSteps;
  v12 = numberOfSteps - 1;
  if ((numberOfSteps - 1) >= 0)
  {
    v44 = v45 / numberOfSteps - 1.0 / v46;
    MaxY = 0.0;
    v14 = 0.0;
    do
    {
      v15 = self->_numberOfSteps;
      if (v12 + 1 != v15)
      {
        if (shouldIntegralizeContentLayout)
        {
          UIRectIntegralWithScale();
          v17 = v16;
          MaxY = v18;
          v20 = v19;
          v22 = v21;
          v15 = self->_numberOfSteps;
        }

        else
        {
          v17 = 0.0;
          v22 = 1.0 / v46;
          v20 = v47;
        }

        if (v12 >= v15 - 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = [(NSArray *)self->_separatorViews objectAtIndex:v12];
        }

        [v23 setFrame:{v17, MaxY, v20, v22}];
        v50.origin.x = v17;
        v50.origin.y = MaxY;
        v50.size.width = v20;
        v50.size.height = v22;
        MaxY = CGRectGetMaxY(v50);
      }

      if (v12)
      {
        v24 = v44 - v14;
      }

      else
      {
        v24 = v45 - MaxY;
      }

      v25 = 0.0;
      if (shouldIntegralizeContentLayout)
      {
        v26 = v47;
        UIRectIntegralWithScale();
        v25 = v27;
        v29 = v28;
        v31 = v30;
        v33 = v32;
      }

      else
      {
        v29 = MaxY;
        v26 = v47;
        v31 = v47;
        v33 = v24;
      }

      v51.origin.x = v25;
      v51.origin.y = v29;
      v51.size.width = v31;
      v51.size.height = v33;
      v34 = CGRectGetHeight(v51);
      v52.origin.x = 0.0;
      v52.origin.y = MaxY;
      v52.size.width = v26;
      v52.size.height = v24;
      v35 = CGRectGetHeight(v52);
      step = self->_step;
      [(CCUIBaseSliderView *)self presentationValue];
      v38 = v37;
      if (self->_valueAdjustedForSteppedSlider == v37 && v12 + 1 == step)
      {
        numberOfSteps = [(CCUISteppedSliderView *)self numberOfSteps];
        v53.origin.x = v25;
        v53.origin.y = v29;
        v53.size.width = v31;
        v53.size.height = v33;
        v41 = CGRectGetHeight(v53) * (ceil((v38 * numberOfSteps)) - (v38 * numberOfSteps));
        if (shouldIntegralizeValueLayout)
        {
          UIRoundToScale();
        }

        v29 = v29 + v41;
        v33 = v33 - v41;
      }

      v14 = v34 - v35;
      v42 = [(NSArray *)self->_stepBackgroundViews objectAtIndex:v12];
      [v42 setFrame:{v25, v29, v31, v33}];
      v54.origin.x = v25;
      v54.origin.y = v29;
      v54.size.width = v31;
      v54.size.height = v33;
      MaxY = CGRectGetMaxY(v54);
    }

    while (v12-- > 0);
  }
}

- (id)_additionalTopLevelBlockingGestureRecognizers
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_tapGestureRecognizer;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)_updateStepViewVisibility
{
  hasInoperativeAppearance = [(CCUIBaseSliderView *)self hasInoperativeAppearance];
  numberOfSteps = self->_numberOfSteps;
  if (numberOfSteps)
  {
    v5 = 0;
    if (hasInoperativeAppearance)
    {
      v6 = 0.6;
    }

    else
    {
      v6 = 1.0;
    }

    do
    {
      v7 = numberOfSteps - 1;
      step = self->_step;
      v9 = [(NSArray *)self->_stepBackgroundViews objectAtIndexedSubscript:v5];
      if (v5 == v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSArray *)self->_separatorViews objectAtIndexedSubscript:v5];
      }

      v11 = self->_step;
      if (self->_isHoverHighlighting && ((hoverStep = self->_hoverStep, v5 > v11 - 1) ? (v13 = hoverStep >= v5) : (v13 = 0), v13 ? (v14 = hoverStep > v11 - 1) : (v14 = 0), v14))
      {
        v22 = v9;
        v21 = 0.2;
      }

      else
      {
        if (v5 < v11)
        {
          v15 = [(CCUISteppedSliderView *)self visualStylingProviderForCategory:2];
          firstStepIsOff = [(CCUISteppedSliderView *)self firstStepIsOff];
          if (v5)
          {
            v17 = 0;
          }

          else
          {
            v17 = firstStepIsOff;
          }

          if (v17 || v5 == step - 1)
          {
            _controlCenterKeyLineOnLightVisualStyling = [v15 _visualStylingForStyle:5];
          }

          else
          {
            _controlCenterKeyLineOnLightVisualStyling = [v15 _controlCenterKeyLineOnLightVisualStyling];
          }

          v23 = _controlCenterKeyLineOnLightVisualStyling;
          [v10 mt_replaceVisualStyling:_controlCenterKeyLineOnLightVisualStyling];
          [v9 setAlpha:v6];

          goto LABEL_28;
        }

        v19 = [(CCUISteppedSliderView *)self visualStylingProviderForCategory:1];
        v20 = [v19 _visualStylingForStyle:1];
        [v10 mt_replaceVisualStyling:v20];

        v21 = 0.0;
        v22 = v9;
      }

      [v22 setAlpha:v21];
LABEL_28:

      ++v5;
      numberOfSteps = self->_numberOfSteps;
    }

    while (v5 < numberOfSteps);
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v3 didMoveToWindow];
  [(CCUISteppedSliderView *)self setNeedsLayout];
}

- (void)contentModuleWillTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v6.receiver = self;
  v6.super_class = CCUISteppedSliderView;
  [(CCUIBaseSliderView *)&v6 contentModuleWillTransitionToExpandedContentMode:?];
  selectionFeedbackGenerator = self->_selectionFeedbackGenerator;
  if (modeCopy)
  {
    [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionStarted];
  }

  else
  {
    [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator userInteractionEnded];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  _panGestureRecognizer = [(CCUIBaseSliderView *)self _panGestureRecognizer];

  return _panGestureRecognizer == gestureRecognizerCopy;
}

- (void)_createStepViewsForNumberOfSteps:(unint64_t)steps
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_stepBackgroundViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (steps)
  {
    v11 = 0;
    do
    {
      v12 = [(CCUISteppedSliderView *)self _createBackgroundViewForStep:v11, v14];
      [(UIView *)self->_stepViewsContainer addSubview:v12];
      [(NSArray *)v5 addObject:v12];

      ++v11;
    }

    while (steps != v11);
  }

  stepBackgroundViews = self->_stepBackgroundViews;
  self->_stepBackgroundViews = v5;

  [(CCUISteppedSliderView *)self setNeedsLayout];
}

- (void)_createSeparatorViewsForNumberOfSteps:(unint64_t)steps
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = steps - 1;
  for (i = [MEMORY[0x1E695DF70] arrayWithCapacity:steps - 1];
  {
    _createSeparatorView = [(CCUISteppedSliderView *)self _createSeparatorView];
    [(UIView *)self->_stepViewsContainer addSubview:_createSeparatorView];
    [(NSArray *)i addObject:_createSeparatorView];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_separatorViews;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) removeFromSuperview];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  separatorViews = self->_separatorViews;
  self->_separatorViews = i;

  [(CCUISteppedSliderView *)self setNeedsLayout];
}

- (id)_createBackgroundViewForStep:(unint64_t)step
{
  if (step || ![(CCUISteppedSliderView *)self firstStepIsOff])
  {
    v3 = +[CCUIControlCenterMaterialView _lightFillView];
  }

  else
  {
    v3 = +[CCUIControlCenterMaterialView _tertiaryView];
  }

  v4 = v3;
  [v3 setUserInteractionEnabled:0];

  return v4;
}

- (id)_createSeparatorView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setUserInteractionEnabled:0];

  return v2;
}

- (void)_adjustStepIfNecessaryForFirstStepBehaviorChange
{
  [(CCUIBaseSliderView *)self value];
  v3 = [(CCUISteppedSliderView *)self _stepFromValue:?];
  if (self->_step != v3)
  {

    [(CCUISteppedSliderView *)self setStep:v3];
  }
}

- (unint64_t)_stepFromValue:(float)value avoidCurrentStep:(BOOL)step
{
  stepCopy = step;
  if ([(CCUISteppedSliderView *)self firstStepIsDisabled])
  {
    firstStepIsOff = 1;
  }

  else
  {
    firstStepIsOff = [(CCUISteppedSliderView *)self firstStepIsOff];
  }

  numberOfSteps = self->_numberOfSteps;
  v9 = vcvtps_u32_f32(numberOfSteps * value);
  if (firstStepIsOff > v9)
  {
    v9 = firstStepIsOff;
  }

  if (numberOfSteps >= v9)
  {
    result = v9;
  }

  else
  {
    result = self->_numberOfSteps;
  }

  if (stepCopy && result == self->_step)
  {
    if (result - 1 <= firstStepIsOff)
    {
      return firstStepIsOff;
    }

    else
    {
      --result;
    }
  }

  return result;
}

- (float)_valueFromStep:(unint64_t)step
{
  numberOfSteps = self->_numberOfSteps;
  if (numberOfSteps)
  {
    return step / numberOfSteps;
  }

  else
  {
    return 0.0;
  }
}

- (float)_valueForTouchLocation:(CGPoint)location
{
  y = location.y;
  [(CCUISteppedSliderView *)self bounds];
  Height = CGRectGetHeight(v6);
  return (Height - y) / Height;
}

- (void)_handleValueTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    [recognizerCopy locationInView:self];
    [(CCUISteppedSliderView *)self _valueForTouchLocation:?];
    [(CCUISteppedSliderView *)self _updateStepFromValue:1 toggleCurrentStep:1 andUpdateValue:?];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__CCUISteppedSliderView__handleValueTapGestureRecognizer___block_invoke;
    v7[3] = &unk_1E83EA478;
    v7[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    window = [(CCUISteppedSliderView *)self window];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__CCUISteppedSliderView__handleValueTapGestureRecognizer___block_invoke_2;
    v6[3] = &unk_1E83EA478;
    v6[4] = self;
    [CCUIContentModuleContext performWithoutAnimationWhileHiddenInWindow:window actions:v6];

    [(CCUISteppedSliderView *)self sendActionsForControlEvents:4096];
    [(CCUISteppedSliderView *)self sendActionsForControlEvents:CCUIBaseSliderViewControlEventPresentationValueChanged];
  }
}

uint64_t __58__CCUISteppedSliderView__handleValueTapGestureRecognizer___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__CCUISteppedSliderView__handleValueTapGestureRecognizer___block_invoke_3;
  v2[3] = &unk_1E83EA478;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.1];
}

- (void)_updateStepFromValue:(float)value toggleCurrentStep:(BOOL)step andUpdateValue:(BOOL)updateValue
{
  updateValueCopy = updateValue;
  step = self->_step;
  v8 = [(CCUISteppedSliderView *)self _stepFromValue:step avoidCurrentStep:?];
  self->_step = v8;
  if (updateValueCopy)
  {
    [(CCUISteppedSliderView *)self _valueFromStep:v8];
    [(CCUISteppedSliderView *)self setValue:0 isAdjusted:0 andUpdateStep:0 animated:?];
    v8 = self->_step;
  }

  if (step != v8)
  {
    selectionFeedbackGenerator = self->_selectionFeedbackGenerator;

    [(UISelectionFeedbackGenerator *)selectionFeedbackGenerator selectionChanged];
  }
}

- (void)_handleHoverGestureRecognizer:(id)recognizer
{
  isHoverHighlighting = self->_isHoverHighlighting;
  hoverStep = self->_hoverStep;
  recognizerCopy = recognizer;
  state = [recognizerCopy state];
  [recognizerCopy locationInView:self];
  v9 = v8;
  v11 = v10;

  stepBackgroundViews = self->_stepBackgroundViews;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__CCUISteppedSliderView__handleHoverGestureRecognizer___block_invoke;
  v14[3] = &unk_1E83EA508;
  v14[5] = v9;
  v14[6] = v11;
  v14[4] = self;
  [(NSArray *)stepBackgroundViews enumerateObjectsUsingBlock:v14];
  v13 = state != 3;
  self->_isHoverHighlighting = v13;
  if (isHoverHighlighting != v13 || hoverStep != self->_hoverStep)
  {
    [(CCUISteppedSliderView *)self setNeedsLayout];
  }
}

uint64_t __55__CCUISteppedSliderView__handleHoverGestureRecognizer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 frame];
  result = UIRectContainsPointInYAxis();
  if (result)
  {
    *(*(a1 + 32) + 696) = a3;
    *a4 = 1;
  }

  return result;
}

@end