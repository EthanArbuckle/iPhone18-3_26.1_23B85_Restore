@interface MagnifierApplicationDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (_TtC16MagnifierSupport28MagnifierApplicationDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
@end

@implementation MagnifierApplicationDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  configuration = [session configuration];

  return configuration;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_257C119A4();
    sub_257ECF3D0();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = _s16MagnifierSupport0A19ApplicationDelegateC11application_29didFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0();

  return v8 & 1;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89)
  {
    return 2;
  }

  else
  {
    return 30;
  }
}

- (_TtC16MagnifierSupport28MagnifierApplicationDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(MagnifierApplicationDelegate *)&v3 init];
}

@end