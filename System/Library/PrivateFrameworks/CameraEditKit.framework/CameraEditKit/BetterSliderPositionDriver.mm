@interface BetterSliderPositionDriver
- (double)velocity;
- (void)contactBeganWithAction:(id)action;
- (void)contactEndedWithAction:(id)action;
- (void)contactUpdatedWithAction:(id)action;
@end

@implementation BetterSliderPositionDriver

- (double)velocity
{
  selfCopy = self;
  sub_1B7ECB798();
  v4 = v3;

  return v4;
}

- (void)contactBeganWithAction:(id)action
{
  selfCopy = self;
  sub_1B7ECB450();
  *(&selfCopy->super.isa + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime) = CACurrentMediaTime();
}

- (void)contactUpdatedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7ECB93C(actionCopy);
}

- (void)contactEndedWithAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1B7ECC094();
}

@end