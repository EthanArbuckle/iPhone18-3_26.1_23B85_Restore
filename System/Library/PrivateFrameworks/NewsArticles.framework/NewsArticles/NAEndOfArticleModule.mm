@interface NAEndOfArticleModule
- (NAEndOfArticleModule)init;
- (id)createViewControllerFor:(id)for presentationOptions:(id)options;
@end

@implementation NAEndOfArticleModule

- (id)createViewControllerFor:(id)for presentationOptions:(id)options
{
  forCopy = for;
  optionsCopy = options;
  selfCopy = self;
  v9 = EndOfArticleModule.createViewController(for:presentationOptions:)(forCopy, optionsCopy);

  return v9;
}

- (NAEndOfArticleModule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end