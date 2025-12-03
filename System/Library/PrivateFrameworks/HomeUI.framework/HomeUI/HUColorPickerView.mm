@interface HUColorPickerView
- ($01BB1521EC52D44A8E7628F5261DCEC8)selectedColor;
- ($F24F406B2B787EFB06265DBA3D28CBD5)selectedColorCoordinate;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGPoint)magnifierLocation;
- (HUColorPickerView)initWithProfile:(id)profile;
- (HUColorWheelSpace)colorWheelSpace;
- (HUQuickControlColorPickerViewInteractionDelegate)interactionDelegate;
- (double)wheelHoleRadius;
- (id)_colorWheelSpaceForMode:(unint64_t)mode;
- (id)value;
- (void)_applyMirroringAxisBiasToColorWheelSpaceIfNecessary;
- (void)_handleGesture:(id)gesture;
- (void)_updateDerivedSelectedColorCoordinate;
- (void)_updateMagnifierPosition;
- (void)_updateMagnifierTransformForTouchLocation:(CGPoint)location;
- (void)_updateMagnifierView;
- (void)_updateMirroringAxisBiasIfNecessary;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)layoutSubviews;
- (void)setColorPickerMode:(unint64_t)mode;
- (void)setMagnifierLocation:(CGPoint)location;
- (void)setReachabilityState:(unint64_t)state;
- (void)setSelectedColor:(id)color;
- (void)setSelectedColorCoordinate:(id)coordinate;
- (void)setUserInteractionActive:(BOOL)active;
- (void)setValue:(id)value;
- (void)setWheelHoleRadius:(double)radius;
@end

@implementation HUColorPickerView

- (HUColorPickerView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HUColorPickerView;
  v6 = [(HUColorPickerView *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    v7->_colorPickerMode = [profileCopy supportsRGBColor] ^ 1;
    v7->_mirroringAxisBias = 0;
    *&v7->_selectedColor.r = HUWheelColorInvalid;
    *&v7->_selectedColor.b = *&qword_20D5CAFE0;
    v7->_selectedColorCoordinate = HUColorWheelNullCoordinate;
    v8 = [(HUColorPickerView *)v7 _colorWheelSpaceForMode:[(HUColorPickerView *)v7 colorPickerMode]];
    v9 = [[HUColorWheelView alloc] initWithColorWheelSpace:v8];
    [(HUColorPickerView *)v7 setColorWheelView:v9];

    colorWheelView = [(HUColorPickerView *)v7 colorWheelView];
    [colorWheelView setTranslatesAutoresizingMaskIntoConstraints:0];

    colorWheelView2 = [(HUColorPickerView *)v7 colorWheelView];
    [(HUColorPickerView *)v7 addSubview:colorWheelView2];

    v12 = objc_alloc_init(HUQuickControlMagnifierView);
    [(HUColorPickerView *)v7 setMagnifierView:v12];

    magnifierView = [(HUColorPickerView *)v7 magnifierView];
    [magnifierView sizeToFit];

    magnifierView2 = [(HUColorPickerView *)v7 magnifierView];
    [(HUColorPickerView *)v7 addSubview:magnifierView2];

    [(HUColorPickerView *)v7 _updateMagnifierPosition];
    v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleGesture_];
    [(HUColorPickerView *)v7 setGestureRecognizer:v15];

    gestureRecognizer = [(HUColorPickerView *)v7 gestureRecognizer];
    [gestureRecognizer setDelegate:v7];

    gestureRecognizer2 = [(HUColorPickerView *)v7 gestureRecognizer];
    [gestureRecognizer2 setMinimumPressDuration:0.0];

    gestureRecognizer3 = [(HUColorPickerView *)v7 gestureRecognizer];
    [(HUColorPickerView *)v7 addGestureRecognizer:gestureRecognizer3];
  }

  return v7;
}

- (HUColorWheelSpace)colorWheelSpace
{
  colorWheelView = [(HUColorPickerView *)self colorWheelView];
  colorWheelSpace = [colorWheelView colorWheelSpace];

  return colorWheelSpace;
}

- (double)wheelHoleRadius
{
  colorWheelView = [(HUColorPickerView *)self colorWheelView];
  [colorWheelView wheelHoleRadius];
  v4 = v3;

  return v4;
}

