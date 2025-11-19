@interface HUColorPickerView
- ($01BB1521EC52D44A8E7628F5261DCEC8)selectedColor;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedColorCoordinate;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGPoint)magnifierLocation;
- (HUColorPickerView)initWithProfile:(id)a3;
- (HUColorWheelSpace)colorWheelSpace;
- (HUQuickControlColorPickerViewInteractionDelegate)interactionDelegate;
- (double)wheelHoleRadius;
- (id)_colorWheelSpaceForMode:(unint64_t)a3;
- (id)value;
- (void)_applyMirroringAxisBiasToColorWheelSpaceIfNecessary;
- (void)_handleGesture:(id)a3;
- (void)_updateDerivedSelectedColorCoordinate;
- (void)_updateMagnifierPosition;
- (void)_updateMagnifierTransformForTouchLocation:(CGPoint)a3;
- (void)_updateMagnifierView;
- (void)_updateMirroringAxisBiasIfNecessary;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setColorPickerMode:(unint64_t)a3;
- (void)setMagnifierLocation:(CGPoint)a3;
- (void)setReachabilityState:(unint64_t)a3;
- (void)setSelectedColor:(id)a3;
- (void)setSelectedColorCoordinate:(id)a3;
- (void)setUserInteractionActive:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)setWheelHoleRadius:(double)a3;
@end

@implementation HUColorPickerView

- (HUColorPickerView)initWithProfile:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = HUColorPickerView;
  v6 = [(HUColorPickerView *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    v7->_colorPickerMode = [v5 supportsRGBColor] ^ 1;
    v7->_mirroringAxisBias = 0;
    *&v7->_selectedColor.r = HUWheelColorInvalid;
    *&v7->_selectedColor.b = *&qword_20D5CAFE0;
    v7->_selectedColorCoordinate = HUColorWheelNullCoordinate;
    v8 = [(HUColorPickerView *)v7 _colorWheelSpaceForMode:[(HUColorPickerView *)v7 colorPickerMode]];
    v9 = [[HUColorWheelView alloc] initWithColorWheelSpace:v8];
    [(HUColorPickerView *)v7 setColorWheelView:v9];

    v10 = [(HUColorPickerView *)v7 colorWheelView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(HUColorPickerView *)v7 colorWheelView];
    [(HUColorPickerView *)v7 addSubview:v11];

    v12 = objc_alloc_init(HUQuickControlMagnifierView);
    [(HUColorPickerView *)v7 setMagnifierView:v12];

    v13 = [(HUColorPickerView *)v7 magnifierView];
    [v13 sizeToFit];

    v14 = [(HUColorPickerView *)v7 magnifierView];
    [(HUColorPickerView *)v7 addSubview:v14];

    [(HUColorPickerView *)v7 _updateMagnifierPosition];
    v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleGesture_];
    [(HUColorPickerView *)v7 setGestureRecognizer:v15];

    v16 = [(HUColorPickerView *)v7 gestureRecognizer];
    [v16 setDelegate:v7];

    v17 = [(HUColorPickerView *)v7 gestureRecognizer];
    [v17 setMinimumPressDuration:0.0];

    v18 = [(HUColorPickerView *)v7 gestureRecognizer];
    [(HUColorPickerView *)v7 addGestureRecognizer:v18];
  }

  return v7;
}

- (HUColorWheelSpace)colorWheelSpace
{
  v2 = [(HUColorPickerView *)self colorWheelView];
  v3 = [v2 colorWheelSpace];

  return v3;
}

- (double)wheelHoleRadius
{
  v2 = [(HUColorPickerView *)self colorWheelView];
  [v2 wheelHoleRadius];
  v4 = v3;

  return v4;
}

- (void)setWheelHoleRadius:(double)a3
{
  v5 = [(HUColorPickerView *)self colorWheelView];
  [v5 setWheelHoleRadius:a3];

  [(HUColorPickerView *)self _updateMagnifierView];
}

