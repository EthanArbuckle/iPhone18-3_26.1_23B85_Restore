@interface WebEmbedDatastoreURLSchemeHandlerFactory
- (_TtC8NewsFeed40WebEmbedDatastoreURLSchemeHandlerFactory)init;
- (id)createURLSchemeHandlerWithTask:(id)a3;
@end

@implementation WebEmbedDatastoreURLSchemeHandlerFactory

- (id)createURLSchemeHandlerWithTask:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed40WebEmbedDatastoreURLSchemeHandlerFactory_assetManager);
  v5 = objc_allocWithZone(type metadata accessor for WebEmbedDatastoreURLSchemeHandler());
  swift_unknownObjectRetain();
  v6 = v4;
  v7 = sub_1D5E3E19C(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (_TtC8NewsFeed40WebEmbedDatastoreURLSchemeHandlerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end