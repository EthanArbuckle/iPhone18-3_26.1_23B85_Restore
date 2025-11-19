@interface CSHorizontalScrollFailureRecognizer
- (BOOL)_isOutOfBounds:(CGPoint)a3 forAngle:(double)a4;
- (BOOL)_isOutOfBoundsVertically:(CGPoint)a3;
- (BOOL)_recognizeForMultiTouchIfNecessary:(id)a3;
- (CGPoint)_averagePointFromTouches;
- (CGPoint)_locationOfTouch:(id)a3 inView:(id)a4;
- (CSHorizontalScrollFailureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (double)_computeEffectiveAngleFromMin:(double)a3 max:(double)a4;
- (double)_maxAllowableVerticalOffsetForPoint:(CGPoint)a3;
- (int64_t)_activeTouchCountForEvent:(id)a3;
- (void)_averagePointFromTouches;
- (void)_loadFromSettings:(id)a3;
- (void)_setArmed:(BOOL)a3;
- (void)_setDebugViewsColor:(id)a3;
- (void)_setDebugViewsVisible:(BOOL)a3;
- (void)_updateEnabled;
- (void)dealloc;
- (void)reset;
- (void)setEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CSHorizontalScrollFailureRecognizer

- (CGPoint)_averagePointFromTouches
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CSHorizontalScrollFailureRecognizer *)self view];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_touches;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [(CSHorizontalScrollFailureRecognizer *)self _locationOfTouch:*(*(&v19 + 1) + 8 * i) inView:v3, v19];
        v10 = v10 + v12;
        v9 = v9 + v13;
      }

      v7 += v6;
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);

    v14 = v10 / v7;
    v15 = v9 / v7;
  }

  else
  {

    v14 = *MEMORY[0x277CBF348];
    v15 = *(MEMORY[0x277CBF348] + 8);
  }

  v16 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(CSHorizontalScrollFailureRecognizer *)v14 _averagePointFromTouches];
  }

  v17 = v14;
  v18 = v15;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_updateEnabled
{
  v2.receiver = self;
  v2.super_class = CSHorizontalScrollFailureRecognizer;
  [(CSHorizontalScrollFailureRecognizer *)&v2 setEnabled:[(CSHorizontalScrollFailureRecognizer *)self _effectivelyEnabled]];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = CSHorizontalScrollFailureRecognizer;
  [(CSHorizontalScrollFailureRecognizer *)&v3 reset];
  [(NSMutableSet *)self->_touches removeAllObjects];
  self->_tracking = 0;
  self->_startingLocation = *MEMORY[0x277CBF348];
  self->_effectiveTopAngle = 0.0;
  self->_effectiveBottomAngle = 0.0;
  [(CSHorizontalScrollFailureRecognizer *)self setState:0];
  [(CSHorizontalScrollFailureRecognizer *)self _setDebugViewsVisible:0];
}

- (void)dealloc
{
  [(CSHorizontalScrollFailureRecognizer *)self _setDebugViewsVisible:0];
  v3.receiver = self;
  v3.super_class = CSHorizontalScrollFailureRecognizer;
  [(CSHorizontalScrollFailureRecognizer *)&v3 dealloc];
}

- (CSHorizontalScrollFailureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = CSHorizontalScrollFailureRecognizer;
  v4 = [(CSHorizontalScrollFailureRecognizer *)&v11 initWithTarget:a3 action:a4];
  if (v4)
  {
    v5 = +[CSLockScreenDomain rootSettings];
    v6 = [v5 horizontalScrollFailureRecognizerSettings];

    [v6 addKeyObserver:v4];
    [(CSHorizontalScrollFailureRecognizer *)v4 _loadFromSettings:v6];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    touches = v4->_touches;
    v4->_touches = v7;

    v4->_effectiveTopAngle = 0.0;
    v4->_effectiveBottomAngle = 0.0;
    debugViews = v4->_debugViews;
    v4->_debugViews = MEMORY[0x277CBEBF8];

    [(CSHorizontalScrollFailureRecognizer *)v4 setCancelsTouchesInView:1];
    [(CSHorizontalScrollFailureRecognizer *)v4 setDelaysTouchesBegan:0];
    [(CSHorizontalScrollFailureRecognizer *)v4 reset];
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_externallyEnabled != a3)
  {
    self->_externallyEnabled = a3;
    [(CSHorizontalScrollFailureRecognizer *)self _updateEnabled];
  }
}

