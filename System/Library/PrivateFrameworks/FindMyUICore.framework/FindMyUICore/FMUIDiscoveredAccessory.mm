@interface FMUIDiscoveredAccessory
- (FMUIDiscoveredAccessory)init;
- (FMUIDiscoveredAccessory)initWithIdentifier:(id)identifier productType:(int64_t)type productImage:(id)image;
@end

@implementation FMUIDiscoveredAccessory

- (FMUIDiscoveredAccessory)initWithIdentifier:(id)identifier productType:(int64_t)type productImage:(id)image
{
  v7 = sub_24B2D2504();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B2D24E4();
  imageCopy = image;
  v11 = sub_24B0C5278(v9, type, image);

  return v11;
}

- (FMUIDiscoveredAccessory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end