@interface EmptyIconSourcesCell
- (_TtC18HealthExperienceUI20EmptyIconSourcesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI20EmptyIconSourcesCell)initWithFrame:(CGRect)frame;
@end

@implementation EmptyIconSourcesCell

- (_TtC18HealthExperienceUI20EmptyIconSourcesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for EmptyIconSourcesCell();
  return [(IconWithNameCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI20EmptyIconSourcesCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EmptyIconSourcesCell();
  coderCopy = coder;
  v5 = [(IconWithNameCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end