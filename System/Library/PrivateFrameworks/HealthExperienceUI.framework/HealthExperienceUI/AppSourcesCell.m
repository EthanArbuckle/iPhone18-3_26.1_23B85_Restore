@interface AppSourcesCell
- (_TtC18HealthExperienceUI14AppSourcesCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI14AppSourcesCell)initWithFrame:(CGRect)a3;
@end

@implementation AppSourcesCell

- (_TtC18HealthExperienceUI14AppSourcesCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AppSourcesCell();
  return [(IconWithNameCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI14AppSourcesCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI14AppSourcesCell_iconPublisher) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppSourcesCell();
  v4 = a3;
  v5 = [(IconWithNameCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end