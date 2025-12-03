@interface HUQuickControlElasticSliderInteractionCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)_rawViewValueRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)modelValue;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (HUQuickControlElasticSliderInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate;
- (HUQuickControlIncrementalConvertibleProfile)viewProfile;
- (double)_rubberBandedStretchProgress;
- (double)_sliderValueForLocation:(CGPoint)location;
- (id)_allAppliers;
- (id)_rubberBandingValueNormalizer;
- (id)_setupValueApplierForValueType:(unint64_t)type;
- (id)_valueNormalizerWithOptions:(id)options;
- (id)value;
- (unint64_t)_findClosestValueFromTouchLocation:(CGPoint)location;
- (void)_beginReceivingTouchesWithGestureRecognizer:(id)recognizer isTouchContinuation:(BOOL)continuation;
- (void)_handleControlPanGesture:(id)gesture;
- (void)_handleControlTapGesture:(id)gesture;
- (void)_setupAllValueAppliersIfNecessary;
- (void)_setupStretchingAppliers;
- (void)_updateControlViewValueOfType:(unint64_t)type withValue:(double)value;
- (void)_updateModelValue:(id)value roundValue:(BOOL)roundValue notifyDelegate:(BOOL)delegate;
- (void)_updatePropertiesForControlValueSmoothingApplier:(id)applier ofType:(unint64_t)type;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)gestureDidEndForGestureTransformer:(id)transformer;
- (void)gestureTransformer:(id)transformer sliderValueDidChange:(double)change;
- (void)recordInteractionStart;
- (void)setActiveGestureValue:(double)value;
- (void)setHasSecondaryValue:(BOOL)value;
- (void)setUserInteractionActive:(BOOL)active;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setValue:(id)value;
- (void)setViewVisible:(BOOL)visible;
@end

@implementation HUQuickControlElasticSliderInteractionCoordinator

- (HUQuickControlElasticSliderInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  v19.receiver = self;
  v19.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v19 initWithControlView:viewCopy delegate:delegate];
  v8 = v7;
  if (v7)
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)v7 setModelValue:0.0, 1.0];
    v9 = objc_alloc_init(MEMORY[0x277D75708]);
    [(HUQuickControlElasticSliderInteractionCoordinator *)v8 setPanGestureRecognizer:v9];

    panGestureRecognizer = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [panGestureRecognizer setDelegate:v8];

    panGestureRecognizer2 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [panGestureRecognizer2 setMinimumPressDuration:0.0];

    panGestureRecognizer3 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [panGestureRecognizer3 addTarget:v8 action:sel__handleControlPanGesture_];

    panGestureRecognizer4 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [viewCopy addGestureRecognizer:panGestureRecognizer4];

    v14 = objc_alloc_init(MEMORY[0x277D75B80]);
    [(HUQuickControlElasticSliderInteractionCoordinator *)v8 setTapGestureRecognizer:v14];

    tapGestureRecognizer = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [tapGestureRecognizer setAllowableMovement:5.0];

    tapGestureRecognizer2 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [tapGestureRecognizer2 addTarget:v8 action:sel__handleControlTapGesture_];

    tapGestureRecognizer3 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [viewCopy addGestureRecognizer:tapGestureRecognizer3];
  }

  return v8;
}

- (void)dealloc
{
  _allAppliers = [(HUQuickControlElasticSliderInteractionCoordinator *)self _allAppliers];
  [_allAppliers na_each:&__block_literal_global_196];

  v4.receiver = self;
  v4.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  [(HUQuickControlElasticSliderInteractionCoordinator *)&v4 dealloc];
}

