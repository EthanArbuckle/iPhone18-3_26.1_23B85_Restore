@interface HUQuickControlSliderGestureTransformer
- (CGPoint)lastTouchLocation;
- (CGPoint)referenceTouchLocation;
- (HUQuickControlSliderGestureTransformer)initWithGestureRecognizer:(id)a3 context:(id)a4;
- (HUQuickControlSliderGestureTransformerDelegate)delegate;
- (double)_rawSliderValueForLocation:(CGPoint)a3;
- (void)_handleGesturePan:(id)a3;
- (void)_handleSliderValuePan:(CGPoint)a3;
- (void)dealloc;
@end

@implementation HUQuickControlSliderGestureTransformer

- (HUQuickControlSliderGestureTransformer)initWithGestureRecognizer:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUQuickControlSliderGestureTransformer;
  v9 = [(HUQuickControlSliderGestureTransformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gestureRecognizer, a3);
    [v8 assertConfigurationIsValid];
    objc_storeStrong(&v10->_context, a4);
    [v7 hu_locationInGlobalCoordinateSpace];
    [(HUQuickControlSliderGestureTransformer *)v10 setReferenceTouchLocation:?];
    [v8 initialSliderValue];
    [(HUQuickControlSliderGestureTransformer *)v10 setReferenceSliderValue:?];
    [v8 initialSliderValue];
    [(HUQuickControlSliderGestureTransformer *)v10 setCurrentSliderValue:?];
    [(HUQuickControlSliderGestureTransformer *)v10 setGestureRecognizer:v7];
    [v7 addTarget:v10 action:sel__handleGesturePan_];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(HUQuickControlSliderGestureTransformer *)self gestureRecognizer];
  [v3 removeTarget:self action:0];

  v4.receiver = self;
  v4.super_class = HUQuickControlSliderGestureTransformer;
  [(HUQuickControlSliderGestureTransformer *)&v4 dealloc];
}

- (void)_handleGesturePan:(id)a3
{
  v10 = a3;
  v4 = [v10 state];
  if ((v4 - 3) >= 3)
  {
    if ((v4 - 1) < 2)
    {
      [v10 hu_locationInGlobalCoordinateSpace];
      v7 = v6;
      v9 = v8;
      if ([(HUQuickControlSliderGestureTransformer *)self _shouldIgnoreAllGestures])
      {
        [(HUQuickControlSliderGestureTransformer *)self setLastTouchLocation:v7, v9];
        [(HUQuickControlSliderGestureTransformer *)self setReferenceTouchLocation:v7, v9];
      }

      else
      {
        [(HUQuickControlSliderGestureTransformer *)self _handleSliderValuePan:v7, v9];
      }
    }
  }

  else
  {
    v5 = [(HUQuickControlSliderGestureTransformer *)self delegate];
    [v5 gestureDidEndForGestureTransformer:self];
  }
}

- (void)_handleSliderValuePan:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HUQuickControlSliderGestureTransformer *)self lastTouchLocation];
  if (v7 != *MEMORY[0x277CBF348] || v6 != *(MEMORY[0x277CBF348] + 8))
  {
    [(HUQuickControlSliderGestureTransformer *)self lastTouchLocation];
    UIDistanceBetweenPoints();
    v10 = v9;
    [(HUQuickControlSliderGestureTransformer *)self accumulatedDragDistance];
    [(HUQuickControlSliderGestureTransformer *)self setAccumulatedDragDistance:v10 + v11];
  }

  [(HUQuickControlSliderGestureTransformer *)self setLastTouchLocation:x, y];
  v12 = [(HUQuickControlSliderGestureTransformer *)self context];
  if ([v12 requiresSomeMovementBeforeActivation])
  {
    [(HUQuickControlSliderGestureTransformer *)self accumulatedDragDistance];
    v14 = v13;

    if (v14 < 25.0)
    {

      [(HUQuickControlSliderGestureTransformer *)self setReferenceTouchLocation:x, y];
      return;
    }
  }

  else
  {
  }

  [(HUQuickControlSliderGestureTransformer *)self _rawSliderValueForLocation:x, y];
  v16 = v15;
  [(HUQuickControlSliderGestureTransformer *)self currentSliderValue];
  v18 = v17;
  if (![(HUQuickControlSliderGestureTransformer *)self hasRecognizedSignificantSliderValueChange])
  {
    [(HUQuickControlSliderGestureTransformer *)self referenceSliderValue];
    if (vabdd_f64(v19, v16) >= 0.15)
    {
      [(HUQuickControlSliderGestureTransformer *)self setHasRecognizedSignificantSliderValueChange:1];
    }
  }

  v20 = v16 - v18;
  [(HUQuickControlSliderGestureTransformer *)self referenceTouchLocation];
  if (v16 > 1.0 && v20 < 0.0 || v16 < 0.0 && v20 > 0.0)
  {
    v16 = fmin(fmax(v16, 0.0), 1.0);
    [(HUQuickControlSliderGestureTransformer *)self setReferenceSliderValue:v16];
    v21 = y;
  }

  [(HUQuickControlSliderGestureTransformer *)self setReferenceTouchLocation:x, v21];
  [(HUQuickControlSliderGestureTransformer *)self setCurrentSliderValue:v16];
  v22 = [(HUQuickControlSliderGestureTransformer *)self delegate];
  [v22 gestureTransformer:self sliderValueDidChange:v16];
}

- (double)_rawSliderValueForLocation:(CGPoint)a3
{
  y = a3.y;
  [(HUQuickControlSliderGestureTransformer *)self referenceTouchLocation];
  v6 = v5;
  v7 = [(HUQuickControlSliderGestureTransformer *)self context];
  [v7 controlFrame];
  Height = CGRectGetHeight(v14);
  v9 = [(HUQuickControlSliderGestureTransformer *)self context];
  [v9 verticalDragCoefficient];
  v11 = Height * v10;

  [(HUQuickControlSliderGestureTransformer *)self referenceSliderValue];
  return v12 - (y - v6) / v11;
}

- (HUQuickControlSliderGestureTransformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)referenceTouchLocation
{
  x = self->_referenceTouchLocation.x;
  y = self->_referenceTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastTouchLocation
{
  x = self->_lastTouchLocation.x;
  y = self->_lastTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end