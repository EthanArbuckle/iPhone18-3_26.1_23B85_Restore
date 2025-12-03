@interface ControlResizeGestureHandler
- (void)iconView:(id)view resizeGestureRecognizerDidUpdate:(id)update;
@end

@implementation ControlResizeGestureHandler

- (void)iconView:(id)view resizeGestureRecognizerDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;

  state = [updateCopy state];
  if (state > 2)
  {
    if ((state - 3) < 3)
    {
      sub_21EA5EF5C();
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      sub_21EA5E1B0();
      v8 = *self->onBegin;
      if (v8)
      {

        v8(self);
        sub_21E9FFAF0(v8);
      }
    }

    else if (state == 2)
    {
      sub_21EA5C2E0(updateCopy);
    }
  }
}

@end