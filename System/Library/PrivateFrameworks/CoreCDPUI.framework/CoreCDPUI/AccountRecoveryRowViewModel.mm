@interface AccountRecoveryRowViewModel
- (_TtC9CoreCDPUI27AccountRecoveryRowViewModel)init;
- (id)accountsForAccountManager:(id)a3;
@end

@implementation AccountRecoveryRowViewModel

- (_TtC9CoreCDPUI27AccountRecoveryRowViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24525DE30;
  v5 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v6 = a3;
  v7 = v5;
  v8 = [v6 accountStore];
  v9 = [v8 aa_primaryAppleAccount];

  if (v9)
  {
    *(inited + 40) = v9;
    sub_24524F778(inited);
    swift_setDeallocating();
    sub_24524F870(inited + 32);

    type metadata accessor for AIDAServiceType(0);
    sub_24524F8D8();
    sub_24524F924();
    v11 = sub_24525513C();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end