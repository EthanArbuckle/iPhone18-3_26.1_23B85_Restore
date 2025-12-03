@interface AlarmComplicationView
- (UIColor)tintColor;
- (_TtC11ClockPoster21AlarmComplicationView)initWithCoder:(id)coder;
- (_TtC11ClockPoster21AlarmComplicationView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTintColor:(id)color;
@end

@implementation AlarmComplicationView

- (_TtC11ClockPoster21AlarmComplicationView)initWithCoder:(id)coder
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
  tintColor = [(AlarmComplicationView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1E4994C60(color);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E4994F40();
}

- (_TtC11ClockPoster21AlarmComplicationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end