- (HUQuickControlIncrementalConvertibleProfile)viewProfile
{
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  profile = [controlView profile];
  v4 = &unk_282582800;
  v5 = profile;
  v6 = v5;
  if (v5)
  {
    if ([v5 conformsToProtocol:v4])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v6;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (![(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _beginReceivingTouchesWithGestureRecognizer:recognizerCopy isTouchContinuation:1];
  }
}

- (void)recordInteractionStart
{
  if (![(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    v3 = objc_opt_new();
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setInteractableStartTime:v3];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  [(HUQuickControlInteractionCoordinator *)&v6 setUserInteractionEnabled:?];
  gestureTransformer = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [gestureTransformer setIgnoreTouches:!enabledCopy];

  if (!enabledCopy)
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:0];
  }
}

- (id)value
{
  v3 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
  [(HUElasticSliderValueNormalizationOptions *)v3 setBoundingStrategy:1];
  [(HUElasticSliderValueNormalizationOptions *)v3 setApplyStepValue:1];
  v4 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v3];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  [v4 normalizeRange:?];
  v6 = v5;
  v8 = v7;
  if ([(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [MEMORY[0x277D148D8] rangeWithFloatRange:{v6, v8}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:v8];
  }
  v9 = ;

  return v9;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = valueCopy;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    -[HUQuickControlElasticSliderInteractionCoordinator setHasSecondaryValue:](self, "setHasSecondaryValue:", [v6 type] == 1);
    if ([(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
    {
      [v6 floatRangeValue];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      midValue = [v6 midValue];
      [midValue doubleValue];
      v10 = v13;
      v8 = 0.0;
    }
  }

  else
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setHasSecondaryValue:0];
    [valueCopy doubleValue];
    v10 = v11;
    v8 = 0.0;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:0 notifyDelegate:v8, v10];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupAllValueAppliersIfNecessary];
}

- (void)setHasSecondaryValue:(BOOL)value
{
  self->_hasSecondaryValue = value;
  if (!value)
  {
    secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [secondaryValueSmoothingApplier cancel];

    [(HUQuickControlElasticSliderInteractionCoordinator *)self setSecondaryValueSmoothingApplier:0];
  }
}

- (void)setUserInteractionActive:(BOOL)active
{
  if (self->_userInteractionActive != active)
  {
    activeCopy = active;
    self->_userInteractionActive = active;
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    [delegate interactionCoordinator:self interactionStateDidChange:activeCopy];
  }
}

- (void)setViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(HUQuickControlInteractionCoordinator *)self viewVisible]!= visible)
  {
    v6.receiver = self;
    v6.super_class = HUQuickControlElasticSliderInteractionCoordinator;
    [(HUQuickControlInteractionCoordinator *)&v6 setViewVisible:visibleCopy];
    if (!visibleCopy)
    {
      _allAppliers = [(HUQuickControlElasticSliderInteractionCoordinator *)self _allAppliers];
      [_allAppliers na_each:&__block_literal_global_67_1];
    }
  }
}

- (void)setActiveGestureValue:(double)value
{
  if (self->_activeGestureValue != value)
  {
    self->_activeGestureValue = value;
    primaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:primaryValueSmoothingApplier ofType:2];

    secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:secondaryValueSmoothingApplier ofType:1];
  }
}

- (void)_updateControlViewValueOfType:(unint64_t)type withValue:(double)value
{
  if (type)
  {
    if (type == 1)
    {
      currentHandler = [MEMORY[0x277CCABB0] numberWithDouble:value];
      controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
      [controlView setSecondaryValue:currentHandler];
    }

    else
    {
      if (type != 2)
      {
        return;
      }

      currentHandler = [MEMORY[0x277CCABB0] numberWithDouble:value];
      controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
      [controlView setValue:currentHandler];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlElasticSliderInteractionCoordinator.m" lineNumber:212 description:@"Invalid control view value type!"];
  }
}

- (void)_updateModelValue:(id)value roundValue:(BOOL)roundValue notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  roundValueCopy = roundValue;
  var1 = value.var1;
  var0 = value.var0;
  v13 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
  [(HUElasticSliderValueNormalizationOptions *)v13 setBoundingStrategy:1];
  [(HUElasticSliderValueNormalizationOptions *)v13 setApplyStepValue:roundValueCopy];
  v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v13];
  [v10 normalizeRange:{var0, var1}];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setModelValue:?];
  if (delegateCopy)
  {
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    value = [(HUQuickControlElasticSliderInteractionCoordinator *)self value];
    [delegate interactionCoordinator:self viewValueDidChange:value];
  }
}

