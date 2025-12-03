@interface MedicationsRecordAllButton
- (_TtC19HealthMedicationsUI26MedicationsRecordAllButton)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI26MedicationsRecordAllButton)initWithFrame:(CGRect)frame;
- (void)didTapRecord:(id)record;
@end

@implementation MedicationsRecordAllButton

- (_TtC19HealthMedicationsUI26MedicationsRecordAllButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_logDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI26MedicationsRecordAllButton_recordAllViewModel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)didTapRecord:(id)record
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2282BFA5C();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (_TtC19HealthMedicationsUI26MedicationsRecordAllButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end