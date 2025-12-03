@interface AdComponentSizerFactory
- (NSString)type;
- (_TtC12NewsArticles23AdComponentSizerFactory)init;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation AdComponentSizerFactory

- (NSString)type
{

  v2 = sub_1D7D3031C();

  return v2;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  optionsCopy = options;
  swift_unknownObjectRetain();
  selfCopy = self;
  v13 = sub_1D7BD8BC0(component, layout, optionsCopy, provider);
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