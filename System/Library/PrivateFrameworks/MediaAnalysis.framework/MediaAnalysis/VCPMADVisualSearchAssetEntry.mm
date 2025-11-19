@interface VCPMADVisualSearchAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7;
- (VCPMADVisualSearchAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7;
@end

@implementation VCPMADVisualSearchAssetEntry

- (VCPMADVisualSearchAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7
{
  v13 = a3;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = VCPMADVisualSearchAssetEntry;
  v15 = [(VCPMADVisualSearchAssetEntry *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_asset, a3);
    *&v16->_status = 0;
    v16->_visualSearchStatus = 0;
    v16->_previousStatus = a4;
    v16->_previousAttempts = a5;
    objc_storeStrong(&v16->_lastAttemptDate, a6);
    v17 = +[NSDate now];
    currentAttemptDate = v16->_currentAttemptDate;
    v16->_currentAttemptDate = v17;

    v16->_stickerScore = 0.0;
    v16->_analysisTypes = a7;
    *&v16->_stickerAlgorithmVersion = 0xFFFFFFFFLL;
  }

  return v16;
}

+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7
{
  v11 = a3;
  v12 = a6;
  v13 = [objc_alloc(objc_opt_class()) initWithAsset:v11 previousStatus:a4 previousAttempts:a5 andLastAttemptDate:v12 analysisTypes:a7];

  return v13;
}

@end