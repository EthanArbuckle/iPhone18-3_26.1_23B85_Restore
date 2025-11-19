@interface HUQuickControlRingSliderInteractionCoordinator
- ($F24F406B2B787EFB06265DBA3D28CBD5)modelRangeValue;
- (BOOL)isUserInteractionActive;
- (HUQuickControlIncrementalConvertibleProfile)viewProfile;
- (HUQuickControlRingSliderInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4;
- (id)value;
- (void)_updateControlViewValueOfType:(unint64_t)a3 withValue:(double)a4;
- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)beginUserInteractionWithFirstTouchGestureRecognizer:(id)a3;
- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5;
- (void)controlView:(id)a3 valueDidChange:(id)a4;
- (void)setUserInteractionActive:(BOOL)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation HUQuickControlRingSliderInteractionCoordinator

- (HUQuickControlRingSliderInteractionCoordinator)initWithControlView:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = HUQuickControlRingSliderInteractionCoordinator;
  v7 = [(HUQuickControlInteractionCoordinator *)&v13 initWithControlView:v6 delegate:a4];
  v8 = v7;
  if (v7)
  {
    *(v7 + 40) = HUFloatRangeNormal_0;
    [v6 setInteractionDelegate:v7];
    objc_opt_class();
    v9 = [(HUQuickControlRingSliderInteractionCoordinator *)v8 viewProfile];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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
  if (![(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self setUserInteractionActive:1];

    [(HUQuickControlRingSliderInteractionCoordinator *)self setFirstTouchDown:1];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HUQuickControlRingSliderInteractionCoordinator;
  [(HUQuickControlInteractionCoordinator *)&v5 setUserInteractionEnabled:?];
  if (!a3)
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self setUserInteractionActive:0];
  }
}

- (BOOL)isUserInteractionActive
{
  v2 = [(HUQuickControlInteractionCoordinator *)self controlView];
  v3 = [v2 isUserInteractionActive];

  return v3;
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

- (void)setValue:(id)a3
{
  v17 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v17;
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
      v12 = [v6 midValue];
      [v12 doubleValue];
      v10 = v13;

      v8 = 0.0;
    }
  }

  else
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self setHasSecondaryValue:0];
    [v17 doubleValue];
    v10 = v11;
    v8 = 0.0;
  }

  [(HUQuickControlRingSliderInteractionCoordinator *)self _updateModelValue:1 roundValue:0 notifyDelegate:v8, v10];
  v14 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v14 updateMainStatusStringWithValue:v17];

  v15 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v15 updateSupplementaryValue];

  [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
  [(HUQuickControlRingSliderInteractionCoordinator *)self _updateControlViewValueOfType:2 withValue:v16];
  if ([(HUQuickControlRingSliderInteractionCoordinator *)self hasSecondaryValue])
  {
    [(HUQuickControlRingSliderInteractionCoordinator *)self modelRangeValue];
    [(HUQuickControlRingSliderInteractionCoordinator *)self _updateControlViewValueOfType:1 withValue:?];
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

- (void)_updateModelValue:(id)a3 roundValue:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v5 = a5;
  [(HUQuickControlRingSliderInteractionCoordinator *)self setModelRangeValue:a4, a3.var0, a3.var1];
  if (v5 && [(HUQuickControlRingSliderInteractionCoordinator *)self isUserInteractionActive])
  {
    v8 = [(HUQuickControlInteractionCoordinator *)self delegate];
    v7 = [(HUQuickControlRingSliderInteractionCoordinator *)self value];
    [v8 interactionCoordinator:self viewValueDidChange:v7];
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
    [v7 handleFailureInMethod:a2 object:self file:@"HUQuickControlRingSliderInteractionCoordinator.m" lineNumber:151 description:@"Invalid control view value type!"];
  }
}

- (void)controlView:(id)a3 valueDidChange:(id)a4
{
  v16 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = v16;
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
      v13 = [v7 midValue];
      [v13 doubleValue];
      v11 = v14;

      v9 = 0.0;
    }
  }

  else
  {
    [v16 doubleValue];
    v11 = v12;
    v9 = 0.0;
  }

  [(HUQuickControlRingSliderInteractionCoordinator *)self setModelRangeValue:v9, v11];
  v15 = [(HUQuickControlInteractionCoordinator *)self delegate];
  [v15 interactionCoordinator:self viewValueDidChange:v16];
}

- (void)controlView:(id)a3 interactionStateDidChange:(BOOL)a4 forFirstTouch:(BOOL)a5
{
  v5 = a4;
  v7 = [(HUQuickControlInteractionCoordinator *)self delegate:a3];
  [v7 interactionCoordinator:self interactionStateDidChange:v5];
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