@interface HDHealthTopicsTaskServer
+ (NSString)taskIdentifier;
- (HDHealthTopicsTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)remote_cancelWithToken:(id)token with:(id)with;
- (void)remote_executeWithRequest:(id)request token:(id)token with:(id)with;
@end

@implementation HDHealthTopicsTaskServer

- (HDHealthTopicsTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  v11 = sub_251F63734();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63724();
  sub_251F61C68();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84FA0];
  *(v16 + 24) = 0;
  *(v16 + 16) = v17;
  *(&self->super.super.isa + OBJC_IVAR___HDHealthTopicsTaskServer_protectedState) = v16;
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v20 = sub_251F63714();
  v23.receiver = self;
  v23.super_class = ObjectType;
  v21 = [(HDStandardTaskServer *)&v23 initWithUUID:v20 configuration:configurationCopy client:clientCopy delegate:delegate];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v21;
}

+ (NSString)taskIdentifier
{
  sub_251F637B4();
  v2 = sub_251F639B4();

  return v2;
}

- (void)connectionInvalidated
{
  selfCopy = self;
  sub_251F5E7B8(MEMORY[0x277D85B38], "%{public}s: connectionInvalidated");
}

- (void)connectionInterrupted
{
  selfCopy = self;
  sub_251F5E7B8(MEMORY[0x277D85B58], "%{public}s: connectionInterrupted");
}

- (void)remote_executeWithRequest:(id)request token:(id)token with:(id)with
{
  v8 = _Block_copy(with);
  requestCopy = request;
  tokenCopy = token;
  selfCopy = self;
  profile = [(HDStandardTaskServer *)selfCopy profile];
  if (profile && (v13 = profile, v14 = sub_251F61CE0(), v13, v14))
  {
    sub_251F5F128(requestCopy, tokenCopy, v14);
    v8[2](v8, 0);

    _Block_release(v8);

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_251F637C4();
    sub_251F619C4(&qword_27F4C5488, MEMORY[0x277D12568]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D12560], v15);
    v18 = sub_251F63704();
    (v8)[2](v8, v18);

    _Block_release(v8);
  }
}

- (void)remote_cancelWithToken:(id)token with:(id)with
{
  v6 = _Block_copy(with);
  tokenCopy = token;
  selfCopy = self;
  sub_251F5FFDC();
  v6[2](v6, 0);

  _Block_release(v6);
}

@end