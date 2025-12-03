@interface PlayClockFaceView
- (_TtC11ClockPoster17PlayClockFaceView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation PlayClockFaceView

- (_TtC11ClockPoster17PlayClockFaceView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView) = 0;
  v3 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView;
  *(&self->super.super.super.isa + v3) = sub_1E4995C70();
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E4995B00();
}

@end