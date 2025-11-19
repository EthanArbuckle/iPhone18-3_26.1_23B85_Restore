@interface CollectionViewHeaderCell
- (_TtC18HealthExperienceUI24CollectionViewHeaderCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI24CollectionViewHeaderCell)initWithFrame:(CGRect)a3;
@end

@implementation CollectionViewHeaderCell

- (_TtC18HealthExperienceUI24CollectionViewHeaderCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  v9 = type metadata accessor for CollectionViewHeaderCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v9;
  v10 = [(CollectionViewHeaderCell *)&v14 initWithFrame:x, y, width, height];
  v11 = *((*MEMORY[0x1E69E7D40] & v10->super.super.super.super.super.super.isa) + 0x70);
  v12 = v10;
  v11();

  return v12;
}

- (_TtC18HealthExperienceUI24CollectionViewHeaderCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI24CollectionViewHeaderCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end