@interface IdentityDocument
- (_TtC13CoreIDVShared16IdentityDocument)init;
- (_TtC13CoreIDVShared16IdentityDocument)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityDocument

- (_TtC13CoreIDVShared16IdentityDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_225B573D4();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityDocument.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared16IdentityDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end