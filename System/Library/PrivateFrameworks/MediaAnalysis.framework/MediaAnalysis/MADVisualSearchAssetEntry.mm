@interface MADVisualSearchAssetEntry
+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date analysisTypes:(unint64_t)types;
- (MADVisualSearchAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date analysisTypes:(unint64_t)types;
@end

@implementation MADVisualSearchAssetEntry

- (MADVisualSearchAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date analysisTypes:(unint64_t)types
{
  assetCopy = asset;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = MADVisualSearchAssetEntry;
  v15 = [(MADVisualSearchAssetEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_asset, asset);
    *&v16->_status = 0;
    v16->_visualSearchStatus = 0;
    v16->_previousStatus = status;
    v16->_previousAttempts = attempts;
    objc_storeStrong(&v16->_lastAttemptDate, date);
    v17 = +[NSDate now];
    currentAttemptDate = v16->_currentAttemptDate;
    v16->_currentAttemptDate = v17;

    v16->_stickerScore = 0.0;
    v16->_analysisTypes = types;
    *&v16->_stickerAlgorithmVersion = 0xFFFFFFFFLL;
  }

  return v16;
}

+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date analysisTypes:(unint64_t)types
{
  assetCopy = asset;
  dateCopy = date;
  v13 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previousStatus:status previousAttempts:attempts andLastAttemptDate:dateCopy analysisTypes:types];

  return v13;
}

@end