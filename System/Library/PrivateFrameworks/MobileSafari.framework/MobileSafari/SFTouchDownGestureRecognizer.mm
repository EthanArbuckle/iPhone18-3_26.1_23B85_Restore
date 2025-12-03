@interface SFTouchDownGestureRecognizer
- (SFTouchDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SFTouchDownGestureRecognizer

- (SFTouchDownGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = SFTouchDownGestureRecognizer;
  v4 = [(SFTouchDownGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SFTouchDownGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SFTouchDownGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = SFTouchDownGestureRecognizer;
  [(SFTouchDownGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  [(SFTouchDownGestureRecognizer *)self setState:3];
}

@end