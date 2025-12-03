@interface IDSGroupEncryptionControllerParticipant
- (BOOL)isEqual:(id)equal;
- (NSString)allocatedURI;
- (NSString)description;
- (_TtC17identityservicesd34IDSGroupEncryptionControllerMember)member;
- (_TtC17identityservicesd39IDSGroupEncryptionControllerParticipant)init;
- (int64_t)hash;
- (void)recoverKeyMaterialForSessionID:(id)d mkm:(BOOL)mkm skm:(BOOL)skm;
@end

@implementation IDSGroupEncryptionControllerParticipant

- (NSString)allocatedURI
{

  v2 = sub_100936B28();

  return v2;
}

- (_TtC17identityservicesd34IDSGroupEncryptionControllerMember)member
{
  v3 = self + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v3 + 1);
    swift_getObjectType();
    v7 = *(v6 + 24);
    selfCopy = self;
    v9 = v7();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100937098();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1007972E4(v8);

  sub_100013814(v8, &qword_100CB4A90);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_1009376D8();
  sub_1009376A8(*(self + OBJC_IVAR____TtC17identityservicesd39IDSGroupEncryptionControllerParticipant_participantID));
  return sub_1009376B8();
}

- (NSString)description
{
  selfCopy = self;
  sub_1007978AC();

  v3 = sub_100936B28();

  return v3;
}

- (void)recoverKeyMaterialForSessionID:(id)d mkm:(BOOL)mkm skm:(BOOL)skm
{
  skmCopy = skm;
  mkmCopy = mkm;
  v8 = sub_100936B38();
  v10 = v9;
  if (!mkmCopy)
  {
    selfCopy = self;
    if (!skmCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *((swift_isaMask & *self) + 0x118);
  selfCopy2 = self;
  v11(0, v8, v10);
  if (skmCopy)
  {
LABEL_5:
    (*((swift_isaMask & *self) + 0x118))(1, v8, v10);
  }

LABEL_6:
}

- (_TtC17identityservicesd39IDSGroupEncryptionControllerParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end