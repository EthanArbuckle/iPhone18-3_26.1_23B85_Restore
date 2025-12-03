@interface FMMapGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (CGPoint)initialTouchLocation;
- (CGPoint)lastTouchPoint;
- (FMMapGestureRecognizer)init;
- (FMMapGestureRecognizerDelegate)touchDelegate;
- (void)dealloc;
- (void)finishSwipeGesture:(double)gesture;
- (void)mapTappedTimer;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation FMMapGestureRecognizer

- (FMMapGestureRecognizer)init
{
  v5.receiver = self;
  v5.super_class = FMMapGestureRecognizer;
  v2 = [(FMMapGestureRecognizer *)&v5 init];
  [(FMMapGestureRecognizer *)v2 setTouchRadius:20];
  if (v2)
  {
    [(FMMapGestureRecognizer *)v2 setCancelsTouchesInView:0];
    v3 = objc_opt_new();
    [(FMMapGestureRecognizer *)v2 setOtherGestures:v3];
  }

  return v2;
}

- (void)dealloc
{
  doubleTapTimer = [(FMMapGestureRecognizer *)self doubleTapTimer];
  [doubleTapTimer invalidate];

  [(FMMapGestureRecognizer *)self setDoubleTapTimer:0];
  v4.receiver = self;
  v4.super_class = FMMapGestureRecognizer;
  [(FMMapGestureRecognizer *)&v4 dealloc];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v6 = 0.0;
  [(FMMapGestureRecognizer *)self setVelocity:0.0];
  [(FMMapGestureRecognizer *)self setIsTrackingTouches:1];
  view = [(FMMapGestureRecognizer *)self view];
  [view frame];
  [(FMMapGestureRecognizer *)self setSwipeThreshold:v8 * 0.600000024];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  -[FMMapGestureRecognizer setIsRTLOrientation:](self, "setIsRTLOrientation:", [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1);

  v10 = 30.0;
  if ([(FMMapGestureRecognizer *)self isRTLOrientation])
  {
    view2 = [(FMMapGestureRecognizer *)self view];
    [view2 frame];
    v6 = v12 + -30.0;

    view3 = [(FMMapGestureRecognizer *)self view];
    [view3 frame];
    v10 = v14;
  }

  touchDelegate = [(FMMapGestureRecognizer *)self touchDelegate];
  allObjects = [beganCopy allObjects];

  v16 = [allObjects objectAtIndexedSubscript:0];

  view4 = [(FMMapGestureRecognizer *)self view];
  [v16 locationInView:view4];
  [(FMMapGestureRecognizer *)self setInitialTouchLocation:?];

  if ([(FMMapGestureRecognizer *)self isSwipeEnabled]&& ([(FMMapGestureRecognizer *)self initialTouchLocation], v18 <= v10))
  {
    [(FMMapGestureRecognizer *)self initialTouchLocation];
    v19 = v20 >= v6;
  }

  else
  {
    v19 = 0;
  }

  [(FMMapGestureRecognizer *)self setIsSwipingFromTheEdge:v19];
  [(FMMapGestureRecognizer *)self setIsSwipingGestureEnded:0];
  if ([(FMMapGestureRecognizer *)self numberOfTouches]>= 2)
  {
    [(FMMapGestureRecognizer *)self setIsSwipingFromTheEdge:0];
  }

  if ([(FMMapGestureRecognizer *)self isSwipingFromTheEdge]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [touchDelegate mapSwipedBegin:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [touchDelegate mapTouchBegan:self];
  }

  view5 = [(FMMapGestureRecognizer *)self view];
  [v16 locationInView:view5];
  [(FMMapGestureRecognizer *)self setLastTouchPoint:?];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [(FMMapGestureRecognizer *)self touchDelegate:cancelled];
  if (objc_opt_respondsToSelector())
  {
    [v5 mapTouchCancelled:self];
  }

  [(FMMapGestureRecognizer *)self finishSwipeGesture:0.0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v71 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  touchDelegate = [(FMMapGestureRecognizer *)self touchDelegate];
  allObjects = [endedCopy allObjects];
  v8 = [allObjects objectAtIndexedSubscript:0];

  view = [(FMMapGestureRecognizer *)self view];
  [v8 locationInView:view];
  v11 = v10;
  v13 = v12;

  [(FMMapGestureRecognizer *)self initialTouchLocation];
  [FMMapGestureRecognizer distanceBetweenPointA:"distanceBetweenPointA:andPointB:" andPointB:?];
  v15 = v14;
  previousTouch = [(FMMapGestureRecognizer *)self previousTouch];
  view2 = [(FMMapGestureRecognizer *)self view];
  [previousTouch locationInView:view2];
  v19 = v18;
  v21 = v20;

  [(FMMapGestureRecognizer *)self distanceBetweenPointA:v11 andPointB:v13, v19, v21];
  v23 = v22;
  anyObject = [endedCopy anyObject];
  view3 = [anyObject view];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    anyObject2 = [endedCopy anyObject];
    view4 = [anyObject2 view];
    [touchDelegate calloutButtonTapped:view4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v62 = endedCopy;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      subviews = [view3 subviews];
      v29 = [subviews countByEnumeratingWithState:&v66 objects:v70 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v67;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(subviews);
            }

            v33 = *(*(&v66 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v33 frame];
              v35 = v34;
              v37 = v36;
              v39 = v38;
              v41 = v40;
              [v8 locationInView:view3];
              v72.x = v42;
              v72.y = v43;
              v73.origin.x = v35;
              v73.origin.y = v37;
              v73.size.width = v39;
              v73.size.height = v41;
              if (CGRectContainsPoint(v73, v72) && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [touchDelegate userLocationTapped:view3];
              }
            }
          }

          v30 = [subviews countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v30);
      }

      endedCopy = v62;
    }
  }

  if (v15 < [(FMMapGestureRecognizer *)self touchRadius])
  {
    view5 = [v8 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      previousTouch2 = [(FMMapGestureRecognizer *)self previousTouch];

      if (previousTouch2)
      {
        if (v23 >= -[FMMapGestureRecognizer touchRadius](self, "touchRadius") || [v8 tapCount] < 2)
        {
          v48 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_mapTappedTimer selector:0 userInfo:0 repeats:0.25];
          [(FMMapGestureRecognizer *)self setDoubleTapTimer:v48];

          currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
          doubleTapTimer = [(FMMapGestureRecognizer *)self doubleTapTimer];
          [currentRunLoop addTimer:doubleTapTimer forMode:*MEMORY[0x277CBE738]];
        }

        else
        {
          doubleTapTimer2 = [(FMMapGestureRecognizer *)self doubleTapTimer];
          [doubleTapTimer2 invalidate];

          [(FMMapGestureRecognizer *)self setDoubleTapTimer:0];
          if (objc_opt_respondsToSelector())
          {
            [touchDelegate mapDoubleTapped:self];
          }
        }

        [(FMMapGestureRecognizer *)self setPreviousTouch:0];
      }

      else
      {
        v51 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_mapTappedTimer selector:0 userInfo:0 repeats:0.25];
        [(FMMapGestureRecognizer *)self setDoubleTapTimer:v51];

        currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
        doubleTapTimer3 = [(FMMapGestureRecognizer *)self doubleTapTimer];
        [currentRunLoop2 addTimer:doubleTapTimer3 forMode:*MEMORY[0x277CBE738]];
      }

      [(FMMapGestureRecognizer *)self setPreviousTouch:v8];
    }
  }

  if ([(FMMapGestureRecognizer *)self isSwipingFromTheEdge])
  {
    [(FMMapGestureRecognizer *)self velocity];
    if (v54 <= 14.0)
    {
      if ([(FMMapGestureRecognizer *)self isRTLOrientation])
      {
        view6 = [(FMMapGestureRecognizer *)self view];
        [view6 frame];
        v58 = v57 - v11;
        [(FMMapGestureRecognizer *)self swipeThreshold];
        [(FMMapGestureRecognizer *)self finishSwipeGesture:v58 / v59];
      }

      else
      {
        [(FMMapGestureRecognizer *)self swipeThreshold];
        [(FMMapGestureRecognizer *)self finishSwipeGesture:v11 / v60];
      }
    }

    else
    {
      v55 = MEMORY[0x277D75D18];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __49__FMMapGestureRecognizer_touchesEnded_withEvent___block_invoke;
      v63[3] = &unk_278FDB908;
      v64 = touchDelegate;
      selfCopy = self;
      [v55 animateWithDuration:v63 animations:0.3];
    }
  }

  v61 = objc_opt_new();
  [(FMMapGestureRecognizer *)self setOtherGestures:v61];

  if (objc_opt_respondsToSelector())
  {
    [touchDelegate mapTouchEnded:self];
  }

  [(FMMapGestureRecognizer *)self setIsTrackingTouches:0];
}

