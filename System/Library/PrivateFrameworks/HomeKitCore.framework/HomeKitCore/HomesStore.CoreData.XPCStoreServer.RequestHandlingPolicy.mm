@interface HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
- (_TtCCOC11HomeKitCore10HomesStore8CoreData14XPCStoreServer21RequestHandlingPolicy)init;
@end

@implementation HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;
  selfCopy = self;
  LOBYTE(contextCopy) = sub_2530ECC6C(contextCopy);

  return contextCopy & 1;
}

- (_TtCCOC11HomeKitCore10HomesStore8CoreData14XPCStoreServer21RequestHandlingPolicy)init
{
  v3.receiver = self;
  v3.super_class = _s14descr2864E9699O21RequestHandlingPolicyCMa();
  return [(HomesStore.CoreData.XPCStoreServer.RequestHandlingPolicy *)&v3 init];
}

@end