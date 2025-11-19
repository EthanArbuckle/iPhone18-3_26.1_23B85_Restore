@interface FMUIDiscoveredAccessory
- (FMUIDiscoveredAccessory)init;
- (FMUIDiscoveredAccessory)initWithIdentifier:(id)a3 productType:(int64_t)a4 productImage:(id)a5;
@end

@implementation FMUIDiscoveredAccessory

- (FMUIDiscoveredAccessory)initWithIdentifier:(id)a3 productType:(int64_t)a4 productImage:(id)a5
{
  v7 = sub_24B2D2504();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24E4();
  v10 = a5;
  v11 = sub_24B0C5278(v9, a4, a5);

  return v11;
}

- (FMUIDiscoveredAccessory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end