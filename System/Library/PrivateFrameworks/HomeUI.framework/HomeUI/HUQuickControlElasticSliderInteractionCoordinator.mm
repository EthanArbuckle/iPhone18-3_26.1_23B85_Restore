@interface HUQuickControlElasticSliderInteractionCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)_rawViewValueRange;
- ($F24F406B2B787EFB06265DBA3D28CBD5)modelValue;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (HUQuickControlElasticSliderInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4;
- (HUQuickControlIncrementalConvertibleProfile)viewProfile;
- (double)_rubberBandedStretchProgress;
- (double)_sliderValueForLocation:(CGPoint)a3;
- (id)_allAppliers;
- (id)_rubberBandingValueNormalizer;
- (id)_setupValueApplierForValueType:(unint64_t)a3;
- (id)_valueNormalizerWithOptions:(id)a3;
- (id)value;
- (unint64_t)_findClosestValueFromTouchLocation:(CGPoint)a3;
- (void)_beginReceivingTouchesWithGestureRecognizer:(id)a3 isTouchContinuation:(BOOL)a4;
- (void)_handleControlPanGesture:(id)a3;
- (void)_handleControlTapGesture:(id)a3;
- (void)_setupAllValueAppliersIfNecessary;
- (void)_setupStretchingAppliers;
- (void)_updateControlViewValueOfType:(unint64_t)a3 withValue:(double)a4;
- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_updatePropertiesForControlValueSmoothingApplier:(id)a3 ofType:(unint64_t)a4;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)dealloc;
- (void)gestureDidEndForGestureTransformer:(id)a3;
- (void)gestureTransformer:(id)a3 sliderValueDidChange:(double)a4;
- (void)recordInteractionStart;
- (void)setActiveGestureValue:(double)a3;
- (void)setHasSecondaryValue:(BOOL)a3;
- (void)setUserInteractionActive:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)setViewVisible:(BOOL)a3;
@end

@implementation HUQuickControlElasticSliderInteractionCoordinator

- (HUQuickControlElasticSliderInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v19 initWithControlView:v6 delegate:a4];
  v8 = v7;
  if (v7)
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)v7 setModelValue:0.0, 1.0];
    v9 = objc_alloc_init(MEMORY[0x277D75708]);
    [(HUQuickControlElasticSliderInteractionCoordinator *)v8 setPanGestureRecognizer:v9];

    v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [v10 setDelegate:v8];

    v11 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [v11 setMinimumPressDuration:0.0];

    v12 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [v12 addTarget:v8 action:sel__handleControlPanGesture_];

    v13 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 panGestureRecognizer];
    [v6 addGestureRecognizer:v13];

    v14 = objc_alloc_init(MEMORY[0x277D75B80]);
    [(HUQuickControlElasticSliderInteractionCoordinator *)v8 setTapGestureRecognizer:v14];

    v15 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [v15 setAllowableMovement:5.0];

    v16 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [v16 addTarget:v8 action:sel__handleControlTapGesture_];

    v17 = [(HUQuickControlElasticSliderInteractionCoordinator *)v8 tapGestureRecognizer];
    [v6 addGestureRecognizer:v17];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _allAppliers];
  [v3 na_each:&__block_literal_global_196];

  v4.receiver = self;
  v4.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  [(HUQuickControlElasticSliderInteractionCoordinator *)&v4 dealloc];
}

- (HUQuickControlIncrementalConvertibleProfile)viewProfile
{
  v2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v3 = [v2 profile];
  v4 = &unk_282582800;
  v5 = v3;
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

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v11 = NSStringFromProtocol(v4);
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v11}];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3
{
  v4 = a3;
  if (![(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _beginReceivingTouchesWithGestureRecognizer:v4 isTouchContinuation:1];
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

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HUQuickControlElasticSliderInteractionCoordinator;
  [(HUQuickControlInteractionCoordinator *)&v6 setUserInteractionEnabled:?];
  v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [v5 setIgnoreTouches:!v3];

  if (!v3)
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

- (void)setValue:(id)a3
{
  v14 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v14;
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
      v12 = [v6 midValue];
      [v12 doubleValue];
      v10 = v13;
      v8 = 0.0;
    }
  }

  else
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setHasSecondaryValue:0];
    [v14 doubleValue];
    v10 = v11;
    v8 = 0.0;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:0 notifyDelegate:v8, v10];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupAllValueAppliersIfNecessary];
}

- (void)setHasSecondaryValue:(BOOL)a3
{
  self->_hasSecondaryValue = a3;
  if (!a3)
  {
    v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [v5 cancel];

    [(HUQuickControlElasticSliderInteractionCoordinator *)self setSecondaryValueSmoothingApplier:0];
  }
}