- (void)_setArmed:(BOOL)a3
{
  if (self->_armed != a3)
  {
    self->_armed = a3;
    [(CSHorizontalScrollFailureRecognizer *)self _updateEnabled];
  }
}

- (void)setState:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CSHorizontalScrollFailureRecognizer;
  [(CSHorizontalScrollFailureRecognizer *)&v8 setState:?];
  if (a3 != 3)
  {
    triggeredEvent = self->_triggeredEvent;
    self->_triggeredEvent = 0;

    if (a3)
    {
      if (a3 != 1)
      {
        return;
      }

      v6 = [MEMORY[0x277D75348] greenColor];
    }

    else
    {
      v6 = [MEMORY[0x277D75348] yellowColor];
    }

    v7 = v6;
    [(CSHorizontalScrollFailureRecognizer *)self _setDebugViewsColor:v6];
  }
}

- (BOOL)_recognizeForMultiTouchIfNecessary:(id)a3
{
  v4 = [(CSHorizontalScrollFailureRecognizer *)self view];
  if ([(NSMutableSet *)self->_touches count]< 2 || [(CSHorizontalScrollFailureRecognizer *)self allowMultiTouch])
  {
    v5 = 0;
  }

  else if ([(CSHorizontalScrollFailureRecognizer *)self state])
  {
    v5 = 1;
  }

  else
  {
    v7 = SBLogDashBoardScrollGestures();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CSHorizontalScrollFailureRecognizer *)&self->_touches _recognizeForMultiTouchIfNecessary:v4];
    }

    v5 = 1;
    [(CSHorizontalScrollFailureRecognizer *)self setState:1];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CSHorizontalScrollFailureRecognizer *)self view];
  touches = self->_touches;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:v5];
  [(NSMutableSet *)touches unionSet:v8];

  v9 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:v5];
    v15 = __stringsFromTouches(v14, v6);
    v16 = __stringsFromTouches(self->_touches, v6);
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEBUG, "HorizontalScrollFailureRecognizer - touches BEGAN: touchesFromEvent: %@, knownTouches: %@", &v17, 0x16u);
  }

  if (![(CSHorizontalScrollFailureRecognizer *)self _recognizeForMultiTouchIfNecessary:v5]&& !self->_tracking)
  {
    [(CSHorizontalScrollFailureRecognizer *)self _averagePointFromTouches];
    self->_startingLocation.x = v10;
    self->_startingLocation.y = v11;
    self->_tracking = 1;
    [(CSHorizontalScrollFailureRecognizer *)self _computeEffectiveAngleFromMin:self->_minAllowedTopAngle max:self->_maxAllowedTopAngle];
    self->_effectiveTopAngle = v12;
    [(CSHorizontalScrollFailureRecognizer *)self _computeEffectiveAngleFromMin:self->_minAllowedBottomAngle max:self->_maxAllowedBottomAngle];
    self->_effectiveBottomAngle = v13;
    [(CSHorizontalScrollFailureRecognizer *)self _setDebugViewsVisible:self->_viewDebugArea];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CSHorizontalScrollFailureRecognizer *)self view];
  v7 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:v5];
    v10 = __stringsFromTouches(v9, v6);
    v11 = __stringsFromTouches(self->_touches, v6);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_21EB05000, v7, OS_LOG_TYPE_DEBUG, "HorizontalScrollFailureRecognizer - touches MOVED: touches: %@, knownTouches: %@", &v12, 0x16u);
  }

  if (![(CSHorizontalScrollFailureRecognizer *)self state])
  {
    [(CSHorizontalScrollFailureRecognizer *)self _averagePointFromTouches];
    if ([(CSHorizontalScrollFailureRecognizer *)self _isLocationOutOfBounds:?])
    {
      v8 = SBLogDashBoardScrollGestures();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_21EB05000, v8, OS_LOG_TYPE_INFO, "HorizontalScrollFailureRecognizer - beginning recognitition due to location out of bounds.", &v12, 2u);
      }

      [(CSHorizontalScrollFailureRecognizer *)self setState:1];
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(CSHorizontalScrollFailureRecognizer *)self view];
  [(NSMutableSet *)self->_touches minusSet:v8];

  v10 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:v7];
    v13 = __stringsFromTouches(v12, v9);
    v14 = __stringsFromTouches(self->_touches, v9);
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_debug_impl(&dword_21EB05000, v10, OS_LOG_TYPE_DEBUG, "HorizontalScrollFailureRecognizer - touches ENDED: touchesFromEvent: %@, knownTouches: %@", &v15, 0x16u);
  }

  if (![(NSMutableSet *)self->_touches count])
  {
    if ([(CSHorizontalScrollFailureRecognizer *)self state])
    {
      objc_storeStrong(&self->_triggeredEvent, a4);
      v11 = 3;
    }

    else
    {
      v11 = 5;
    }

    [(CSHorizontalScrollFailureRecognizer *)self setState:v11];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self view];
  [(NSMutableSet *)self->_touches minusSet:v7];

  v9 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:v6];
    v12 = __stringsFromTouches(v11, v8);
    v13 = __stringsFromTouches(self->_touches, v8);
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEBUG, "HorizontalScrollFailureRecognizer - touches CANCELLED: touchesFromEvent: %@, knownTouches: %@", &v14, 0x16u);
  }

  if (![(NSMutableSet *)self->_touches count])
  {
    if ([(CSHorizontalScrollFailureRecognizer *)self state])
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    [(CSHorizontalScrollFailureRecognizer *)self setState:v10];
  }
}

