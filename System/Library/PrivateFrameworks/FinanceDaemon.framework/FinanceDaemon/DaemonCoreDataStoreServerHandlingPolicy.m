@interface DaemonCoreDataStoreServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)a3;
- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init;
- (id)allowableClassesForClientWithContext:(id)a3;
- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
- (id)restrictingWritePredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
@end

@implementation DaemonCoreDataStoreServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_226C88FC8(v4);

  return self & 1;
}

- (id)allowableClassesForClientWithContext:(id)a3
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

- (id)restrictingWritePredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_226C8ACA0(a4);

  return v9;
}

- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_226C89634(a3, a4);

  return v10;
}

- (BOOL)shouldAcceptMetadataChangesFromClientWithContext:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_226C89E80(v3);

  return v3 & 1;
}

- (_TtC13FinanceDaemon39DaemonCoreDataStoreServerHandlingPolicy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end