@interface CSHorizontalScrollFailureRecognizer
- (BOOL)_isOutOfBounds:(CGPoint)bounds forAngle:(double)angle;
- (BOOL)_isOutOfBoundsVertically:(CGPoint)vertically;
- (BOOL)_recognizeForMultiTouchIfNecessary:(id)necessary;
- (CGPoint)_averagePointFromTouches;
- (CGPoint)_locationOfTouch:(id)touch inView:(id)view;
- (CSHorizontalScrollFailureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (double)_computeEffectiveAngleFromMin:(double)min max:(double)max;
- (double)_maxAllowableVerticalOffsetForPoint:(CGPoint)point;
- (int64_t)_activeTouchCountForEvent:(id)event;
- (void)_averagePointFromTouches;
- (void)_loadFromSettings:(id)settings;
- (void)_setArmed:(BOOL)armed;
- (void)_setDebugViewsColor:(id)color;
- (void)_setDebugViewsVisible:(BOOL)visible;
- (void)_updateEnabled;
- (void)dealloc;
- (void)reset;
- (void)setEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CSHorizontalScrollFailureRecognizer

- (CGPoint)_averagePointFromTouches
{
  v24 = *MEMORY[0x277D85DE8];
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
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

        [(CSHorizontalScrollFailureRecognizer *)self _locationOfTouch:*(*(&v19 + 1) + 8 * i) inView:view, v19];
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

- (CSHorizontalScrollFailureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v11.receiver = self;
  v11.super_class = CSHorizontalScrollFailureRecognizer;
  v4 = [(CSHorizontalScrollFailureRecognizer *)&v11 initWithTarget:target action:action];
  if (v4)
  {
    v5 = +[CSLockScreenDomain rootSettings];
    horizontalScrollFailureRecognizerSettings = [v5 horizontalScrollFailureRecognizerSettings];

    [horizontalScrollFailureRecognizerSettings addKeyObserver:v4];
    [(CSHorizontalScrollFailureRecognizer *)v4 _loadFromSettings:horizontalScrollFailureRecognizerSettings];
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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_externallyEnabled != enabled)
  {
    self->_externallyEnabled = enabled;
    [(CSHorizontalScrollFailureRecognizer *)self _updateEnabled];
  }
}

- (void)_setArmed:(BOOL)armed
{
  if (self->_armed != armed)
  {
    self->_armed = armed;
    [(CSHorizontalScrollFailureRecognizer *)self _updateEnabled];
  }
}

- (void)setState:(int64_t)state
{
  v8.receiver = self;
  v8.super_class = CSHorizontalScrollFailureRecognizer;
  [(CSHorizontalScrollFailureRecognizer *)&v8 setState:?];
  if (state != 3)
  {
    triggeredEvent = self->_triggeredEvent;
    self->_triggeredEvent = 0;

    if (state)
    {
      if (state != 1)
      {
        return;
      }

      greenColor = [MEMORY[0x277D75348] greenColor];
    }

    else
    {
      greenColor = [MEMORY[0x277D75348] yellowColor];
    }

    v7 = greenColor;
    [(CSHorizontalScrollFailureRecognizer *)self _setDebugViewsColor:greenColor];
  }
}

- (BOOL)_recognizeForMultiTouchIfNecessary:(id)necessary
{
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
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
      [(CSHorizontalScrollFailureRecognizer *)&self->_touches _recognizeForMultiTouchIfNecessary:view];
    }

    v5 = 1;
    [(CSHorizontalScrollFailureRecognizer *)self setState:1];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  touches = self->_touches;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:eventCopy];
  [(NSMutableSet *)touches unionSet:v8];

  v9 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:eventCopy];
    v15 = __stringsFromTouches(v14, view);
    v16 = __stringsFromTouches(self->_touches, view);
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_21EB05000, v9, OS_LOG_TYPE_DEBUG, "HorizontalScrollFailureRecognizer - touches BEGAN: touchesFromEvent: %@, knownTouches: %@", &v17, 0x16u);
  }

  if (![(CSHorizontalScrollFailureRecognizer *)self _recognizeForMultiTouchIfNecessary:eventCopy]&& !self->_tracking)
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  v7 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:eventCopy];
    v10 = __stringsFromTouches(v9, view);
    v11 = __stringsFromTouches(self->_touches, view);
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  endedCopy = ended;
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  [(NSMutableSet *)self->_touches minusSet:endedCopy];

  v10 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:eventCopy];
    v13 = __stringsFromTouches(v12, view);
    v14 = __stringsFromTouches(self->_touches, view);
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
      objc_storeStrong(&self->_triggeredEvent, event);
      v11 = 3;
    }

    else
    {
      v11 = 5;
    }

    [(CSHorizontalScrollFailureRecognizer *)self setState:v11];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  cancelledCopy = cancelled;
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  [(NSMutableSet *)self->_touches minusSet:cancelledCopy];

  v9 = SBLogDashBoardScrollGestures();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:eventCopy];
    v12 = __stringsFromTouches(v11, view);
    v13 = __stringsFromTouches(self->_touches, view);
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

