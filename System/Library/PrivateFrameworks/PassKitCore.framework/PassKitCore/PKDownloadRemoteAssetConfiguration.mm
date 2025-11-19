@interface PKDownloadRemoteAssetConfiguration
+ (id)cardArtConfigurationWithSEIDs:(id)a3;
+ (id)configurationWithCloudStoreDelegate:(id)a3;
+ (id)configurationWithCloudStoreDelegate:(id)a3 seids:(id)a4;
+ (id)configurationWithSEIDs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDownloadRemoteAssetConfiguration:(id)a3;
- (PKDownloadRemoteAssetConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKDownloadRemoteAssetConfiguration

- (PKDownloadRemoteAssetConfiguration)init
{
  v3.receiver = self;
  v3.super_class = PKDownloadRemoteAssetConfiguration;
  result = [(PKDownloadRemoteAssetConfiguration *)&v3 init];
  if (result)
  {
    result->_includeEncryptedAssets = 1;
  }

  return result;
}

+ (id)configurationWithSEIDs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  seids = v4->_seids;
  v4->_seids = v3;

  return v4;
}

+ (id)cardArtConfigurationWithSEIDs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  seids = v4->_seids;
  v4->_seids = v3;

  v4->_includeEncryptedAssets = 0;

  return v4;
}

+ (id)configurationWithCloudStoreDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  cloudStoreCoordinatorDelegate = v4->_cloudStoreCoordinatorDelegate;
  v4->_cloudStoreCoordinatorDelegate = v3;

  return v4;
}

+ (id)configurationWithCloudStoreDelegate:(id)a3 seids:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PKDownloadRemoteAssetConfiguration);
  cloudStoreCoordinatorDelegate = v7->_cloudStoreCoordinatorDelegate;
  v7->_cloudStoreCoordinatorDelegate = v5;
  v9 = v5;

  seids = v7->_seids;
  v7->_seids = v6;

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"seids: '%@'; ", self->_seids];
  [v6 appendFormat:@"cloudStoreCoordinatorDelegate: '%@'; ", self->_cloudStoreCoordinatorDelegate];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_screenScale];
  [v6 appendFormat:@"screenScale: '%@'; ", v7];

  [v6 appendFormat:@"suffix: '%@'; ", self->_suffix];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoreRequiredAssetDownloadFailures];
  [v6 appendFormat:@"ignoreRequiredAssetDownloadFailures: '%@'; ", v8];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeEncryptedAssets];
  [v6 appendFormat:@"includeEncryptedAssets: '%@'; ", v9];

  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_seids)
  {
    [v3 addObject:?];
  }

  if (self->_cloudStoreCoordinatorDelegate)
  {
    [v4 addObject:?];
  }

  if (self->_suffix)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_screenScale - v5 + 32 * v5;
  v7 = self->_ignoreRequiredAssetDownloadFailures - v6 + 32 * v6;
  v8 = self->_includeEncryptedAssets - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDownloadRemoteAssetConfiguration *)self isEqualToDownloadRemoteAssetConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToDownloadRemoteAssetConfiguration:(id)a3
{
  v4 = a3;
  seids = self->_seids;
  v6 = *(v4 + 2);
  if (seids)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (seids != v6)
    {
      goto LABEL_22;
    }
  }

  else if (([(NSArray *)seids isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

  cloudStoreCoordinatorDelegate = self->_cloudStoreCoordinatorDelegate;
  v9 = *(v4 + 3);
  if (cloudStoreCoordinatorDelegate && v9)
  {
    if (([(PKCloudStoreCoordinatorDelegate *)cloudStoreCoordinatorDelegate isEqual:?]& 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (cloudStoreCoordinatorDelegate != v9)
  {
    goto LABEL_22;
  }

  if (self->_screenScale != v4[4])
  {
    goto LABEL_22;
  }

  suffix = self->_suffix;
  v11 = *(v4 + 5);
  if (!suffix || !v11)
  {
    if (suffix == v11)
    {
      goto LABEL_20;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  if (([(NSString *)suffix isEqual:?]& 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (self->_ignoreRequiredAssetDownloadFailures != *(v4 + 8))
  {
    goto LABEL_22;
  }

  v12 = self->_includeEncryptedAssets == *(v4 + 9);
LABEL_23:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKDownloadRemoteAssetConfiguration allocWithZone:?]];
  v5 = [(NSArray *)self->_seids copy];
  seids = v4->_seids;
  v4->_seids = v5;

  objc_storeStrong(&v4->_cloudStoreCoordinatorDelegate, self->_cloudStoreCoordinatorDelegate);
  v4->_screenScale = self->_screenScale;
  v7 = [(NSString *)self->_suffix copy];
  suffix = v4->_suffix;
  v4->_suffix = v7;

  v4->_ignoreRequiredAssetDownloadFailures = self->_ignoreRequiredAssetDownloadFailures;
  v4->_includeEncryptedAssets = self->_includeEncryptedAssets;
  return v4;
}

@end