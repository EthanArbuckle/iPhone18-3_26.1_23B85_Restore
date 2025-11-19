@interface IDSGroupEncryptionControllerGroupSession
- (_TtC17identityservicesd38IDSGroupRootMaterialExchangeController)rootExchangeController;
- (_TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession)init;
- (void)setKeyMaterialIsNeededForParticipant:(id)a3 forMKM:(BOOL)a4 forSKM:(BOOL)a5;
- (void)setRootExchangeController:(id)a3;
@end

@implementation IDSGroupEncryptionControllerGroupSession

- (_TtC17identityservicesd38IDSGroupRootMaterialExchangeController)rootExchangeController
{
  v3 = OBJC_IVAR____TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession_rootExchangeController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRootExchangeController:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1007D55C4(a3);
}

- (void)setKeyMaterialIsNeededForParticipant:(id)a3 forMKM:(BOOL)a4 forSKM:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_1007CD61C(v8, a4, a5);
}

- (_TtC17identityservicesd40IDSGroupEncryptionControllerGroupSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end