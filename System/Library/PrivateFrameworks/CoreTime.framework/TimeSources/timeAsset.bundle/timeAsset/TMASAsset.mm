@interface TMASAsset
- (TMASAsset)initWithAssetType:(id)type assetSpecifier:(id)specifier fileName:(id)name destination:(id)destination;
- (void)dealloc;
@end

@implementation TMASAsset

- (TMASAsset)initWithAssetType:(id)type assetSpecifier:(id)specifier fileName:(id)name destination:(id)destination
{
  v12.receiver = self;
  v12.super_class = TMASAsset;
  v10 = [(TMASAsset *)&v12 init];
  if (v10)
  {
    v10->_assetType = type;
    v10->_assetSpecifier = specifier;
    v10->_destination = [[NSURL alloc] initFileURLWithPath:destination];
    v10->_fileName = name;
  }

  return v10;
}

- (void)dealloc
{
  self->_assetType = 0;

  self->_assetSpecifier = 0;
  self->_destination = 0;

  self->_fileName = 0;
  v3.receiver = self;
  v3.super_class = TMASAsset;
  [(TMASAsset *)&v3 dealloc];
}

@end