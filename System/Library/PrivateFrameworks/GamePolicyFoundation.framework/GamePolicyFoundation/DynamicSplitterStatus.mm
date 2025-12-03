@interface DynamicSplitterStatus
- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)init;
- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DynamicSplitterStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB45360(coderCopy);
}

- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_29EB45AFC(coderCopy);

  return v4;
}

- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end