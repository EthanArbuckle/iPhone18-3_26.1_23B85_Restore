@interface MagnifierApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (_TtC16MagnifierSupport28MagnifierApplicationDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
@end

@implementation MagnifierApplicationDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = [a4 configuration];

  return v5;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_257C119A4();
    sub_257ECF3D0();
  }

  v6 = a3;
  v7 = self;
  v8 = _s16MagnifierSupport0A19ApplicationDelegateC11application_29didFinishLaunchingWithOptionsSbSo13UIApplicationC_SDySo0k6LaunchJ3KeyaypGSgtF_0();

  return v8 & 1;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
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