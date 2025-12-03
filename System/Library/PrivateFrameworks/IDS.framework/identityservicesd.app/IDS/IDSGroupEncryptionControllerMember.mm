@interface IDSGroupEncryptionControllerMember
- (BOOL)isEqual:(id)equal;
- (BOOL)isLightweight;
- (NSString)description;
- (_TtC17identityservicesd34IDSGroupEncryptionControllerMember)init;
- (void)setIsLightweight:(BOOL)lightweight;
@end

@implementation IDSGroupEncryptionControllerMember

- (NSString)description
{
  selfCopy = self;
  sub_10071A474();

  v3 = sub_100936B28();

  return v3;
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

  v6 = sub_10071A5B8(v8);

  sub_100013814(v8, &qword_100CB4A90);
  return v6 & 1;
}

- (BOOL)isLightweight
{
  v2 = *((swift_isaMask & self->super.isa) + 0x60);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (void)setIsLightweight:(BOOL)lightweight
{
  lightweightCopy = lightweight;
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  selfCopy = self;
  v4(lightweightCopy);
}

- (_TtC17identityservicesd34IDSGroupEncryptionControllerMember)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end