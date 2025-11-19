@interface GameModeStatus
- (_TtC20GamePolicyFoundation14GameModeStatus)init;
- (_TtC20GamePolicyFoundation14GameModeStatus)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GameModeStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29EB48174(v4);
}

- (_TtC20GamePolicyFoundation14GameModeStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_29EB48B48(v3);

  return v4;
}

- (_TtC20GamePolicyFoundation14GameModeStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end