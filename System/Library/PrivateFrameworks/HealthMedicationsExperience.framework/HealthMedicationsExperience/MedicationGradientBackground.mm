@interface MedicationGradientBackground
- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithCoder:(id)coder;
- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation MedicationGradientBackground

- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MedicationGradientBackground();
  height = [(MedicationGradientBackground *)&v9 initWithFrame:x, y, width, height];
  [(MedicationGradientBackground *)height setContentMode:3];
  [(MedicationGradientBackground *)height setClipsToBounds:1];

  return height;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1D1668174(x, y, width, height);
}

- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithCoder:(id)coder
{
  result = sub_1D1670424();
  __break(1u);
  return result;
}

@end