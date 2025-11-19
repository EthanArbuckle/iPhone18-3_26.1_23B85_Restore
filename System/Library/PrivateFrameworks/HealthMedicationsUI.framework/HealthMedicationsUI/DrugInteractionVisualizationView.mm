@interface DrugInteractionVisualizationView
- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)init;
- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)initWithFrame:(CGRect)a3;
@end

@implementation DrugInteractionVisualizationView

- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)init
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  v4 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DrugInteractionVisualizationView();
  return [(DrugInteractionVisualizationView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_visualizationConfig;
  v5 = type metadata accessor for DrugInteractionVisualizationConfig(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView_subview) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___medicationView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI32DrugInteractionVisualizationView____lazy_storage___imageView) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (_TtC19HealthMedicationsUI32DrugInteractionVisualizationView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end