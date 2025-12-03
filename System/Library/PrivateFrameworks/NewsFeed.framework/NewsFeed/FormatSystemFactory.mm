@interface FormatSystemFactory
- (_TtC8NewsFeed19FormatSystemFactory)init;
- (id)createFeedConfigurationForViewController:(id)controller;
@end

@implementation FormatSystemFactory

- (_TtC8NewsFeed19FormatSystemFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)createFeedConfigurationForViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = FormatSystemFactory.createFeedConfiguration(viewController:)(controllerCopy);

  return v6;
}

@end