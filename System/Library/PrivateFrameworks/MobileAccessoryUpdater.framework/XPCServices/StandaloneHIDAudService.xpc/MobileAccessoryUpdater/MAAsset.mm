@interface MAAsset
- (id)description;
@end

@implementation MAAsset

- (id)description
{
  assetType = [(MAAsset *)self assetType];
  assetId = [(MAAsset *)self assetId];
  state = [(MAAsset *)self state];
  attributes = [(MAAsset *)self attributes];
  getLocalUrl = [(MAAsset *)self getLocalUrl];
  getLocalFileUrl = [(MAAsset *)self getLocalFileUrl];
  assetServerUrl = [(MAAsset *)self assetServerUrl];
  v10 = [NSString stringWithFormat:@"MobileAsset type %@, ID %@, state %ld, attributes %@, local URL %@, local file URL %@, asset server URL %@", assetType, assetId, state, attributes, getLocalUrl, getLocalFileUrl, assetServerUrl];

  return v10;
}

@end