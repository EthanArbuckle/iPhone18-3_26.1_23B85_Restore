@interface DBVoiceControlViewController
- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5;
- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
- (unint64_t)deactivationPolicy;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation DBVoiceControlViewController

- (void)dealloc
{
  v2 = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v2);

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DBVoiceControlViewController();
  [(DBVoiceControlViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  DBVoiceControlViewController.viewDidLoad()();
}

- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)deactivationPolicy
{
  if (_AXSCommandAndControlCarPlayEnabled())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end