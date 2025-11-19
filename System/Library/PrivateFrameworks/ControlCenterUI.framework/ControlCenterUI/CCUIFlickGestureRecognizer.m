@interface CCUIFlickGestureRecognizer
- (BOOL)_validateFlickWithTouch:(id)a3;
- (CCUIFlickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_beginFlickWithTouch:(id)a3;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CCUIFlickGestureRecognizer

- (CCUIFlickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = CCUIFlickGestureRecognizer;
  result = [(CCUIFlickGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_maximumFlickTime = 0.1;
    result->_minimumFlickVelocity = 500.0;
    result->_allowedFlickDirections = 15;
  }

  return result;
}

- (void)reset
{
  touch = self->_touch;
  self->_touch = 0;

  [(NSTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  self->_latched = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CCUIFlickGestureRecognizer;
  [(CCUIFlickGestureRecognizer *)&v18 touchesBegan:v6 withEvent:v7];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        touch = self->_touch;
        if (touch)
        {
          if (touch != *(*(&v14 + 1) + 8 * i))
          {
            [CCUIFlickGestureRecognizer ignoreTouch:"ignoreTouch:forEvent:" forEvent:?];
          }
        }

        else
        {
          objc_storeStrong(&self->_touch, *(*(&v14 + 1) + 8 * i));
          [(CCUIFlickGestureRecognizer *)self _beginFlickWithTouch:self->_touch, v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = CCUIFlickGestureRecognizer;
  [(CCUIFlickGestureRecognizer *)&v5 touchesMoved:a3 withEvent:a4];
  if (self->_latched || [(CCUIFlickGestureRecognizer *)self _validateFlickWithTouch:self->_touch])
  {
    self->_latched = 1;
  }

  else
  {
    [(CCUIFlickGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = CCUIFlickGestureRecognizer;
  [(CCUIFlickGestureRecognizer *)&v6 touchesEnded:a3 withEvent:a4];
  if (self->_latched)
  {
    v5 = 3;
  }

  else if ([(CCUIFlickGestureRecognizer *)self _validateFlickWithTouch:self->_touch])
  {
    v5 = 3;
  }

  else
  {
    v5 = 5;
  }

  [(CCUIFlickGestureRecognizer *)self setState:v5];
}

- (void)_beginFlickWithTouch:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  self->_initialTouchTimestamp = v5;
  v6 = [(CCUIFlickGestureRecognizer *)self view];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  self->_initialTouchLocation.x = v8;
  self->_initialTouchLocation.y = v10;

  v11 = MEMORY[0x277CBEBB8];
  [(CCUIFlickGestureRecognizer *)self maximumFlickTime];
  v12 = [v11 scheduledTimerWithTimeInterval:self target:sel__evaluateFlickAtTimeout selector:0 userInfo:0 repeats:?];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v12;
}

- (BOOL)_validateFlickWithTouch:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  v6 = v5 - self->_initialTouchTimestamp;
  v7 = [(CCUIFlickGestureRecognizer *)self view];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = (v9 - self->_initialTouchLocation.x) / v6;
  v13 = (v11 - self->_initialTouchLocation.y) / v6;
  if (v12 >= 0.0)
  {
    v14 = v12;
  }

  else
  {
    v14 = -v12;
  }

  if (v13 >= 0.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = -v13;
  }

  hypot(v14, v15);
  v16 = BSFloatGreaterThanOrEqualToFloat();
  if (v16)
  {
    if (BSFloatGreaterThanFloat())
    {
      if (BSFloatLessThanFloat())
      {
        v17 = 2;
      }

      else
      {
        v17 = 8;
      }
    }

    else if (BSFloatLessThanFloat())
    {
      v17 = 1;
    }

    else
    {
      v17 = 4;
    }

    LOBYTE(v16) = ([(CCUIFlickGestureRecognizer *)self allowedFlickDirections]& v17) != 0;
  }

  return v16;
}

@end