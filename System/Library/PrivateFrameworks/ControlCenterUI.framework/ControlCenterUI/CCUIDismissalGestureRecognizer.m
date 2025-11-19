@interface CCUIDismissalGestureRecognizer
- (CCUIDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_cancelOtherGestureRecognizersForTouches:(id)a3;
- (void)_tryToCancelTouches;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CCUIDismissalGestureRecognizer

- (CCUIDismissalGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = CCUIDismissalGestureRecognizer;
  v4 = [(CCUIDismissalGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(CCUIDismissalGestureRecognizer *)v4 addTarget:v4 action:sel__tryToCancelTouches];
  }

  return v5;
}

- (void)reset
{
  self->_triggered = 0;
  currentTouches = self->_currentTouches;
  self->_currentTouches = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:v6];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesBegan:v7 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:v6];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:v6];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesEnded:v7 withEvent:v6];
}

- (void)_tryToCancelTouches
{
  if (!self->_triggered)
  {
    v3 = [(CCUIDismissalGestureRecognizer *)self state];
    if ((v3 - 1) >= 3)
    {
      if ((v3 - 4) >= 2)
      {
        return;
      }

      self->_triggered = 1;
      p_currentTouches = &self->_currentTouches;
    }

    else
    {
      self->_triggered = 1;
      p_currentTouches = &self->_currentTouches;
      [(CCUIDismissalGestureRecognizer *)self _cancelOtherGestureRecognizersForTouches:self->_currentTouches];
    }

    v5 = *p_currentTouches;
    *p_currentTouches = 0;
  }
}

- (void)_cancelOtherGestureRecognizersForTouches:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 gestureRecognizers];
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v16 + 1) + 8 * v14);
              if (v15 != self)
              {
                [*(*(&v16 + 1) + 8 * v14) setEnabled:0];
                [(CCUIDismissalGestureRecognizer *)v15 setEnabled:1];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

@end