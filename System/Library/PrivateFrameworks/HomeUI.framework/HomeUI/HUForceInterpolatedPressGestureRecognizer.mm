@interface HUForceInterpolatedPressGestureRecognizer
- (HUForceInterpolatedPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_forceMultiplierIncludingCurrentSample;
- (void)_logForceMultiplierSample;
- (void)_resetForceSamples;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation HUForceInterpolatedPressGestureRecognizer

- (HUForceInterpolatedPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = HUForceInterpolatedPressGestureRecognizer;
  v4 = [(HUForceInterpolatedPressGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    hu_activeTouches = v4->_hu_activeTouches;
    v4->_hu_activeTouches = v5;

    [(HUForceInterpolatedPressGestureRecognizer *)v4 _resetForceSamples];
  }

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  v9 = [v8 count];

  if (!v9)
  {
    [(HUForceInterpolatedPressGestureRecognizer *)self setTouchStartTime:CACurrentMediaTime()];
  }

  v10 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [v10 unionSet:v7];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v11.receiver = self;
  v11.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v11 touchesBegan:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v8.receiver = self;
  v8.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v8 touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [v8 minusSet:v7];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v9.receiver = self;
  v9.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v9 touchesEnded:v7 withEvent:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  [v8 minusSet:v7];

  [(HUForceInterpolatedPressGestureRecognizer *)self _logForceMultiplierSample];
  v9.receiver = self;
  v9.super_class = HUForceInterpolatedPressGestureRecognizer;
  [(HUForceInterpolatedPressGestureRecognizer *)&v9 touchesCancelled:v7 withEvent:v6];
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
  v3 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
  v4 = [v3 count];

  if (v4)
  {
    [(HUForceInterpolatedPressGestureRecognizer *)self _forceMultiplierIncludingCurrentSample];
    [(HUForceInterpolatedPressGestureRecognizer *)self setOverallForceMultiplierExcludingCurrentSample:?];
    v5 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v6 = [v5 na_filter:&__block_literal_global_34];
    v7 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    [v7 setSet:v6];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v17 + 1) + 8 * i) force];
          v12 = v12 + v14;
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    v15 = [(HUForceInterpolatedPressGestureRecognizer *)self hu_activeTouches];
    v16 = v12 / [v15 count];

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