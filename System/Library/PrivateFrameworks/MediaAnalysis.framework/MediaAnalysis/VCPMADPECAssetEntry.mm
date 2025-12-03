@interface VCPMADPECAssetEntry
+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date;
- (VCPMADPECAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date;
@end

@implementation VCPMADPECAssetEntry

- (VCPMADPECAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date
{
  assetCopy = asset;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = VCPMADPECAssetEntry;
  v13 = [(VCPMADPECAssetEntry *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, asset);
    v14->_status = 0;
    v14->_previousStatus = status;
    v14->_previousAttempts = attempts;
    objc_storeStrong(&v14->_lastAttemptDate, date);
    v15 = +[NSDate now];
    currentAttemptDate = v14->_currentAttemptDate;
    v14->_currentAttemptDate = v15;
  }

  return v14;
}

+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date
{
  dateCopy = date;
  assetCopy = asset;
  v11 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previousStatus:status previousAttempts:attempts andLastAttemptDate:dateCopy];

  return v11;
}

@end