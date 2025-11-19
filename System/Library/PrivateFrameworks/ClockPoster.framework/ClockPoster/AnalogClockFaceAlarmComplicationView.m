@interface AnalogClockFaceAlarmComplicationView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIColor)tintColor;
- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithCoder:(id)a3;
- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation AnalogClockFaceAlarmComplicationView

- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithFrame:(CGRect)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_stack) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_icon) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster36AnalogClockFaceAlarmComplicationView_label) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (_TtC11ClockPoster36AnalogClockFaceAlarmComplicationView)initWithCoder:(id)a3
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
  v2 = [(AnalogClockFaceAlarmComplicationView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AnalogClockFaceAlarmComplicationView();
  v4 = a3;
  v5 = v6.receiver;
  [(AnalogClockFaceAlarmComplicationView *)&v6 setTintColor:v4];
  sub_1E498B674();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E498B8DC();
}

- (CGSize)intrinsicContentSize
{
  [(AnalogClockFaceAlarmComplicationView *)self sizeThatFits:9.22337204e18, 9.22337204e18];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
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