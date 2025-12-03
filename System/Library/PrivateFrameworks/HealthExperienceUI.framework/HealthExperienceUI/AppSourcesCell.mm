@interface AppSourcesCell
- (_TtC18HealthExperienceUI14AppSourcesCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI14AppSourcesCell)initWithFrame:(CGRect)frame;
@end

@implementation AppSourcesCell

- (_TtC18HealthExperienceUI14AppSourcesCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AppSourcesCell();
  return [(IconWithNameCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI14AppSourcesCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppSourcesCell();
  coderCopy = coder;
  v5 = [(IconWithNameCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end