@interface BirthdateDisplayUITextField
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation BirthdateDisplayUITextField

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = BirthdateDisplayUITextField;
  v5 = [(BirthdateDisplayUITextField *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

@end