uint64_t __49__FMMapGestureRecognizer_touchesEnded_withEvent___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    [*(a1 + 32) mapSwiped:*(a1 + 40) withPercent:1.0];
    v3 = *(a1 + 40);

    return [v3 finishSwipeGesture:1.0];
  }

  return result;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  touchDelegate = [(FMMapGestureRecognizer *)self touchDelegate];
  allObjects = [movedCopy allObjects];
  v7 = [allObjects objectAtIndexedSubscript:0];

  view = [(FMMapGestureRecognizer *)self view];
  [v7 locationInView:view];
  v10 = v9;
  v12 = v11;

  [(FMMapGestureRecognizer *)self initialTouchLocation];
  [FMMapGestureRecognizer distanceBetweenPointA:"distanceBetweenPointA:andPointB:" andPointB:?];
  v14 = v13;
  if ([(FMMapGestureRecognizer *)self isTrackingTouches]&& v14 > [(FMMapGestureRecognizer *)self touchRadius]&& ![(FMMapGestureRecognizer *)self isSwipingGestureEnded])
  {
    if ([(FMMapGestureRecognizer *)self isSwipingFromTheEdge])
    {
      [(FMMapGestureRecognizer *)self swipeThreshold];
      v16 = v15;
      if ([(FMMapGestureRecognizer *)self isRTLOrientation])
      {
        view2 = [(FMMapGestureRecognizer *)self view];
        [view2 frame];
        v19 = v18 - v10;
        [(FMMapGestureRecognizer *)self swipeThreshold];
        v21 = v19 / v20;

        v22 = fmin(v21, 1.0);
      }

      else
      {
        v22 = fmin(v10 / v16, 1.0);
      }

      if ([movedCopy count] > 1)
      {
        selfCopy2 = self;
        goto LABEL_16;
      }

      if (objc_opt_respondsToSelector())
      {
        [touchDelegate mapSwiped:self withPercent:v22];
      }

      if (v22 == 1.0)
      {
        selfCopy2 = self;
LABEL_16:
        [(FMMapGestureRecognizer *)selfCopy2 finishSwipeGesture:?];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [touchDelegate mapTouchMoved:self];
    }
  }

  [(FMMapGestureRecognizer *)self lastTouchPoint];
  [(FMMapGestureRecognizer *)self distanceBetweenPointA:v10 andPointB:v12, v24, v25];
  [(FMMapGestureRecognizer *)self setVelocity:?];
  view3 = [(FMMapGestureRecognizer *)self view];
  [v7 locationInView:view3];
  [(FMMapGestureRecognizer *)self setLastTouchPoint:?];
}

