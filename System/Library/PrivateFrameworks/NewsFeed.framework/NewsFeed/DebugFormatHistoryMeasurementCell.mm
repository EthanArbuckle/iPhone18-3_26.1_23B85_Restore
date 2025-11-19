@interface DebugFormatHistoryMeasurementCell
- (_TtC8NewsFeed33DebugFormatHistoryMeasurementCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed33DebugFormatHistoryMeasurementCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation DebugFormatHistoryMeasurementCell

- (_TtC8NewsFeed33DebugFormatHistoryMeasurementCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D6F590D0(a3, a4, v6);
}

- (_TtC8NewsFeed33DebugFormatHistoryMeasurementCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_timeInMilliseconds) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_totalTimeInMilliseconds) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_titleLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed33DebugFormatHistoryMeasurementCell_barView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6F59398();
}

@end