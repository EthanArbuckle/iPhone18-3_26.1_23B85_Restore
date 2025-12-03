@interface CKActionMenuGestureRecognizer
+ (id)actionMenuGestureRecognizer;
- (CGPoint)_convertVelocitySample:(id)sample fromScreenCoordinatesToView:(id)view;
- (CGPoint)velocityInView:(id)view;
- (CKActionMenuGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation CKActionMenuGestureRecognizer

+ (id)actionMenuGestureRecognizer
{
  v2 = [CKActionMenuGestureRecognizer alloc];
  v3 = +[CKActionMenuWindow sharedInstance];
  v4 = [(CKActionMenuGestureRecognizer *)v2 initWithTarget:v3 action:sel_actionMenuGestureRecognized_];

  [(CKActionMenuGestureRecognizer *)v4 setMinimumPressDuration:0.255];

  return v4;
}

- (CKActionMenuGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v12.receiver = self;
  v12.super_class = CKActionMenuGestureRecognizer;
  v4 = [(CKActionMenuGestureRecognizer *)&v12 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v11.receiver = v4;
    v11.super_class = CKActionMenuGestureRecognizer;
    [(CKActionMenuGestureRecognizer *)&v11 setAllowableMovement:1.79769313e308];
    v6 = objc_alloc_init(CKActionMenuGestureVelocitySample);
    velocitySample = v5->_velocitySample;
    v5->_velocitySample = v6;

    v8 = objc_alloc_init(CKActionMenuGestureVelocitySample);
    previousVelocitySample = v5->_previousVelocitySample;
    v5->_previousVelocitySample = v8;
  }

  return v5;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = CKActionMenuGestureRecognizer;
  [(CKActionMenuGestureRecognizer *)&v4 reset];
  v3 = *MEMORY[0x1E695EFF8];
  self->_velocitySample->start = *MEMORY[0x1E695EFF8];
  self->_velocitySample->end = v3;
  self->_velocitySample->dt = 0.0;
  self->_previousVelocitySample->start = v3;
  self->_previousVelocitySample->end = v3;
  self->_previousVelocitySample->dt = 0.0;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v16.receiver = self;
  v16.super_class = CKActionMenuGestureRecognizer;
  eventCopy = event;
  beganCopy = began;
  [(CKActionMenuGestureRecognizer *)&v16 touchesBegan:beganCopy withEvent:eventCopy];
  [eventCopy timestamp];
  v9 = v8;

  anyObject = [beganCopy anyObject];

  window = [anyObject window];
  [anyObject locationInView:0];
  [window convertPoint:0 toWindow:?];
  v13 = v12;
  v15 = v14;

  self->_lastScreenLocation.x = v13;
  self->_lastScreenLocation.y = v15;
  self->_lastTouchTime = v9;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v18.receiver = self;
  v18.super_class = CKActionMenuGestureRecognizer;
  eventCopy = event;
  movedCopy = moved;
  [(CKActionMenuGestureRecognizer *)&v18 touchesMoved:movedCopy withEvent:eventCopy];
  [eventCopy timestamp];
  v9 = v8;

  anyObject = [movedCopy anyObject];

  window = [anyObject window];
  [anyObject locationInView:0];
  [window convertPoint:0 toWindow:?];
  v13 = v12;
  v15 = v14;

  v16 = v9 - self->_lastTouchTime;
  if (v16 > 0.008)
  {
    self->_previousVelocitySample->start = self->_velocitySample->start;
    self->_previousVelocitySample->end = self->_velocitySample->end;
    self->_previousVelocitySample->dt = self->_velocitySample->dt;
    self->_velocitySample->start = self->_lastScreenLocation;
    velocitySample = self->_velocitySample;
    velocitySample->end.x = v13;
    velocitySample->end.y = v15;
    self->_velocitySample->dt = v16;
  }

  self->_lastScreenLocation.x = v13;
  self->_lastScreenLocation.y = v15;
  self->_lastTouchTime = v9;
}

- (CGPoint)velocityInView:(id)view
{
  viewCopy = view;
  [(CKActionMenuGestureRecognizer *)self _convertVelocitySample:self->_velocitySample fromScreenCoordinatesToView:viewCopy];
  v6 = v5;
  v8 = v7;
  if (self->_previousVelocitySample->dt > 0.00000011920929)
  {
    [CKActionMenuGestureRecognizer _convertVelocitySample:"_convertVelocitySample:fromScreenCoordinatesToView:" fromScreenCoordinatesToView:?];
    v6 = v9 * 0.75 + v6 * 0.25;
    v8 = v10 * 0.75 + v8 * 0.25;
  }

  v11 = v6;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_convertVelocitySample:(id)sample fromScreenCoordinatesToView:(id)view
{
  sampleCopy = sample;
  viewCopy = view;
  v8 = viewCopy;
  if (sampleCopy[5] >= 0.001)
  {
    if (viewCopy)
    {
      window = viewCopy;
    }

    else
    {
      view = [(CKActionMenuGestureRecognizer *)self view];
      window = [view window];
    }

    [MEMORY[0x1E69DCEB0] convertPoint:window toView:{sampleCopy[1], sampleCopy[2]}];
    v14 = v13;
    v16 = v15;
    [MEMORY[0x1E69DCEB0] convertPoint:window toView:{sampleCopy[3], sampleCopy[4]}];
    v18 = sampleCopy[5];
    v9 = (v17 - v14) / v18;
    v10 = (v19 - v16) / v18;
  }

  else
  {
    v9 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v20 = v9;
  v21 = v10;
  result.y = v21;
  result.x = v20;
  return result;
}

@end