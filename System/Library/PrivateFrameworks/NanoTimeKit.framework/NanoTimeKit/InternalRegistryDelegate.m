@interface InternalRegistryDelegate
- (_TtC11NanoTimeKitP33_F7DE6988C78D97BE72288BDFFB479D9424InternalRegistryDelegate)init;
- (void)registry:(id)a3 added:(id)a4;
- (void)registry:(id)a3 removed:(id)a4;
@end

@implementation InternalRegistryDelegate

- (void)registry:(id)a3 added:(id)a4
{
  v4 = (self + OBJC_IVAR____TtC11NanoTimeKitP33_F7DE6988C78D97BE72288BDFFB479D9424InternalRegistryDelegate_callback);
  v8 = self;
  os_unfair_lock_lock(v4);
  v6 = *&v4[2]._os_unfair_lock_opaque;
  v5 = *&v4[4]._os_unfair_lock_opaque;

  v6(v7);

  *&v4[2]._os_unfair_lock_opaque = v6;
  *&v4[4]._os_unfair_lock_opaque = v5;
  os_unfair_lock_unlock(v4);
}

- (void)registry:(id)a3 removed:(id)a4
{
  v5 = sub_22DCB5B3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DCB5B1C();
  v11 = (self + OBJC_IVAR____TtC11NanoTimeKitP33_F7DE6988C78D97BE72288BDFFB479D9424InternalRegistryDelegate_callback);
  v12 = self;
  os_unfair_lock_lock(v11);
  v14 = *&v11[2]._os_unfair_lock_opaque;
  v13 = *&v11[4]._os_unfair_lock_opaque;

  v14(v15);

  *&v11[2]._os_unfair_lock_opaque = v14;
  *&v11[4]._os_unfair_lock_opaque = v13;
  os_unfair_lock_unlock(v11);

  (*(v6 + 8))(v10, v5);
}

- (_TtC11NanoTimeKitP33_F7DE6988C78D97BE72288BDFFB479D9424InternalRegistryDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC11NanoTimeKitP33_F7DE6988C78D97BE72288BDFFB479D9424InternalRegistryDelegate_callback;
  *v4 = 0;
  *(v4 + 1) = nullsub_1;
  *(v4 + 2) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(InternalRegistryDelegate *)&v6 init];
}

@end