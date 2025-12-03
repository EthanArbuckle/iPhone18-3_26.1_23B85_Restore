@interface ContactAwareSliderPositionDriver
- (double)velocity;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
@end

@implementation ContactAwareSliderPositionDriver

- (double)velocity
{
  selfCopy = self;
  sub_1B7ECEB44();
  v4 = v3;

  return v4;
}

- (void)contactBeganWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7ECE1A0(actionCopy);
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7ECE358(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7ECE734(action);
}

@end