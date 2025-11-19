@interface PlayClockFaceView
- (_TtC11ClockPoster17PlayClockFaceView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PlayClockFaceView

- (_TtC11ClockPoster17PlayClockFaceView)initWithCoder:(id)a3
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
  v2 = self;
  sub_1E4995B00();
}

@end