@interface SymbolWithPlatterView
- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SymbolWithPlatterView

- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithCoder:(id)coder
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
  layer = [v2 layer];
  [v2 frame];
  [layer setCornerRadius_];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_228350ED0(change);
}

- (_TtC19HealthMedicationsUI21SymbolWithPlatterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end