- (void)setSelectedColor:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  self->_selectedColor = a3;
  [(HUColorPickerView *)self _updateMagnifierView];
  v9 = UIColorForHUWheelColor(var0, var1, var2, var3);
  v8 = [(HUColorPickerView *)self magnifierView];
  [v8 setSelectedColor:v9];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      return;
    }

    v5 = 0;
    v4 = 1;
    v6 = 1.0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    v6 = 0.5;
  }

  [(HUColorPickerView *)self setAlpha:v6];
  [(HUColorPickerView *)self setUserInteractionEnabled:v4];
  v7 = [(HUColorPickerView *)self magnifierView];
  [v7 setHidden:v5];
}

- (void)_updateMagnifierView
{
  [(HUColorPickerView *)self magnifierLength];
  if (v3 <= 0.0)
  {
    v7 = [(HUColorPickerView *)self colorWheelView];
    [v7 wheelHoleRadius];
    v9 = v8;

    if (v9 <= 0.0)
    {
      goto LABEL_6;
    }

    v6 = [(HUColorPickerView *)self colorWheelView];
    [v6 wheelHoleRadius];
    v11 = HURoundToScreenScale(v10 * 0.44);
    v12 = [(HUColorPickerView *)self magnifierView];
    [v12 setInnerRadius:v11];
  }

  else
  {
    [(HUColorPickerView *)self magnifierLength];
    v5 = v4 * 0.5;
    v6 = [(HUColorPickerView *)self magnifierView];
    [v6 setInnerRadius:v5];
  }

LABEL_6:
  v13 = [(HUColorPickerView *)self magnifierView];
  [v13 sizeToFit];
}

- (void)setSelectedColorCoordinate:(id)a3
{
  self->_selectedColorCoordinate = a3;
  [(HUColorPickerView *)self _updateMagnifierPosition];

  [(HUColorPickerView *)self _updateMirroringAxisBiasIfNecessary];
}

- (CGPoint)magnifierLocation
{
  v2 = [(HUColorPickerView *)self magnifierView];
  [v2 center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setMagnifierLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(HUColorPickerView *)self magnifierView];
  [v5 setCenter:{x, y}];
}

- (void)setUserInteractionActive:(BOOL)a3
{
  if (self->_userInteractionActive != a3)
  {
    v4 = a3;
    self->_userInteractionActive = a3;
    if (!a3)
    {
      [(HUColorPickerView *)self _updateMagnifierTransformForTouchLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    v6 = [(HUColorPickerView *)self interactionDelegate];
    [v6 controlView:self interactionStateDidChange:v4 forFirstTouch:0];
  }
}

- (void)setColorPickerMode:(unint64_t)a3
{
  if (self->_colorPickerMode != a3)
  {
    self->_colorPickerMode = a3;
    v5 = [(HUColorPickerView *)self _colorWheelSpaceForMode:?];
    v6 = [(HUColorPickerView *)self colorWheelView];
    [v6 setColorWheelSpace:v5];

    [(HUColorPickerView *)self _applyMirroringAxisBiasToColorWheelSpaceIfNecessary];

    [(HUColorPickerView *)self _updateDerivedSelectedColorCoordinate];
  }
}

- (id)_colorWheelSpaceForMode:(unint64_t)a3
{
  if (a3 == 1)
  {
    +[HUTemperatureColorWheelSpace defaultTemperatureRange];
    v6 = v5;
    v8 = v7;
    objc_opt_class();
    v9 = [(HUColorPickerView *)self profile];
    v10 = [v9 colorProfile];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      [v12 minimumTemperature];
      v8 = 1000000.0 / v13;
      [v12 maximumTemperature];
      v6 = 1000000.0 / v14;
    }

    v3 = [[HUTemperatureColorWheelSpace alloc] initWithSupportedRange:v6, v8];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_alloc_init(HUWheelColorWheelSpace);
  }

  return v3;
}

- (void)_updateDerivedSelectedColorCoordinate
{
  [(HUColorPickerView *)self selectedColor];
  if (v6 == 1.79769313e308 && v3 == 1.79769313e308 && v4 == 1.79769313e308)
  {
    v9 = 1.79769313e308;
    v16 = v5 != 1.79769313e308;
    if (v5 == 1.79769313e308)
    {
      v15 = 1.79769313e308;
      goto LABEL_15;
    }
  }

  else
  {
    v16 = 1;
  }

  v10 = [(HUColorPickerView *)self colorWheelSpace];
  [(HUColorPickerView *)self selectedColor];
  [v10 coordinateForColor:&v16 isValid:?];
  v12 = v11;
  v14 = v13;

  v15 = 1.79769313e308;
  if (v16)
  {
    v9 = v14;
  }

  else
  {
    v9 = 1.79769313e308;
  }

  if (v16)
  {
    v15 = v12;
  }

LABEL_15:
  [(HUColorPickerView *)self setSelectedColorCoordinate:v15, v9];
}

- (void)_updateMagnifierPosition
{
  [(HUColorPickerView *)self selectedColorCoordinate];
  v5 = v4 == 1.79769313e308 && v3 == 1.79769313e308;
  if (!v5)
  {
    v6 = [(HUColorPickerView *)self colorWheelView];
    [(HUColorPickerView *)self selectedColorCoordinate];
    [v6 pointForColorWheelCoordinate:?];
    v8 = v7;
    v10 = v9;

    v11 = [(HUColorPickerView *)self colorWheelView];
    [(HUColorPickerView *)self convertPoint:v11 fromView:v8, v10];
    [(HUColorPickerView *)self setMagnifierLocation:?];
  }

  v12 = [(HUColorPickerView *)self magnifierView];
  [v12 setHidden:v5];
}

- (void)_applyMirroringAxisBiasToColorWheelSpaceIfNecessary
{
  v3 = [(HUColorPickerView *)self colorWheelSpace];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HUColorPickerView *)self colorWheelSpace];
    [v5 setMirroringBiasAxis:{-[HUColorPickerView mirroringAxisBias](self, "mirroringAxisBias")}];
  }
}

