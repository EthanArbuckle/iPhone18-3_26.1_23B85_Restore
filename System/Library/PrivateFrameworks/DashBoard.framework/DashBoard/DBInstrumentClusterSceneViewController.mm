@interface DBInstrumentClusterSceneViewController
- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5;
- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
- (unint64_t)deactivationPolicy;
- (void)_cancelFocusTimer;
- (void)deactivatePresentationViewWithIdentifier:(id)a3;
@end

@implementation DBInstrumentClusterSceneViewController

- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5
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
  return [(DBSceneHostViewController *)&v11 initWithScene:a3 application:a4 environment:a5];
}

- (_TtC9DashBoard38DBInstrumentClusterSceneViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
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
  return [(DBSceneHostViewController *)&v13 initWithScene:a3 application:a4 proxyApplication:a5 environment:a6];
}

- (unint64_t)deactivationPolicy
{
  v2 = self;
  v3 = [(DBSceneHostViewController *)v2 application];
  v4 = [(DBApplication *)v3 appPolicy];

  if (v4)
  {
    v5 = [(CRCarPlayAppPolicy *)v4 launchUsingTemplateUI];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 2;
}

- (void)deactivatePresentationViewWithIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  v4 = v5.receiver;
  [(DBSceneHostViewController *)&v5 deactivatePresentationViewWithIdentifier:a3];
  [v4 _cancelFocusTimer];
}

- (void)_cancelFocusTimer
{
  v3 = OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer);
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.super.super.super.isa + v3);
  *(&self->super.super.super.super.isa + v3) = 0;
}

@end