@interface GamePolicyTargetDescription
- (NSString)description;
- (_TtC10GamePolicy27GamePolicyTargetDescription)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GamePolicyTargetDescription

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5C8FB8(coderCopy);
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription);
  v3 = *&self->euid[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  selfCopy = self;
  v5 = MEMORY[0x253043780](v2, v3);

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  sub_24E5D2F00();

  MEMORY[0x253043730](*(&selfCopy->super.isa + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription), *&selfCopy->euid[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription]);
  MEMORY[0x253043730](62, 0xE100000000000000);

  v3 = sub_24E5D2CB0();

  return v3;
}

- (_TtC10GamePolicy27GamePolicyTargetDescription)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end