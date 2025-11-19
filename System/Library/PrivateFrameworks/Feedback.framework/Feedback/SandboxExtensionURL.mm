@interface SandboxExtensionURL
- (_TtC8Feedback19SandboxExtensionURL)init;
- (_TtC8Feedback19SandboxExtensionURL)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SandboxExtensionURL

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B8B8782C(v4);
}

- (_TtC8Feedback19SandboxExtensionURL)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1B8B88A30();

  return v4;
}

- (_TtC8Feedback19SandboxExtensionURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end