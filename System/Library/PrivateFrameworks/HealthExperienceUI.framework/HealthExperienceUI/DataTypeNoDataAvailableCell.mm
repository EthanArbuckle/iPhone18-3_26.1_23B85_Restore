@interface DataTypeNoDataAvailableCell
- (_TtC18HealthExperienceUI27DataTypeNoDataAvailableCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI27DataTypeNoDataAvailableCell)initWithFrame:(CGRect)frame;
@end

@implementation DataTypeNoDataAvailableCell

- (_TtC18HealthExperienceUI27DataTypeNoDataAvailableCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  v10 = type metadata accessor for DataTypeNoDataAvailableCell();
  *v9 = 0;
  v9[1] = 0;
  v12.receiver = self;
  v12.super_class = v10;
  return [(DataTypeNoDataAvailableCell *)&v12 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI27DataTypeNoDataAvailableCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  *v4 = 0;
  v4[1] = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end