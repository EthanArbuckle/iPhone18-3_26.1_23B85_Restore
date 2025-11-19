@interface MedicationShapeView
- (_TtC27HealthMedicationsExperience19MedicationShapeView)initWithCoder:(id)a3;
- (_TtC27HealthMedicationsExperience19MedicationShapeView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation MedicationShapeView

- (_TtC27HealthMedicationsExperience19MedicationShapeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer) = 0;
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v9 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v11.receiver = self;
  v11.super_class = type metadata accessor for MedicationShapeView();
  return [(MedicationShapeView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC27HealthMedicationsExperience19MedicationShapeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_shadowLayer) = 0;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  v5 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_1D1670424();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D16526EC();
}

@end