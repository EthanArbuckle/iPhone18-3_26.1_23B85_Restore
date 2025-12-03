@interface DataTypeDetailMessageCell
- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithFrame:(CGRect)frame;
@end

@implementation DataTypeDetailMessageCell

- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DataTypeDetailMessageCell();
  return [(ButtonCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI25DataTypeDetailMessageCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DataTypeDetailMessageCell();
  coderCopy = coder;
  v5 = [(ButtonCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end