- (void)_handleControlPanGesture:(id)gesture
{
  v24 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  if ([controlView conformsToProtocol:&unk_2824F3238])
  {
    controlView2 = [(HUQuickControlInteractionCoordinator *)self controlView];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      controlView3 = [(HUQuickControlInteractionCoordinator *)self controlView];
      if (![controlView3 reachabilityState])
      {

LABEL_13:
        controlView4 = [(HUQuickControlInteractionCoordinator *)self controlView];
        v15 = HUQuickControlReachabilityString([controlView4 reachabilityState]);

        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          controlView5 = [(HUQuickControlInteractionCoordinator *)self controlView];
          v18 = 138412802;
          v19 = controlView5;
          v20 = 2112;
          v21 = v15;
          v22 = 2080;
          v23 = "[HUQuickControlElasticSliderInteractionCoordinator _handleControlPanGesture:]";
          _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring pan gesture in %s.", &v18, 0x20u);
        }

        goto LABEL_16;
      }

      controlView6 = [(HUQuickControlInteractionCoordinator *)self controlView];
      reachabilityState = [controlView6 reachabilityState];

      if (reachabilityState == 1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  if ([gestureCopy state] == 1)
  {
    interactableStartTime = self->_interactableStartTime;
    if (interactableStartTime)
    {
      [(NSDate *)interactableStartTime timeIntervalSinceNow];
      v13 = fabs(v12) < 0.05;
    }

    else
    {
      v13 = 0;
    }

    [(HUQuickControlElasticSliderInteractionCoordinator *)self _beginReceivingTouchesWithGestureRecognizer:gestureCopy isTouchContinuation:v13];
  }

LABEL_16:
}

- (void)_handleControlTapGesture:(id)gesture
{
  v31 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  if ([controlView conformsToProtocol:&unk_2824F3238])
  {
    controlView2 = [(HUQuickControlInteractionCoordinator *)self controlView];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      controlView3 = [(HUQuickControlInteractionCoordinator *)self controlView];
      if (![controlView3 reachabilityState])
      {

LABEL_16:
        controlView4 = [(HUQuickControlInteractionCoordinator *)self controlView];
        v22 = HUQuickControlReachabilityString([controlView4 reachabilityState]);

        v23 = HFLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          controlView5 = [(HUQuickControlInteractionCoordinator *)self controlView];
          v25 = 138412802;
          v26 = controlView5;
          v27 = 2112;
          v28 = v22;
          v29 = 2080;
          v30 = "[HUQuickControlElasticSliderInteractionCoordinator _handleControlTapGesture:]";
          _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring tap gesture in %s.", &v25, 0x20u);
        }

        goto LABEL_19;
      }

      controlView6 = [(HUQuickControlInteractionCoordinator *)self controlView];
      reachabilityState = [controlView6 reachabilityState];

      if (reachabilityState == 1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

  if ([gestureCopy state] == 3)
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:1];
    [gestureCopy hu_locationInGlobalCoordinateSpace];
    v12 = v11;
    v14 = v13;
    v15 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _findClosestValueFromTouchLocation:?];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _sliderValueForLocation:v12, v14];
    v17 = v16;
    [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
    if (v15 == 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v18;
    }

    if (v15 == 2)
    {
      v19 = v17;
    }

    else
    {
      v18 = v20;
    }

    [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:1 notifyDelegate:v18, v19, v20];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:0];
  }

LABEL_19:
}

