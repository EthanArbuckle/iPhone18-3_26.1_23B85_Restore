@interface FMSongAsset
- (BOOL)localURLExists;
- (BOOL)updateDownloadProgress:(double)a3;
- (FMSongAsset)initWithAssetID:(id)a3 assetStatus:(unint64_t)a4 localURL:(id)a5 contentVersion:(int64_t)a6 compatibilityVersion:(int64_t)a7;
- (double)downloadProgress;
- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)a3;
- (int64_t)contentVersionForAssetLocation:(unint64_t)a3;
@end

@implementation FMSongAsset

- (FMSongAsset)initWithAssetID:(id)a3 assetStatus:(unint64_t)a4 localURL:(id)a5 contentVersion:(int64_t)a6 compatibilityVersion:(int64_t)a7
{
  v13 = a3;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = FMSongAsset;
  v15 = [(FMSongAsset *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetID, a3);
    v16->_assetStatus = a4;
    objc_storeStrong(&v16->_localURL, a5);
    v16->_downloadProgress = 0.0;
    v16->_contentVersion = a6;
    v16->_compatibilityVersion = a7;
  }

  return v16;
}

- (BOOL)localURLExists
{
  v6 = objc_msgSend_localURL(self, a2, v2, v3, v4);

  if (!v6)
  {
    return 0;
  }

  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8, v9, v10);
  v16 = objc_msgSend_localURL(self, v12, v13, v14, v15);
  v21 = objc_msgSend_path(v16, v17, v18, v19, v20);
  v25 = objc_msgSend_fileExistsAtPath_(v11, v22, v21, v23, v24);

  return v25;
}

- (BOOL)updateDownloadProgress:(double)a3
{
  v4 = self;
  objc_sync_enter(v4);
  downloadProgress = v4->_downloadProgress;
  if (downloadProgress != a3)
  {
    v4->_downloadProgress = a3;
  }

  v6 = downloadProgress != a3;
  objc_sync_exit(v4);

  return v6;
}

- (double)downloadProgress
{
  v2 = self;
  objc_sync_enter(v2);
  downloadProgress = v2->_downloadProgress;
  objc_sync_exit(v2);

  return downloadProgress;
}

- (int64_t)contentVersionForAssetLocation:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_contentVersion(self, a2, 0, v3, v4);
  }
}

- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_compatibilityVersion(self, a2, 0, v3, v4);
  }
}

@end