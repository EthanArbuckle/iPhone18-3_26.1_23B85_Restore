@interface SFTouchUpGestureRecognizer
- (SFTouchUpGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SFTouchUpGestureRecognizer

- (SFTouchUpGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = SFTouchUpGestureRecognizer;
  v4 = [(SFTouchUpGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SFTouchUpGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SFTouchUpGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFTouchUpGestureRecognizer;
  [(SFTouchUpGestureRecognizer *)&v5 touchesEnded:a3 withEvent:a4];
  [(SFTouchUpGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFTouchUpGestureRecognizer;
  [(SFTouchUpGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(SFTouchUpGestureRecognizer *)self setState:3];
}

@end