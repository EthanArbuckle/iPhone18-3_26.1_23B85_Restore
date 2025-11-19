@interface CollectionViewTextCell
- (_TtC19HealthMedicationsUI22CollectionViewTextCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI22CollectionViewTextCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)awakeFromNib;
@end

@implementation CollectionViewTextCell

- (_TtC19HealthMedicationsUI22CollectionViewTextCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CollectionViewTextCell();
  v8 = [(CollectionViewTextCell *)&v10 initWithFrame:x, y, width, height];
  sub_228383898();

  return v8;
}

- (_TtC19HealthMedicationsUI22CollectionViewTextCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI22CollectionViewTextCell____lazy_storage___label) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollectionViewTextCell();
  v5 = a3;
  v6 = [(CollectionViewTextCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CollectionViewTextCell();
  v2 = v3.receiver;
  [(CollectionViewTextCell *)&v3 awakeFromNib];
  sub_228383898();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  v9 = self;
  sub_228383B84();

  (*(v5 + 8))(v8, v4);
}

@end