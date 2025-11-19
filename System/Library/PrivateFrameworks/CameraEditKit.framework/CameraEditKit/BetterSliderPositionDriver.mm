@interface BetterSliderPositionDriver
- (double)velocity;
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
@end

@implementation BetterSliderPositionDriver

- (double)velocity
{
  v2 = self;
  sub_1B7ECB798();
  v4 = v3;

  return v4;
}

- (void)contactBeganWithAction:(id)a3
{
  v3 = self;
  sub_1B7ECB450();
  *(&v3->super.isa + OBJC_IVAR____TtC13CameraEditKit26BetterSliderPositionDriver_lastUpdateTime) = CACurrentMediaTime();
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECB93C(v4);
}

- (void)contactEndedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECC094();
}

@end