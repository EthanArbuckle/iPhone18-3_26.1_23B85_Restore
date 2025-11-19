@interface CAMTouchingGestureRecognizer
- (void)_decrementTouchesBy:(unint64_t)a3;
- (void)_incrementTouchesBy:(unint64_t)a3;
- (void)_setTouchCount:(unint64_t)a3;
- (void)_updateStateFromTouchCount:(unint64_t)a3 toTouchCount:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CAMTouchingGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(CAMTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(CAMTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(CAMTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CAMTouchingGestureRecognizer;
  [(CAMTouchingGestureRecognizer *)&v5 setEnabled:?];
  if (!a3)
  {
    [(CAMTouchingGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)_setTouchCount:(unint64_t)a3
{
  if (self->__touchCount != a3)
  {
    self->__touchCount = a3;
    [CAMTouchingGestureRecognizer _updateStateFromTouchCount:"_updateStateFromTouchCount:toTouchCount:" toTouchCount:?];
  }
}

- (void)_updateStateFromTouchCount:(unint64_t)a3 toTouchCount:(unint64_t)a4
{
  if (a3 && !a4)
  {
    v4 = 3;
LABEL_4:
    [(CAMTouchingGestureRecognizer *)self setState:v4];
    return;
  }

  if (!a3 && a4)
  {
    v4 = 1;
    goto LABEL_4;
  }
}

- (void)_incrementTouchesBy:(unint64_t)a3
{
  v4 = [(CAMTouchingGestureRecognizer *)self _touchCount]+ a3;

  [(CAMTouchingGestureRecognizer *)self _setTouchCount:v4];
}

- (void)_decrementTouchesBy:(unint64_t)a3
{
  if ([(CAMTouchingGestureRecognizer *)self _touchCount]>= a3)
  {
    v5 = [(CAMTouchingGestureRecognizer *)self _touchCount]- a3;
  }

  else
  {
    v5 = 0;
  }

  [(CAMTouchingGestureRecognizer *)self _setTouchCount:v5];
}

@end