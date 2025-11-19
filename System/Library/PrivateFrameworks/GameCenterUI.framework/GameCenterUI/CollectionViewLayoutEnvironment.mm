@interface CollectionViewLayoutEnvironment
- (NSCollectionLayoutContainer)container;
- (UITraitCollection)traitCollection;
- (void)setContainer:(id)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation CollectionViewLayoutEnvironment

- (NSCollectionLayoutContainer)container
{
  v2 = sub_24E12AB9C();

  return v2;
}

- (void)setContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_24E12AC0C(a3);
}

- (UITraitCollection)traitCollection
{
  v2 = sub_24E12AC58();

  return v2;
}

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E12ACC4(v4);
}

@end