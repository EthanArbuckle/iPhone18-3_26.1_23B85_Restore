@interface SandboxExtensionURL
- (_TtC8Feedback19SandboxExtensionURL)init;
- (_TtC8Feedback19SandboxExtensionURL)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SandboxExtensionURL

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B8B8782C(coderCopy);
}

- (_TtC8Feedback19SandboxExtensionURL)initWithCoder:(id)coder
{
  coderCopy = coder;
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