@interface MADFaceAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8;
- (MADFaceAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8;
@end

@implementation MADFaceAssetEntry

- (MADFaceAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8
{
  v15 = a3;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = MADFaceAssetEntry;
  v17 = [(MADFaceAssetEntry *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, a3);
    v18->_status = 0;
    v18->_previousStatus = a4;
    v18->_previousAttempts = a5;
    objc_storeStrong(&v18->_lastAttemptDate, a6);
    v19 = +[NSDate now];
    currentAttemptDate = v18->_currentAttemptDate;
    v18->_currentAttemptDate = v19;

    v18->_previousErrorCode = a7;
    v18->_errorCode = 0;
    v18->_previousErrorLine = a8;
    v18->_errorLine = 0;
  }

  return v18;
}

+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8
{
  v13 = a3;
  v14 = a6;
  v15 = [objc_alloc(objc_opt_class()) initWithAsset:v13 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v14 previousErrorCode:a7 previousErrorLine:a8];

  return v15;
}

@end