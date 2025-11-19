@interface _BRModalProgressTouchStealingView
- (_BRModalProgressTouchStealingView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation _BRModalProgressTouchStealingView

- (_BRModalProgressTouchStealingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _BRModalProgressTouchStealingView;
  v3 = [(_BRModalProgressTouchStealingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithWhite:0.5 alpha:0.00999999978];
    [(_BRModalProgressTouchStealingView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v9.receiver = self;
  v9.super_class = _BRModalProgressTouchStealingView;
  v5 = [(_BRModalProgressTouchStealingView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5)
  {
    v4 = v5;
  }

  v7 = v4;

  return v4;
}

@end