- (CGPoint)_locationOfTouch:(id)a3 inView:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self view];
  v9 = [v8 window];
  v10 = [v9 screen];
  [v7 locationInView:v8];
  v12 = v11;
  v14 = v13;

  [v9 convertPoint:v8 fromCoordinateSpace:{v12, v14}];
  v16 = v15;
  v18 = v17;
  v19 = [v10 coordinateSpace];
  [v19 convertPoint:v9 fromCoordinateSpace:{v16, v18}];
  v21 = v20;
  v23 = v22;

  v24 = [v6 window];
  v25 = [v10 coordinateSpace];
  [v24 convertPoint:v25 fromCoordinateSpace:{v21, v23}];
  v27 = v26;
  v29 = v28;

  [v6 convertPoint:v24 fromCoordinateSpace:{v27, v29}];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

- (void)_loadFromSettings:(id)a3
{
  v4 = a3;
  -[CSHorizontalScrollFailureRecognizer _setArmed:](self, "_setArmed:", [v4 enabled]);
  -[CSHorizontalScrollFailureRecognizer setViewDebugArea:](self, "setViewDebugArea:", [v4 viewDebugArea]);
  -[CSHorizontalScrollFailureRecognizer setMaxAllowableVerticalOffset:](self, "setMaxAllowableVerticalOffset:", [v4 maxAllowableVerticalOffset]);
  [v4 topAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMaxAllowedTopAngle:?];
  [v4 topAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMinAllowedTopAngle:?];
  [v4 bottomAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMaxAllowedBottomAngle:?];
  [v4 bottomAngle];
  v6 = v5;

  [(CSHorizontalScrollFailureRecognizer *)self setMinAllowedBottomAngle:v6];
}

