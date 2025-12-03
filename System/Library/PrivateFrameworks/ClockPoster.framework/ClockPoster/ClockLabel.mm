@interface ClockLabel
- (_TtC11ClockPoster10ClockLabel)initWithCoder:(id)coder;
- (_TtC11ClockPoster10ClockLabel)initWithFrame:(CGRect)frame;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device;
- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device clockTimer:(id)timer;
- (void)layoutSubviews;
@end

@implementation ClockLabel

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E48D3EFC();
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for ClockLabel();
  return [(CLKUITimeLabel *)&v5 initWithTimeLabelOptions:options];
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClockLabel();
  deviceCopy = device;
  v7 = [(CLKUITimeLabel *)&v9 initWithTimeLabelOptions:options forDevice:deviceCopy];

  if (v7)
  {
  }

  return v7;
}

- (_TtC11ClockPoster10ClockLabel)initWithTimeLabelOptions:(unint64_t)options forDevice:(id)device clockTimer:(id)timer
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ClockLabel();
  deviceCopy = device;
  timerCopy = timer;
  v10 = [(CLKUITimeLabel *)&v12 initWithTimeLabelOptions:options forDevice:deviceCopy clockTimer:timerCopy];

  if (v10)
  {
  }

  return v10;
}

- (_TtC11ClockPoster10ClockLabel)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClockLabel();
  return [(CLKUITimeLabel *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC11ClockPoster10ClockLabel)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClockLabel();
  coderCopy = coder;
  v5 = [(ClockLabel *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end