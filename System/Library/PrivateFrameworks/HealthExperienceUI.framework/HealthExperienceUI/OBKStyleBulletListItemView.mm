@interface OBKStyleBulletListItemView
- (_TtC18HealthExperienceUI26OBKStyleBulletListItemView)initWithFrame:(CGRect)frame;
- (void)buttonWasTapped;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation OBKStyleBulletListItemView

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for OBKStyleBulletListItemView();
  changeCopy = change;
  v5 = v6.receiver;
  [(OBKStyleBulletListItemView *)&v6 traitCollectionDidChange:changeCopy];
  [v5 setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  selfCopy = self;
  sub_1BA458D40();
}

- (void)buttonWasTapped
{
  selfCopy = self;
  sub_1BA45919C();
}

- (_TtC18HealthExperienceUI26OBKStyleBulletListItemView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end