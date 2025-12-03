@interface DOCColumnViewSpecs
+ (id)specWithBrowsingContextWithTraitCollection:(id)collection columnBrowserSize:(CGSize)size;
- (_TtC26DocumentManagerExecutables18DOCColumnViewSpecs)init;
@end

@implementation DOCColumnViewSpecs

+ (id)specWithBrowsingContextWithTraitCollection:(id)collection columnBrowserSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v7 = specialized static DOCColumnViewSpecs.specWithBrowsingContext(traitCollection:columnBrowserSize:)(collectionCopy, width, height);

  return v7;
}

- (_TtC26DocumentManagerExecutables18DOCColumnViewSpecs)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end