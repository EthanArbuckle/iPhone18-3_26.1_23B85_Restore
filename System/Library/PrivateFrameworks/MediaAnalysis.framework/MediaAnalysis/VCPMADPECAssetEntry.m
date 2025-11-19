@interface VCPMADPECAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6;
- (VCPMADPECAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6;
@end

@implementation VCPMADPECAssetEntry

- (VCPMADPECAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = VCPMADPECAssetEntry;
  v13 = [(VCPMADPECAssetEntry *)&v18 init];
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
  v9 = a6;
  v10 = a3;
  v11 = [objc_alloc(objc_opt_class()) initWithAsset:v10 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v9];

  return v11;
}

@end