@interface _BRModalProgressTouchStealingView
- (_BRModalProgressTouchStealingView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation _BRModalProgressTouchStealingView

- (_BRModalProgressTouchStealingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _BRModalProgressTouchStealingView;
  v3 = [(_BRModalProgressTouchStealingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithWhite:0.5 alpha:0.00999999978];
    [(_BRModalProgressTouchStealingView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v9.receiver = self;
  v9.super_class = _BRModalProgressTouchStealingView;
  v5 = [(_BRModalProgressTouchStealingView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5)
  {
    selfCopy = v5;
  }

  v7 = selfCopy;

  return selfCopy;
}

@end