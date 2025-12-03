@interface HUQuickControlSliderGestureTransformer
- (CGPoint)lastTouchLocation;
- (CGPoint)referenceTouchLocation;
- (HUQuickControlSliderGestureTransformer)initWithGestureRecognizer:(id)recognizer context:(id)context;
- (HUQuickControlSliderGestureTransformerDelegate)delegate;
- (double)_rawSliderValueForLocation:(CGPoint)location;
- (void)_handleGesturePan:(id)pan;
- (void)_handleSliderValuePan:(CGPoint)pan;
- (void)dealloc;
@end

@implementation HUQuickControlSliderGestureTransformer

- (HUQuickControlSliderGestureTransformer)initWithGestureRecognizer:(id)recognizer context:(id)context
{
  recognizerCopy = recognizer;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = HUQuickControlSliderGestureTransformer;
  v9 = [(HUQuickControlSliderGestureTransformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gestureRecognizer, recognizer);
    [contextCopy assertConfigurationIsValid];
    objc_storeStrong(&v10->_context, context);
    [recognizerCopy hu_locationInGlobalCoordinateSpace];
    [(HUQuickControlSliderGestureTransformer *)v10 setReferenceTouchLocation:?];
    [contextCopy initialSliderValue];
    [(HUQuickControlSliderGestureTransformer *)v10 setReferenceSliderValue:?];
    [contextCopy initialSliderValue];
    [(HUQuickControlSliderGestureTransformer *)v10 setCurrentSliderValue:?];
    [(HUQuickControlSliderGestureTransformer *)v10 setGestureRecognizer:recognizerCopy];
    [recognizerCopy addTarget:v10 action:sel__handleGesturePan_];
  }

  return v10;
}

- (void)dealloc
{
  gestureRecognizer = [(HUQuickControlSliderGestureTransformer *)self gestureRecognizer];
  [gestureRecognizer removeTarget:self action:0];

  v4.receiver = self;
  v4.super_class = HUQuickControlSliderGestureTransformer;
  [(HUQuickControlSliderGestureTransformer *)&v4 dealloc];
}

- (void)_handleGesturePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if ((state - 3) >= 3)
  {
    if ((state - 1) < 2)
    {
      [panCopy hu_locationInGlobalCoordinateSpace];
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
    delegate = [(HUQuickControlSliderGestureTransformer *)self delegate];
    [delegate gestureDidEndForGestureTransformer:self];
  }
}

- (void)_handleSliderValuePan:(CGPoint)pan
{
  y = pan.y;
  x = pan.x;
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
  context = [(HUQuickControlSliderGestureTransformer *)self context];
  if ([context requiresSomeMovementBeforeActivation])
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
  delegate = [(HUQuickControlSliderGestureTransformer *)self delegate];
  [delegate gestureTransformer:self sliderValueDidChange:v16];
}

- (double)_rawSliderValueForLocation:(CGPoint)location
{
  y = location.y;
  [(HUQuickControlSliderGestureTransformer *)self referenceTouchLocation];
  v6 = v5;
  context = [(HUQuickControlSliderGestureTransformer *)self context];
  [context controlFrame];
  Height = CGRectGetHeight(v14);
  context2 = [(HUQuickControlSliderGestureTransformer *)self context];
  [context2 verticalDragCoefficient];
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