@interface DigitalClockFaceComplicationsView
- (_TtC11ClockPoster33DigitalClockFaceComplicationsView)initWithCoder:(id)coder;
- (_TtC11ClockPoster33DigitalClockFaceComplicationsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DigitalClockFaceComplicationsView

- (_TtC11ClockPoster33DigitalClockFaceComplicationsView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_currentTemperature;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_alarmInfo;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80560, &qword_1E49A2820);
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_dateLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_temperatureLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster33DigitalClockFaceComplicationsView_alarmComplication) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E4932F44();
}

- (_TtC11ClockPoster33DigitalClockFaceComplicationsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end