@interface HostedWindowSceneDelegate
- (_TtC9CoreIDVUI25HostedWindowSceneDelegate)init;
- (void)dealloc;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)setWindow:(id)a3;
@end

@implementation HostedWindowSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_2458D3520(v8, v10);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window);
  sub_245910D34();
  v9 = v8;
  v10 = self;
  v11 = sub_245910D24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  sub_2458B93DC(0, 0, v6, &unk_24591D390, v12);

  v14.receiver = v10;
  v14.super_class = ObjectType;
  [(HostedWindowSceneDelegate *)&v14 dealloc];
}

- (_TtC9CoreIDVUI25HostedWindowSceneDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI25HostedWindowSceneDelegate_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HostedWindowSceneDelegate *)&v5 init];
}

@end