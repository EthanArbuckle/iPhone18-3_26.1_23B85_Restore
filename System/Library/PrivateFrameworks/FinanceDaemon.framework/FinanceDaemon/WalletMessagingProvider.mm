@interface WalletMessagingProvider
+ (id)makeProvider;
- (_TtC13FinanceDaemon23WalletMessagingProvider)init;
- (id)applicationMessageSink:(id)sink createContentForMessageWithRegistration:(id)registration;
- (void)applicationMessageSink:(id)sink removedMessageWithRegistration:(id)registration;
- (void)applicationMessageSink:(id)sink tappedMessageWithRegistration:(id)registration;
- (void)connectApplicationMessageSink:(id)sink;
- (void)processMessagesWithCompletionHandler:(id)handler;
@end

@implementation WalletMessagingProvider

+ (id)makeProvider
{
  v2 = _s13FinanceDaemon23WalletMessagingProviderC04makeE0ACyFZ_0();

  return v2;
}

- (void)processMessagesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_226D6E79C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_226D7E538;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_226D7E548;
  v13[5] = v12;
  selfCopy = self;
  sub_226D5298C(0, 0, v8, &unk_226D7E558, v13);
}

- (_TtC13FinanceDaemon23WalletMessagingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connectApplicationMessageSink:(id)sink
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WalletMessagingProvider.connect(_:)(sink);
  swift_unknownObjectRelease();
}

- (id)applicationMessageSink:(id)sink createContentForMessageWithRegistration:(id)registration
{
  swift_unknownObjectRetain();
  registrationCopy = registration;
  selfCopy = self;
  v8 = sub_226D56F50();
  swift_unknownObjectRelease();

  return v8;
}

- (void)applicationMessageSink:(id)sink removedMessageWithRegistration:(id)registration
{
  swift_unknownObjectRetain();
  registrationCopy = registration;
  selfCopy = self;
  sub_226D58158();
  swift_unknownObjectRelease();
}

- (void)applicationMessageSink:(id)sink tappedMessageWithRegistration:(id)registration
{
  swift_unknownObjectRetain();
  registrationCopy = registration;
  selfCopy = self;
  WalletMessagingProvider.applicationMessageSink(_:tappedMessageWith:)(sink, registrationCopy);
  swift_unknownObjectRelease();
}

@end