@interface MedicationFragmentLayer
- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)init;
- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)initWithCoder:(id)coder;
- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation MedicationFragmentLayer

- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1D1670164();
  swift_unknownObjectRelease();
  return MedicationFragmentLayer.init(layer:)(v4);
}

- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_fragment);
  *v3 = 0u;
  v3[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color) = 0;
  result = sub_1D1670424();
  __break(1u);
  return result;
}

- (void)drawInContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1D16166C4(contextCopy);
}

- (_TtC27HealthMedicationsExperience23MedicationFragmentLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end