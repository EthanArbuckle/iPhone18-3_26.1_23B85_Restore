@interface DRTouchTrackingWindow
- (DRTouchTrackingWindow)initWithWindowScene:(id)scene;
- (DRTouchTrackingWindowDelegate)trackingDelegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setTracksTouches:(BOOL)touches;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation DRTouchTrackingWindow

- (DRTouchTrackingWindow)initWithWindowScene:(id)scene
{
  v9.receiver = self;
  v9.super_class = DRTouchTrackingWindow;
  v3 = [(DRTouchTrackingWindow *)&v9 initWithWindowScene:scene];
  v4 = v3;
  if (v3)
  {
    [(DRTouchTrackingWindow *)v3 setMultipleTouchEnabled:1];
    v4->_tracksTouches = 1;
    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    velocityIntegratorsByTouch = v4->_velocityIntegratorsByTouch;
    v4->_velocityIntegratorsByTouch = v5;

    _bindingLayer = [(DRTouchTrackingWindow *)v4 _bindingLayer];
    [_bindingLayer setAllowsHitTesting:0];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = DRTouchTrackingWindow;
  selfCopy = [(DRTouchTrackingWindow *)&v12 hitTest:eventCopy withEvent:x, y];
  if (!selfCopy)
  {
    selfCopy = self;
    v9 = DRLogTarget();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v18.x = x;
      v18.y = y;
      v10 = NSStringFromCGPoint(v18);
      *buf = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = eventCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "hitTest %@ withEvent:%@ failed to return a view. Falling back.", buf, 0x16u);
    }
  }

  return selfCopy;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v6 = beganCopy;
  if (self->_tracksTouches)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [beganCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = objc_opt_new();
          [v12 setMinimumRequiredMovement:0.0];
          [v12 setHysteresisTimeInterval:0.3];
          [(NSMapTable *)self->_velocityIntegratorsByTouch setObject:v12 forKey:v11];
          [v11 locationInView:self];
          [v12 addSample:?];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    trackingDelegate = [(DRTouchTrackingWindow *)self trackingDelegate];
    [trackingDelegate touchTrackingWindow:self touchesBegan:v6];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [movedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(movedCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_velocityIntegratorsByTouch objectForKey:v11];
        if (v12)
        {
          [v11 locationInView:self];
          [v12 addSample:?];
          v8 = 1;
        }
      }

      v7 = [movedCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    if (v8)
    {
      trackingDelegate = [(DRTouchTrackingWindow *)self trackingDelegate];
      [trackingDelegate touchTrackingWindow:self touchesMoved:movedCopy];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = endedCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [(NSMapTable *)self->_velocityIntegratorsByTouch objectForKey:v12];
        if (v13)
        {
          [v12 locationInView:self];
          [v13 addSample:?];
          v14 = objc_opt_new();
          [v14 setTouch:v12];
          [v13 velocity3D];
          v16[0] = v16[2];
          v16[1] = v16[3];
          [v14 setVelocity:v16];
          [v6 addObject:v14];
          [(NSMapTable *)self->_velocityIntegratorsByTouch removeObjectForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    trackingDelegate = [(DRTouchTrackingWindow *)self trackingDelegate];
    [trackingDelegate touchTrackingWindow:self touchesEnded:v7 pairedWithVelocities:v6];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [cancelledCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(cancelledCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_velocityIntegratorsByTouch objectForKey:v11];
        if (v12)
        {
          [(NSMapTable *)self->_velocityIntegratorsByTouch removeObjectForKey:v11];
          v8 = 1;
        }
      }

      v7 = [cancelledCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    if (v8)
    {
      trackingDelegate = [(DRTouchTrackingWindow *)self trackingDelegate];
      [trackingDelegate touchTrackingWindow:self touchesCancelled:cancelledCopy];
    }
  }
}

- (void)setTracksTouches:(BOOL)touches
{
  if (self->_tracksTouches != touches)
  {
    self->_tracksTouches = touches;
    if (!touches)
    {
      if ([(NSMapTable *)self->_velocityIntegratorsByTouch count])
      {
        v4 = +[NSMutableSet set];
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        keyEnumerator = [(NSMapTable *)self->_velocityIntegratorsByTouch keyEnumerator];
        v6 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v11;
          do
          {
            v9 = 0;
            do
            {
              if (*v11 != v8)
              {
                objc_enumerationMutation(keyEnumerator);
              }

              [v4 addObject:*(*(&v10 + 1) + 8 * v9)];
              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v7);
        }

        [(DRTouchTrackingWindow *)self touchesCancelled:v4 withEvent:0];
      }
    }
  }
}

- (DRTouchTrackingWindowDelegate)trackingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trackingDelegate);

  return WeakRetained;
}

@end