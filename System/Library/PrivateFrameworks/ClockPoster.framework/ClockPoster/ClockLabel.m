@interface ClockLabel
- (_TtC11ClockPoster10ClockLabel)initWithCoder:(id)a3;
- (_TtC11ClockPoster10ClockLabel)initWithFrame:(CGRect)a3;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 clockTimer:(id)a5;
- (void)layoutSubviews;
@end

@implementation ClockLabel

- (void)layoutSubviews
{
  v2 = self;
  sub_1E48D3EFC();
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClockLabel();
  return [(CLKUITimeLabel *)&v5 initWithTimeLabelOptions:a3];
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClockLabel();
  v6 = a4;
  v7 = [(CLKUITimeLabel *)&v9 initWithTimeLabelOptions:a3 forDevice:v6];

  if (v7)
  {
  }

  return v7;
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)a3 forDevice:(id)a4 clockTimer:(id)a5
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ClockLabel();
  v8 = a4;
  v9 = a5;
  v10 = [(CLKUITimeLabel *)&v12 initWithTimeLabelOptions:a3 forDevice:v8 clockTimer:v9];

  if (v10)
  {
  }

  return v10;
}

- (_TtC11ClockPoster10ClockLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClockLabel();
  return [(CLKUITimeLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11ClockPoster10ClockLabel)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClockLabel();
  v4 = a3;
  v5 = [(ClockLabel *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end