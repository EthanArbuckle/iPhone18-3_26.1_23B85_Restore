@interface DBClimateViewController
- (CGRect)sceneFrame;
- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5;
- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
- (void)clientSceneSettingsDidUpdate:(id)a3;
- (void)loadView;
- (void)performCancelTapGesture:(id)a3;
- (void)updateDockStyle:(int64_t)a3;
- (void)updateForViewAreaChange;
- (void)updateWithDeactivationReasons:(unint64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBClimateViewController

- (void)performCancelTapGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24828266C(v4);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DBClimateViewController();
  v2 = v3.receiver;
  [(DBClimateViewController *)&v3 viewDidLoad];
  sub_248282B00();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DBClimateViewController.viewDidLayoutSubviews()();
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for DBClimateView());
  v5 = self;
  v4 = [v3 initWithFrame_];
  [(DBClimateViewController *)v5 setView:v4];
}

- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)sceneFrame
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_climateSceneFrame);
  v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_climateSceneFrame);
  v4 = *(&self->super.super._overrideTransitioningDelegate + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_climateSceneFrame);
  v5 = *(&self->super.super._view + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_climateSceneFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)clientSceneSettingsDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  DBClimateViewController.clientSceneSettingsDidUpdate(_:)(v4);
}

- (void)updateDockStyle:(int64_t)a3
{
  v4 = self;
  v6 = v4;
  if (!a3)
  {
    v5 = [(DBClimateViewController *)v4 traitCollection];
    a3 = [v5 userInterfaceStyle];

    v4 = v6;
  }

  *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_currentInterfaceStyle) = a3;
  sub_248282B00();
}

- (void)updateWithDeactivationReasons:(unint64_t)a3
{
  v4 = self;
  DBClimateViewController.update(deactivationReasons:)(a3);
}

- (void)updateForViewAreaChange
{
  v2 = self;
  DBClimateViewController.updateForViewAreaChange()();
}

@end