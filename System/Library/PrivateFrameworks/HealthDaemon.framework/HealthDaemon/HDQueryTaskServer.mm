@interface HDQueryTaskServer
+ (NSString)taskIdentifier;
- (HDQueryTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)remote_queryWithEncodedQueryDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation HDQueryTaskServer

+ (NSString)taskIdentifier
{
  sub_22911BE1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    sub_22911C35C();
    v4 = sub_22911C34C();

    v3 = v4;
  }

  return v3;
}

- (id)exportedInterface
{
  TaskServerC17exportedInterfaceSo14NSXPCInterfaceCSgyF_0 = _s12HealthDaemon15QueryTaskServerC17exportedInterfaceSo14NSXPCInterfaceCSgyF_0();

  return TaskServerC17exportedInterfaceSo14NSXPCInterfaceCSgyF_0;
}

- (id)remoteInterface
{
  TaskServerC15remoteInterfaceSo14NSXPCInterfaceCSgyF_0 = _s12HealthDaemon15QueryTaskServerC15remoteInterfaceSo14NSXPCInterfaceCSgyF_0();

  return TaskServerC15remoteInterfaceSo14NSXPCInterfaceCSgyF_0;
}

- (HDQueryTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  v11 = sub_22911B8DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v18 = sub_22911B8BC();
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(HDStandardTaskServer *)&v21 initWithUUID:v18 configuration:configurationCopy client:clientCopy delegate:delegate];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v19;
}

- (void)remote_queryWithEncodedQueryDescriptor:(id)descriptor completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  descriptorCopy = descriptor;
  selfCopy = self;
  sub_2289E160C(descriptorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end