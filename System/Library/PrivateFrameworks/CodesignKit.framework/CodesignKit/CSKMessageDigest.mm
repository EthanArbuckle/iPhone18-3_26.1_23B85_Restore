@interface CSKMessageDigest
- (_TtC11CodesignKit16CSKMessageDigest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSKMessageDigest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_243B8CD68(coderCopy);
}

- (_TtC11CodesignKit16CSKMessageDigest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end