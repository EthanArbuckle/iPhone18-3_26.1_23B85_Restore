@interface ArticleThumbnailComponentSizerFactory
- (NSString)type;
- (_TtC12NewsArticles37ArticleThumbnailComponentSizerFactory)init;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
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

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  componentStyleForComponent_ = [provider componentStyleForComponent_];
  v14 = *(selfCopy + OBJC_IVAR____TtC12NewsArticles37ArticleThumbnailComponentSizerFactory_linkedContentProvider);
  v15 = type metadata accessor for ArticleThumbnailComponentSizer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC12NewsArticles30ArticleThumbnailComponentSizer_linkedContentProvider] = v14;
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = v14;
  v18 = [(ArticleThumbnailComponentSizerFactory *)&v20 initWithComponent:component componentLayout:layout componentStyle:componentStyleForComponent_ DOMObjectProvider:provider layoutOptions:optionsCopy];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v18;
}

@end