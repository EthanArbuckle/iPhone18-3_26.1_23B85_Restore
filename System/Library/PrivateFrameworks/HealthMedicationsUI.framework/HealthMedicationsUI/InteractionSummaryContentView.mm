@interface InteractionSummaryContentView
- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithFrame:(CGRect)frame;
@end

@implementation InteractionSummaryContentView

- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for InteractionSummaryContentView();
  height = [(InteractionSummaryContentView *)&v10 initWithFrame:x, y, width, height];
  [(InteractionSummaryContentView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = sub_22834D614();
  [(InteractionSummaryContentView *)height addSubview:v8];

  sub_22834DB00();
  return height;
}

- (_TtC19HealthMedicationsUI29InteractionSummaryContentView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI29InteractionSummaryContentView_viewModel) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end