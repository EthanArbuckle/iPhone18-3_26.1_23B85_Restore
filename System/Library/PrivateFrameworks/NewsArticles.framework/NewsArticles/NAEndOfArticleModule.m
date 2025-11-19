@interface NAEndOfArticleModule
- (NAEndOfArticleModule)init;
- (id)createViewControllerFor:(id)a3 presentationOptions:(id)a4;
@end

@implementation NAEndOfArticleModule

- (id)createViewControllerFor:(id)a3 presentationOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = EndOfArticleModule.createViewController(for:presentationOptions:)(v6, v7);

  return v9;
}

- (NAEndOfArticleModule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end