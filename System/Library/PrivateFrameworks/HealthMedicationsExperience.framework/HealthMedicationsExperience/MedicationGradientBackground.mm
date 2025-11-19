@interface MedicationGradientBackground
- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithCoder:(id)a3;
- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation MedicationGradientBackground

- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MedicationGradientBackground();
  v7 = [(MedicationGradientBackground *)&v9 initWithFrame:x, y, width, height];
  [(MedicationGradientBackground *)v7 setContentMode:3];
  [(MedicationGradientBackground *)v7 setClipsToBounds:1];

  return v7;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1D1668174(x, y, width, height);
}

- (_TtC27HealthMedicationsExperience28MedicationGradientBackground)initWithCoder:(id)a3
{
  result = sub_1D1670424();
  __break(1u);
  return result;
}

@end