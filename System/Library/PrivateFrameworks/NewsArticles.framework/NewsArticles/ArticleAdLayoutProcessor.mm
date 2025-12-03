@interface ArticleAdLayoutProcessor
- (_TtC12NewsArticles24ArticleAdLayoutProcessor)init;
- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider;
@end

@implementation ArticleAdLayoutProcessor

- (void)processLayoutTask:(id)task layoutBlueprint:(id)blueprint DOMObjectProvider:(id)provider
{
  taskCopy = task;
  blueprintCopy = blueprint;
  providerCopy = provider;
  selfCopy = self;
  sub_1D7A1A7AC(blueprintCopy, providerCopy);
}

- (_TtC12NewsArticles24ArticleAdLayoutProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end