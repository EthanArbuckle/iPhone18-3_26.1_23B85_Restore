@interface HDHealthOntologyStoreTaskServer
+ (NSString)taskIdentifier;
- (HDHealthOntologyStoreTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)connectionInvalidated;
- (void)remote_executeWithRequest:(id)request with:(id)with;
@end

@implementation HDHealthOntologyStoreTaskServer

- (HDHealthOntologyStoreTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  v11 = sub_25154CD50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154CD40();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v18 = sub_25154CD30();
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(HDStandardTaskServer *)&v21 initWithUUID:v18 configuration:configurationCopy client:clientCopy delegate:delegate];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v19;
}

+ (NSString)taskIdentifier
{
  sub_25154CDB0();
  v2 = sub_25154D250();

  return v2;
}

- (void)connectionInvalidated
{
  selfCopy = self;
  sub_2514ED9C0();
}

- (void)remote_executeWithRequest:(id)request with:(id)with
{
  v6 = _Block_copy(with);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_2514EDD58(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end