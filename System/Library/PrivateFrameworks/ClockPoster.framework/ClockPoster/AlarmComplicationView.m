@interface AlarmComplicationView
- (UIColor)tintColor;
- (_TtC11ClockPoster21AlarmComplicationView)initWithCoder:(id)a3;
- (_TtC11ClockPoster21AlarmComplicationView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setTintColor:(id)a3;
@end

@implementation AlarmComplicationView

- (_TtC11ClockPoster21AlarmComplicationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmTimeLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11ClockPoster21AlarmComplicationView_alarmIcon) = 0;
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AlarmComplicationView();
  v2 = [(AlarmComplicationView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1E4994C60(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E4994F40();
}

- (_TtC11ClockPoster21AlarmComplicationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end