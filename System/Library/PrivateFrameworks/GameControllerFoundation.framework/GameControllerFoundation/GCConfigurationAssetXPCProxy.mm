@interface GCConfigurationAssetXPCProxy
- (GCConfigurationAssetXPCProxy)init;
- (GCConfigurationAssetXPCProxy)initWithAsset:(id)asset;
- (GCConfigurationAssetXPCProxy)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCConfigurationAssetXPCProxy

- (GCConfigurationAssetXPCProxy)initWithAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    [(GCConfigurationAssetXPCProxy *)a2 initWithAsset:?];
  }

  v19.receiver = self;
  v19.super_class = GCConfigurationAssetXPCProxy;
  v6 = [(GCConfigurationAssetXPCProxy *)&v19 init];
  assetId = [assetCopy assetId];
  v8 = [assetId copy];
  assetId = v6->_assetId;
  v6->_assetId = v8;

  assetState = [assetCopy assetState];
  v11 = [assetState copy];
  assetState = v6->_assetState;
  v6->_assetState = v11;

  compatibilityVersion = [assetCopy compatibilityVersion];
  v14 = [compatibilityVersion copy];
  compatibilityVersion = v6->_compatibilityVersion;
  v6->_compatibilityVersion = v14;

  contentVersion = [assetCopy contentVersion];
  contentVersion = v6->_contentVersion;
  v6->_contentVersion = contentVersion;

  v6->_contentRevision = [assetCopy contentRevision];
  return v6;
}

- (GCConfigurationAssetXPCProxy)init
{
  [(GCConfigurationAssetXPCProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (GCConfigurationAssetXPCProxy)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = GCConfigurationAssetXPCProxy;
  coderCopy = coder;
  v4 = [(GCConfigurationAssetXPCProxy *)&v15 init];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"assetId", v15.receiver, v15.super_class}];
  assetId = v4->_assetId;
  v4->_assetId = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetState"];
  assetState = v4->_assetState;
  v4->_assetState = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compatibilityVersion"];
  compatibilityVersion = v4->_compatibilityVersion;
  v4->_compatibilityVersion = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentVersion"];
  contentVersion = v4->_contentVersion;
  v4->_contentVersion = v11;

  v13 = [coderCopy decodeIntegerForKey:@"contentRevision"];
  v4->_contentRevision = v13;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetId = [(GCConfigurationAssetXPCProxy *)self assetId];
  [coderCopy encodeObject:assetId forKey:@"assetId"];

  assetState = [(GCConfigurationAssetXPCProxy *)self assetState];
  [coderCopy encodeObject:assetState forKey:@"assetState"];

  compatibilityVersion = [(GCConfigurationAssetXPCProxy *)self compatibilityVersion];
  [coderCopy encodeObject:compatibilityVersion forKey:@"compatibilityVersion"];

  contentVersion = [(GCConfigurationAssetXPCProxy *)self contentVersion];
  [coderCopy encodeObject:contentVersion forKey:@"contentVersion"];

  [coderCopy encodeInteger:-[GCConfigurationAssetXPCProxy contentRevision](self forKey:{"contentRevision"), @"contentRevision"}];
}

- (void)initWithAsset:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCConfigurationAssetManagementServiceXPCProxy.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %s", "asset != nil"}];
}

@end