@interface AnalogClockFaceDateComplicationView
- (UIColor)tintColor;
- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithCoder:(id)coder;
- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithFrame:(CGRect)frame;
- (void)setTintColor:(id)color;
@end

@implementation AnalogClockFaceDateComplicationView

- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithCoder:(id)coder
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
  tintColor = [(AnalogClockFaceDateComplicationView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceDateComplicationView();
  colorCopy = color;
  v5 = v6.receiver;
  [(AnalogClockFaceDateComplicationView *)&v6 setTintColor:colorCopy];
  sub_1E498EC00();
}

- (_TtC11ClockPoster35AnalogClockFaceDateComplicationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end