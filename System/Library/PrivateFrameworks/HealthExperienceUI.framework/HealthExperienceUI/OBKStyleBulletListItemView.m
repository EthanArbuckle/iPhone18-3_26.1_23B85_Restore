@interface OBKStyleBulletListItemView
- (_TtC18HealthExperienceUI26OBKStyleBulletListItemView)initWithFrame:(CGRect)a3;
- (void)buttonWasTapped;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation OBKStyleBulletListItemView

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for OBKStyleBulletListItemView();
  v4 = a3;
  v5 = v6.receiver;
  [(OBKStyleBulletListItemView *)&v6 traitCollectionDidChange:v4];
  [v5 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v2 = self;
  sub_1BA458D40();
}

- (void)buttonWasTapped
{
  v2 = self;
  sub_1BA45919C();
}

- (_TtC18HealthExperienceUI26OBKStyleBulletListItemView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end