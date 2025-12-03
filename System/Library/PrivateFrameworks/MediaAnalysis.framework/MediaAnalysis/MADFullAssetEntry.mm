@interface MADFullAssetEntry
+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts lastAttemptDate:(id)date analysisTypes:(unint64_t)types missingResource:(BOOL)resource imageOnlyAnalysis:(BOOL)analysis existingAnalysis:(id)self0 isAnalysisFromComputeSync:(BOOL)self1 existingEmbeddingResults:(id)self2 isEmbeddingFromComputeSync:(BOOL)self3 downloadResource:(id)self4 needDownload:(BOOL)self5 acceptableResources:(id)self6 previousErrorCode:(unint64_t)self7 previousErrorLine:(unint64_t)self8;
- (MADFullAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts lastAttemptDate:(id)date analysisTypes:(unint64_t)types missingResource:(BOOL)resource imageOnlyAnalysis:(BOOL)analysis existingAnalysis:(id)self0 isAnalysisFromComputeSync:(BOOL)self1 existingEmbeddingResults:(id)self2 isEmbeddingFromComputeSync:(BOOL)self3 downloadResource:(id)self4 needDownload:(BOOL)self5 acceptableResources:(id)self6 previousErrorCode:(unint64_t)self7 previousErrorLine:(unint64_t)self8;
@end

@implementation MADFullAssetEntry

- (MADFullAssetEntry)initWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts lastAttemptDate:(id)date analysisTypes:(unint64_t)types missingResource:(BOOL)resource imageOnlyAnalysis:(BOOL)analysis existingAnalysis:(id)self0 isAnalysisFromComputeSync:(BOOL)self1 existingEmbeddingResults:(id)self2 isEmbeddingFromComputeSync:(BOOL)self3 downloadResource:(id)self4 needDownload:(BOOL)self5 acceptableResources:(id)self6 previousErrorCode:(unint64_t)self7 previousErrorLine:(unint64_t)self8
{
  assetCopy = asset;
  dateCopy = date;
  existingAnalysisCopy = existingAnalysis;
  resultsCopy = results;
  downloadResourceCopy = downloadResource;
  resourcesCopy = resources;
  v37.receiver = self;
  v37.super_class = MADFullAssetEntry;
  v24 = [(MADFullAssetEntry *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_asset, asset);
    v25->_status = 0;
    v25->_previousStatus = status;
    v25->_previousAttempts = attempts;
    objc_storeStrong(&v25->_lastAttemptDate, date);
    objc_storeStrong(&v25->_downloadResource, downloadResource);
    v25->_analysisTypes = types;
    v25->_missingResource = resource;
    objc_storeStrong(&v25->_existingAnalysis, existingAnalysis);
    v25->_isAnalysisFromComputeSync = sync;
    objc_storeStrong(&v25->_existingEmbeddingResults, results);
    v25->_isEmbeddingFromComputeSync = computeSync;
    v26 = +[NSDate now];
    currentAttemptDate = v25->_currentAttemptDate;
    v25->_currentAttemptDate = v26;

    v25->_needDownload = download;
    downloadedData = v25->_downloadedData;
    v25->_downloadedData = 0;

    objc_storeStrong(&v25->_acceptableResources, resources);
    v25->_previousErrorCode = code;
    v25->_errorCode = 0;
    v25->_previousErrorLine = line;
    v25->_errorLine = 0;
  }

  return v25;
}

+ (id)entryWithAsset:(id)asset previousStatus:(unint64_t)status previousAttempts:(unint64_t)attempts lastAttemptDate:(id)date analysisTypes:(unint64_t)types missingResource:(BOOL)resource imageOnlyAnalysis:(BOOL)analysis existingAnalysis:(id)self0 isAnalysisFromComputeSync:(BOOL)self1 existingEmbeddingResults:(id)self2 isEmbeddingFromComputeSync:(BOOL)self3 downloadResource:(id)self4 needDownload:(BOOL)self5 acceptableResources:(id)self6 previousErrorCode:(unint64_t)self7 previousErrorLine:(unint64_t)self8
{
  resourceCopy = resource;
  assetCopy = asset;
  dateCopy = date;
  existingAnalysisCopy = existingAnalysis;
  resultsCopy = results;
  downloadResourceCopy = downloadResource;
  resourcesCopy = resources;
  LOBYTE(v29) = download;
  LOBYTE(v28) = computeSync;
  LOBYTE(v27) = sync;
  LOBYTE(v26) = analysis;
  v24 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previousStatus:status previousAttempts:attempts lastAttemptDate:dateCopy analysisTypes:types missingResource:resourceCopy imageOnlyAnalysis:v26 existingAnalysis:existingAnalysisCopy isAnalysisFromComputeSync:v27 existingEmbeddingResults:resultsCopy isEmbeddingFromComputeSync:v28 downloadResource:downloadResourceCopy needDownload:v29 acceptableResources:resourcesCopy previousErrorCode:code previousErrorLine:line];

  return v24;
}

@end