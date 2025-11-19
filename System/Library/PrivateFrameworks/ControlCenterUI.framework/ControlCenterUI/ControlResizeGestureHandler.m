@interface ControlResizeGestureHandler
- (void)iconView:(id)a3 resizeGestureRecognizerDidUpdate:(id)a4;
@end

@implementation ControlResizeGestureHandler

- (void)iconView:(id)a3 resizeGestureRecognizerDidUpdate:(id)a4
{
  v9 = a3;
  v6 = a4;

  v7 = [v6 state];
  if (v7 > 2)
  {
    if ((v7 - 3) < 3)
    {
      sub_21EA5EF5C();
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      sub_21EA5E1B0();
      v8 = *self->onBegin;
      if (v8)
      {

        v8(self);
        sub_21E9FFAF0(v8);
      }
    }

    else if (v7 == 2)
    {
      sub_21EA5C2E0(v6);
    }
  }
}

@end