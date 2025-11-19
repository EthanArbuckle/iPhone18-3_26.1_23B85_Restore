@interface MCSSyncResumer
- (MCSSyncResumer)init;
- (MCSSyncResumer)initWithDelegate:(id)a3 syncStateManager:(id)a4;
- (void)resumeSyncUsingKey:(id)a3;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation MCSSyncResumer

- (void)systemDidLeaveFirstDataProtectionLock
{
  v1 = a1;
  sub_22B92C008();
}

- (MCSSyncResumer)initWithDelegate:(id)a3 syncStateManager:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SyncResumer.init(delegate:syncStateManager:)(a3, a4);
}

- (void)resumeSyncUsingKey:(id)a3
{
  v4 = sub_22BA0FFFC();
  v6 = v5;
  v7 = self;
  sub_22B9E03CC(v4, v6);
}

- (MCSSyncResumer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end