@interface HKMultiTouchPressGestureRecognizer
- (CGPoint)locationInView:(id)a3;
- (CGRect)touchableBounds;
- (HKMultiTouchPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (NSArray)orderedTouches;
- (id)touchAtIndex:(unint64_t)a3;
- (void)reset;
- (void)touchDelayTimerFired:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation HKMultiTouchPressGestureRecognizer

- (HKMultiTouchPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = HKMultiTouchPressGestureRecognizer;
  result = [(HKMultiTouchPressGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_minimumNumberOfTouches = 1;
    result->_maximumNumberOfTouches = 1;
  }

  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48 = a4;
  v7 = [(HKMultiTouchPressGestureRecognizer *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(HKMultiTouchPressGestureRecognizer *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(HKMultiTouchPressGestureRecognizer *)self delegate];
      [v11 gestureWillBeginWithRecognizer:self];
    }
  }

  if ([v6 count] <= self->_maximumNumberOfTouches)
  {
    v12 = [v6 count];
    if ([(NSMutableSet *)self->_touches count]+ v12 <= self->_maximumNumberOfTouches || !self->_touchDelayTimer)
    {
      v47 = v6;
      if (CGRectEqualToRect(self->_touchableBounds, *MEMORY[0x1E695F058]))
      {
        v14 = [v6 mutableCopy];
      }

      else
      {
        v46 = 328;
        v14 = [MEMORY[0x1E695DFA8] set];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v15 = v6;
        v16 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v54;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v54 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v53 + 1) + 8 * i);
              v21 = [(HKMultiTouchPressGestureRecognizer *)self view];
              [v20 locationInView:v21];
              v60.x = v22;
              v60.y = v23;
              v24 = CGRectContainsPoint(self->_touchableBounds, v60);

              if (v24)
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
          }

          while (v17);
        }
      }

      touches = self->_touches;
      v13 = v48;
      if (touches)
      {
        if ([(NSMutableSet *)touches count]>= self->_maximumNumberOfTouches)
        {
          goto LABEL_48;
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = v14;
        v26 = v14;
        v27 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = *v50;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v50 != v30)
              {
                objc_enumerationMutation(v26);
              }

              v32 = *(*(&v49 + 1) + 8 * j);
              if ([(NSMutableSet *)self->_touches count]>= self->_maximumNumberOfTouches)
              {
                [(HKMultiTouchPressGestureRecognizer *)self ignoreTouch:v32 forEvent:v48];
              }

              else
              {
                [(NSMutableSet *)self->_touches addObject:v32];
                v29 = 1;
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v28);
        }

        else
        {
          v29 = 0;
        }

        v14 = v46;
        if (self->_touchDelayTimer)
        {
          goto LABEL_48;
        }

        if ([(HKMultiTouchPressGestureRecognizer *)self state]|| [(NSMutableSet *)self->_touches count]< self->_minimumNumberOfTouches)
        {
          if ((v29 & 1) == 0 || [(HKMultiTouchPressGestureRecognizer *)self state]!= 2)
          {
            goto LABEL_48;
          }

          v44 = self;
          v45 = 2;
          goto LABEL_47;
        }
      }

      else
      {
        if ([v14 count] <= self->_maximumNumberOfTouches)
        {
          v38 = v14;
          v34 = self->_touches;
          self->_touches = v38;
        }

        else
        {
          v33 = MEMORY[0x1E695DFA8];
          v34 = [v14 allObjects];
          v35 = [v34 subarrayWithRange:{0, self->_maximumNumberOfTouches}];
          v36 = [v33 setWithArray:v35];
          v37 = self->_touches;
          self->_touches = v36;
        }

        if ([(NSMutableSet *)self->_touches count]< self->_minimumNumberOfTouches)
        {
          goto LABEL_48;
        }

        if (self->_requiredPressDelay > 0.0)
        {
          v39 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel_touchDelayTimerFired_ selector:0 userInfo:0 repeats:?];
          touchDelayTimer = self->_touchDelayTimer;
          self->_touchDelayTimer = v39;

          v41 = [(HKMultiTouchPressGestureRecognizer *)self view];
          [(HKMultiTouchPressGestureRecognizer *)self locationInView:v41];
          self->_startingPosition.x = v42;
          self->_startingPosition.y = v43;

LABEL_48:
          v6 = v47;
          goto LABEL_49;
        }
      }

      v44 = self;
      v45 = 1;
