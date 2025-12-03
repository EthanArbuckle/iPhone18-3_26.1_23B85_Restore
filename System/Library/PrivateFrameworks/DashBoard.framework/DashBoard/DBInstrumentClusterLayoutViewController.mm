@interface DBInstrumentClusterLayoutViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSArray)preferredFocusEnvironments;
- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithThemeController:(id)controller environment:(id)environment displayID:(id)d workspaceIdentifier:(id)identifier error:(id *)error;
- (void)dealloc;
- (void)didConnect;
- (void)didReceiveData:(id)data;
- (void)didReset;
- (void)environmentConfiguration:(id)configuration appearancePreferenceDidChange:(int64_t)change;
- (void)invalidate;
- (void)setThemeData:(id)data error:(id *)error;
- (void)startAppearanceUpdate:(int64_t)update completion:(id)completion;
- (void)thermalMonitorLevelDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation DBInstrumentClusterLayoutViewController

- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithThemeController:(id)controller environment:(id)environment displayID:(id)d workspaceIdentifier:(id)identifier error:(id *)error
{
  v11 = sub_248383960();
  v13 = v12;
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return DBInstrumentClusterLayoutViewController.init(themeController:environment:displayID:workspaceIdentifier:error:)(controllerCopy, environment, v11, v13, identifier, error);
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  [(DBInstrumentClusterLayoutViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.viewDidLoad()();
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92960);
  v3 = sub_248383B00();

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v4 = v7.receiver;
  [(DBInstrumentClusterLayoutViewController *)&v7 viewDidAppear:appearCopy];
  sub_24823EEE4();
  sub_248381B50();

  v5 = *&v4[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl];
  if (v5)
  {
    v6 = v5;
    [v6 becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v4 = v5.receiver;
  [(DBInstrumentClusterLayoutViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_24823EEE4();
  sub_248381B40();
}

- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = DBInstrumentClusterLayoutViewController.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)environmentConfiguration:(id)configuration appearancePreferenceDidChange:(int64_t)change
{
  selfCopy = self;
  sub_2482511E8(change);
}

- (void)startAppearanceUpdate:(int64_t)update completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.startAppearanceUpdate(_:completion:)(update, sub_24825D51C, v7);
}

- (void)invalidate
{
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.invalidate()();
}

- (void)thermalMonitorLevelDidChange:(id)change
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_thermalMonitor);
  selfCopy = self;
  suggestedFrameRateLimit = [v3 suggestedFrameRateLimit];
  v5 = suggestedFrameRateLimit;
  if (suggestedFrameRateLimit)
  {
    [suggestedFrameRateLimit doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = selfCopy + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit;
  *v8 = v7;
  v8[8] = v5 == 0;
}

- (void)didConnect
{
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.didConnect()();
}

- (void)didReset
{
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.didReset()();
}

- (void)didReceiveData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_2483811B0();
  v7 = v6;

  DBInstrumentClusterLayoutViewController.didReceiveData(_:)(v5, v7);
  sub_24823BD70(v5, v7);
}

- (void)setThemeData:(id)data error:(id *)error
{
  sub_24814FB28(0, &qword_27EE8FEF8);
  v6 = sub_2483838A0();
  selfCopy = self;
  DBInstrumentClusterLayoutViewController.setThemeData(_:)(v6);

  if (v8)
  {
    if (error)
    {
      v9 = sub_2483810B0();

      v10 = v9;
      *error = v9;
    }

    else
    {
    }
  }

  else if (error)
  {
    v11 = 0;
    *error = 0;
  }
}

@end