- (void)_updateMirroringAxisBiasIfNecessary
{
  v3 = [(HUColorPickerView *)self colorWheelSpace];
  v4 = [v3 type];

  if (v4 == 1)
  {
    [(HUColorPickerView *)self selectedColorCoordinate];
    v7 = v6 == 1.79769313e308 && v5 == 1.79769313e308;
    v10 = 0;
    if (!v7)
    {
      [(HUColorPickerView *)self selectedColorCoordinate];
      if (v8 < 0.25 || ([(HUColorPickerView *)self selectedColorCoordinate], v9 > 0.75))
      {
        v10 = 1;
      }
    }

    [(HUColorPickerView *)self setMirroringAxisBias:v10];
  }
}

- (id)value
{
  [(HUColorPickerView *)self selectedColor];

  return HUPaletteColorForWheelColor(v2, v3, v4, v5);
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  v18 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v7 = v18;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v6 = v18;
  v9 = v18;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

    v6 = v18;
LABEL_7:
    v9 = 0;
  }

  [(HUColorPickerView *)self selectedColor];
  v16 = HUPaletteColorForWheelColor(v12, v13, v14, v15);
  v17 = v16;
  if ((!v16 || ([v16 isSimilarToColor:v9] & 1) == 0) && (objc_msgSend(v9, "isNaturalLightColor") & 1) == 0)
  {
    [(HUColorPickerView *)self setSelectedColor:HUWheelColorForPaletteColor(v9)];
    [(HUColorPickerView *)self _updateDerivedSelectedColorCoordinate];
  }
}

- (void)setReachabilityState:(unint64_t)a3
{
  self->_reachabilityState = a3;
  v4 = [(HUColorPickerView *)self reachabilityState];

  [(HUColorPickerView *)self _updateUIForReachabilityState:v4];
}