- (CGPoint)_locationOfTouch:(id)touch inView:(id)view
{
  viewCopy = view;
  touchCopy = touch;
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  window = [view window];
  screen = [window screen];
  [touchCopy locationInView:view];
  v12 = v11;
  v14 = v13;

  [window convertPoint:view fromCoordinateSpace:{v12, v14}];
  v16 = v15;
  v18 = v17;
  coordinateSpace = [screen coordinateSpace];
  [coordinateSpace convertPoint:window fromCoordinateSpace:{v16, v18}];
  v21 = v20;
  v23 = v22;

  window2 = [viewCopy window];
  coordinateSpace2 = [screen coordinateSpace];
  [window2 convertPoint:coordinateSpace2 fromCoordinateSpace:{v21, v23}];
  v27 = v26;
  v29 = v28;

  [viewCopy convertPoint:window2 fromCoordinateSpace:{v27, v29}];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

- (void)_loadFromSettings:(id)settings
{
  settingsCopy = settings;
  -[CSHorizontalScrollFailureRecognizer _setArmed:](self, "_setArmed:", [settingsCopy enabled]);
  -[CSHorizontalScrollFailureRecognizer setViewDebugArea:](self, "setViewDebugArea:", [settingsCopy viewDebugArea]);
  -[CSHorizontalScrollFailureRecognizer setMaxAllowableVerticalOffset:](self, "setMaxAllowableVerticalOffset:", [settingsCopy maxAllowableVerticalOffset]);
  [settingsCopy topAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMaxAllowedTopAngle:?];
  [settingsCopy topAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMinAllowedTopAngle:?];
  [settingsCopy bottomAngle];
  [(CSHorizontalScrollFailureRecognizer *)self setMaxAllowedBottomAngle:?];
  [settingsCopy bottomAngle];
  v6 = v5;

  [(CSHorizontalScrollFailureRecognizer *)self setMinAllowedBottomAngle:v6];
}

- (int64_t)_activeTouchCountForEvent:(id)event
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(CSHorizontalScrollFailureRecognizer *)self _touchesFromEvent:event];
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

- (double)_computeEffectiveAngleFromMin:(double)min max:(double)max
{
  view = [(CSHorizontalScrollFailureRecognizer *)self view];
  v8 = view;
  if (vabdd_f64(max, min) > 0.001)
  {
    [view bounds];
    max = self->_startingLocation.x * ((max - min) / v9);
  }

  return max;
}

- (BOOL)_isOutOfBoundsVertically:(CGPoint)vertically
{
  v3 = floor(vabdd_f64(vertically.y, self->_startingLocation.y));
  [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:vertically.x];
  return v3 > v4;
}

- (double)_maxAllowableVerticalOffsetForPoint:(CGPoint)point
{
  y = point.y;
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return self->_maxAllowableVerticalOffset;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      return self->_maxAllowableVerticalOffset;
    }
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v9;

  v11 = fabs(y + v10 * -0.5);
  return self->_maxAllowableVerticalOffset / 3.0 + (1.0 - (v11 + v11) / v10) * ((self->_maxAllowableVerticalOffset + self->_maxAllowableVerticalOffset) / 3.0);
}

- (BOOL)_isOutOfBounds:(CGPoint)bounds forAngle:(double)angle
{
  y = bounds.y;
  x = bounds.x;
  v8 = [(CSHorizontalScrollFailureRecognizer *)self _isOutOfBoundsVertically:?];
  if (v8)
  {
    v9 = fabs(tan(angle * 0.0174532925)) * vabdd_f64(x, self->_startingLocation.x) + 0.0;
    v10 = floor(vabdd_f64(y, self->_startingLocation.y));
    [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:x, y];
    LOBYTE(v8) = v10 - v11 > v9;
  }

  return v8;
}

- (void)_setDebugViewsVisible:(BOOL)visible
{
  visibleCopy = visible;
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

  if (visibleCopy)
  {
    view = [(CSHorizontalScrollFailureRecognizer *)self view];
    x = self->_startingLocation.x;
    y = self->_startingLocation.y;
    [(CSHorizontalScrollFailureRecognizer *)self _maxAllowableVerticalOffsetForPoint:x, y];
    v14 = v13;
    v15 = y - v13;
    [view bounds];
    v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, v15, v16, v14 + v14}];
    yellowColor = [MEMORY[0x277D75348] yellowColor];
    [v17 setBackgroundColor:yellowColor];

    v19 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:0 recognizer:self forPoint:view withMaxVerticalOffset:1 inView:x pointingRight:y, v14];
    v20 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:0 recognizer:self forPoint:view withMaxVerticalOffset:0 inView:x pointingRight:y, v14];
    v21 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:1 recognizer:self forPoint:view withMaxVerticalOffset:1 inView:x pointingRight:y, v14];
    v22 = [[SBHorizontalScrollFailureTriangleView alloc] initWithStyle:1 recognizer:self forPoint:view withMaxVerticalOffset:0 inView:x pointingRight:y, v14];
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
          [view addSubview:v30];
          [v30 setAlpha:0.5];
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v27);
    }
  }
}

- (void)_setDebugViewsColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
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
          [v10 setContentColor:colorCopy];
        }

        else
        {
          [v10 setBackgroundColor:{colorCopy, v11}];
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
  v2 = NSStringFromCGPoint(*&self);
  OUTLINED_FUNCTION_0_3(&dword_21EB05000, v3, v4, "FAILURE RECOGNIZER - averagePointFromTouches: %@", v5, v6, v7, v8, 2u);
}

@end