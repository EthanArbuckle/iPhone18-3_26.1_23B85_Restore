@interface DBPassengerSceneViewController
- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5;
- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
@end

@implementation DBPassengerSceneViewController

- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DBPassengerSceneViewController();
  return [(DBSceneHostViewController *)&v9 initWithScene:a3 application:a4 environment:a5];
}

- (_TtC9DashBoard30DBPassengerSceneViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for DBPassengerSceneViewController();
  return [(DBSceneHostViewController *)&v11 initWithScene:a3 application:a4 proxyApplication:a5 environment:a6];
}

@end