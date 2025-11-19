@interface GCConfigurationAssetXPCProxy
- (GCConfigurationAssetXPCProxy)init;
- (GCConfigurationAssetXPCProxy)initWithAsset:(id)a3;
- (GCConfigurationAssetXPCProxy)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCConfigurationAssetXPCProxy

- (GCConfigurationAssetXPCProxy)initWithAsset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(GCConfigurationAssetXPCProxy *)a2 initWithAsset:?];
  }

  v19.receiver = self;
  v19.super_class = GCConfigurationAssetXPCProxy;
  v6 = [(GCConfigurationAssetXPCProxy *)&v19 init];
  v7 = [v5 assetId];
  v8 = [v7 copy];
  assetId = v6->_assetId;
  v6->_assetId = v8;

  v10 = [v5 assetState];
  v11 = [v10 copy];
  assetState = v6->_assetState;
  v6->_assetState = v11;

  v13 = [v5 compatibilityVersion];
  v14 = [v13 copy];
  compatibilityVersion = v6->_compatibilityVersion;
  v6->_compatibilityVersion = v14;

  v16 = [v5 contentVersion];
  contentVersion = v6->_contentVersion;
  v6->_contentVersion = v16;

  v6->_contentRevision = [v5 contentRevision];
  return v6;
}

- (GCConfigurationAssetXPCProxy)init
{
  [(GCConfigurationAssetXPCProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCConfigurationAssetXPCProxy)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = GCConfigurationAssetXPCProxy;
  v3 = a3;
  v4 = [(GCConfigurationAssetXPCProxy *)&v15 init];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"assetId", v15.receiver, v15.super_class}];
  assetId = v4->_assetId;
  v4->_assetId = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"assetState"];
  assetState = v4->_assetState;
  v4->_assetState = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"compatibilityVersion"];
  compatibilityVersion = v4->_compatibilityVersion;
  v4->_compatibilityVersion = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contentVersion"];
  contentVersion = v4->_contentVersion;
  v4->_contentVersion = v11;

  v13 = [v3 decodeIntegerForKey:@"contentRevision"];
  v4->_contentRevision = v13;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(GCConfigurationAssetXPCProxy *)self assetId];
  [v8 encodeObject:v4 forKey:@"assetId"];

  v5 = [(GCConfigurationAssetXPCProxy *)self assetState];
  [v8 encodeObject:v5 forKey:@"assetState"];

  v6 = [(GCConfigurationAssetXPCProxy *)self compatibilityVersion];
  [v8 encodeObject:v6 forKey:@"compatibilityVersion"];

  v7 = [(GCConfigurationAssetXPCProxy *)self contentVersion];
  [v8 encodeObject:v7 forKey:@"contentVersion"];

  [v8 encodeInteger:-[GCConfigurationAssetXPCProxy contentRevision](self forKey:{"contentRevision"), @"contentRevision"}];
}

- (void)initWithAsset:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCConfigurationAssetManagementServiceXPCProxy.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %s", "asset != nil"}];
}

@end