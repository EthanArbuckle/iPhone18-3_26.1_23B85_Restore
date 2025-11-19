@interface GamePolicyTargetDescription
- (NSString)description;
- (_TtC10GamePolicy27GamePolicyTargetDescription)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GamePolicyTargetDescription

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E5C8FB8(v4);
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription);
  v3 = *&self->euid[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription];
  v4 = self;
  v5 = MEMORY[0x253043780](v2, v3);

  return v5;
}

- (NSString)description
{
  v2 = self;
  sub_24E5D2F00();

  MEMORY[0x253043730](*(&v2->super.isa + OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription), *&v2->euid[OBJC_IVAR____TtC10GamePolicy27GamePolicyTargetDescription_targetDescription]);
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