- (void)setUserInteractionActive:(BOOL)a3
{
  if (self->_userInteractionActive != a3)
  {
    v4 = a3;
    self->_userInteractionActive = a3;
    v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
    [v6 interactionCoordinator:self interactionStateDidChange:v4];
  }
}

- (void)setViewVisible:(BOOL)a3
{
  v3 = a3;
  if ([(HUQuickControlInteractionCoordinator *)self viewVisible]!= a3)
  {
    v6.receiver = self;
    v6.super_class = HUQuickControlElasticSliderInteractionCoordinator;
    [(HUQuickControlInteractionCoordinator *)&v6 setViewVisible:v3];
    if (!v3)
    {
      v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _allAppliers];
      [v5 na_each:&__block_literal_global_67_1];
    }
  }
}

- (void)setActiveGestureValue:(double)a3
{
  if (self->_activeGestureValue != a3)
  {
    self->_activeGestureValue = a3;
    v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:v5 ofType:2];

    v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:v6 ofType:1];
  }
}

- (void)_updateControlViewValueOfType:(unint64_t)a3 withValue:(double)a4
{
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
      [v5 setSecondaryValue:v7];
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      v7 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
      v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
      [v5 setValue:v7];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUQuickControlElasticSliderInteractionCoordinator.m" lineNumber:212 description:@"Invalid control view value type!"];
  }
}

- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  var1 = a3.var1;
  var0 = a3.var0;
  v13 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
  [(HUElasticSliderValueNormalizationOptions *)v13 setBoundingStrategy:1];
  [(HUElasticSliderValueNormalizationOptions *)v13 setApplyStepValue:v6];
  v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v13];
  [v10 normalizeRange:{var0, var1}];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setModelValue:?];
  if (v5)
  {
    v11 = [(HUQuickControlInteractionCoordinator *)self delegate];
    v12 = [(HUQuickControlElasticSliderInteractionCoordinator *)self value];
    [v11 interactionCoordinator:self viewValueDidChange:v12];
  }
}

- (void)_handleControlPanGesture:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
  if ([v5 conformsToProtocol:&unk_2824F3238])
  {
    v6 = [(HUQuickControlInteractionCoordinator *)self controlView];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(HUQuickControlInteractionCoordinator *)self controlView];
      if (![v8 reachabilityState])
      {

LABEL_13:
        v14 = [(HUQuickControlInteractionCoordinator *)self controlView];
        v15 = HUQuickControlReachabilityString([v14 reachabilityState]);

        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(HUQuickControlInteractionCoordinator *)self controlView];
          v18 = 138412802;
          v19 = v17;
          v20 = 2112;
          v21 = v15;
          v22 = 2080;
          v23 = "[HUQuickControlElasticSliderInteractionCoordinator _handleControlPanGesture:]";
          _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring pan gesture in %s.", &v18, 0x20u);
        }

        goto LABEL_16;
      }

      v9 = [(HUQuickControlInteractionCoordinator *)self controlView];
      v10 = [v9 reachabilityState];

      if (v10 == 1)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  if ([v4 state] == 1)
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

    [(HUQuickControlElasticSliderInteractionCoordinator *)self _beginReceivingTouchesWithGestureRecognizer:v4 isTouchContinuation:v13];
  }

LABEL_16:
}