- (void)setWheelHoleRadius:(double)radius
{
  colorWheelView = [(HUColorPickerView *)self colorWheelView];
  [colorWheelView setWheelHoleRadius:radius];

  [(HUColorPickerView *)self _updateMagnifierView];
}

- (void)setSelectedColor:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  self->_selectedColor = color;
  [(HUColorPickerView *)self _updateMagnifierView];
  v9 = UIColorForHUWheelColor(var0, var1, var2, var3);
  magnifierView = [(HUColorPickerView *)self magnifierView];
  [magnifierView setSelectedColor:v9];
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state >= 2)
  {
    if (state != 2)
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
  magnifierView = [(HUColorPickerView *)self magnifierView];
  [magnifierView setHidden:v5];
}

- (void)_updateMagnifierView
{
  [(HUColorPickerView *)self magnifierLength];
  if (v3 <= 0.0)
  {
    colorWheelView = [(HUColorPickerView *)self colorWheelView];
    [colorWheelView wheelHoleRadius];
    v9 = v8;

    if (v9 <= 0.0)
    {
      goto LABEL_6;
    }

    colorWheelView2 = [(HUColorPickerView *)self colorWheelView];
    [colorWheelView2 wheelHoleRadius];
    v11 = HURoundToScreenScale(v10 * 0.44);
    magnifierView = [(HUColorPickerView *)self magnifierView];
    [magnifierView setInnerRadius:v11];
  }

  else
  {
    [(HUColorPickerView *)self magnifierLength];
    v5 = v4 * 0.5;
    colorWheelView2 = [(HUColorPickerView *)self magnifierView];
    [colorWheelView2 setInnerRadius:v5];
  }

LABEL_6:
  magnifierView2 = [(HUColorPickerView *)self magnifierView];
  [magnifierView2 sizeToFit];
}

- (void)setSelectedColorCoordinate:(id)coordinate
{
  self->_selectedColorCoordinate = coordinate;
  [(HUColorPickerView *)self _updateMagnifierPosition];

  [(HUColorPickerView *)self _updateMirroringAxisBiasIfNecessary];
}

- (CGPoint)magnifierLocation
{
  magnifierView = [(HUColorPickerView *)self magnifierView];
  [magnifierView center];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setMagnifierLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  magnifierView = [(HUColorPickerView *)self magnifierView];
  [magnifierView setCenter:{x, y}];
}

- (void)setUserInteractionActive:(BOOL)active
{
  if (self->_userInteractionActive != active)
  {
    activeCopy = active;
    self->_userInteractionActive = active;
    if (!active)
    {
      [(HUColorPickerView *)self _updateMagnifierTransformForTouchLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    }

    interactionDelegate = [(HUColorPickerView *)self interactionDelegate];
    [interactionDelegate controlView:self interactionStateDidChange:activeCopy forFirstTouch:0];
  }
}

- (void)setColorPickerMode:(unint64_t)mode
{
  if (self->_colorPickerMode != mode)
  {
    self->_colorPickerMode = mode;
    v5 = [(HUColorPickerView *)self _colorWheelSpaceForMode:?];
    colorWheelView = [(HUColorPickerView *)self colorWheelView];
    [colorWheelView setColorWheelSpace:v5];

    [(HUColorPickerView *)self _applyMirroringAxisBiasToColorWheelSpaceIfNecessary];

    [(HUColorPickerView *)self _updateDerivedSelectedColorCoordinate];
  }
}

- (id)_colorWheelSpaceForMode:(unint64_t)mode
{
  if (mode == 1)
  {
    +[HUTemperatureColorWheelSpace defaultTemperatureRange];
    v6 = v5;
    v8 = v7;
    objc_opt_class();
    profile = [(HUColorPickerView *)self profile];
    colorProfile = [profile colorProfile];
    if (objc_opt_isKindOfClass())
    {
      v11 = colorProfile;
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

  else if (mode)
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

  colorWheelSpace = [(HUColorPickerView *)self colorWheelSpace];
  [(HUColorPickerView *)self selectedColor];
  [colorWheelSpace coordinateForColor:&v16 isValid:?];
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
    colorWheelView = [(HUColorPickerView *)self colorWheelView];
    [(HUColorPickerView *)self selectedColorCoordinate];
    [colorWheelView pointForColorWheelCoordinate:?];
    v8 = v7;
    v10 = v9;

    colorWheelView2 = [(HUColorPickerView *)self colorWheelView];
    [(HUColorPickerView *)self convertPoint:colorWheelView2 fromView:v8, v10];
    [(HUColorPickerView *)self setMagnifierLocation:?];
  }

  magnifierView = [(HUColorPickerView *)self magnifierView];
  [magnifierView setHidden:v5];
}

- (void)_applyMirroringAxisBiasToColorWheelSpaceIfNecessary
{
  colorWheelSpace = [(HUColorPickerView *)self colorWheelSpace];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    colorWheelSpace2 = [(HUColorPickerView *)self colorWheelSpace];
    [colorWheelSpace2 setMirroringBiasAxis:{-[HUColorPickerView mirroringAxisBias](self, "mirroringAxisBias")}];
  }
}

- (void)_updateMirroringAxisBiasIfNecessary
{
  colorWheelSpace = [(HUColorPickerView *)self colorWheelSpace];
  type = [colorWheelSpace type];

  if (type == 1)
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

- (void)setValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = valueCopy;
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
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v5, objc_opt_class()}];

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

