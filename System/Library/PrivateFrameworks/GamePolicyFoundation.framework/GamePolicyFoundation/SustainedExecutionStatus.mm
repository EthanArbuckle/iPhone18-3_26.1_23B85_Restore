@interface SustainedExecutionStatus
- (_TtC20GamePolicyFoundation24SustainedExecutionStatus)init;
- (_TtC20GamePolicyFoundation24SustainedExecutionStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SustainedExecutionStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB4270C(coderCopy);
}

- (_TtC20GamePolicyFoundation24SustainedExecutionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_29EB431C0(coderCopy);

  return v4;
}

- (_TtC20GamePolicyFoundation24SustainedExecutionStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end