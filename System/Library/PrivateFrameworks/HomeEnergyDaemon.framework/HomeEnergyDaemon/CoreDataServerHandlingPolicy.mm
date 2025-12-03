@interface CoreDataServerHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
- (_TtC16HomeEnergyDaemon28CoreDataServerHandlingPolicy)init;
- (id)processFaultForObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error;
- (id)processRequest:(id)request fromClientWithContext:(id)context error:(id *)error;
- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context;
- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context;
@end

@implementation CoreDataServerHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_22B30EFD4(contextCopy);

  return v6 & 1;
}

- (id)processRequest:(id)request fromClientWithContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  selfCopy = self;
  sub_22B30D5D0(requestCopy, contextCopy, v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v10 = sub_22B36133C();
  __swift_destroy_boxed_opaque_existential_0(v12);

  return v10;
}

- (id)restrictingWritePredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  selfCopy = self;
  v10 = sub_22B30E804(entity, context);

  return v10;
}

- (id)restrictingReadPredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for CoreDataServerHandlingPolicy();
  v6 = [(NSXPCStoreServerRequestHandlingPolicy *)&v8 restrictingWritePredicateForEntity:entity fromClientWithContext:context];

  return v6;
}

- (id)processFaultForObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  selfCopy = self;
  sub_22B30EB9C(d, context);

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