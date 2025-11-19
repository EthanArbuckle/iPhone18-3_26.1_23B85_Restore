@interface FMMapGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (CGPoint)initialTouchLocation;
- (CGPoint)lastTouchPoint;
- (FMMapGestureRecognizer)init;
- (FMMapGestureRecognizerDelegate)touchDelegate;
- (void)dealloc;
- (void)finishSwipeGesture:(double)a3;
- (void)mapTappedTimer;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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
  v3 = [(FMMapGestureRecognizer *)self doubleTapTimer];
  [v3 invalidate];

  [(FMMapGestureRecognizer *)self setDoubleTapTimer:0];
  v4.receiver = self;
  v4.super_class = FMMapGestureRecognizer;
  [(FMMapGestureRecognizer *)&v4 dealloc];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = 0.0;
  [(FMMapGestureRecognizer *)self setVelocity:0.0];
  [(FMMapGestureRecognizer *)self setIsTrackingTouches:1];
  v7 = [(FMMapGestureRecognizer *)self view];
  [v7 frame];
  [(FMMapGestureRecognizer *)self setSwipeThreshold:v8 * 0.600000024];

  v9 = [MEMORY[0x277D75128] sharedApplication];
  -[FMMapGestureRecognizer setIsRTLOrientation:](self, "setIsRTLOrientation:", [v9 userInterfaceLayoutDirection] == 1);

  v10 = 30.0;
  if ([(FMMapGestureRecognizer *)self isRTLOrientation])
  {
    v11 = [(FMMapGestureRecognizer *)self view];
    [v11 frame];
    v6 = v12 + -30.0;

    v13 = [(FMMapGestureRecognizer *)self view];
    [v13 frame];
    v10 = v14;
  }

  v22 = [(FMMapGestureRecognizer *)self touchDelegate];
  v15 = [v5 allObjects];

  v16 = [v15 objectAtIndexedSubscript:0];

  v17 = [(FMMapGestureRecognizer *)self view];
  [v16 locationInView:v17];
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
    [v22 mapSwipedBegin:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [v22 mapTouchBegan:self];
  }

  v21 = [(FMMapGestureRecognizer *)self view];
  [v16 locationInView:v21];
  [(FMMapGestureRecognizer *)self setLastTouchPoint:?];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(FMMapGestureRecognizer *)self touchDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 mapTouchCancelled:self];
  }

  [(FMMapGestureRecognizer *)self finishSwipeGesture:0.0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(FMMapGestureRecognizer *)self touchDelegate];
  v7 = [v5 allObjects];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [(FMMapGestureRecognizer *)self view];
  [v8 locationInView:v9];
  v11 = v10;
  v13 = v12;

  [(FMMapGestureRecognizer *)self initialTouchLocation];
  [FMMapGestureRecognizer distanceBetweenPointA:"distanceBetweenPointA:andPointB:" andPointB:?];
  v15 = v14;
  v16 = [(FMMapGestureRecognizer *)self previousTouch];
  v17 = [(FMMapGestureRecognizer *)self view];
  [v16 locationInView:v17];
  v19 = v18;
  v21 = v20;

  [(FMMapGestureRecognizer *)self distanceBetweenPointA:v11 andPointB:v13, v19, v21];
  v23 = v22;
  v24 = [v5 anyObject];
  v25 = [v24 view];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v26 = [v5 anyObject];
    v27 = [v26 view];
    [v6 calloutButtonTapped:v27];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v62 = v5;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v28 = [v25 subviews];
      v29 = [v28 countByEnumeratingWithState:&v66 objects:v70 count:16];
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
              objc_enumerationMutation(v28);
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
              [v8 locationInView:v25];
              v72.x = v42;
              v72.y = v43;
              v73.origin.x = v35;
              v73.origin.y = v37;
              v73.size.width = v39;
              v73.size.height = v41;
              if (CGRectContainsPoint(v73, v72) && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v6 userLocationTapped:v25];
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v66 objects:v70 count:16];
        }

        while (v30);
      }

      v5 = v62;
    }
  }

  if (v15 < [(FMMapGestureRecognizer *)self touchRadius])
  {
    v44 = [v8 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v46 = [(FMMapGestureRecognizer *)self previousTouch];

      if (v46)
      {
        if (v23 >= -[FMMapGestureRecognizer touchRadius](self, "touchRadius") || [v8 tapCount] < 2)
        {
          v48 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_mapTappedTimer selector:0 userInfo:0 repeats:0.25];
          [(FMMapGestureRecognizer *)self setDoubleTapTimer:v48];

          v49 = [MEMORY[0x277CBEB88] currentRunLoop];
          v50 = [(FMMapGestureRecognizer *)self doubleTapTimer];
          [v49 addTimer:v50 forMode:*MEMORY[0x277CBE738]];
        }

        else
        {
          v47 = [(FMMapGestureRecognizer *)self doubleTapTimer];
          [v47 invalidate];

          [(FMMapGestureRecognizer *)self setDoubleTapTimer:0];
          if (objc_opt_respondsToSelector())
          {
            [v6 mapDoubleTapped:self];
          }
        }

        [(FMMapGestureRecognizer *)self setPreviousTouch:0];
      }

      else
      {
        v51 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_mapTappedTimer selector:0 userInfo:0 repeats:0.25];
        [(FMMapGestureRecognizer *)self setDoubleTapTimer:v51];

        v52 = [MEMORY[0x277CBEB88] currentRunLoop];
        v53 = [(FMMapGestureRecognizer *)self doubleTapTimer];
        [v52 addTimer:v53 forMode:*MEMORY[0x277CBE738]];
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
        v56 = [(FMMapGestureRecognizer *)self view];
        [v56 frame];
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
      v64 = v6;
      v65 = self;
      [v55 animateWithDuration:v63 animations:0.3];
    }
  }

  v61 = objc_opt_new();
  [(FMMapGestureRecognizer *)self setOtherGestures:v61];

  if (objc_opt_respondsToSelector())
  {
    [v6 mapTouchEnded:self];
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v27 = a3;
  v5 = [(FMMapGestureRecognizer *)self touchDelegate];
  v6 = [v27 allObjects];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [(FMMapGestureRecognizer *)self view];
  [v7 locationInView:v8];
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
        v17 = [(FMMapGestureRecognizer *)self view];
        [v17 frame];
        v19 = v18 - v10;
        [(FMMapGestureRecognizer *)self swipeThreshold];
        v21 = v19 / v20;

        v22 = fmin(v21, 1.0);
      }

      else
      {
        v22 = fmin(v10 / v16, 1.0);
      }

      if ([v27 count] > 1)
      {
        v23 = self;
        goto LABEL_16;
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 mapSwiped:self withPercent:v22];
      }

      if (v22 == 1.0)
      {
        v23 = self;
LABEL_16:
        [(FMMapGestureRecognizer *)v23 finishSwipeGesture:?];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v5 mapTouchMoved:self];
    }
  }

  [(FMMapGestureRecognizer *)self lastTouchPoint];
  [(FMMapGestureRecognizer *)self distanceBetweenPointA:v10 andPointB:v12, v24, v25];
  [(FMMapGestureRecognizer *)self setVelocity:?];
  v26 = [(FMMapGestureRecognizer *)self view];
  [v7 locationInView:v26];
  [(FMMapGestureRecognizer *)self setLastTouchPoint:?];
}