- (void)_beginReceivingTouchesWithGestureRecognizer:(id)recognizer isTouchContinuation:(BOOL)continuation
{
  continuationCopy = continuation;
  recognizerCopy = recognizer;
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:1];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setFirstTouchDown:continuationCopy];
  [recognizerCopy hu_locationInGlobalCoordinateSpace];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValueType:[(HUQuickControlElasticSliderInteractionCoordinator *)self _findClosestValueFromTouchLocation:?]];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v7 = v6;
  v9 = v8;
  activeGestureValueType = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  if (activeGestureValueType != 2)
  {
    if (activeGestureValueType == 1)
    {
      v9 = v7;
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat HURangeValueOfType(UIFloatRange, HUQuickControlRangeValueType)"}];
      [currentHandler handleFailureInFunction:v12 file:@"HUQuickControlRangeValueUtilities.h" lineNumber:31 description:@"Invalid range value type"];

      v9 = 1.79769313e308;
    }
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:v9];
  v13 = objc_opt_new();
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  [controlView bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  controlView2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v13 setControlFrame:{HUConvertRectToGlobalCoordinateSpace(controlView2, v16, v18, v20, v22)}];

  [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValue];
  [v13 setInitialSliderValue:?];
  viewProfile = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  [viewProfile gestureDragCoefficient];
  [v13 setVerticalDragCoefficient:?];

  [v13 setRequiresSomeMovementBeforeActivation:continuationCopy];
  v25 = [[HUQuickControlSliderGestureTransformer alloc] initWithGestureRecognizer:recognizerCopy context:v13];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setGestureTransformer:v25];

  LODWORD(v25) = [(HUQuickControlInteractionCoordinator *)self isUserInteractionEnabled];
  gestureTransformer = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [gestureTransformer setIgnoreTouches:v25 ^ 1];

  gestureTransformer2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [gestureTransformer2 setDelegate:self];

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupAllValueAppliersIfNecessary];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_rawViewValueRange
{
  v3 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
  [(HUElasticSliderValueNormalizationOptions *)v3 setApplyMinimumVisualRangeSpan:1];
  v4 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v3];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  [v4 normalizeRange:?];
  v6 = v5;
  v8 = v7;

  activeGestureValueType = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValue];
  if (activeGestureValueType == 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (activeGestureValueType == 2)
  {
    v8 = v10;
  }

  else
  {
    v6 = v11;
  }

  v12 = v6;
  v13 = v8;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (double)_sliderValueForLocation:(CGPoint)location
{
  y = location.y;
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  [controlView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  controlView2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v15 = HUConvertRectToGlobalCoordinateSpace(controlView2, v7, v9, v11, v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  Height = CGRectGetHeight(v24);
  v25.origin.x = v15;
  v25.origin.y = v17;
  v25.size.width = v19;
  v25.size.height = v21;
  return (CGRectGetMaxY(v25) - y) / Height;
}

- (unint64_t)_findClosestValueFromTouchLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (![(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    return 2;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _sliderValueForLocation:x, y];
  v7 = v6;
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v9 = vabdd_f64(v7, v8);
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  if (v9 < vabdd_f64(v7, v10))
  {
    return 1;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  if (v7 < v12)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (double)_rubberBandedStretchProgress
{
  primaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  [primaryValueSmoothingApplier progress];
  v5 = v4;

  secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  v7 = 0.0;
  v8 = 0.0;
  if (secondaryValueSmoothingApplier)
  {
    secondaryValueSmoothingApplier2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [secondaryValueSmoothingApplier2 progress];
    v8 = v10;
  }

  activeGestureValueType = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  activeGestureValueType2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  switch(activeGestureValueType2)
  {
    case 2uLL:
      v7 = v5;
      break;
    case 1uLL:
      v7 = v8;
      break;
    case 0uLL:
      v13 = fabs(v5 + -0.5);
      v14 = fabs(v8 + -0.5);
      if (v13 <= v14)
      {
        v7 = v8;
      }

      else
      {
        v7 = v5;
      }

      if (v13 <= v14)
      {
        activeGestureValueType = 1;
      }

      else
      {
        activeGestureValueType = 2;
      }

      break;
  }

  _rubberBandingValueNormalizer = [(HUQuickControlElasticSliderInteractionCoordinator *)self _rubberBandingValueNormalizer];
  [_rubberBandingValueNormalizer normalizeValue:activeGestureValueType ofType:v7];
  v17 = v16;

  return v17;
}

- (id)_rubberBandingValueNormalizer
{
  v3 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
  [(HUElasticSliderValueNormalizationOptions *)v3 setBoundingStrategy:2];
  [(HUElasticSliderValueNormalizationOptions *)v3 setApplyMinimumVisualRangeSpan:1];
  v4 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v3];

  return v4;
}

- (id)_valueNormalizerWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [HUElasticSliderValueNormalizer alloc];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v8 = [(HUElasticSliderValueNormalizer *)v5 initWithCurrentValueRange:[(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue] hasSecondaryValue:v6, v7];
  viewProfile = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  primaryValueConstraints = [viewProfile primaryValueConstraints];
  [(HUElasticSliderValueNormalizer *)v8 setMaxValueConstraints:primaryValueConstraints];

  viewProfile2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  secondaryValueConstraints = [viewProfile2 secondaryValueConstraints];
  [(HUElasticSliderValueNormalizer *)v8 setMinValueConstraints:secondaryValueConstraints];

  [(HUElasticSliderValueNormalizer *)v8 setOptions:optionsCopy];

  return v8;
}

- (id)_allAppliers
{
  v3 = objc_opt_new();
  primaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  [v3 na_safeAddObject:primaryValueSmoothingApplier];

  secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  [v3 na_safeAddObject:secondaryValueSmoothingApplier];

  controlHorizontalCompressionApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v3 na_safeAddObject:controlHorizontalCompressionApplier];

  controlVerticalStretchingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [v3 na_safeAddObject:controlVerticalStretchingApplier];

  return v3;
}

- (void)_setupAllValueAppliersIfNecessary
{
  primaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  v4 = __86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(primaryValueSmoothingApplier);

  if (v4)
  {
    v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupValueApplierForValueType:2];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setPrimaryValueSmoothingApplier:v5];
  }

  secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  if (__86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(secondaryValueSmoothingApplier))
  {
    hasSecondaryValue = [(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue];

    if (!hasSecondaryValue)
    {
      goto LABEL_7;
    }

    secondaryValueSmoothingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupValueApplierForValueType:1];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setSecondaryValueSmoothingApplier:secondaryValueSmoothingApplier];
  }

LABEL_7:
  controlHorizontalCompressionApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  v9 = __86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(controlHorizontalCompressionApplier);

  if (v9)
  {

    [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupStretchingAppliers];
  }
}

BOOL __86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 state])
    {
      v3 = [v2 state] != 1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)_setupValueApplierForValueType:(unint64_t)type
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke;
  v13[3] = &unk_277DB7BA8;
  v13[4] = self;
  v13[5] = type;
  [MEMORY[0x277D75D18] performWithoutAnimation:v13];
  objc_initWeak(&location, self);
  v5 = [HUElasticApplier alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_2;
  v10[3] = &unk_277DC0E50;
  objc_copyWeak(v11, &location);
  v11[1] = type;
  v6 = [(HUElasticApplier *)v5 initWithProgressInputBlock:v10];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:v6 ofType:type];
  [(HUElasticApplier *)v6 setProgressBeginsFromInitialInputProgress:1];
  [(HUElasticApplier *)v6 setCompletesWhenAtRest:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_3;
  v8[3] = &unk_277DC0E78;
  objc_copyWeak(v9, &location);
  v9[1] = type;
  [(HUApplier *)v6 addApplierBlock:v8];
  [(HUElasticApplier *)v6 start];
  objc_destroyWeak(v9);
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);

  return v6;
}

