@interface ConceptFeedItemValueView
- (void)didMoveToSuperview;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation ConceptFeedItemValueView

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConceptFeedItemValueView();
  v2 = v3.receiver;
  [(ConceptFeedItemValueView *)&v3 didMoveToSuperview];
  sub_1D1195E64();
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1D1196480(collection);
  swift_unknownObjectRelease();
}

@end