- (int64_t)_activeTouchCountForEvent:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) phase] < 3)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)_computeEffectiveAngleFromMin:(double)a3 max:(double)a4
{
  v7 = [(CSHorizontalScrollFailureRecognizer *)self view];
  v8 = v7;
  if (vabdd_f64(a4, a3) > 0.001)
  {
    [v7 bounds];
    a4 = self->_startingLocation.x * ((a4 - a3) / v9);
  }

  return a4;
}

- (BOOL)_isOutOfBoundsVertically:(CGPoint)a3
{
  v3 = floor(vabdd_f64(a3.y, self->_startingLocation.y));
  [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:a3.x];
  return v3 > v4;
}

- (double)_maxAllowableVerticalOffsetForPoint:(CGPoint)a3
{
  y = a3.y;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return self->_maxAllowableVerticalOffset;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 1)
    {
      return self->_maxAllowableVerticalOffset;
    }
  }

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = fabs(y + v10 * -0.5);
  return self->_maxAllowableVerticalOffset / 3.0 + (1.0 - (v11 + v11) / v10) * ((self->_maxAllowableVerticalOffset + self->_maxAllowableVerticalOffset) / 3.0);
}

- (BOOL)_isOutOfBounds:(CGPoint)a3 forAngle:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self _isOutOfBoundsVertically:?];
  if (v8)
  {
    v9 = fabs(tan(a4 * 0.0174532925)) * vabdd_f64(x, self->_startingLocation.x) + 0.0;
    v10 = floor(vabdd_f64(y, self->_startingLocation.y));
    [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:x, y];
    LOBYTE(v8) = v10 - v11 > v9;
  }

  return v8;
}

- (void)_setDebugViewsVisible:(BOOL)a3
{
  v3 = a3;
  v43 = *MEMORY[0x277D85DE8];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = self->_debugViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v36 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v7);
  }

  if (v3)
  {
    v10 = [(CSHorizontalScrollFailureRecognizer *)self view];
    x = self->_startingLocation.x;
    y = self->_startingLocation.y;
    [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:x, y];
    v14 = v13;
    v15 = y - v13;
    [v10 bounds];
    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v15, v16, v14 + v14}];
    v18 = [MEMORY[0x277D75348] yellowColor];
    [v17 setBackgroundColor:v18];

    v19 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:0 recognizer:self forPoint:v10 withMaxVerticalOffset:1 inView:x pointingRight:y, v14];
    v20 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:0 recognizer:self forPoint:v10 withMaxVerticalOffset:0 inView:x pointingRight:y, v14];
    v21 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:1 recognizer:self forPoint:v10 withMaxVerticalOffset:1 inView:x pointingRight:y, v14];
    v22 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:1 recognizer:self forPoint:v10 withMaxVerticalOffset:0 inView:x pointingRight:y, v14];
    v41[0] = v17;
    v41[1] = v20;
    v31 = v19;
    v41[2] = v19;
    v41[3] = v22;
    v41[4] = v21;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    debugViews = self->_debugViews;
    self->_debugViews = v23;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = self->_debugViews;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v33;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v32 + 1) + 8 * j);
          [v30 setUserInteractionEnabled:0];
          [v10 addSubview:v30];
          [v30 setAlpha:0.5];
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v27);
    }
  }
}

- (void)_setDebugViewsColor:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_debugViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setContentColor:v4];
        }

        else
        {
          [v10 setBackgroundColor:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_recognizeForMultiTouchIfNecessary:(void *)a1 .cold.1(void **a1, void *a2)
{
  v2 = __stringsFromTouches(*a1, a2);
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v3, v4, "HorizontalScrollFailureRecognizer - begining recognition for multi-touch: %@", v5, v6, v7, v8, 2u);
}

- (void)_averagePointFromTouches
{
  v2 = NSStringFromCGPoint(*&a1);
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v3, v4, "FAILURE RECOGNIZER - averagePointFromTouches: %@", v5, v6, v7, v8, 2u);
}

@end