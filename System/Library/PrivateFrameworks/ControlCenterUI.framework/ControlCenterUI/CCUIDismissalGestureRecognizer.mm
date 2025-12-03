@interface CCUIDismissalGestureRecognizer
- (CCUIDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_cancelOtherGestureRecognizersForTouches:(id)touches;
- (void)_tryToCancelTouches;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CCUIDismissalGestureRecognizer

- (CCUIDismissalGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = CCUIDismissalGestureRecognizer;
  v4 = [(CCUIDismissalGestureRecognizer *)&v7 initWithTarget:target action:action];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  v8 = [(CCUIDismissalGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  currentTouches = self->_currentTouches;
  self->_currentTouches = v8;

  v10.receiver = self;
  v10.super_class = CCUIDismissalGestureRecognizer;
  [(CCUIDismissalGestureRecognizer *)&v10 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)_tryToCancelTouches
{
  if (!self->_triggered)
  {
    state = [(CCUIDismissalGestureRecognizer *)self state];
    if ((state - 1) >= 3)
    {
      if ((state - 4) >= 2)
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

- (void)_cancelOtherGestureRecognizersForTouches:(id)touches
{
  v26 = *MEMORY[0x277D85DE8];
  touchesCopy = touches;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [touchesCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(touchesCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        gestureRecognizers = [v9 gestureRecognizers];
        v11 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(gestureRecognizers);
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
            v12 = [gestureRecognizers countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [touchesCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }
}

@end