@interface AnalogClockFaceAlarmComplicationView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIColor)tintColor;
- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithCoder:(id)coder;
- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation AnalogClockFaceAlarmComplicationView

- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AnalogClockFaceAlarmComplicationView();
  tintColor = [(AnalogClockFaceAlarmComplicationView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceAlarmComplicationView();
  colorCopy = color;
  v5 = v6.receiver;
  [(AnalogClockFaceAlarmComplicationView *)&v6 setTintColor:colorCopy];
  sub_1E498B674();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E498B8DC();
}

- (CGSize)intrinsicContentSize
{
  [(AnalogClockFaceAlarmComplicationView *)self sizeThatFits:9.22337204e18, 9.22337204e18];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_1E498BB80(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end