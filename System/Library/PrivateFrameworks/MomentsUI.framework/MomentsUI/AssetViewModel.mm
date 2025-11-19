@interface AssetViewModel
- (NSString)description;
- (_TtC9MomentsUI14AssetViewModel)init;
- (_TtC9MomentsUI14AssetViewModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AssetViewModel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AssetViewModel.encode(with:)(v4);
}

- (_TtC9MomentsUI14AssetViewModel)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized AssetViewModel.init(coder:)(v3);

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
  v2 = self;
  v3 = UUID.uuidString.getter();
  v5 = v4;

  v6 = MEMORY[0x21CE91FC0](v3, v5);

  return v6;
}

@end