- (void)_handleControlTapGesture:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
  if ([v5 conformsToProtocol:&unk_2824F3238])
  {
    v6 = [(HUQuickControlInteractionCoordinator *)self controlView];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(HUQuickControlInteractionCoordinator *)self controlView];
      if (![v8 reachabilityState])
      {

LABEL_16:
        v21 = [(HUQuickControlInteractionCoordinator *)self controlView];
        v22 = HUQuickControlReachabilityString([v21 reachabilityState]);

        v23 = HFLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(HUQuickControlInteractionCoordinator *)self controlView];
          v25 = 138412802;
          v26 = v24;
          v27 = 2112;
          v28 = v22;
          v29 = 2080;
          v30 = "[HUQuickControlElasticSliderInteractionCoordinator _handleControlTapGesture:]";
          _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring tap gesture in %s.", &v25, 0x20u);
        }

        goto LABEL_19;
      }

      v9 = [(HUQuickControlInteractionCoordinator *)self controlView];
      v10 = [v9 reachabilityState];

      if (v10 == 1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

  if ([v4 state] == 3)
  {
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:1];
    [v4 hu_locationInGlobalCoordinateSpace];
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

- (void)_beginReceivingTouchesWithGestureRecognizer:(id)a3 isTouchContinuation:(BOOL)a4
{
  v4 = a4;
  v28 = a3;
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:1];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setFirstTouchDown:v4];
  [v28 hu_locationInGlobalCoordinateSpace];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValueType:[(HUQuickControlElasticSliderInteractionCoordinator *)self _findClosestValueFromTouchLocation:?]];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v7 = v6;
  v9 = v8;
  v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      v9 = v7;
    }

    else
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat HURangeValueOfType(UIFloatRange, HUQuickControlRangeValueType)"}];
      [v11 handleFailureInFunction:v12 file:@"HUQuickControlRangeValueUtilities.h" lineNumber:31 description:@"Invalid range value type"];

      v9 = 1.79769313e308;
    }
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:v9];
  v13 = objc_opt_new();
  v14 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v13 setControlFrame:{HUConvertRectToGlobalCoordinateSpace(v23, v16, v18, v20, v22)}];

  [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValue];
  [v13 setInitialSliderValue:?];
  v24 = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  [v24 gestureDragCoefficient];
  [v13 setVerticalDragCoefficient:?];

  [v13 setRequiresSomeMovementBeforeActivation:v4];
  v25 = [[HUQuickControlSliderGestureTransformer alloc] initWithGestureRecognizer:v28 context:v13];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setGestureTransformer:v25];

  LODWORD(v25) = [(HUQuickControlInteractionCoordinator *)self isUserInteractionEnabled];
  v26 = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [v26 setIgnoreTouches:v25 ^ 1];

  v27 = [(HUQuickControlElasticSliderInteractionCoordinator *)self gestureTransformer];
  [v27 setDelegate:self];

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

  v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValue];
  if (v9 == 1)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v9 == 2)
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

- (double)_sliderValueForLocation:(CGPoint)a3
{
  y = a3.y;
  v5 = [(HUQuickControlInteractionCoordinator *)self controlView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v15 = HUConvertRectToGlobalCoordinateSpace(v14, v7, v9, v11, v13);
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

- (unint64_t)_findClosestValueFromTouchLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
  v3 = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  [v3 progress];
  v5 = v4;

  v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  v7 = 0.0;
  v8 = 0.0;
  if (v6)
  {
    v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
    [v9 progress];
    v8 = v10;
  }

  v11 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  v12 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  switch(v12)
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
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      break;
  }

  v15 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _rubberBandingValueNormalizer];
  [v15 normalizeValue:v11 ofType:v7];
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

- (id)_valueNormalizerWithOptions:(id)a3
{
  v4 = a3;
  v5 = [HUElasticSliderValueNormalizer alloc];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v8 = [(HUElasticSliderValueNormalizer *)v5 initWithCurrentValueRange:[(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue] hasSecondaryValue:v6, v7];
  v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  v10 = [v9 primaryValueConstraints];
  [(HUElasticSliderValueNormalizer *)v8 setMaxValueConstraints:v10];

  v11 = [(HUQuickControlElasticSliderInteractionCoordinator *)self viewProfile];
  v12 = [v11 secondaryValueConstraints];
  [(HUElasticSliderValueNormalizer *)v8 setMinValueConstraints:v12];

  [(HUElasticSliderValueNormalizer *)v8 setOptions:v4];

  return v8;
}

- (id)_allAppliers
{
  v3 = objc_opt_new();
  v4 = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  [v3 na_safeAddObject:v4];

  v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  [v3 na_safeAddObject:v5];

  v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v3 na_safeAddObject:v6];

  v7 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [v3 na_safeAddObject:v7];

  return v3;
}

- (void)_setupAllValueAppliersIfNecessary
{
  v3 = [(HUQuickControlElasticSliderInteractionCoordinator *)self primaryValueSmoothingApplier];
  v4 = __86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(v3);

  if (v4)
  {
    v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupValueApplierForValueType:2];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setPrimaryValueSmoothingApplier:v5];
  }

  v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self secondaryValueSmoothingApplier];
  if (__86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(v6))
  {
    v7 = [(HUQuickControlElasticSliderInteractionCoordinator *)self hasSecondaryValue];

    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _setupValueApplierForValueType:1];
    [(HUQuickControlElasticSliderInteractionCoordinator *)self setSecondaryValueSmoothingApplier:v6];
  }

LABEL_7:
  v8 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  v9 = __86__HUQuickControlElasticSliderInteractionCoordinator__setupAllValueAppliersIfNecessary__block_invoke(v8);

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

