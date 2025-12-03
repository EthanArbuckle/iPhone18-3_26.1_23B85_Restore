@interface IDSGroupEncryptionControllerGroupSession
- (_TtC17identityservicesd38IDSGroupRootMaterialExchangeController)rootExchangeController;
- (_TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession)init;
- (void)setKeyMaterialIsNeededForParticipant:(id)participant forMKM:(BOOL)m forSKM:(BOOL)kM;
- (void)setRootExchangeController:(id)controller;
@end

@implementation IDSGroupEncryptionControllerGroupSession

- (_TtC17identityservicesd38IDSGroupRootMaterialExchangeController)rootExchangeController
{
  v3 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRootExchangeController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1007D55C4(controller);
}

- (void)setKeyMaterialIsNeededForParticipant:(id)participant forMKM:(BOOL)m forSKM:(BOOL)kM
{
  participantCopy = participant;
  selfCopy = self;
  sub_1007CD61C(participantCopy, m, kM);
}

- (_TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end