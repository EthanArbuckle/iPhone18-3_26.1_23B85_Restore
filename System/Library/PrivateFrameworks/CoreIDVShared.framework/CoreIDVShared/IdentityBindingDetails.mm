@interface IdentityBindingDetails
- (_TtC13CoreIDVShared22IdentityBindingDetails)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IdentityBindingDetails

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  IdentityBindingDetails.encode(with:)(coderCopy);
}

- (_TtC13CoreIDVShared22IdentityBindingDetails)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end