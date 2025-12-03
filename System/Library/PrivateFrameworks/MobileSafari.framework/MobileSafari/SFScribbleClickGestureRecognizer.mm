@interface SFScribbleClickGestureRecognizer
- (SFScribbleClickGestureRecognizer)initWithOverlay:(id)overlay;
- (void)_cancelClickIfNeeded:(id)needed;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SFScribbleClickGestureRecognizer

- (SFScribbleClickGestureRecognizer)initWithOverlay:(id)overlay
{
  overlayCopy = overlay;
  v9.receiver = self;
  v9.super_class = SFScribbleClickGestureRecognizer;
  v5 = [(SFScribbleClickGestureRecognizer *)&v9 initWithTarget:0 action:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_overlay, overlayCopy);
    v7 = v6;
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = SFScribbleClickGestureRecognizer;
  beganCopy = began;
  [(SFScribbleClickGestureRecognizer *)&v12 touchesBegan:beganCopy withEvent:event];
  self->_canDispatchClick = 1;
  p_touchStartLocation = &self->_touchStartLocation;
  anyObject = [beganCopy anyObject];

  view = [(SFScribbleClickGestureRecognizer *)self view];
  [anyObject locationInView:view];
  p_touchStartLocation->x = v10;
  p_touchStartLocation->y = v11;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SFScribbleClickGestureRecognizer;
  movedCopy = moved;
  [(SFScribbleClickGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:event];
  anyObject = [movedCopy anyObject];

  [(SFScribbleClickGestureRecognizer *)self _cancelClickIfNeeded:anyObject];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SFScribbleClickGestureRecognizer;
  [(SFScribbleClickGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  self->_canDispatchClick = 0;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SFScribbleClickGestureRecognizer;
  endedCopy = ended;
  [(SFScribbleClickGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:event];
  anyObject = [endedCopy anyObject];

  [(SFScribbleClickGestureRecognizer *)self _cancelClickIfNeeded:anyObject];
  if (self->_canDispatchClick)
  {
    WeakRetained = objc_loadWeakRetained(&self->_overlay);
    [WeakRetained _didReceiveTapOrClick:self];
  }
}

- (void)_cancelClickIfNeeded:(id)needed
{
  if (self->_canDispatchClick)
  {
    neededCopy = needed;
    view = [(SFScribbleClickGestureRecognizer *)self view];
    [neededCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    if ((v9 - self->_touchStartLocation.y) * (v9 - self->_touchStartLocation.y) + (v7 - self->_touchStartLocation.x) * (v7 - self->_touchStartLocation.x) > 200.0)
    {
      self->_canDispatchClick = 0;
    }
  }
}

@end