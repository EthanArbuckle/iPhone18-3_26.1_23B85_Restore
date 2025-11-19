@interface HAHDPinnedContentState
- (HAHDPinnedContentState)init;
- (HAHDPinnedContentState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAHDPinnedContentState

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  PinnedContentState.encode(with:)(v4);
}

- (HAHDPinnedContentState)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_2512E3D20(v3);

  return v4;
}

- (HAHDPinnedContentState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end