@interface IdentityImageDimension
- (_TtC13CoreIDVShared22IdentityImageDimension)init;
- (_TtC13CoreIDVShared22IdentityImageDimension)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityImageDimension

- (_TtC13CoreIDVShared22IdentityImageDimension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B6C3FC(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityImageDimension.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared22IdentityImageDimension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end