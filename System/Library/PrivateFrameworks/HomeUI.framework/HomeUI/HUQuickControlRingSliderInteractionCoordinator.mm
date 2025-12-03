@interface HUQuickControlRingSliderInteractionCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)modelRangeValue;
- (BOOL)isUserInteractionActive;
- (HUQuickControlIncrementalConvertibleProfile)viewProfile;
- (HUQuickControlRingSliderInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate;
- (id)value;
- (void)_updateControlViewValueOfType:(unint64_t)type withValue:(double)value;
- (void)_updateModelValue:(id)value roundValue:(BOOL)roundValue notifyDelegate:(BOOL)delegate;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)recognizer;
- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch;
- (void)controlView:(id)view valueDidChange:(id)change;
- (void)setUserInteractionActive:(BOOL)active;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setValue:(id)value;
@end

@implementation HUQuickControlRingSliderInteractionCoordinator

- (HUQuickControlRingSliderInteractionCoordinator)initWithControlView:(id)view delegate:(id)delegate
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = HUQuickControlRingSliderInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v13 initWithControlView:viewCopy delegate:delegate];
  v8 = v7;
  if (v7)
  {
    *(v7 + 40) = HUFloatRangeNormal_0;
    [viewCopy setInteractionDelegate:v7];
    objc_opt_class();
    viewProfile = [(HUQuickControlRingSliderInteractionCoordinator *)v8 viewProfile];
    if (objc_opt_isKindOfClass())
    {
      v10 = viewProfile;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v8->_hasSecondaryValue = [v11 hasSecondaryValue];
    }

    else
    {
      v8->_hasSecondaryValue = 0;
    }
  }

  return v8;
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
  if (![(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self setUserInteractionActive:1];

    [(HUQuickControlRingSliderInteractionCoordinator *)self setFirstTouchDown:1];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = HUQuickControlRingSliderInteractionCoordinator;
  [(HUQuickControlInteractionCoordinator *)&v5 setUserInteractionEnabled:?];
  if (!enabled)
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self setUserInteractionActive:0];
  }
}

- (BOOL)isUserInteractionActive
{
  controlView = [(HUQuickControlInteractionCoordinator *)self controlView];
  isUserInteractionActive = [controlView isUserInteractionActive];

  return isUserInteractionActive;
}

- (id)value
{
  if ([(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    v3 = MEMORY[0x277D148D8];
    [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
    [v3 rangeWithFloatRange:?];
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
    [v5 numberWithDouble:v6];
  }
  v4 = ;

  return v4;
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

    -[HUQuickControlRingSliderInteractionCoordinator setHasSecondaryValue:](self, "setHasSecondaryValue:", [v6 type] == 1);
    if ([(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
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
    [(HUQuickControlRingSliderInteractionCoordinator *)self setHasSecondaryValue:0];
    [valueCopy doubleValue];
    v10 = v11;
    v8 = 0.0;
  }

  [(HUQuickControlRingSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:0 notifyDelegate:v8, v10];
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate updateMainStatusStringWithValue:valueCopy];

  delegate2 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate2 updateSupplementaryValue];

  [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
  [(HUQuickControlRingSliderInteractionCoordinator *)self _updateControlViewValueOfType:2 withValue:v16];
  if ([(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
    [(HUQuickControlRingSliderInteractionCoordinator *)self _updateControlViewValueOfType:1 withValue:?];
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

- (void)_updateModelValue:(id)value roundValue:(BOOL)roundValue notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  [(HUQuickControlRingSliderInteractionCoordinator *)self setModelRangeValue:roundValue, value.var0, value.var1];
  if (delegateCopy && [(HUQuickControlRingSliderInteractionCoordinator *)self isUserInteractionActive])
  {
    delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
    value = [(HUQuickControlRingSliderInteractionCoordinator *)self value];
    [delegate interactionCoordinator:self viewValueDidChange:value];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlRingSliderInteractionCoordinator.m" lineNumber:151 description:@"Invalid control view value type!"];
  }
}

- (void)controlView:(id)view valueDidChange:(id)change
{
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = changeCopy;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if ([v7 type] == 1)
    {
      [v7 floatRangeValue];
      v9 = v8;
      v11 = v10;
    }

    else
    {
      midValue = [v7 midValue];
      [midValue doubleValue];
      v11 = v14;

      v9 = 0.0;
    }
  }

  else
  {
    [changeCopy doubleValue];
    v11 = v12;
    v9 = 0.0;
  }

  [(HUQuickControlRingSliderInteractionCoordinator *)self setModelRangeValue:v9, v11];
  delegate = [(HUQuickControlInteractionCoordinator *)self delegate];
  [delegate interactionCoordinator:self viewValueDidChange:changeCopy];
}

- (void)controlView:(id)view interactionStateDidChange:(BOOL)change forFirstTouch:(BOOL)touch
{
  changeCopy = change;
  v7 = [(HUQuickControlInteractionCoordinator *)self delegate:view];
  [v7 interactionCoordinator:self interactionStateDidChange:changeCopy];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)modelRangeValue
{
  minimum = self->_modelRangeValue.minimum;
  maximum = self->_modelRangeValue.maximum;
  result.var1 = maximum;
  result.var0 = minimum;
  return result;
}

@end