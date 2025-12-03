@interface IDSGroupEncryptionKeyMaterialController
- (IDSGroupEncryptionKeyMaterial)currentObjcMaterial;
- (_TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController)init;
- (void)dealloc;
- (void)ensureKey;
@end

@implementation IDSGroupEncryptionKeyMaterialController

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v3 = v2 + *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;

  os_unfair_lock_lock((v2 + v4));
  v6 = *(type metadata accessor for IDSGroupEncryptionKeyMaterialController.State(0) + 44);
  if (*(v3 + v6))
  {

    sub_100936578();

    *(v3 + v6) = 0;
  }

  os_unfair_lock_unlock((v2 + v4));

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for IDSGroupEncryptionKeyMaterialController(0);
  [(IDSGroupEncryptionKeyMaterialController *)&v7 dealloc];
}

- (IDSGroupEncryptionKeyMaterial)currentObjcMaterial
{
  v3 = sub_100706B30(&qword_100CB2AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for IDSGroupEncryptionKeyMaterialContent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((swift_isaMask & self->super.isa) + 0x118);
  selfCopy = self;
  v10();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_100013814(v5, &qword_100CB2AA0);
    v12 = 0;
  }

  else
  {
    sub_100706F50(v5, v9, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    sub_100749640();
    v14 = v13;

    sub_100706FB8(v9, type metadata accessor for IDSGroupEncryptionKeyMaterialContent);
    v12 = v14;
  }

  return v12;
}

- (void)ensureKey
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController_state);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v2 + v3));
  sub_100715C08();
  os_unfair_lock_unlock((v2 + v3));
}

- (_TtC17identityservicesd39IDSGroupEncryptionKeyMaterialController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end