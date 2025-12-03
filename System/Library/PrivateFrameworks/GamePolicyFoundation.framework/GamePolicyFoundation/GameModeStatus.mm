@interface GameModeStatus
- (_TtC20GamePolicyFoundation14GameModeStatus)init;
- (_TtC20GamePolicyFoundation14GameModeStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameModeStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB48174(coderCopy);
}

- (_TtC20GamePolicyFoundation14GameModeStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_29EB48B48(coderCopy);

  return v4;
}

- (_TtC20GamePolicyFoundation14GameModeStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end