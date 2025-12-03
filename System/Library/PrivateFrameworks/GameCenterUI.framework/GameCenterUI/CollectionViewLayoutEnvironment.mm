@interface CollectionViewLayoutEnvironment
- (NSCollectionLayoutContainer)container;
- (UITraitCollection)traitCollection;
- (void)setContainer:(id)container;
- (void)setTraitCollection:(id)collection;
@end

@implementation CollectionViewLayoutEnvironment

- (NSCollectionLayoutContainer)container
{
  v2 = sub_24E12AB9C();

  return v2;
}

- (void)setContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24E12AC0C(container);
}

- (UITraitCollection)traitCollection
{
  v2 = sub_24E12AC58();

  return v2;
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  sub_24E12ACC4(collectionCopy);
}

@end