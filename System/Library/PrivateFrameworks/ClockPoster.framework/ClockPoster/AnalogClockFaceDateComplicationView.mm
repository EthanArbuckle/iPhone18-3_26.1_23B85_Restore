@interface AnalogClockFaceDateComplicationView
- (UIColor)tintColor;
- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithCoder:(id)a3;
- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithFrame:(CGRect)a3;
- (void)setTintColor:(id)a3;
@end

@implementation AnalogClockFaceDateComplicationView

- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster35AnalogClockFaceDateComplicationView_dateTextProvider) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnalogClockFaceDateComplicationView();
  v2 = [(AnalogClockFaceDateComplicationView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceDateComplicationView();
  v4 = a3;
  v5 = v6.receiver;
  [(AnalogClockFaceDateComplicationView *)&v6 setTintColor:v4];
  sub_1E498EC00();
}

- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end