- (id)_setupValueApplierForValueType:(unint64_t)a3
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke;
  v13[3] = &unk_277DB7BA8;
  v13[4] = self;
  v13[5] = a3;
  [MEMORY[0x277D75D18] performWithoutAnimation:v13];
  objc_initWeak(&location, self);
  v5 = [HUElasticApplier alloc];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_2;
  v10[3] = &unk_277DC0E50;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v6 = [(HUElasticApplier *)v5 initWithProgressInputBlock:v10];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updatePropertiesForControlValueSmoothingApplier:v6 ofType:a3];
  [(HUElasticApplier *)v6 setProgressBeginsFromInitialInputProgress:1];
  [(HUElasticApplier *)v6 setCompletesWhenAtRest:0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HUQuickControlElasticSliderInteractionCoordinator__setupValueApplierForValueType___block_invoke_3;
  v8[3] = &unk_277DC0E78;
  objc_copyWeak(v9, &location);
  v9[1] = a3;
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

  v5 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v5 setProgressBeginsFromInitialInputProgress:1];

  v6 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v6 setTension:300.0];

  v7 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v7 setFriction:100.0];

  v8 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v8 setCompletesWhenAtRest:0];

  v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_2;
  v20[3] = &unk_277DB7968;
  objc_copyWeak(&v21, &location);
  [v9 addApplierBlock:v20];

  v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlHorizontalCompressionApplier];
  [v10 start];

  v11 = [HUDisplayLinkApplier alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_3;
  v18[3] = &unk_277DC0EC8;
  objc_copyWeak(&v19, &location);
  v12 = [(HUDisplayLinkApplier *)v11 initWithProgressInputBlock:v18];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setControlVerticalStretchingApplier:v12];

  v13 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [v13 setCompletesWhenAtRest:0];

  v14 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__HUQuickControlElasticSliderInteractionCoordinator__setupStretchingAppliers__block_invoke_4;
  v16[3] = &unk_277DB7968;
  objc_copyWeak(&v17, &location);
  [v14 addApplierBlock:v16];

  v15 = [(HUQuickControlElasticSliderInteractionCoordinator *)self controlVerticalStretchingApplier];
  [v15 start];

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

- (void)_updatePropertiesForControlValueSmoothingApplier:(id)a3 ofType:(unint64_t)a4
{
  if (a3)
  {
    v6 = a3;
    [v6 progress];
    v8 = v7;
    v16 = objc_alloc_init(HUElasticSliderValueNormalizationOptions);
    [(HUElasticSliderValueNormalizationOptions *)v16 setApplyMinimumVisualRangeSpan:1];
    v9 = [(HUQuickControlElasticSliderInteractionCoordinator *)self _valueNormalizerWithOptions:v16];
    [v9 normalizeValue:a4 ofType:v8];
    v11 = v10;

    v12 = [(HUQuickControlElasticSliderInteractionCoordinator *)self isUserInteractionActive];
    v13 = vabdd_f64(v11, v8) >= 0.00000011920929 || v12;
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

    [v6 setFriction:v14];
    [v6 setTension:v15];
  }
}

- (void)gestureTransformer:(id)a3 sliderValueDidChange:(double)a4
{
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:a3];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  v7 = v6;
  v9 = v8;
  v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self activeGestureValueType];
  if (v10 == 1)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (v10 == 2)
  {
    v11 = v7;
    v12 = a4;
  }

  else
  {
    v12 = v9;
  }

  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:0 roundValue:1 notifyDelegate:v11, v12];
}

- (void)gestureDidEndForGestureTransformer:(id)a3
{
  v4 = a3;
  [(HUQuickControlElasticSliderInteractionCoordinator *)self modelValue];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:1 notifyDelegate:?];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setUserInteractionActive:0];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setGestureTransformer:0];
  v5 = [v4 hasRecognizedSignificantSliderValueChange];

  if (v5)
  {
    v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
    if ([v6 hasModelValueChangedForInteractionCoordinator:self])
    {
      v7 = [(HUQuickControlElasticSliderInteractionCoordinator *)self isFirstTouchDown];

      if (!v7)
      {
        goto LABEL_6;
      }

      v6 = [(HUQuickControlInteractionCoordinator *)self delegate];
      [v6 interactionCoordinatorWantsDismissal:self];
    }
  }

LABEL_6:
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setFirstTouchDown:0];
  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValueType:0];

  [(HUQuickControlElasticSliderInteractionCoordinator *)self setActiveGestureValue:0.0];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUQuickControlElasticSliderInteractionCoordinator *)self panGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(HUQuickControlElasticSliderInteractionCoordinator *)self tapGestureRecognizer];
    v9 = v10 == v6;
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