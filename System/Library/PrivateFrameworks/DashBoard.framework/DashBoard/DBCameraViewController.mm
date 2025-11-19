@interface DBCameraViewController
- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5;
- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6;
- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 environment:(id)a4;
- (void)loadView;
- (void)sendSceneUpdateWithIsForeground:(BOOL)a3;
@end

@implementation DBCameraViewController

- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 environment:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return DBCameraViewController.init(scene:environment:)(v5, a4);
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for DBCameraView());
  v5 = self;
  v4 = [v3 initWithFrame_];
  [(DBCameraViewController *)v5 setView:v4];
}

- (void)sendSceneUpdateWithIsForeground:(BOOL)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24827EA3C;
  *(v6 + 24) = v5;
  v9[4] = sub_24827EA40;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24827E2DC;
  v9[3] = &block_descriptor_18;
  v7 = _Block_copy(v9);
  v8 = self;

  [(DBSceneHostViewController *)v8 performSceneUpdateWithBlock:v7 completion:0];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }
}

- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 application:(id)a4 environment:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9DashBoard22DBCameraViewController)initWithScene:(id)a3 application:(id)a4 proxyApplication:(id)a5 environment:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end