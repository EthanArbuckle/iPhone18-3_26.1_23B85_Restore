@interface HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
- (_TtCCOC11HomeKitCore10HomesStore8CoreData14XPCStoreServer21RequestHandlingPolicy)init;
@end

@implementation HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_2530ECC6C(v3);

  return v3 & 1;
}

- (_TtCCOC11HomeKitCore10HomesStore8CoreData14XPCStoreServer21RequestHandlingPolicy)init
{
  v3.receiver = self;
  v3.super_class = _s14descr2864E9699O21RequestHandlingPolicyCMa();
  return [(HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy *)&v3 init];
}

@end