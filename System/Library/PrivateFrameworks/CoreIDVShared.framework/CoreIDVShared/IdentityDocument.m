@interface IdentityDocument
- (_TtC13CoreIDVShared16IdentityDocument)init;
- (_TtC13CoreIDVShared16IdentityDocument)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityDocument

- (_TtC13CoreIDVShared16IdentityDocument)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_225B573D4();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityDocument.encode(with:)(v4);
}

- (_TtC13CoreIDVShared16IdentityDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end