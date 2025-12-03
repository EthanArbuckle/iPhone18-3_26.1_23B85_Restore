@interface IdentityImageQuality
- (_TtC13CoreIDVShared20IdentityImageQuality)init;
- (_TtC13CoreIDVShared20IdentityImageQuality)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityImageQuality

- (_TtC13CoreIDVShared20IdentityImageQuality)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B590DC(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityImageQuality.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared20IdentityImageQuality)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end