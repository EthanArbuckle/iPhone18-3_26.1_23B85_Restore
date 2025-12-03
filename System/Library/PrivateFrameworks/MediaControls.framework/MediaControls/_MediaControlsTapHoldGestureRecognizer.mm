@interface _MediaControlsTapHoldGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _MediaControlsTapHoldGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v12.receiver = self;
  v12.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v12 touchesBegan:beganCopy withEvent:event];
  if ([beganCopy count] == 1)
  {
    anyObject = [beganCopy anyObject];
    view = [(_MediaControlsTapHoldGestureRecognizer *)self view];
    window = [view window];
    [anyObject locationInView:window];
    self->_startingLocation.x = v10;
    self->_startingLocation.y = v11;

    [(_MediaControlsTapHoldGestureRecognizer *)self setState:1];
  }

  else
  {
    [(_MediaControlsTapHoldGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v14.receiver = self;
  v14.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v14 touchesMoved:movedCopy withEvent:event];
  if ([movedCopy count] == 1)
  {
    anyObject = [movedCopy anyObject];
    view = [(_MediaControlsTapHoldGestureRecognizer *)self view];
    window = [view window];
    [anyObject locationInView:window];
    v11 = v10;
    v13 = v12;

    if ((v13 - self->_startingLocation.y) * (v13 - self->_startingLocation.y) + (v11 - self->_startingLocation.x) * (v11 - self->_startingLocation.x) > 484.0)
    {
      [(_MediaControlsTapHoldGestureRecognizer *)self setState:5];
    }
  }

  else
  {
    [(_MediaControlsTapHoldGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(_MediaControlsTapHoldGestureRecognizer *)self setState:3];
}

@end