uint64_t __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _rawViewValueRange];
  v4 = *(a1 + 40);
  if (v4 == 2)
  {
    v2 = v3;
  }

  else if (v4 != 1)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat HURangeValueOfType(UIFloatRange, HUQuickControlRangeValueType)"}];
    [v5 handleFailureInFunction:v6 file:@"HUQuickControlRangeValueUtilities.h" lineNumber:31 description:@"Invalid range value type"];

    v4 = *(a1 + 40);
    v2 = 1.79769313e308;
  }

  v7 = *(a1 + 32);

  return [v7 _updateControlViewValueOfType:v4 withValue:v2];
}

double __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rawViewValueRange];
  v5 = *(a1 + 40);
  if (v5 == 2)
  {
    v6 = v4;
  }

  else if (v5 == 1)
  {
    v6 = v3;
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat HURangeValueOfType(UIFloatRange, HUQuickControlRangeValueType)"}];
    [v7 handleFailureInFunction:v8 file:@"HUQuickControlRangeValueUtilities.h" lineNumber:31 description:@"Invalid range value type"];

    v6 = 1.79769313e308;
  }

  return v6;
}

void __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_3(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _rubberBandingValueNormalizer];
  [v4 normalizeValue:*(a1 + 40) ofType:a2];
  v6 = v5;

  [WeakRetained _updateControlViewValueOfType:*(a1 + 40) withValue:v6];
}

- (void)_setupStretchingAppliers
{
  objc_initWeak(&location, self);
  v3 = [HUElasticApplier alloc];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke;
  v22[3] = &unk_277DC0EA0;
  objc_copyWeak(&v23, &location);
  v4 = [(HUElasticApplier *)v3 initWithProgressInputBlock:v22];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setControlHorizontalCompressionApplier:v4];

  controlHorizontalCompressionApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [controlHorizontalCompressionApplier setProgressBeginsFromInitialInputProgress:1];

  controlHorizontalCompressionApplier2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [controlHorizontalCompressionApplier2 setTension:300.0];

  controlHorizontalCompressionApplier3 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [controlHorizontalCompressionApplier3 setFriction:100.0];

  controlHorizontalCompressionApplier4 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [controlHorizontalCompressionApplier4 setCompletesWhenAtRest:0];

  controlHorizontalCompressionApplier5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_2;
  v20[3] = &unk_277DB7968;
  objc_copyWeak(&v21, &location);
  [controlHorizontalCompressionApplier5 addApplierBlock:v20];

  controlHorizontalCompressionApplier6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [controlHorizontalCompressionApplier6 start];

  v11 = [HUDisplayLinkApplier alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_3;
  v18[3] = &unk_277DC0EC8;
  objc_copyWeak(&v19, &location);
  v12 = [(HUDisplayLinkApplier *)v11 initWithProgressInputBlock:v18];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setControlVerticalStretchingApplier:v12];

  controlVerticalStretchingApplier = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [controlVerticalStretchingApplier setCompletesWhenAtRest:0];

  controlVerticalStretchingApplier2 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_4;
  v16[3] = &unk_277DB7968;
  objc_copyWeak(&v17, &location);
  [controlVerticalStretchingApplier2 addApplierBlock:v16];

  controlVerticalStretchingApplier3 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [controlVerticalStretchingApplier3 start];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

