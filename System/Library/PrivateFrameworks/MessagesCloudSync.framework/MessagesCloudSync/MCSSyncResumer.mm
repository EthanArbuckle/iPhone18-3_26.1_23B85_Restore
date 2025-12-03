@interface MCSSyncResumer
- (MCSSyncResumer)init;
- (MCSSyncResumer)initWithDelegate:(id)delegate syncStateManager:(id)manager;
- (void)resumeSyncUsingKey:(id)key;
- (void)systemDidLeaveFirstDataProtectionLock;
@end

@implementation MCSSyncResumer

- (void)systemDidLeaveFirstDataProtectionLock
{
  selfCopy = self;
  sub_22B92C008();
}

- (MCSSyncResumer)initWithDelegate:(id)delegate syncStateManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return SyncResumer.init(delegate:syncStateManager:)(delegate, manager);
}

- (void)resumeSyncUsingKey:(id)key
{
  v4 = sub_22BA0FFFC();
  v6 = v5;
  selfCopy = self;
  sub_22B9E03CC(v4, v6);
}

- (MCSSyncResumer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end