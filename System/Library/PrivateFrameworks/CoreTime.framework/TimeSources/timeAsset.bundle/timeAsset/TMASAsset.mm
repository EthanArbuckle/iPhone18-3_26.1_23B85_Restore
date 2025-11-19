@interface TMASAsset
- (TMASAsset)initWithAssetType:(id)a3 assetSpecifier:(id)a4 fileName:(id)a5 destination:(id)a6;
- (void)dealloc;
@end

@implementation TMASAsset

- (TMASAsset)initWithAssetType:(id)a3 assetSpecifier:(id)a4 fileName:(id)a5 destination:(id)a6
{
  v12.receiver = self;
  v12.super_class = TMASAsset;
  v10 = [(TMASAsset *)&v12 init];
  if (v10)
  {
    v10->_assetType = a3;
    v10->_assetSpecifier = a4;
    v10->_destination = [[NSURL alloc] initFileURLWithPath:a6];
    v10->_fileName = a5;
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