- (void)finishSwipeGesture:(double)gesture
{
  v17 = *MEMORY[0x277D85DE8];
  touchDelegate = [(FMMapGestureRecognizer *)self touchDelegate];
  if ([(FMMapGestureRecognizer *)self isSwipingFromTheEdge])
  {
    [(FMMapGestureRecognizer *)self setIsSwipingFromTheEdge:0];
    doubleTapTimer = [(FMMapGestureRecognizer *)self doubleTapTimer];
    [doubleTapTimer invalidate];

    if (objc_opt_respondsToSelector())
    {
      [touchDelegate mapSwipedEnd:self withPercent:gesture];
    }

    [(FMMapGestureRecognizer *)self setEnabled:0];
    [(FMMapGestureRecognizer *)self setEnabled:1];
    [(FMMapGestureRecognizer *)self setIsSwipingGestureEnded:1];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  otherGestures = [(FMMapGestureRecognizer *)self otherGestures];
  v8 = [otherGestures countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(otherGestures);
        }

        [*(*(&v12 + 1) + 8 * v11++) setEnabled:1];
      }

      while (v9 != v11);
      v9 = [otherGestures countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)mapTappedTimer
{
  touchDelegate = [(FMMapGestureRecognizer *)self touchDelegate];
  if (objc_opt_respondsToSelector())
  {
    [touchDelegate mapTapped:self];
  }
}

- (void)reset
{
  v3 = objc_opt_new();
  [(FMMapGestureRecognizer *)self setOtherGestures:v3];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  otherGestures = [(FMMapGestureRecognizer *)self otherGestures];
  [otherGestures addObject:recognizerCopy];

  [recognizerCopy setEnabled:{-[FMMapGestureRecognizer isSwipingFromTheEdge](self, "isSwipingFromTheEdge") ^ 1}];
  return 0;
}

- (FMMapGestureRecognizerDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

- (CGPoint)initialTouchLocation
{
  x = self->_initialTouchLocation.x;
  y = self->_initialTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastTouchPoint
{
  x = self->_lastTouchPoint.x;
  y = self->_lastTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end