@interface ShapeCell
- (BOOL)_accessibilityCellIsSelected;
- (_TtC19HealthMedicationsUI9ShapeCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation ShapeCell

- (_TtC19HealthMedicationsUI9ShapeCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell____lazy_storage___shapeView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_22835C9EC();
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ShapeCell *)&v6 prepareForReuse];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI9ShapeCell_item;
  swift_beginAccess();
  sub_22818FD64(v4, v2 + v3);
  swift_endAccess();
  sub_22835CBA0();

  sub_22835DDDC(v4, &qword_280DDCD50, sub_22817A700);
}

- (BOOL)_accessibilityCellIsSelected
{
  v2 = self;
  v3 = sub_22835D770();

  return v3 & 1;
}

@end