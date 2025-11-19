@interface CoreDataServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3;
- (_TtC16HomeEnergyDaemon28CoreDataServerHandlingPolicy)init;
- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
- (id)restrictingWritePredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
@end

@implementation CoreDataServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_22B30EFD4(v4);

  return v6 & 1;
}

- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_22B30D5D0(v7, v8, v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v10 = sub_22B36133C();
  __swift_destroy_boxed_opaque_existential_0(v12);

  return v10;
}

- (id)restrictingWritePredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_22B30E804(a3, a4);

  return v10;
}

- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  v6 = [(NSXPCStoreServerRequestHandlingPolicy *)&v8 restrictingWritePredicateForEntity:a3 fromClientWithContext:a4];

  return v6;
}

- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_22B30EB9C(a3, a4);

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v11 = sub_22B36133C();
  __swift_destroy_boxed_opaque_existential_0(v13);

  return v11;
}

- (_TtC16HomeEnergyDaemon28CoreDataServerHandlingPolicy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  return [(CoreDataServerHandlingPolicy *)&v3 init];
}

@end