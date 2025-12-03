@interface DBClimateViewController
- (CGRect)sceneFrame;
- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)scene application:(id)application environment:(id)environment;
- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment;
- (void)clientSceneSettingsDidUpdate:(id)update;
- (void)loadView;
- (void)performCancelTapGesture:(id)gesture;
- (void)updateDockStyle:(int64_t)style;
- (void)updateForViewAreaChange;
- (void)updateWithDeactivationReasons:(unint64_t)reasons;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DBClimateViewController

- (void)performCancelTapGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_24828266C(gestureCopy);
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
  selfCopy = self;
  DBClimateViewController.viewDidLayoutSubviews()();
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for DBClimateView());
  selfCopy = self;
  initWithFrame_ = [v3 initWithFrame_];
  [(DBClimateViewController *)selfCopy setView:initWithFrame_];
}

- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)scene application:(id)application environment:(id)environment
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9DashBoard23DBClimateViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment
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

- (void)clientSceneSettingsDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  DBClimateViewController.clientSceneSettingsDidUpdate(_:)(updateCopy);
}

- (void)updateDockStyle:(int64_t)style
{
  selfCopy = self;
  v6 = selfCopy;
  if (!style)
  {
    traitCollection = [(DBClimateViewController *)selfCopy traitCollection];
    style = [traitCollection userInterfaceStyle];

    selfCopy = v6;
  }

  *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC9DashBoard23DBClimateViewController_currentInterfaceStyle) = style;
  sub_248282B00();
}

- (void)updateWithDeactivationReasons:(unint64_t)reasons
{
  selfCopy = self;
  DBClimateViewController.update(deactivationReasons:)(reasons);
}

- (void)updateForViewAreaChange
{
  selfCopy = self;
  DBClimateViewController.updateForViewAreaChange()();
}

@end