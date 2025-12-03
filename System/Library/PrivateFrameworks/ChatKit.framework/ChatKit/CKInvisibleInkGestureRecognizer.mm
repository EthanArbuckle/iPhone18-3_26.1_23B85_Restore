@interface CKInvisibleInkGestureRecognizer
- (BOOL)_hasActiveTouchesInEvent:(id)event;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer;
- (CGPoint)startLocation;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CKInvisibleInkGestureRecognizer

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = [recognizerCopy view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = view;
      v6 = ([v5 isDragging] & 1) != 0 || (objc_msgSend(v5, "isDecelerating") & 1) != 0 || (objc_msgSend(v5, "_isAnimatingScroll") & 1) != 0 || objc_msgSend(v5, "__ck_isVerticallyRubberBanding");
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([beganCopy count] == 1 && (-[CKInvisibleInkGestureRecognizer firstTouch](self, "firstTouch"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    anyObject = [beganCopy anyObject];
    [(CKInvisibleInkGestureRecognizer *)self setFirstTouch:anyObject];

    firstTouch = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    view = [(CKInvisibleInkGestureRecognizer *)self view];
    [firstTouch locationInView:view];
    [(CKInvisibleInkGestureRecognizer *)self setStartLocation:?];

    firstTouch2 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    [firstTouch2 timestamp];
    [(CKInvisibleInkGestureRecognizer *)self setStartTime:?];
  }

  else if (![(CKInvisibleInkGestureRecognizer *)self state])
  {
    [(CKInvisibleInkGestureRecognizer *)self setState:1];
  }

  view2 = [(CKInvisibleInkGestureRecognizer *)self view];
  [view2 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if (![(CKInvisibleInkGestureRecognizer *)self state])
  {
    firstTouch = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    [firstTouch timestamp];
    v9 = v8;
    [(CKInvisibleInkGestureRecognizer *)self startTime];
    v11 = v10;

    firstTouch2 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    v13 = [movedCopy containsObject:firstTouch2];

    if (v13 && (v14 = v9 - v11, v14 <= 0.2))
    {
      firstTouch3 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
      view = [(CKInvisibleInkGestureRecognizer *)self view];
      [firstTouch3 locationInView:view];
      v18 = v17;

      [(CKInvisibleInkGestureRecognizer *)self startLocation];
      if (vabdd_f64(v18, v19) >= (1.0 - v14) * 140.0)
      {
        [(CKInvisibleInkGestureRecognizer *)self setState:5];
        view2 = [(CKInvisibleInkGestureRecognizer *)self view];
        v21 = [eventCopy touchesForGestureRecognizer:self];
        [view2 touchesCancelled:v21 withEvent:eventCopy];
      }
    }

    else
    {
      [(CKInvisibleInkGestureRecognizer *)self setState:1];
    }
  }

  view3 = [(CKInvisibleInkGestureRecognizer *)self view];
  [view3 touchesMoved:movedCopy withEvent:eventCopy];
}

- (BOOL)_hasActiveTouchesInEvent:(id)event
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [event touchesForGestureRecognizer:{self, 0}];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v8 + 1) + 8 * i) phase] - 3) > 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  view = [(CKInvisibleInkGestureRecognizer *)self view];
  [view touchesEnded:endedCopy withEvent:eventCopy];

  LOBYTE(endedCopy) = [(CKInvisibleInkGestureRecognizer *)self _hasActiveTouchesInEvent:eventCopy];
  if ((endedCopy & 1) == 0)
  {

    [(CKInvisibleInkGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  view = [(CKInvisibleInkGestureRecognizer *)self view];
  [view touchesCancelled:cancelledCopy withEvent:eventCopy];

  LOBYTE(cancelledCopy) = [(CKInvisibleInkGestureRecognizer *)self _hasActiveTouchesInEvent:eventCopy];
  if ((cancelledCopy & 1) == 0)
  {

    [(CKInvisibleInkGestureRecognizer *)self setState:3];
  }
}

- (CGPoint)startLocation
{
  x = self->_startLocation.x;
  y = self->_startLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end