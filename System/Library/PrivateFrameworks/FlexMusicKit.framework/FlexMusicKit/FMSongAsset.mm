@interface FMSongAsset
- (BOOL)localURLExists;
- (BOOL)updateDownloadProgress:(double)progress;
- (FMSongAsset)initWithAssetID:(id)d assetStatus:(unint64_t)status localURL:(id)l contentVersion:(int64_t)version compatibilityVersion:(int64_t)compatibilityVersion;
- (double)downloadProgress;
- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)location;
- (int64_t)contentVersionForAssetLocation:(unint64_t)location;
@end

@implementation FMSongAsset

- (FMSongAsset)initWithAssetID:(id)d assetStatus:(unint64_t)status localURL:(id)l contentVersion:(int64_t)version compatibilityVersion:(int64_t)compatibilityVersion
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = FMSongAsset;
  v15 = [(FMSongAsset *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_assetID, d);
    v16->_assetStatus = status;
    objc_storeStrong(&v16->_localURL, l);
    v16->_downloadProgress = 0.0;
    v16->_contentVersion = version;
    v16->_compatibilityVersion = compatibilityVersion;
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

- (BOOL)updateDownloadProgress:(double)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadProgress = selfCopy->_downloadProgress;
  if (downloadProgress != progress)
  {
    selfCopy->_downloadProgress = progress;
  }

  v6 = downloadProgress != progress;
  objc_sync_exit(selfCopy);

  return v6;
}

- (double)downloadProgress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  downloadProgress = selfCopy->_downloadProgress;
  objc_sync_exit(selfCopy);

  return downloadProgress;
}

- (int64_t)contentVersionForAssetLocation:(unint64_t)location
{
  if (location)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_contentVersion(self, a2, 0, v3, v4);
  }
}

- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)location
{
  if (location)
  {
    return 0;
  }

  else
  {
    return objc_msgSend_compatibilityVersion(self, a2, 0, v3, v4);
  }
}

@end