@interface GamePolicyAssertion
- (NSString)description;
- (_TtC10GamePolicy19GamePolicyAssertion)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GamePolicyAssertion

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E5C9BF4(v4);
}

- (int64_t)hash
{
  result = *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy19GamePolicyAssertion_identifier);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (NSString)description
{
  v2 = self;
  sub_24E5CAB74();

  v3 = sub_24E5D2CB0();

  return v3;
}

- (_TtC10GamePolicy19GamePolicyAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end