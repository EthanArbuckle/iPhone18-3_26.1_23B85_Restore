@interface MADOCRAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6;
- (MADOCRAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6;
@end

@implementation MADOCRAssetEntry

- (MADOCRAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = MADOCRAssetEntry;
  v13 = [(MADOCRAssetEntry *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, a3);
    v14->_status = 0;
    v14->_previousStatus = a4;
    v14->_previousAttempts = a5;
    objc_storeStrong(&v14->_lastAttemptDate, a6);
    v15 = +[NSDate now];
    currentAttemptDate = v14->_currentAttemptDate;
    v14->_currentAttemptDate = v15;
  }

  return v14;
}

+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithAsset:v9 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v10];

  return v11;
}

@end