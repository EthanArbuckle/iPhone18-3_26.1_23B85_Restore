@interface AlarmComplicationCurvedTextView
- (_TtC11ClockPoster31AlarmComplicationCurvedTextView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation AlarmComplicationCurvedTextView

- (_TtC11ClockPoster31AlarmComplicationCurvedTextView)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider;
  *v4 = 0x4036000000000000;
  v4[8] = 0;
  v5 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
  v6 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer;
  *(&self->super.super.super.isa + v6) = sub_1E48CDBF4();
  v7 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer;
  *(&self->super.super.super.isa + v7) = sub_1E48CDF3C();
  result = sub_1E49986DC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E48CD6A8();
}

@end