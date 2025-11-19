@interface InteractionSummaryContentView
- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithFrame:(CGRect)a3;
@end

@implementation InteractionSummaryContentView

- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionSummaryContentView();
  v7 = [(InteractionSummaryContentView *)&v10 initWithFrame:x, y, width, height];
  [(InteractionSummaryContentView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = sub_22834D614();
  [(InteractionSummaryContentView *)v7 addSubview:v8];

  sub_22834DB00();
  return v7;
}

- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end