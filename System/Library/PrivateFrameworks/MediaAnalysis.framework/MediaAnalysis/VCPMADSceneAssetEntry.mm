@interface VCPMADSceneAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8;
- (VCPMADSceneAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8;
@end

@implementation VCPMADSceneAssetEntry

- (VCPMADSceneAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 andLastAttemptDate:(id)a6 previousErrorCode:(unint64_t)a7 previousErrorLine:(unint64_t)a8
{
  v15 = a3;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = VCPMADSceneAssetEntry;
  v17 = [(VCPMADSceneAssetEntry *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, a3);
    *&v18->_imageEmbeddingStatus = 0;
    v18->_status = 0;
    v18->_previousStatus = a4;
    v18->_previousAttempts = a5;
    objc_storeStrong(&v18->_lastAttemptDate, a6);
    v19 = +[NSDate now];
    currentAttemptDate = v18->_currentAttemptDate;
    v18->_currentAttemptDate = v19;

    v21 = objc_alloc_init(VCPMADSceneAssetEntryResults);
    results = v18->_results;
    v18->_results = v21;

    v18->_previousErrorCode = a7;
    v18->_errorCode = 0;
    v18->_previousErrorLine = a8;
    v18->_errorLine = 0;
    v23 = [(PHAsset *)v18->_asset sceneAnalysisProperties];
    v24 = [v23 sceneAnalysisVersion];

    if (VCPPhotosSceneProcessingVersionInternal() > v24 || PFPhotosSceneProcessingFromCameraVersion == v24 || [(PHAsset *)v18->_asset mad_needSceneProcessingForSharedAsset])
    {
      v18->_needsSceneProcessing = 1;
    }

    v18->_needsEmbeddingProcessing = [(PHAsset *)v18->_asset mad_needsImageEmbeddingProcessing];
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