- (void)_handleGesture:(id)a3
{
  v26 = a3;
  v4 = [v26 state];
  if (v4 == 2)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    [(HUColorPickerView *)self setTouchDownTimestamp:CFAbsoluteTimeGetCurrent()];
LABEL_4:
    [(HUColorPickerView *)self setUserInteractionActive:1];
    v5 = [(HUColorPickerView *)self colorWheelView];
    [v26 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(HUColorPickerView *)self colorWheelView];
    [v10 colorWheelCoordinateForPoint:1 boundedToWheel:{v7, v9}];
    v12 = v11;
    v14 = v13;

    [(HUColorPickerView *)self setSelectedColorCoordinate:v12, v14];
    v15 = [(HUColorPickerView *)self colorWheelSpace];
    [v15 colorForCoordinate:{v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [(HUColorPickerView *)self setSelectedColor:v17, v19, v21, v23];
    v24 = [(HUColorPickerView *)self interactionDelegate];
    v25 = [(HUColorPickerView *)self value];
    [v24 controlView:self valueDidChange:v25];

    [v26 locationInView:self];
    [(HUColorPickerView *)self _updateMagnifierTransformForTouchLocation:?];
    goto LABEL_6;
  }

  [(HUColorPickerView *)self setUserInteractionActive:0];
  [(HUColorPickerView *)self setTouchDownTimestamp:0.0];
LABEL_6:
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(HUColorPickerView *)self colorWheelView];
  v7 = [v6 wheelBezierPath];
  v8 = [(HUColorPickerView *)self colorWheelView];
  [v5 locationInView:v8];
  v10 = v9;
  v12 = v11;

  LOBYTE(v5) = [v7 containsPoint:{v10, v12}];
  return v5;
}

- (void)_updateMagnifierTransformForTouchLocation:(CGPoint)a3
{
  y = a3.y;
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  v24 = *MEMORY[0x277CBF2C0];
  *&v29.a = *MEMORY[0x277CBF2C0];
  *&v29.c = v23;
  v22 = *(MEMORY[0x277CBF2C0] + 32);
  *&v29.tx = v22;
  if ([(HUColorPickerView *)self isUserInteractionActive])
  {
    [(HUColorPickerView *)self touchDownTimestamp];
    if (v5 != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(HUColorPickerView *)self touchDownTimestamp];
      if (Current - v7 >= 0.15)
      {
        *&v28.a = v24;
        *&v28.c = v23;
        *&v28.tx = v22;
        CGAffineTransformScale(&v29, &v28, 1.14999998, 1.14999998);
        [(HUColorPickerView *)self magnifierLocation];
        v9 = fmax(30.0 - vabdd_f64(v8, y), 0.0);
        [(HUColorPickerView *)self magnifierLocation];
        v11 = v10;
        v13 = v12 - v9;
        v14 = [(HUColorPickerView *)self colorWheelView];
        [v14 colorWheelCoordinateForPoint:1 boundedToWheel:{v11, v13}];
        v16 = v15;
        v18 = v17;

        v19 = [(HUColorPickerView *)self colorWheelView];
        [v19 pointForColorWheelCoordinate:{v16, v18}];
        v21 = v20;

        v27 = v29;
        CGAffineTransformTranslate(&v28, &v27, 0.0, v21 - v13 - v9);
        v29 = v28;
      }
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v26 = v29;
  v25[2] = __63__HUColorPickerView__updateMagnifierTransformForTouchLocation___block_invoke;
  v25[3] = &unk_277DB80E8;
  v25[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v25 animations:0.15];
}

void __63__HUColorPickerView__updateMagnifierTransformForTouchLocation___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) magnifierView];
  [v1 setTransform:&v2];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUColorPickerView;
  [(HUColorPickerView *)&v8 layoutSubviews];
  [(HUColorPickerView *)self frame];
  v4 = v3;
  [(HUColorPickerView *)self frame];
  v6 = v5;
  v7 = [(HUColorPickerView *)self colorWheelView];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  [(HUColorPickerView *)self _updateMagnifierPosition];
  [(HUColorPickerView *)self _updateUIForReachabilityState:[(HUColorPickerView *)self reachabilityState]];
}

- (HUQuickControlColorPickerViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedColorCoordinate
{
  angle = self->_selectedColorCoordinate.angle;
  radius = self->_selectedColorCoordinate.radius;
  result.var1 = radius;
  result.var0 = angle;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)selectedColor
{
  r = self->_selectedColor.r;
  g = self->_selectedColor.g;
  b = self->_selectedColor.b;
  temperature = self->_selectedColor.temperature;
  result.var3 = temperature;
  result.var2 = b;
  result.var1 = g;
  result.var0 = r;
  return result;
}

@end