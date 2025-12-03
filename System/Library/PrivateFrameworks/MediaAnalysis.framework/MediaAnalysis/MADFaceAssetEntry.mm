@interface MADFaceAssetEntry
+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date previousErrorCode:(unint64_t)code previousErrorLine:(unint64_t)line;
- (MADFaceAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date previousErrorCode:(unint64_t)code previousErrorLine:(unint64_t)line;
@end

@implementation MADFaceAssetEntry

- (MADFaceAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date previousErrorCode:(unint64_t)code previousErrorLine:(unint64_t)line
{
  assetCopy = asset;
  dateCopy = date;
  v22.receiver = self;
  v22.super_class = MADFaceAssetEntry;
  v17 = [(MADFaceAssetEntry *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, asset);
    v18->_status = 0;
    v18->_previousStatus = status;
    v18->_previousAttempts = attempts;
    objc_storeStrong(&v18->_lastAttemptDate, date);
    v19 = +[NSDate now];
    currentAttemptDate = v18->_currentAttemptDate;
    v18->_currentAttemptDate = v19;

    v18->_previousErrorCode = code;
    v18->_errorCode = 0;
    v18->_previousErrorLine = line;
    v18->_errorLine = 0;
  }

  return v18;
}

+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts andLastAttemptDate:(id)date previousErrorCode:(unint64_t)code previousErrorLine:(unint64_t)line
{
  assetCopy = asset;
  dateCopy = date;
  v15 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previousStatus:status previousAttempts:attempts andLastAttemptDate:dateCopy previousErrorCode:code previousErrorLine:line];

  return v15;
}

@end