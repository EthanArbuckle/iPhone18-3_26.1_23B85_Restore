@interface DynamicSplitterStatus
- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)init;
- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DynamicSplitterStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29EB45360(v4);
}

- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_29EB45AFC(v3);

  return v4;
}

- (_TtC20GamePolicyFoundation21DynamicSplitterStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end