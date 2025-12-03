@interface DBInstrumentClusterSceneViewController
- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)scene application:(id)application environment:(id)environment;
- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment;
- (unint64_t)deactivationPolicy;
- (void)_cancelFocusTimer;
- (void)deactivatePresentationViewWithIdentifier:(id)identifier;
@end

@implementation DBInstrumentClusterSceneViewController

- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)scene application:(id)application environment:(id)environment
{
  v8 = self + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_frameOverride;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = self + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_safeAreaInsetsOverride;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  return [(DBSceneHostViewController *)&v11 initWithScene:scene application:application environment:environment];
}

- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment
{
  v10 = self + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_frameOverride;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v11 = self + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_safeAreaInsetsOverride;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer) = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  return [(DBSceneHostViewController *)&v13 initWithScene:scene application:application proxyApplication:proxyApplication environment:environment];
}

- (unint64_t)deactivationPolicy
{
  selfCopy = self;
  application = [(DBSceneHostViewController *)selfCopy application];
  appPolicy = [(DBApplication *)application appPolicy];

  if (appPolicy)
  {
    launchUsingTemplateUI = [(CRCarPlayAppPolicy *)appPolicy launchUsingTemplateUI];

    if (launchUsingTemplateUI)
    {
      return 1;
    }
  }

  else
  {
  }

  return 2;
}

- (void)deactivatePresentationViewWithIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  v4 = v5.receiver;
  [(DBSceneHostViewController *)&v5 deactivatePresentationViewWithIdentifier:identifier];
  [v4 _cancelFocusTimer];
}

- (void)_cancelFocusTimer
{
  v3 = OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.super.isa + v3);
  *(&self->super.super.super.super.isa + v3) = 0;
}

@end