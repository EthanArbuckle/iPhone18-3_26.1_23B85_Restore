@interface AdComponentViewFactory
- (NSString)type;
- (_TtC12NewsArticles22AdComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory;
- (id)componentViewForComponent:(id)component;
@end

@implementation AdComponentViewFactory

- (NSString)type
{
  v2 = sub_1D7D3031C();

  return v2;
}

- (id)componentViewForComponent:(id)component
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1D7B29434();
  swift_unknownObjectRelease();

  return v5;
}

- (_TtC12NewsArticles22AdComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end