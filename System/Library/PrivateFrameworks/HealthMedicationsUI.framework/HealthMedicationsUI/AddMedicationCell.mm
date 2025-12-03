@interface AddMedicationCell
- (_TtC19HealthMedicationsUI17AddMedicationCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI17AddMedicationCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)actionButtonTappedWithSender:(id)sender;
@end

@implementation AddMedicationCell

- (_TtC19HealthMedicationsUI17AddMedicationCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for AddMedicationCell();
  height = [(AddMedicationCell *)&v10 initWithFrame:x, y, width, height];
  sub_2281E2460();

  return height;
}

- (_TtC19HealthMedicationsUI17AddMedicationCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI17AddMedicationCell____lazy_storage___addMedicationView) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_2281E2768();

  (*(v5 + 8))(v8, v4);
}

- (void)actionButtonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_2281E2AFC();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

@end