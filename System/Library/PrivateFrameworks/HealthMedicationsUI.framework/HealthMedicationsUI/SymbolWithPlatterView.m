@interface SymbolWithPlatterView
- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SymbolWithPlatterView

- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithCoder:(id)a3
{
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SymbolWithPlatterView();
  v2 = v4.receiver;
  [(SymbolWithPlatterView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 frame];
  [v3 setCornerRadius_];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_228350ED0(a3);
}

- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end