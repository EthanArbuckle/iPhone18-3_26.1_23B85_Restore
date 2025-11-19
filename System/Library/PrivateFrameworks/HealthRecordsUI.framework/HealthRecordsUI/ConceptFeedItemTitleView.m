@interface ConceptFeedItemTitleView
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation ConceptFeedItemTitleView

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel) lastBaselineAnchor];

  return v2;
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1D10BC268(a4);
  swift_unknownObjectRelease();
}

@end