double __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rubberBandedStretchProgress];
  v3 = v2;

  return v3;
}

void __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  v4 = fabs(a2);
  if (a2 >= 0.0)
  {
    v4 = 0.0;
  }

  if (a2 > 1.0)
  {
    v5 = a2 + -1.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 / 0.16 * 0.08 + 0.0;
  v7 = [WeakRetained delegate];
  [v7 interactionCoordinator:v8 updateControlHorizontalCompressionFactor:v6];
}

double __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rubberBandedStretchProgress];
  v3 = v2;

  return v3;
}

void __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_4(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  v4 = 0.0;
  if (a2 < 0.0)
  {
    v4 = a2;
  }

  if (a2 > 1.0)
  {
    v5 = a2 + -1.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [WeakRetained delegate];
  [v6 interactionCoordinator:v7 updateControlVerticalStretchFactor:v5];
}

- (void)_updatePropertiesForControlValueSmoothingApplier:(id)applier ofType:(unint64_t)type
{
  if (applier)
  {
    applierCopy = applier;
    [applierCopy progress];
    v8 = v7;
    v16 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
    [(HUElasticSliderValueNormalizationOptions *)v16 setApplyMinimumVisualRangeSpan:1];
    v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v16];
    [v9 normalizeValue:type ofType:v8];
    v11 = v10;

    isUserInteractionActive = [(HUQuickControlElasticSliderInteractionCoordinator *)self isUserInteractionActive];
    v13 = vabdd_f64(v11, v8) >= 0.00000011920929 || isUserInteractionActive;
    v14 = 40.0;
    if (v13)
    {
      v15 = 700.0;
    }

    else
    {
      v14 = 20.0;
      v15 = 180.0;
    }

    [applierCopy setFriction:v14];
    [applierCopy setTension:v15];
  }
}

- (void)gestureTransformer:(id)transformer sliderValueDidChange:(double)change
{
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:transformer];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v7 = v6;
  v9 = v8;
  activeGestureValueType = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  if (activeGestureValueType == 1)
  {
    changeCopy = change;
  }

  else
  {
    changeCopy = v7;
  }

  if (activeGestureValueType == 2)
  {
    changeCopy = v7;
    changeCopy2 = change;
  }

  else
  {
    changeCopy2 = v9;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:0 roundValue:1 notifyDelegate:changeCopy, changeCopy2];
}

- (void)gestureDidEndForGestureTransformer:(id)transformer
{
  transformerCopy = transformer;
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:1 notifyDelegate:?];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:0];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setGestureTransformer:0];
  hasRecognizedSignificantSliderValueChange = [transformerCopy hasRecognizedSignificantSliderValueChange];

  if (hasRecognizedSignificantSliderValueChange)
  {
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    if ([delegate hasModelValueChangedForInteractionCoordinator:self])
    {
      isFirstTouchDown = [(HUQuickControlElasticSliderInteractionCoordinator *)self isFirstTouchDown];

      if (!isFirstTouchDown)
      {
        goto LABEL_6;
      }

      delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
      [delegate interactionCoordinatorWantsDismissal:self];
    }
  }

LABEL_6:
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setFirstTouchDown:0];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValueType:0];

  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:0.0];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  panGestureRecognizer = [(HUQuickControlElasticSliderInteractionCoordinator *)self panGestureRecognizer];

  if (panGestureRecognizer == recognizerCopy)
  {
    tapGestureRecognizer = [(HUQuickControlElasticSliderInteractionCoordinator *)self tapGestureRecognizer];
    v9 = tapGestureRecognizer == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)modelValue
{
  minimum = self->_modelValue.minimum;
  maximum = self->_modelValue.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end