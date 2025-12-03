@interface IDSGroupEncryptionIdentityController
- (_TtC17identityservicesd36IDSGroupEncryptionIdentityController)init;
- (_TtC17identityservicesd36IDSGroupEncryptionIdentityController)initWithConfig:(id)config;
- (id)ensurePublicIdentityForDevice:(id)device;
- (void)resetPreKey;
@end

@implementation IDSGroupEncryptionIdentityController

- (_TtC17identityservicesd36IDSGroupEncryptionIdentityController)initWithConfig:(id)config
{
  configCopy = config;
  v4 = sub_10083DF44(configCopy);

  return v4;
}

- (id)ensurePublicIdentityForDevice:(id)device
{
  v5 = sub_100706B30(&qword_100CB3250);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *((swift_isaMask & self->super.isa) + 0x138);
  deviceCopy = device;
  selfCopy = self;
  v8(device);
  v11 = type metadata accessor for IDSGroupEncryptionFullIdentity(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {

    sub_10083E2D8(v7);
    v12 = 0;
  }

  else
  {
    v13 = sub_10089D2E8();

    sub_1007BE0C4(v7, type metadata accessor for IDSGroupEncryptionFullIdentity);
    v12 = v13;
  }

  return v12;
}

- (void)resetPreKey
{
  v2 = *((swift_isaMask & self->super.isa) + 0x90);
  selfCopy = self;
  v4 = v2();
  os_unfair_lock_lock(v4 + 4);
  sub_100748CB0();
  os_unfair_lock_unlock(v4 + 4);
}

- (_TtC17identityservicesd36IDSGroupEncryptionIdentityController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end