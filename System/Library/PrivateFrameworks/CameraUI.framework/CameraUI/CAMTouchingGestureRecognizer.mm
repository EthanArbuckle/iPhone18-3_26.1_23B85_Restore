@interface CAMTouchingGestureRecognizer
- (void)_decrementTouchesBy:(unint64_t)by;
- (void)_incrementTouchesBy:(unint64_t)by;
- (void)_setTouchCount:(unint64_t)count;
- (void)_updateStateFromTouchCount:(unint64_t)count toTouchCount:(unint64_t)touchCount;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CAMTouchingGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [began count];

  [(CAMTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [ended count];

  [(CAMTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [cancelled count];

  [(CAMTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = CAMTouchingGestureRecognizer;
  [(CAMTouchingGestureRecognizer *)&v5 setEnabled:?];
  if (!enabled)
  {
    [(CAMTouchingGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)_setTouchCount:(unint64_t)count
{
  if (self->__touchCount != count)
  {
    self->__touchCount = count;
    [CAMTouchingGestureRecognizer _updateStateFromTouchCount:"_updateStateFromTouchCount:toTouchCount:" toTouchCount:?];
  }
}

- (void)_updateStateFromTouchCount:(unint64_t)count toTouchCount:(unint64_t)touchCount
{
  if (count && !touchCount)
  {
    v4 = 3;
LABEL_4:
    [(CAMTouchingGestureRecognizer *)self setState:v4];
    return;
  }

  if (!count && touchCount)
  {
    v4 = 1;
    goto LABEL_4;
  }
}

- (void)_incrementTouchesBy:(unint64_t)by
{
  v4 = [(CAMTouchingGestureRecognizer *)self _touchCount]+ by;

  [(CAMTouchingGestureRecognizer *)self _setTouchCount:v4];
}

- (void)_decrementTouchesBy:(unint64_t)by
{
  if ([(CAMTouchingGestureRecognizer *)self _touchCount]>= by)
  {
    v5 = [(CAMTouchingGestureRecognizer *)self _touchCount]- by;
  }

  else
  {
    v5 = 0;
  }

  [(CAMTouchingGestureRecognizer *)self _setTouchCount:v5];
}

@end