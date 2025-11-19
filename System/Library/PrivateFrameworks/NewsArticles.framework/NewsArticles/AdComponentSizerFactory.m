@interface AdComponentSizerFactory
- (NSString)type;
- (_TtC12NewsArticles23AdComponentSizerFactory)init;
- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6;
@end

@implementation AdComponentSizerFactory

- (NSString)type
{

  v2 = sub_1D7D3031C();

  return v2;
}

- (id)sizerForComponent:(id)a3 componentLayout:(id)a4 layoutOptions:(id)a5 DOMObjectProvider:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = a5;
  swift_unknownObjectRetain();
  v12 = self;
  v13 = sub_1D7BD8BC0(a3, a4, v11, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v13;
}

- (_TtC12NewsArticles23AdComponentSizerFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end