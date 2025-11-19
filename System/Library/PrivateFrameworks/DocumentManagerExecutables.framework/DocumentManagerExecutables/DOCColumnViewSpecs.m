@interface DOCColumnViewSpecs
+ (id)specWithBrowsingContextWithTraitCollection:(id)a3 columnBrowserSize:(CGSize)a4;
- (_TtC26DocumentManagerExecutables18DOCColumnViewSpecs)init;
@end

@implementation DOCColumnViewSpecs

+ (id)specWithBrowsingContextWithTraitCollection:(id)a3 columnBrowserSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = specialized static DOCColumnViewSpecs.specWithBrowsingContext(traitCollection:columnBrowserSize:)(v6, width, height);

  return v7;
}

- (_TtC26DocumentManagerExecutables18DOCColumnViewSpecs)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end