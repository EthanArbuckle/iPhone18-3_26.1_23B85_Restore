@interface MADFullAssetEntry
+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 lastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7 missingResource:(BOOL)a8 imageOnlyAnalysis:(BOOL)a9 existingAnalysis:(id)a10 isAnalysisFromComputeSync:(BOOL)a11 existingEmbeddingResults:(id)a12 isEmbeddingFromComputeSync:(BOOL)a13 downloadResource:(id)a14 needDownload:(BOOL)a15 acceptableResources:(id)a16 previousErrorCode:(unint64_t)a17 previousErrorLine:(unint64_t)a18;
- (MADFullAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 lastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7 missingResource:(BOOL)a8 imageOnlyAnalysis:(BOOL)a9 existingAnalysis:(id)a10 isAnalysisFromComputeSync:(BOOL)a11 existingEmbeddingResults:(id)a12 isEmbeddingFromComputeSync:(BOOL)a13 downloadResource:(id)a14 needDownload:(BOOL)a15 acceptableResources:(id)a16 previousErrorCode:(unint64_t)a17 previousErrorLine:(unint64_t)a18;
@end

@implementation MADFullAssetEntry

- (MADFullAssetEntry)initWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 lastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7 missingResource:(BOOL)a8 imageOnlyAnalysis:(BOOL)a9 existingAnalysis:(id)a10 isAnalysisFromComputeSync:(BOOL)a11 existingEmbeddingResults:(id)a12 isEmbeddingFromComputeSync:(BOOL)a13 downloadResource:(id)a14 needDownload:(BOOL)a15 acceptableResources:(id)a16 previousErrorCode:(unint64_t)a17 previousErrorLine:(unint64_t)a18
{
  v21 = a3;
  v22 = a6;
  v23 = a10;
  v36 = a12;
  v35 = a14;
  v34 = a16;
  v37.receiver = self;
  v37.super_class = MADFullAssetEntry;
  v24 = [(MADFullAssetEntry *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_asset, a3);
    v25->_status = 0;
    v25->_previousStatus = a4;
    v25->_previousAttempts = a5;
    objc_storeStrong(&v25->_lastAttemptDate, a6);
    objc_storeStrong(&v25->_downloadResource, a14);
    v25->_analysisTypes = a7;
    v25->_missingResource = a8;
    objc_storeStrong(&v25->_existingAnalysis, a10);
    v25->_isAnalysisFromComputeSync = a11;
    objc_storeStrong(&v25->_existingEmbeddingResults, a12);
    v25->_isEmbeddingFromComputeSync = a13;
    v26 = +[NSDate now];
    currentAttemptDate = v25->_currentAttemptDate;
    v25->_currentAttemptDate = v26;

    v25->_needDownload = a15;
    downloadedData = v25->_downloadedData;
    v25->_downloadedData = 0;

    objc_storeStrong(&v25->_acceptableResources, a16);
    v25->_previousErrorCode = a17;
    v25->_errorCode = 0;
    v25->_previousErrorLine = a18;
    v25->_errorLine = 0;
  }

  return v25;
}

+ (id)entryWithAsset:(id)a3 previousStatus:(unint64_t)a4 previousAttempts:(unint64_t)a5 lastAttemptDate:(id)a6 analysisTypes:(unint64_t)a7 missingResource:(BOOL)a8 imageOnlyAnalysis:(BOOL)a9 existingAnalysis:(id)a10 isAnalysisFromComputeSync:(BOOL)a11 existingEmbeddingResults:(id)a12 isEmbeddingFromComputeSync:(BOOL)a13 downloadResource:(id)a14 needDownload:(BOOL)a15 acceptableResources:(id)a16 previousErrorCode:(unint64_t)a17 previousErrorLine:(unint64_t)a18
{
  v33 = a8;
  v34 = a3;
  v19 = a6;
  v20 = a10;
  v21 = a12;
  v22 = a14;
  v23 = a16;
  LOBYTE(v29) = a15;
  LOBYTE(v28) = a13;
  LOBYTE(v27) = a11;
  LOBYTE(v26) = a9;
  v24 = [objc_alloc(objc_opt_class()) initWithAsset:v34 previousStatus:a4 previousAttempts:a5 lastAttemptDate:v19 analysisTypes:a7 missingResource:v33 imageOnlyAnalysis:v26 existingAnalysis:v20 isAnalysisFromComputeSync:v27 existingEmbeddingResults:v21 isEmbeddingFromComputeSync:v28 downloadResource:v22 needDownload:v29 acceptableResources:v23 previousErrorCode:a17 previousErrorLine:a18];

  return v24;
}

@end