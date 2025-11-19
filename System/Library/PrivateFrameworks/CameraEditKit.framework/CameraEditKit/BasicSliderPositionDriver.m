@interface BasicSliderPositionDriver
- (_TtC13CameraEditKit25BasicSliderPositionDriver)init;
- (void)contactBeganWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
@end

@implementation BasicSliderPositionDriver

- (void)contactBeganWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECDA70();
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECD740(v4);
}

- (_TtC13CameraEditKit25BasicSliderPositionDriver)init
{
  *(&self->super.isa + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceTraveled) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_distanceToDecelerate) = 0;
  v2 = self + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_latestSample;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v2[24] = 1;
  v3 = self + OBJC_IVAR____TtC13CameraEditKit25BasicSliderPositionDriver_previousSample;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for BasicSliderPositionDriver();
  return [(BasicSliderPositionDriver *)&v5 init];
}

@end