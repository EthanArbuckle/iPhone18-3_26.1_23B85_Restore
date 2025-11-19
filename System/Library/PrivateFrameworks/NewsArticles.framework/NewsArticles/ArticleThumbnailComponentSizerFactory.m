@interface ArticleThumbnailComponentSizerFactory
- (NSString)type;
- (_TtC12NewsArticles37ArticleThumbnailComponentSizerFactory)init;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation ArticleThumbnailComponentSizerFactory

- (NSString)type
{

  v2 = sub_1D7D3031C();

  return v2;
}

- (_TtC12NewsArticles37ArticleThumbnailComponentSizerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = a5;
  swift_unknownObjectRetain();
  v12 = self;
  v13 = [a6 componentStyleForComponent_];
  v14 = *(v12 + OBJC_IVAR____TtC12NewsArticles37ArticleThumbnailComponentSizerFactory_linkedContentProvider);
  v15 = type metadata accessor for ArticleThumbnailComponentSizer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC12NewsArticles30ArticleThumbnailComponentSizer_linkedContentProvider] = v14;
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = v14;
  v18 = [(ArticleThumbnailComponentSizerFactory *)&v20 initWithComponent:a3 componentLayout:a4 componentStyle:v13 DOMObjectProvider:a6 layoutOptions:v11];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v18;
}

@end