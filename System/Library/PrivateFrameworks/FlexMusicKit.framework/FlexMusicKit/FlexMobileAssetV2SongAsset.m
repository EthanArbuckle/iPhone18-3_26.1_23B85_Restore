@interface FlexMobileAssetV2SongAsset
- (FlexMobileAssetV2SongAsset)initWithAssetID:(id)a3 localURL:(id)a4 cloudManager:(id)a5 contentVersion:(int64_t)a6 compatibilityVersion:(int64_t)a7;
- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)a3;
- (int64_t)contentVersionForAssetLocation:(unint64_t)a3;
- (unint64_t)assetStatus;
@end

@implementation FlexMobileAssetV2SongAsset

- (FlexMobileAssetV2SongAsset)initWithAssetID:(id)a3 localURL:(id)a4 cloudManager:(id)a5 contentVersion:(int64_t)a6 compatibilityVersion:(int64_t)a7
{
  v18.receiver = self;
  v18.super_class = FlexMobileAssetV2SongAsset;
  v9 = [(FlexCloudSongAsset *)&v18 initWithAssetID:a3 assetStatus:a4 == 0 localURL:a4 cloudManager:a5 contentVersion:a6 compatibilityVersion:a7];
  v13 = v9;
  if (v9)
  {
    objc_msgSend_setNewestContentVersion_(v9, v10, a6, v11, v12);
    objc_msgSend_setNewestCompatibilityVersion_(v13, v14, a7, v15, v16);
  }

  return v13;
}

- (int64_t)contentVersionForAssetLocation:(unint64_t)a3
{
  if (a3 == 1)
  {
    return objc_msgSend_newestContentVersion(self, a2, 1, v3, v4);
  }

  if (a3)
  {
    return 0;
  }

  return objc_msgSend_contentVersion(self, a2, 0, v3, v4);
}

- (int64_t)compatibilityVersionForAssetLocation:(unint64_t)a3
{
  if (a3 == 1)
  {
    return objc_msgSend_newestCompatibilityVersion(self, a2, 1, v3, v4);
  }

  if (a3)
  {
    return 0;
  }

  return objc_msgSend_compatibilityVersion(self, a2, 0, v3, v4);
}

- (unint64_t)assetStatus
{
  v6 = objc_msgSend_cloudManager(self, a2, v2, v3, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = objc_msgSend_cloudManager(self, v8, v9, v10, v11);
  if (objc_msgSend__isPurgingAsset_(v12, v13, self, v14, v15))
  {

    return 4;
  }

  isDownloadingAsset = objc_msgSend__isDownloadingAsset_(v12, v16, self, v17, v18);

  if (isDownloadingAsset)
  {
    return 2;
  }

LABEL_6:
  v21 = objc_msgSend_localURL(self, v8, v9, v10, v11);

  return v21 == 0;
}

@end