- (void)setReachabilityState:(unint64_t)state
{
  self->_reachabilityState = state;
  reachabilityState = [(HUColorPickerView *)self reachabilityState];

  [(HUColorPickerView *)self _updateUIForReachabilityState:reachabilityState];
}

- (void)_handleGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  if (state == 2)
  {
    goto LABEL_4;
  }

  if (state == 1)
  {
    [(HUColorPickerView *)self setTouchDownTimestamp:CFAbsoluteTimeGetCurrent()];
LABEL_4:
    [(HUColorPickerView *)self setUserInteractionActive:1];
    colorWheelView = [(HUColorPickerView *)self colorWheelView];
    [gestureCopy locationInView:colorWheelView];
    v7 = v6;
    v9 = v8;

    colorWheelView2 = [(HUColorPickerView *)self colorWheelView];
    [colorWheelView2 colorWheelCoordinateForPoint:1 boundedToWheel:{v7, v9}];
    v12 = v11;
    v14 = v13;

    [(HUColorPickerView *)self setSelectedColorCoordinate:v12, v14];
    colorWheelSpace = [(HUColorPickerView *)self colorWheelSpace];
    [colorWheelSpace colorForCoordinate:{v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [(HUColorPickerView *)self setSelectedColor:v17, v19, v21, v23];
    interactionDelegate = [(HUColorPickerView *)self interactionDelegate];
    value = [(HUColorPickerView *)self value];
    [interactionDelegate controlView:self valueDidChange:value];

    [gestureCopy locationInView:self];
    [(HUColorPickerView *)self _updateMagnifierTransformForTouchLocation:?];
    goto LABEL_6;
  }

  [(HUColorPickerView *)self setUserInteractionActive:0];
  [(HUColorPickerView *)self setTouchDownTimestamp:0.0];
LABEL_6:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  colorWheelView = [(HUColorPickerView *)self colorWheelView];
  wheelBezierPath = [colorWheelView wheelBezierPath];
  colorWheelView2 = [(HUColorPickerView *)self colorWheelView];
  [touchCopy locationInView:colorWheelView2];
  v10 = v9;
  v12 = v11;

  LOBYTE(touchCopy) = [wheelBezierPath containsPoint:{v10, v12}];
  return touchCopy;
}

- (void)_updateMagnifierTransformForTouchLocation:(CGPoint)location
{
  y = location.y;
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
        colorWheelView = [(HUColorPickerView *)self colorWheelView];
        [colorWheelView colorWheelCoordinateForPoint:1 boundedToWheel:{v11, v13}];
        v16 = v15;
        v18 = v17;

        colorWheelView2 = [(HUColorPickerView *)self colorWheelView];
        [colorWheelView2 pointForColorWheelCoordinate:{v16, v18}];
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
  colorWheelView = [(HUColorPickerView *)self colorWheelView];
  [colorWheelView setFrame:{0.0, 0.0, v4, v6}];

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