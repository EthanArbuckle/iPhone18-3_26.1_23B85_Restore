@interface ConceptFeedItemTitleView
- (NSLayoutYAxisAnchor)lastBaselineAnchor;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation ConceptFeedItemTitleView

- (NSLayoutYAxisAnchor)lastBaselineAnchor
{
  lastBaselineAnchor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel) lastBaselineAnchor];

  return lastBaselineAnchor;
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1D10BC268(collection);
  swift_unknownObjectRelease();
}

@end