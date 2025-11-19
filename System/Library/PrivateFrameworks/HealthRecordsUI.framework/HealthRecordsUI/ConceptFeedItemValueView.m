@interface ConceptFeedItemValueView
- (void)didMoveToSuperview;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
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

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1D1196480(a4);
  swift_unknownObjectRelease();
}

@end