@interface Component
- (_TtC11DockKitCore9Component)init;
- (_TtC11DockKitCore9Component)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Component

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2245B3720(v4);
}

- (_TtC11DockKitCore9Component)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2245B47B4();

  return v4;
}

- (_TtC11DockKitCore9Component)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end