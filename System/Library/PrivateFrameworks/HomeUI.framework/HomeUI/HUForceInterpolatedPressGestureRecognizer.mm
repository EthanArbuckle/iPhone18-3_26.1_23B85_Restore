@interface HUForceInterpolatedPressGestureRecognizer
- (HUForceInterpolatedPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_forceMultiplierIncludingCurrentSample;
- (void)_logForceMultiplierSample;
- (void)_resetForceSamples;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation HUForceInterpolatedPressGestureRecognizer

- (HUForceInterpolatedPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = HUForceInterpolatedPressGestureRecognizer;
  v4 = [(HUForceInterpolatedPressGestureRecognizer *)&v8 initWithTarget:target action:action];
  if (v4)
  {
    v5 = objc_opt_new();
    hu_activeTouches = v4->_hu_activeTouches;
    v4->_hu_activeTouches = v5;

    [(HUForceInterpolatedPressGestureRecognizer *)v4 _resetForceSamples];
  }

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  hu_activeTouches = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  v9 = [hu_activeTouches count];

  if (!v9)
  {
    [(HUForceInterpolatedPressGestureRecognizer *)self setTouchStartTime:CACurrentMediaTime()];
  }

  hu_activeTouches2 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [hu_activeTouches2 unionSet:beganCopy];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v11.receiver = self;
  v11.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v8.receiver = self;
  v8.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  hu_activeTouches = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [hu_activeTouches minusSet:endedCopy];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v9.receiver = self;
  v9.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  hu_activeTouches = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [hu_activeTouches minusSet:cancelledCopy];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v9.receiver = self;
  v9.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (double)_forceMultiplierIncludingCurrentSample
{
  [(HUForceInterpolatedPressGestureRecognizer *)self touchStartTime];
  v3 = 1.0;
  if (v4 != 0.0)
  {
    [(HUForceInterpolatedPressGestureRecognizer *)self currentSampleTimestamp];
    if (v5 != 0.0)
    {
      v6 = CACurrentMediaTime();
      [(HUForceInterpolatedPressGestureRecognizer *)self currentSampleTimestamp];
      v8 = v6 - v7;
      [(HUForceInterpolatedPressGestureRecognizer *)self touchStartTime];
      v10 = v6 - v9;
      [(HUForceInterpolatedPressGestureRecognizer *)self currentSampleForceMultiplier];
      v12 = v8 * v11;
      [(HUForceInterpolatedPressGestureRecognizer *)self overallForceMultiplierExcludingCurrentSample];
      return (v12 + v13 * (v10 - v8)) / v10;
    }
  }

  return v3;
}

- (void)_resetForceSamples
{
  [(HUForceInterpolatedPressGestureRecognizer *)self setOverallForceMultiplierExcludingCurrentSample:1.0];
  [(HUForceInterpolatedPressGestureRecognizer *)self setCurrentSampleForceMultiplier:1.0];
  [(HUForceInterpolatedPressGestureRecognizer *)self setTouchStartTime:0.0];

  [(HUForceInterpolatedPressGestureRecognizer *)self setCurrentSampleTimestamp:0.0];
}

- (void)_logForceMultiplierSample
{
  v22 = *MEMORY[0x277D85DE8];
  hu_activeTouches = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  v4 = [hu_activeTouches count];

  if (v4)
  {
    [(HUForceInterpolatedPressGestureRecognizer *)self _forceMultiplierIncludingCurrentSample];
    [(HUForceInterpolatedPressGestureRecognizer *)self setOverallForceMultiplierExcludingCurrentSample:?];
    hu_activeTouches2 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v6 = [hu_activeTouches2 na_filter:&__block_literal_global_34];
    hu_activeTouches3 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    [hu_activeTouches3 setSet:v6];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    hu_activeTouches4 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v9 = [hu_activeTouches4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(hu_activeTouches4);
          }

          [*(*(&v17 + 1) + 8 * i) force];
          v12 = v12 + v14;
        }

        v10 = [hu_activeTouches4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    hu_activeTouches5 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v16 = v12 / [hu_activeTouches5 count];

    [(HUForceInterpolatedPressGestureRecognizer *)self setCurrentSampleForceMultiplier:v16 / 6.667 * 3.0 + 1.0];
    [(HUForceInterpolatedPressGestureRecognizer *)self setCurrentSampleTimestamp:CACurrentMediaTime()];
  }

  else
  {

    [(HUForceInterpolatedPressGestureRecognizer *)self _resetForceSamples];
  }
}

BOOL __70__HUForceInterpolatedPressGestureRecognizer__logForceMultiplierSample__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 phase] != 3 && objc_msgSend(v2, "phase") != 4;

  return v3;
}

@end