@interface HAHDCodablePinnedContentDifference
- (HAHDCodablePinnedContentDifference)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAHDCodablePinnedContentDifference

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2512EC26C(coderCopy);
}

- (HAHDCodablePinnedContentDifference)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end