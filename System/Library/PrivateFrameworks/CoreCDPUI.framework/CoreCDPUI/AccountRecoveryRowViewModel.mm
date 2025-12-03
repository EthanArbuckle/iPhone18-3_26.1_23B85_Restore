@interface AccountRecoveryRowViewModel
- (_TtC9CoreCDPUI27AccountRecoveryRowViewModel)init;
- (id)accountsForAccountManager:(id)manager;
@end

@implementation AccountRecoveryRowViewModel

- (_TtC9CoreCDPUI27AccountRecoveryRowViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)accountsForAccountManager:(id)manager
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0F268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24525DE30;
  v5 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  managerCopy = manager;
  v7 = v5;
  accountStore = [managerCopy accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    *(inited + 40) = aa_primaryAppleAccount;
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