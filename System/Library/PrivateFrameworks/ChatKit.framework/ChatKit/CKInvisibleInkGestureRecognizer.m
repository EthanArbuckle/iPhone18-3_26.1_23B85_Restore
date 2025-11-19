@interface CKInvisibleInkGestureRecognizer
- (BOOL)_hasActiveTouchesInEvent:(id)a3;
- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3;
- (CGPoint)startLocation;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CKInvisibleInkGestureRecognizer

- (BOOL)shouldRequireFailureOfGestureRecognizer:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([v13 count] == 1 && (-[CKInvisibleInkGestureRecognizer firstTouch](self, "firstTouch"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [v13 anyObject];
    [(CKInvisibleInkGestureRecognizer *)self setFirstTouch:v8];

    v9 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    v10 = [(CKInvisibleInkGestureRecognizer *)self view];
    [v9 locationInView:v10];
    [(CKInvisibleInkGestureRecognizer *)self setStartLocation:?];

    v11 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    [v11 timestamp];
    [(CKInvisibleInkGestureRecognizer *)self setStartTime:?];
  }

  else if (![(CKInvisibleInkGestureRecognizer *)self state])
  {
    [(CKInvisibleInkGestureRecognizer *)self setState:1];
  }

  v12 = [(CKInvisibleInkGestureRecognizer *)self view];
  [v12 touchesBegan:v13 withEvent:v6];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v23 = a3;
  v6 = a4;
  if (![(CKInvisibleInkGestureRecognizer *)self state])
  {
    v7 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    [v7 timestamp];
    v9 = v8;
    [(CKInvisibleInkGestureRecognizer *)self startTime];
    v11 = v10;

    v12 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
    v13 = [v23 containsObject:v12];

    if (v13 && (v14 = v9 - v11, v14 <= 0.2))
    {
      v15 = [(CKInvisibleInkGestureRecognizer *)self firstTouch];
      v16 = [(CKInvisibleInkGestureRecognizer *)self view];
      [v15 locationInView:v16];
      v18 = v17;

      [(CKInvisibleInkGestureRecognizer *)self startLocation];
      if (vabdd_f64(v18, v19) >= (1.0 - v14) * 140.0)
      {
        [(CKInvisibleInkGestureRecognizer *)self setState:5];
        v20 = [(CKInvisibleInkGestureRecognizer *)self view];
        v21 = [v6 touchesForGestureRecognizer:self];
        [v20 touchesCancelled:v21 withEvent:v6];
      }
    }

    else
    {
      [(CKInvisibleInkGestureRecognizer *)self setState:1];
    }
  }

  v22 = [(CKInvisibleInkGestureRecognizer *)self view];
  [v22 touchesMoved:v23 withEvent:v6];
}

- (BOOL)_hasActiveTouchesInEvent:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 touchesForGestureRecognizer:{self, 0}];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKInvisibleInkGestureRecognizer *)self view];
  [v8 touchesEnded:v7 withEvent:v6];

  LOBYTE(v7) = [(CKInvisibleInkGestureRecognizer *)self _hasActiveTouchesInEvent:v6];
  if ((v7 & 1) == 0)
  {

    [(CKInvisibleInkGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKInvisibleInkGestureRecognizer *)self view];
  [v8 touchesCancelled:v7 withEvent:v6];

  LOBYTE(v7) = [(CKInvisibleInkGestureRecognizer *)self _hasActiveTouchesInEvent:v6];
  if ((v7 & 1) == 0)
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