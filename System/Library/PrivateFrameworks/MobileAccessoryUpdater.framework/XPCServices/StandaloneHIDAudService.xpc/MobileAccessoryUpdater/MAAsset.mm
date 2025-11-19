@interface MAAsset
- (id)description;
@end

@implementation MAAsset

- (id)description
{
  v3 = [(MAAsset *)self assetType];
  v4 = [(MAAsset *)self assetId];
  v5 = [(MAAsset *)self state];
  v6 = [(MAAsset *)self attributes];
  v7 = [(MAAsset *)self getLocalUrl];
  v8 = [(MAAsset *)self getLocalFileUrl];
  v9 = [(MAAsset *)self assetServerUrl];
  v10 = [NSString stringWithFormat:@"MobileAsset type %@, ID %@, state %ld, attributes %@, local URL %@, local file URL %@, asset server URL %@", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end