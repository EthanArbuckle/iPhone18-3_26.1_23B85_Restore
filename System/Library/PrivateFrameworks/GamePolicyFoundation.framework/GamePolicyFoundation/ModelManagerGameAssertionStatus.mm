@interface ModelManagerGameAssertionStatus
- (_TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus)init;
- (_TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ModelManagerGameAssertionStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB4B4BC(coderCopy);
}

- (_TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_29EB4C0FC(coderCopy);

  return v4;
}

- (_TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end