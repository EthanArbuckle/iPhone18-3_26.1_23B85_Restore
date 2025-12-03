@interface NilAsset
- (NSString)description;
- (NilAsset)initWithCoder:(id)coder;
- (id)toDictionary;
@end

@implementation NilAsset

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  getAssetPath = [(NilAsset *)self getAssetPath];
  getAssetVersion = [(NilAsset *)self getAssetVersion];
  getAssetMetadata = [(NilAsset *)self getAssetMetadata];
  v7 = [v3 stringWithFormat:@"[Nil asset] - Asset path: %@, Asset version: %@, Asset metadata: %@.", getAssetPath, getAssetVersion, getAssetMetadata];

  return v7;
}

- (NilAsset)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = NilAsset;
  return [(NilAsset *)&v4 init];
}

- (id)toDictionary
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 setObject:v4 forKey:@"type"];

  return v2;
}

@end