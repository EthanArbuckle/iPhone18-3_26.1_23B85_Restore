@interface HAHDPinnedContentState
- (HAHDPinnedContentState)init;
- (HAHDPinnedContentState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HAHDPinnedContentState

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PinnedContentState.encode(with:)(coderCopy);
}

- (HAHDPinnedContentState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2512E3D20(coderCopy);

  return v4;
}

- (HAHDPinnedContentState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end