@interface MedicationAvatarCell
- (_TtC19HealthMedicationsUI20MedicationAvatarCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI20MedicationAvatarCell)initWithFrame:(CGRect)a3;
- (void)editButtonTappedWithSender:(id)a3;
@end

@implementation MedicationAvatarCell

- (_TtC19HealthMedicationsUI20MedicationAvatarCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton) = 0;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  v9 = type metadata accessor for MedicationAvatarCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(MedicationAvatarCell *)&v12 initWithFrame:x, y, width, height];
  sub_2281C3C5C();

  return v10;
}

- (_TtC19HealthMedicationsUI20MedicationAvatarCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___pillImageView) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell____lazy_storage___editButton) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationAvatarCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)editButtonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2281C45B0();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

@end