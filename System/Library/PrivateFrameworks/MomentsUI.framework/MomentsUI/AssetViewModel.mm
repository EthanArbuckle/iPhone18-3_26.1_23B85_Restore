@interface AssetViewModel
- (NSString)description;
- (_TtC9MomentsUI14AssetViewModel)init;
- (_TtC9MomentsUI14AssetViewModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AssetViewModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AssetViewModel.encode(with:)(coderCopy);
}

- (_TtC9MomentsUI14AssetViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized AssetViewModel.init(coder:)(coderCopy);

  return v4;
}

- (_TtC9MomentsUI14AssetViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  v3 = UUID.uuidString.getter();
  v5 = v4;

  v6 = MEMORY[0x21CE91FC0](v3, v5);

  return v6;
}

@end