- (void)finishSwipeGesture:(double)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(FMMapGestureRecognizer *)self touchDelegate];
  if ([(FMMapGestureRecognizer *)self isSwipingFromTheEdge])
  {
    [(FMMapGestureRecognizer *)self setIsSwipingFromTheEdge:0];
    v6 = [(FMMapGestureRecognizer *)self doubleTapTimer];
    [v6 invalidate];

    if (objc_opt_respondsToSelector())
    {
      [v5 mapSwipedEnd:self withPercent:a3];
    }

    [(FMMapGestureRecognizer *)self setEnabled:0];
    [(FMMapGestureRecognizer *)self setEnabled:1];
    [(FMMapGestureRecognizer *)self setIsSwipingGestureEnded:1];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [(FMMapGestureRecognizer *)self otherGestures];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setEnabled:1];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)mapTappedTimer
{
  v3 = [(FMMapGestureRecognizer *)self touchDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 mapTapped:self];
  }
}

- (void)reset
{
  v3 = objc_opt_new();
  [(FMMapGestureRecognizer *)self setOtherGestures:v3];
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(FMMapGestureRecognizer *)self otherGestures];
  [v5 addObject:v4];

  [v4 setEnabled:{-[FMMapGestureRecognizer isSwipingFromTheEdge](self, "isSwipingFromTheEdge") ^ 1}];
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