LABEL_47:
      [(HKMultiTouchPressGestureRecognizer *)v44 setState:v45, v46];
      goto LABEL_48;
    }
  }

  [(HKMultiTouchPressGestureRecognizer *)self setState:5];
  v13 = v48;
LABEL_49:
}

- (void)touchDelayTimerFired:(id)a3
{
  [(NSTimer *)self->_touchDelayTimer invalidate];
  touchDelayTimer = self->_touchDelayTimer;
  self->_touchDelayTimer = 0;

  [(HKMultiTouchPressGestureRecognizer *)self setState:1];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v12 = a3;
  v5 = [(HKMultiTouchPressGestureRecognizer *)self view];
  [(HKMultiTouchPressGestureRecognizer *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  touchDelayTimer = self->_touchDelayTimer;
  if (touchDelayTimer && (vabdd_f64(v7, self->_startingPosition.x) > 300.0 || vabdd_f64(v9, self->_startingPosition.y) > 300.0))
  {
    [(NSTimer *)touchDelayTimer invalidate];
    v11 = self->_touchDelayTimer;
    self->_touchDelayTimer = 0;
  }

  if ([(NSMutableSet *)self->_touches intersectsSet:v12]&& [(HKMultiTouchPressGestureRecognizer *)self state]== 2)
  {
    [(HKMultiTouchPressGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v5 = [(NSMutableSet *)self->_touches intersectsSet:v8];
  v6 = v8;
  if (v5)
  {
    [(NSMutableSet *)self->_touches minusSet:v8];
    if ([(NSMutableSet *)self->_touches count]>= self->_minimumNumberOfTouches)
    {
      v7 = 2;
    }

    else if (self->_touchDelayTimer)
    {
      v7 = 5;
    }

    else
    {
      v7 = 3;
    }

    [(HKMultiTouchPressGestureRecognizer *)self setState:v7];
    v6 = v8;
  }
}

- (void)reset
{
  touches = self->_touches;
  self->_touches = 0;

  [(NSTimer *)self->_touchDelayTimer invalidate];
  touchDelayTimer = self->_touchDelayTimer;
  self->_touchDelayTimer = 0;

  self->_startingPosition = *MEMORY[0x1E695EFF8];
}

- (CGPoint)locationInView:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_touches;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v22 + 1) + 8 * i) locationInView:{v4, v22}];
        v10 = v10 + v13;
        v11 = v11 + v14;
      }

      v8 += v7;
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);

    v15 = [(HKMultiTouchPressGestureRecognizer *)self view];
    UIPointRoundToViewScale();
    v17 = v16;
    v19 = v18;
  }

  else
  {

    v17 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (NSArray)orderedTouches
{
  v3 = [(NSMutableSet *)self->_touches allObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HKMultiTouchPressGestureRecognizer_orderedTouches__block_invoke;
  v6[3] = &unk_1E81B8B90;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

BOOL __52__HKMultiTouchPressGestureRecognizer_orderedTouches__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 view];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) view];
  [v6 locationInView:v13];
  v15 = v14;
  v17 = v16;

  if (v10 == v15)
  {
    return v12 > v17;
  }

  else
  {
    return v10 > v15;
  }
}

- (id)touchAtIndex:(unint64_t)a3
{
  v4 = [(HKMultiTouchPressGestureRecognizer *)self orderedTouches];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
  }

  return v5;
}

- (CGRect)touchableBounds
{
  x = self->_touchableBounds.origin.x;
  y = self->_touchableBounds.origin.y;
  width = self->_touchableBounds.size.width;
  height = self->_touchableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end