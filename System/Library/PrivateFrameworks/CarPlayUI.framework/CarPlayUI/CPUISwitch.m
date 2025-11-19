@interface CPUISwitch
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CPUISwitch

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = [a3 anyObject];
  [v9 locationInView:self];
  v6 = v5;
  v8 = v7;
  [(CPUISwitch *)self bounds];
  v11.x = v6;
  v11.y = v8;
  if (CGRectContainsPoint(v12, v11))
  {
    [(CPUISwitch *)self setOn:[(CPUISwitch *)self isOn]^ 1];
    [(CPUISwitch *)self sendActionsForControlEvents:4096];
  }
}

@end