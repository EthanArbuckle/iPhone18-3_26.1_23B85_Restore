@interface DataTypeDetailMessageCell
- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithFrame:(CGRect)a3;
@end

@implementation DataTypeDetailMessageCell

- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DataTypeDetailMessageCell();
  return [(ButtonCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DataTypeDetailMessageCell();
  v4 = a3;
  v5 = [(ButtonCollectionViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end