@interface HIDPassthroughSliderPositionDriver
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
@end

@implementation HIDPassthroughSliderPositionDriver

- (void)contactBeganWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7EC7F30(actionCopy);
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7EC8054(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7EC822C(action);
}

@end