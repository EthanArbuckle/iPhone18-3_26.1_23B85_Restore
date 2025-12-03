@interface DBPassengerSceneViewController
- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)scene application:(id)application environment:(id)environment;
- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment;
@end

@implementation DBPassengerSceneViewController

- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)scene application:(id)application environment:(id)environment
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DBPassengerSceneViewController();
  return [(DBSceneHostViewController *)&v9 initWithScene:scene application:application environment:environment];
}

- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for DBPassengerSceneViewController();
  return [(DBSceneHostViewController *)&v11 initWithScene:scene application:application proxyApplication:proxyApplication environment:environment];
}

@end