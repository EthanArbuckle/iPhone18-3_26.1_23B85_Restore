@interface DataTypeDetailDisclosureCell
- (_TtC18HealthExperienceUI28DataTypeDetailDisclosureCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI28DataTypeDetailDisclosureCell)initWithFrame:(CGRect)a3;
@end

@implementation DataTypeDetailDisclosureCell

- (_TtC18HealthExperienceUI28DataTypeDetailDisclosureCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  v9 = type metadata accessor for DataTypeDetailDisclosureCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(DataTypeDetailDisclosureCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI28DataTypeDetailDisclosureCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailDisclosureCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DataTypeDetailDisclosureCell();
  v5 = a3;
  v6 = [(DataTypeDetailDisclosureCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end