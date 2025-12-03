@interface FlexCloudSongAsset
- (FlexCloudManager)cloudManager;
- (FlexCloudSongAsset)initWithAssetID:(id)d assetStatus:(unint64_t)status localURL:(id)l cloudManager:(id)manager contentVersion:(int64_t)version compatibilityVersion:(int64_t)compatibilityVersion;
- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)location;
- (int64_t)contentVersionForAssetLocation:(unint64_t)location;
- (unint64_t)assetStatus;
- (void)cancelDownload;
- (void)purgeLocalCache;
- (void)requestDownload;
- (void)requestDownloadWithOptions:(id)options;
@end

@implementation FlexCloudSongAsset

- (FlexCloudSongAsset)initWithAssetID:(id)d assetStatus:(unint64_t)status localURL:(id)l cloudManager:(id)manager contentVersion:(int64_t)version compatibilityVersion:(int64_t)compatibilityVersion
{
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = FlexCloudSongAsset;
  v15 = [(FMSongAsset *)&v18 initWithAssetID:d assetStatus:status localURL:l contentVersion:version compatibilityVersion:compatibilityVersion];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_cloudManager, managerCopy);
  }

  return v16;
}

- (void)requestDownload
{
  v6 = objc_opt_new();
  objc_msgSend_requestDownloadWithOptions_(self, v3, v6, v4, v5);
}

- (void)requestDownloadWithOptions:(id)options
{
  optionsCopy = options;
  if (objc_msgSend_assetStatus(self, v4, v5, v6, v7) == 1 || objc_msgSend_assetStatus(self, v8, v9, v10, v11) == 4 || objc_msgSend_contentUpdateAvailable(self, v8, v9, v10, v11))
  {
    v12 = objc_msgSend_cloudManager(self, v8, v9, v10, v11);
    objc_msgSend_requestDownloadOfAsset_withOptions_(v12, v13, self, optionsCopy, v14);
  }
}

- (void)cancelDownload
{
  if (objc_msgSend_assetStatus(self, a2, v2, v3, v4) == 2 || objc_msgSend_assetStatus(self, v6, v7, v8, v9) == 3)
  {
    v13 = objc_msgSend_cloudManager(self, v6, v7, v8, v9);
    objc_msgSend_cancelDownloadOfAsset_(v13, v10, self, v11, v12);
  }
}

- (void)purgeLocalCache
{
  if (objc_msgSend_assetStatus(self, a2, v2, v3, v4) != 1 && objc_msgSend_assetStatus(self, v6, v7, v8, v9) != 4)
  {
    v17 = objc_msgSend_cloudManager(self, v10, v11, v12, v13);
    objc_msgSend_requestPurgeOfAsset_(v17, v14, self, v15, v16);
  }
}

- (unint64_t)assetStatus
{
  v6 = objc_msgSend_cloudManager(self, a2, v2, v3, v4);
  v10 = objc_msgSend_assetStatus_(v6, v7, self, v8, v9);

  return v10;
}

- (int64_t)contentVersionForAssetLocation:(unint64_t)location
{
  if (location == 1)
  {
    return objc_msgSend_contentVersion(self, a2, 1, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)location
{
  if (location == 1)
  {
    return objc_msgSend_compatibilityVersion(self, a2, 1, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (FlexCloudManager)cloudManager
{
  WeakRetained = objc_loadWeakRetained(&self->_cloudManager);

  return WeakRetained;
}

@end