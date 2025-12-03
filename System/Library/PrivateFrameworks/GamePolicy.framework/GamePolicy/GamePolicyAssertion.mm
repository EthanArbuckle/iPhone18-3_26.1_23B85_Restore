@interface GamePolicyAssertion
- (NSString)description;
- (_TtC10GamePolicy19GamePolicyAssertion)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GamePolicyAssertion

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5C9BF4(coderCopy);
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
  selfCopy = self;
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