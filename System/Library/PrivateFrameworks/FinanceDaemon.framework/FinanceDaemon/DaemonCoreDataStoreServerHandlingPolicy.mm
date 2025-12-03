@interface DaemonCoreDataStoreServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)context;
- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init;
- (id)allowableClassesForClientWithContext:(id)context;
- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context;
- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context;
@end

@implementation DaemonCoreDataStoreServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_226C88FC8(contextCopy);

  return self & 1;
}

- (id)allowableClassesForClientWithContext:(id)context
{
  if (sub_226C8AB00())
  {
    v3 = sub_226D6E86C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  v9 = sub_226C8ACA0(context);

  return v9;
}

- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  v10 = sub_226C89634(entity, context);

  return v10;
}

- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;
  selfCopy = self;
  LOBYTE(contextCopy) = sub_226C89E80(contextCopy);

  return contextCopy & 1;
}

- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end