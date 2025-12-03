@interface DBVoiceControlViewController
- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)scene application:(id)application environment:(id)environment;
- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment;
- (unint64_t)deactivationPolicy;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation DBVoiceControlViewController

- (void)dealloc
{
  selfCopy = self;
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DBVoiceControlViewController();
  [(DBVoiceControlViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBVoiceControlViewController.viewDidLoad()();
}

- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)scene application:(id)application environment:(id)environment
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9DashBoard28DBVoiceControlViewController)initWithScene:(id)scene application:(id)application proxyApplication:(id)proxyApplication environment:(id)environment
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