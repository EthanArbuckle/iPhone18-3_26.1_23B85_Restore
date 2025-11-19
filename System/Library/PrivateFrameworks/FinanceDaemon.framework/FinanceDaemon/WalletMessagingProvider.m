@interface WalletMessagingProvider
+ (id)makeProvider;
- (_TtC13FinanceDaemon23WalletMessagingProvider)init;
- (id)applicationMessageSink:(id)a3 createContentForMessageWithRegistration:(id)a4;
- (void)applicationMessageSink:(id)a3 removedMessageWithRegistration:(id)a4;
- (void)applicationMessageSink:(id)a3 tappedMessageWithRegistration:(id)a4;
- (void)connectApplicationMessageSink:(id)a3;
- (void)processMessagesWithCompletionHandler:(id)a3;
@end

@implementation WalletMessagingProvider

+ (id)makeProvider
{
  v2 = _s13FinanceDaemon23WalletMessagingProviderC04makeE0ACyFZ_0();

  return v2;
}

- (void)processMessagesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
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
  v14 = self;
  sub_226D5298C(0, 0, v8, &unk_226D7E558, v13);
}

- (_TtC13FinanceDaemon23WalletMessagingProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connectApplicationMessageSink:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  WalletMessagingProvider.connect(_:)(a3);
  swift_unknownObjectRelease();
}

- (id)applicationMessageSink:(id)a3 createContentForMessageWithRegistration:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  v8 = sub_226D56F50();
  swift_unknownObjectRelease();

  return v8;
}

- (void)applicationMessageSink:(id)a3 removedMessageWithRegistration:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_226D58158();
  swift_unknownObjectRelease();
}

- (void)applicationMessageSink:(id)a3 tappedMessageWithRegistration:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  WalletMessagingProvider.applicationMessageSink(_:tappedMessageWith:)(a3, v7);
  swift_unknownObjectRelease();
}

@end