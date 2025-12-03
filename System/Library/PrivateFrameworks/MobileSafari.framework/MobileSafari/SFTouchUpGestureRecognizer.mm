@interface SFTouchUpGestureRecognizer
- (SFTouchUpGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation SFTouchUpGestureRecognizer

- (SFTouchUpGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = SFTouchUpGestureRecognizer;
  v4 = [(SFTouchUpGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SFTouchUpGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SFTouchUpGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SFTouchUpGestureRecognizer;
  [(SFTouchUpGestureRecognizer *)&v5 touchesEnded:ended withEvent:event];
  [(SFTouchUpGestureRecognizer *)self setState:3];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SFTouchUpGestureRecognizer;
  [(SFTouchUpGestureRecognizer *)&v5 touchesCancelled:cancelled withEvent:event];
  [(SFTouchUpGestureRecognizer *)self setState:3];
}

@end