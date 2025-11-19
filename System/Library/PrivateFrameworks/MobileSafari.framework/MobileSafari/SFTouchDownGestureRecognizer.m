@interface SFTouchDownGestureRecognizer
- (SFTouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SFTouchDownGestureRecognizer

- (SFTouchDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = SFTouchDownGestureRecognizer;
  v4 = [(SFTouchDownGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SFTouchDownGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SFTouchDownGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v6 = v5;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SFTouchDownGestureRecognizer;
  [(SFTouchDownGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  [(SFTouchDownGestureRecognizer *)self setState:3];
}

@end