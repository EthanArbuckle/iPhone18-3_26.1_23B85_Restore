@interface _MediaControlsTapHoldGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _MediaControlsTapHoldGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v12 touchesBegan:v6 withEvent:a4];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = [(_MediaControlsTapHoldGestureRecognizer *)self view];
    v9 = [v8 window];
    [v7 locationInView:v9];
    self->_startingLocation.x = v10;
    self->_startingLocation.y = v11;

    [(_MediaControlsTapHoldGestureRecognizer *)self setState:1];
  }

  else
  {
    [(_MediaControlsTapHoldGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v14 touchesMoved:v6 withEvent:a4];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = [(_MediaControlsTapHoldGestureRecognizer *)self view];
    v9 = [v8 window];
    [v7 locationInView:v9];
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

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _MediaControlsTapHoldGestureRecognizer;
  [(_MediaControlsTapHoldGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(_MediaControlsTapHoldGestureRecognizer *)self setState:3];
}

@end