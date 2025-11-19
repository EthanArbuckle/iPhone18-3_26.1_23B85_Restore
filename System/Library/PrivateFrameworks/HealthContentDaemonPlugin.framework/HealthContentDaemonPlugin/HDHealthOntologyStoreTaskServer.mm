@interface HDHealthOntologyStoreTaskServer
+ (NSString)taskIdentifier;
- (HDHealthOntologyStoreTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)connectionInvalidated;
- (void)remote_executeWithRequest:(id)a3 with:(id)a4;
@end

@implementation HDHealthOntologyStoreTaskServer

- (HDHealthOntologyStoreTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  ObjectType = swift_getObjectType();
  v11 = sub_25154CD50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154CD40();
  v16 = a4;
  v17 = a5;
  swift_unknownObjectRetain();
  v18 = sub_25154CD30();
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(HDStandardTaskServer *)&v21 initWithUUID:v18 configuration:v16 client:v17 delegate:a6];

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
  v2 = self;
  sub_2514ED9C0();
}

- (void)remote_executeWithRequest:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2514EDD58(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end