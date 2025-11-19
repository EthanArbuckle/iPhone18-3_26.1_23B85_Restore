@interface DefaultSceneDelegate
- (_TtC9CoreIDVUI20DefaultSceneDelegate)init;
- (void)scene:(id)a3 openURLContexts:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation DefaultSceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_2458D2774(v10);
}

- (void)scene:(id)a3 openURLContexts:(id)a4
{
  sub_2458D25D8();
  sub_2458D2624();
  v5 = sub_245910E74();
  v6 = self;
  sub_2458D18DC(v5);
}

- (_TtC9CoreIDVUI20DefaultSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC9CoreIDVUI20DefaultSceneDelegate_controller;
  sub_24590E5F4();
  *(&self->super.isa + v3) = sub_24590E5E4();
  v5.receiver = self;
  v5.super_class = type metadata accessor for DefaultSceneDelegate();
  return [(DefaultSceneDelegate *)&v5 init];
}

@end