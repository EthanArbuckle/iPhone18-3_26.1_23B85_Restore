@interface SFScribbleClickGestureRecognizer
- (SFScribbleClickGestureRecognizer)initWithOverlay:(id)a3;
- (void)_cancelClickIfNeeded:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SFScribbleClickGestureRecognizer

- (SFScribbleClickGestureRecognizer)initWithOverlay:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SFScribbleClickGestureRecognizer;
  v5 = [(SFScribbleClickGestureRecognizer *)&v9 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_overlay, v4);
    v7 = v6;
  }

  return v6;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = SFScribbleClickGestureRecognizer;
  v6 = a3;
  [(SFScribbleClickGestureRecognizer *)&v12 touchesBegan:v6 withEvent:a4];
  self->_canDispatchClick = 1;
  p_touchStartLocation = &self->_touchStartLocation;
  v8 = [v6 anyObject];

  v9 = [(SFScribbleClickGestureRecognizer *)self view];
  [v8 locationInView:v9];
  p_touchStartLocation->x = v10;
  p_touchStartLocation->y = v11;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SFScribbleClickGestureRecognizer;
  v6 = a3;
  [(SFScribbleClickGestureRecognizer *)&v8 touchesMoved:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(SFScribbleClickGestureRecognizer *)self _cancelClickIfNeeded:v7];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFScribbleClickGestureRecognizer;
  [(SFScribbleClickGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  self->_canDispatchClick = 0;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SFScribbleClickGestureRecognizer;
  v6 = a3;
  [(SFScribbleClickGestureRecognizer *)&v9 touchesEnded:v6 withEvent:a4];
  v7 = [v6 anyObject];

  [(SFScribbleClickGestureRecognizer *)self _cancelClickIfNeeded:v7];
  if (self->_canDispatchClick)
  {
    WeakRetained = objc_loadWeakRetained(&self->_overlay);
    [WeakRetained _didReceiveTapOrClick:self];
  }
}

- (void)_cancelClickIfNeeded:(id)a3
{
  if (self->_canDispatchClick)
  {
    v4 = a3;
    v5 = [(SFScribbleClickGestureRecognizer *)self view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    if ((v9 - self->_touchStartLocation.y) * (v9 - self->_touchStartLocation.y) + (v7 - self->_touchStartLocation.x) * (v7 - self->_touchStartLocation.x) > 200.0)
    {
      self->_canDispatchClick = 0;
    }
  }
}

@end