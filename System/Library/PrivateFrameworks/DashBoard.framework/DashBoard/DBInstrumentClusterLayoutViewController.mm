@interface DBInstrumentClusterLayoutViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSArray)preferredFocusEnvironments;
- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithThemeController:(id)a3 environment:(id)a4 displayID:(id)a5 workspaceIdentifier:(id)a6 error:(id *)a7;
- (void)dealloc;
- (void)didConnect;
- (void)didReceiveData:(id)a3;
- (void)didReset;
- (void)environmentConfiguration:(id)a3 appearancePreferenceDidChange:(int64_t)a4;
- (void)invalidate;
- (void)setThemeData:(id)a3 error:(id *)a4;
- (void)startAppearanceUpdate:(int64_t)a3 completion:(id)a4;
- (void)thermalMonitorLevelDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation DBInstrumentClusterLayoutViewController

- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithThemeController:(id)a3 environment:(id)a4 displayID:(id)a5 workspaceIdentifier:(id)a6 error:(id *)a7
{
  v11 = sub_248383960();
  v13 = v12;
  v14 = a3;
  swift_unknownObjectRetain();
  return DBInstrumentClusterLayoutViewController.init(themeController:environment:displayID:workspaceIdentifier:error:)(v14, a4, v11, v13, a6, a7);
}

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  [(DBInstrumentClusterLayoutViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  DBInstrumentClusterLayoutViewController.viewDidLoad()();
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  DBInstrumentClusterLayoutViewController.preferredFocusEnvironments.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92960);
  v3 = sub_248383B00();

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v4 = v7.receiver;
  [(DBInstrumentClusterLayoutViewController *)&v7 viewDidAppear:v3];
  sub_24823EEE4();
  sub_248381B50();

  v5 = *&v4[OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_layoutControl];
  if (v5)
  {
    v6 = v5;
    [v6 becomeFirstResponder];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DBInstrumentClusterLayoutViewController(0);
  v4 = v5.receiver;
  [(DBInstrumentClusterLayoutViewController *)&v5 viewDidDisappear:v3];
  sub_24823EEE4();
  sub_248381B40();
}

- (_TtC9DashBoard39DBInstrumentClusterLayoutViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DBInstrumentClusterLayoutViewController.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)environmentConfiguration:(id)a3 appearancePreferenceDidChange:(int64_t)a4
{
  v5 = self;
  sub_2482511E8(a4);
}

- (void)startAppearanceUpdate:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  DBInstrumentClusterLayoutViewController.startAppearanceUpdate(_:completion:)(a3, sub_24825D51C, v7);
}

- (void)invalidate
{
  v2 = self;
  DBInstrumentClusterLayoutViewController.invalidate()();
}

- (void)thermalMonitorLevelDidChange:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_thermalMonitor);
  v9 = self;
  v4 = [v3 suggestedFrameRateLimit];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v9 + OBJC_IVAR____TtC9DashBoard39DBInstrumentClusterLayoutViewController_frameRateLimit;
  *v8 = v7;
  v8[8] = v5 == 0;
}

- (void)didConnect
{
  v2 = self;
  DBInstrumentClusterLayoutViewController.didConnect()();
}

- (void)didReset
{
  v2 = self;
  DBInstrumentClusterLayoutViewController.didReset()();
}

- (void)didReceiveData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_2483811B0();
  v7 = v6;

  DBInstrumentClusterLayoutViewController.didReceiveData(_:)(v5, v7);
  sub_24823BD70(v5, v7);
}

- (void)setThemeData:(id)a3 error:(id *)a4
{
  sub_24814FB28(0, &qword_27EE8FEF8);
  v6 = sub_2483838A0();
  v7 = self;
  DBInstrumentClusterLayoutViewController.setThemeData(_:)(v6);

  if (v8)
  {
    if (a4)
    {
      v9 = sub_2483810B0();

      v10 = v9;
      *a4 = v9;
    }

    else
    {
    }
  }

  else if (a4)
  {
    v11 = 0;
    *a4 = 0;
  }
}

@end