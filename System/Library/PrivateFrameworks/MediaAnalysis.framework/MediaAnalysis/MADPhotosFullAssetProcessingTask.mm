@interface MADPhotosFullAssetProcessingTask
+ (BOOL)canDoFullAnalysis:(id)analysis withResources:(id)resources;
+ (id)taskWithAnalysisDatabase:(id)database photoLibrary:(id)library progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis downloadAllowed:(BOOL)allowed;
+ (void)publishLivePhotoEffectsAnalysis:(id)analysis toAsset:(id)asset;
- (BOOL)_needDownloadForAsset:(id)asset resources:(id)resources;
- (BOOL)doneFullAnalysis:(id)analysis;
- (BOOL)hasAdequateAssets:(unint64_t)assets;
- (MADPhotosFullAssetProcessingTask)initWithAnalysisDatabase:(id)database photoLibrary:(id)library progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis downloadAllowed:(BOOL)allowed;
- (id)_bumpVersionInAnalysis:(id)analysis;
- (id)_downloadableResourceForAsset:(id)asset resources:(id)resources;
- (id)assetLocalIdentifiers;
- (int)__prepareWithCurrentDate:(id)date;
- (int)_prepare;
- (int)_process;
- (int)_propagateAssetProcessingStatus;
- (int)_publish;
- (int)_publishAnalysisResults;
- (int)_publishAnalysisResultsToLegacyDatabase;
- (int)_publishEmbeddingResults;
- (int)_publishPhotosResults;
- (int)_publishProcessingStatus;
- (int)_publishProcessingStatusToLegacyDatabase;
- (unint64_t)_findMissingAnalysisTypesForAsset:(id)asset reusableAnalysis:(id)analysis resources:(id)resources localResourcesOnly:(BOOL)only missingResource:(BOOL *)resource;
- (unint64_t)_missingAnalysisTypesForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only existingReusableAnalysis:(id *)analysis isAnalysisFromComputeSync:(BOOL *)sync existingReusableEmbeddings:(id *)embeddings isEmbeddingFromComputeSync:(BOOL *)computeSync missingResource:(BOOL *)self0;
- (unint64_t)_possibleAnalysisForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only;
- (unint64_t)_processAssetsConcurrently:(int64_t)concurrently;
- (unint64_t)_processAssetsSerially;
- (unint64_t)concurrentAssetCount;
- (void)_loadReusableAnalysisForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only existingReusableAnalysis:(id *)analysis isAnalysisFromComputeSync:(BOOL *)sync existingReusableEmbeddings:(id *)embeddings isEmbeddingFromComputeSync:(BOOL *)computeSync;
- (void)_reportCoreAnalyticsForSession;
- (void)_reportCoreAnalyticsWithEntry:(id)entry;
- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date;
- (void)dealloc;
- (void)download;
- (void)increaseProcessedJobCountByOne;
- (void)process;
- (void)processAssetEntry:(id)entry;
- (void)publish;
@end

@implementation MADPhotosFullAssetProcessingTask

+ (id)taskWithAnalysisDatabase:(id)database photoLibrary:(id)library progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis downloadAllowed:(BOOL)allowed
{
  analysisCopy = analysis;
  databaseCopy = database;
  libraryCopy = library;
  reporterCopy = reporter;
  LOBYTE(v20) = allowed;
  v18 = [[self alloc] initWithAnalysisDatabase:databaseCopy photoLibrary:libraryCopy progressReporter:reporterCopy mediaType:type mediaSubtype:subtype imageOnlyAnalysis:analysisCopy downloadAllowed:v20];

  return v18;
}

- (MADPhotosFullAssetProcessingTask)initWithAnalysisDatabase:(id)database photoLibrary:(id)library progressReporter:(id)reporter mediaType:(int64_t)type mediaSubtype:(unint64_t)subtype imageOnlyAnalysis:(BOOL)analysis downloadAllowed:(BOOL)allowed
{
  databaseCopy = database;
  libraryCopy = library;
  reporterCopy = reporter;
  v35.receiver = self;
  v35.super_class = MADPhotosFullAssetProcessingTask;
  v18 = [(MADProcessingTask *)&v35 init];
  if (!v18)
  {
LABEL_16:
    v24 = v18;
    goto LABEL_17;
  }

  v19 = +[NSMutableArray array];
  assetEntries = v18->_assetEntries;
  v18->_assetEntries = v19;

  v18->_status = 0;
  objc_storeStrong(&v18->_analysisDatabase, database);
  objc_storeStrong(&v18->_photoLibrary, library);
  objc_storeStrong(&v18->_progressReporter, reporter);
  v18->_mediaType = type;
  v18->_mediaSubtype = subtype;
  v18->_downloadAllowed = allowed;
  v18->_accumulatedVideoDurations = 0.0;
  v18->_imageOnlyAnalysis = analysis;
  if (analysis)
  {
    v21 = @"Full|ImageOnly";
LABEL_13:
    logPrefix = v18->_logPrefix;
    v18->_logPrefix = &v21->isa;

    v26 = 255;
    if (!v18->_imageOnlyAnalysis)
    {
      v26 = 1;
    }

    v18->_processingStatusTaskID = v26;
    v27 = dispatch_group_create();
    computeGroup = v18->_computeGroup;
    v18->_computeGroup = v27;

    v29 = dispatch_queue_create("com.apple.mediaanalysisd.mediatype.compute", 0);
    computeQueue = v18->_computeQueue;
    v18->_computeQueue = v29;

    v31 = +[VCPPhotoAnalyzerSharedContext sharedContext];
    sharedContext = v18->_sharedContext;
    v18->_sharedContext = v31;

    goto LABEL_16;
  }

  if (type == 2)
  {
    v21 = @"Full|Movie";
    goto LABEL_13;
  }

  if (type == 1 && subtype == 8)
  {
    v21 = @"Full|LivePhoto";
    goto LABEL_13;
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v22 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v22))
    {
      mediaType = v18->_mediaType;
      *buf = 134217984;
      v37 = mediaType;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[MADPhotosFullAssetProcessingTask] Unsupported media type: %lu", buf, 0xCu);
    }
  }

  v24 = 0;
LABEL_17:

  return v24;
}

- (void)dealloc
{
  v3 = +[VNSession globalSession];
  [v3 releaseCachedResources];

  v4.receiver = self;
  v4.super_class = MADPhotosFullAssetProcessingTask;
  [(MADPhotosFullAssetProcessingTask *)&v4 dealloc];
}

- (BOOL)hasAdequateAssets:(unint64_t)assets
{
  if (self->_imageOnlyAnalysis || self->_mediaType != 2)
  {
    v6.receiver = self;
    v3 = &v6;
  }

  else
  {
    if (self->_accumulatedVideoDurations >= 30.0)
    {
      return 1;
    }

    selfCopy = self;
    v3 = &selfCopy;
  }

  v3->super_class = MADPhotosFullAssetProcessingTask;
  return [(objc_super *)v3 hasAdequateAssets:assets, selfCopy];
}

- (unint64_t)_possibleAnalysisForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only
{
  assetCopy = asset;
  resourcesCopy = resources;
  v10 = [assetCopy vcp_fullAnalysisTypesForResources:resourcesCopy];
  if (self->_imageOnlyAnalysis && (([assetCopy vcp_isLivePhoto] & 1) != 0 || objc_msgSend(assetCopy, "isVideo")))
  {
    v10 &= 0x3000000000000uLL;
  }

  if (!only && (![assetCopy isPhoto] || objc_msgSend(resourcesCopy, "vcp_hasLocalPhoto:", objc_msgSend(assetCopy, "hasAdjustments"))))
  {
    v10 |= [assetCopy vcp_fullAnalysisTypes] & 0xFFFFFFFFFFEFFFFFLL;
  }

  return v10;
}

- (void)increaseProcessedJobCountByOne
{
  progressReporter = self->_progressReporter;
  if (progressReporter)
  {
    [(VCPProgressReporter *)progressReporter increaseProcessedJobCountByOne];
  }
}

+ (BOOL)canDoFullAnalysis:(id)analysis withResources:(id)resources
{
  analysisCopy = analysis;
  resourcesCopy = resources;
  vcp_fullAnalysisTypes = [analysisCopy vcp_fullAnalysisTypes];
  LOBYTE(vcp_fullAnalysisTypes) = vcp_fullAnalysisTypes == [analysisCopy vcp_fullAnalysisTypesForResources:resourcesCopy];

  return vcp_fullAnalysisTypes;
}

- (BOOL)doneFullAnalysis:(id)analysis
{
  analysisCopy = analysis;
  asset = [analysisCopy asset];
  vcp_fullAnalysisTypes = [asset vcp_fullAnalysisTypes];

  analysisResults = [analysisCopy analysisResults];
  vcp_types = [analysisResults vcp_types];

  return (vcp_fullAnalysisTypes & ~vcp_types & 0xFFFFFFFFFFEFFFFFLL) == 0;
}

- (BOOL)_needDownloadForAsset:(id)asset resources:(id)resources
{
  assetCopy = asset;
  resourcesCopy = resources;
  if (!self->_imageOnlyAnalysis && -[PHPhotoLibrary vcp_isCPLEnabled](self->_photoLibrary, "vcp_isCPLEnabled") && (([assetCopy vcp_isLivePhoto] & 1) != 0 || objc_msgSend(assetCopy, "isVideo")))
  {
    v8 = [objc_opt_class() canDoFullAnalysis:assetCopy withResources:resourcesCopy] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_downloadableResourceForAsset:(id)asset resources:(id)resources
{
  assetCopy = asset;
  resourcesCopy = resources;
  if (![assetCopy vcp_isVideoSlowmo])
  {
    vcp_smallMovieDerivativeResource = [resourcesCopy vcp_smallMovieDerivativeResource];
    if (!vcp_smallMovieDerivativeResource)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v14 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v14))
        {
          localIdentifier = [assetCopy localIdentifier];
          *buf = 138412290;
          v27 = localIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@] Asset has no small video derivative; skipping", buf, 0xCu);
        }
      }

      v16 = MediaAnalysisLogLevel();
      v18 = VCPLogToOSLogType[7];
      if (v16 >= 7 && os_log_type_enabled(&_os_log_default, VCPLogToOSLogType[7]))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        *buf = 138412290;
        v27 = localIdentifier2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%@] Asset all acceptable resources:", buf, 0xCu);
      }

      v20 = 0;
      *&v17 = 134218242;
      v25 = v17;
      while (v20 < [resourcesCopy count])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v18))
        {
          v21 = [resourcesCopy objectAtIndexedSubscript:v20];
          *buf = v25;
          v27 = v20;
          v28 = 2112;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "[%lu] acceptable resource: %@", buf, 0x16u);
        }

        ++v20;
      }

      goto LABEL_29;
    }

    if ([assetCopy isVideo])
    {
      fileSize = [vcp_smallMovieDerivativeResource fileSize];
      if (fileSize > +[VCPDownloadManager maxSizeBytes])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v12 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v12))
          {
            localIdentifier3 = [assetCopy localIdentifier];
            *buf = 138412290;
            v27 = localIdentifier3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[%@] File size exceeds download threshold; skipping", buf, 0xCu);
          }
        }

LABEL_29:
        v9 = 0;
LABEL_31:

        goto LABEL_32;
      }

      if (!fileSize && [assetCopy vcp_isLongMovie])
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v22 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v22))
          {
            localIdentifier4 = [assetCopy localIdentifier];
            *buf = 138412290;
            v27 = localIdentifier4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@] Duration exceeds download threshold; skipping", buf, 0xCu);
          }
        }

        goto LABEL_29;
      }
    }

    v9 = vcp_smallMovieDerivativeResource;
    goto LABEL_31;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      localIdentifier5 = [assetCopy localIdentifier];
      *buf = 138412290;
      v27 = localIdentifier5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Download not allowed for slow-mo video; skipping", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_32:

  return v9;
}

- (void)_loadReusableAnalysisForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only existingReusableAnalysis:(id *)analysis isAnalysisFromComputeSync:(BOOL *)sync existingReusableEmbeddings:(id *)embeddings isEmbeddingFromComputeSync:(BOOL *)computeSync
{
  assetCopy = asset;
  resourcesCopy = resources;
  v164 = assetCopy;
  localIdentifier = [assetCopy localIdentifier];
  v158 = [NSString stringWithFormat:@"[%@][%@][LR]", self->_logPrefix, localIdentifier];
  *analysis = 0;
  *sync = 0;
  *embeddings = 0;
  *computeSync = 0;
  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    photoLibrary = [assetCopy photoLibrary];
    mad_fetchRequest = [photoLibrary mad_fetchRequest];

    v15 = [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier predicate:0];

    v16 = v15;
  }

  else
  {
    analysisDatabase = self->_analysisDatabase;
    v174 = 0;
    [(VCPDatabaseWriter *)analysisDatabase analysisForAsset:localIdentifier analysis:&v174];
    v16 = v174;
  }

  if (v16)
  {
    v166 = v16;
    if ([v164 vcp_isAnalysisValid:?])
    {
      goto LABEL_16;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v18 = &_os_log_default;
      v19 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        v20 = [v166 vcp_analysisDescriptionWithResultDetails:1];
        *buf = 138412546;
        v177 = v158;
        v178 = 2112;
        *v179 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Asset modified; local analysis is invalid %@; discarding ...", buf, 0x16u);
      }
    }

    v21 = v166;
    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v21 = &_os_log_default;
    v22 = &_os_log_default;
    v23 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      *buf = 138412290;
      v177 = v158;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ No existing local analysis", buf, 0xCu);
    }

LABEL_14:
  }

  v166 = 0;
LABEL_16:
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    v165 = 0;
    goto LABEL_43;
  }

  mediaAnalysisProperties = [v164 mediaAnalysisProperties];
  imageEmbeddingVersion = [mediaAnalysisProperties imageEmbeddingVersion];
  mediaAnalysisProperties2 = [v164 mediaAnalysisProperties];
  v165 = +[MADVSKEmbeddingResults resultsFromAnalysis:imageEmbeddingVersion:videoEmbeddingVersion:asset:imageOnly:](MADVSKEmbeddingResults, "resultsFromAnalysis:imageEmbeddingVersion:videoEmbeddingVersion:asset:imageOnly:", v166, imageEmbeddingVersion, [mediaAnalysisProperties2 videoEmbeddingVersion], v164, self->_imageOnlyAnalysis);

  if (MediaAnalysisLogLevel() >= 7)
  {
    v27 = &_os_log_default;
    v28 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v28))
    {
      *buf = 138412546;
      v177 = v158;
      v178 = 2112;
      *v179 = v165;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v28, "%@ Local embeddings from MADB: %@", buf, 0x16u);
    }
  }

  v29 = [VSKAsset mad_fetchImageEmbeddingForPhotosAsset:v164];
  if (v29)
  {
    mediaAnalysisProperties3 = [v164 mediaAnalysisProperties];
    [v165 setImageEmbedding:v29 version:{objc_msgSend(mediaAnalysisProperties3, "imageEmbeddingVersion")}];

    if (MediaAnalysisLogLevel() < 7)
    {
      goto LABEL_32;
    }

    v31 = &_os_log_default;
    v32 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v32))
    {
      imageEmbeddingAsset = [v165 imageEmbeddingAsset];
      imageEmbeddingVersion2 = [v165 imageEmbeddingVersion];
      v35 = @"YES";
      *buf = 138412802;
      v177 = v158;
      if (!imageEmbeddingAsset)
      {
        v35 = @"NO";
      }

      v178 = 2112;
      *v179 = v35;
      *&v179[8] = 1024;
      LODWORD(v180) = imageEmbeddingVersion2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Embeddings from vectorDB: image embedding: %@ (v%d)", buf, 0x1Cu);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_32;
    }

    v36 = &_os_log_default;
    v37 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v37))
    {
      *buf = 138412290;
      v177 = v158;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "%@ Failed to fetch image embeddings from vectorDB", buf, 0xCu);
    }
  }

LABEL_32:
  v38 = [VSKAsset mad_fetchVideoEmbeddingForPhotosAsset:v164];
  if (v38)
  {
    mediaAnalysisProperties4 = [v164 mediaAnalysisProperties];
    [v165 setVideoEmbedding:v38 version:{objc_msgSend(mediaAnalysisProperties4, "videoEmbeddingVersion")}];

    if (MediaAnalysisLogLevel() >= 7)
    {
      v40 = &_os_log_default;
      v41 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v41))
      {
        videoEmbeddingAsset = [v165 videoEmbeddingAsset];
        videoEmbeddingVersion = [v165 videoEmbeddingVersion];
        v44 = @"YES";
        *buf = 138412802;
        v177 = v158;
        if (!videoEmbeddingAsset)
        {
          v44 = @"NO";
        }

        v178 = 2112;
        *v179 = v44;
        *&v179[8] = 1024;
        LODWORD(v180) = videoEmbeddingVersion;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v41, "%@ Embeddings from vectorDB: video embedding: %@ (v%d)", buf, 0x1Cu);
      }

LABEL_41:
    }
  }

  else if (MediaAnalysisLogLevel() >= 3)
  {
    v45 = &_os_log_default;
    v46 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v46))
    {
      *buf = 138412290;
      v177 = v158;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v46, "%@ Failed to fetch video embeddings from vectorDB", buf, 0xCu);
    }

    goto LABEL_41;
  }

LABEL_43:
  if (MediaAnalysisLogLevel() >= 6)
  {
    v47 = &_os_log_default;
    v48 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v48))
    {
      v49 = [v166 vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v177 = v158;
      v178 = 2112;
      *v179 = v49;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "%@ Local: %@", buf, 0x16u);
    }
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v50 = &_os_log_default;
    v51 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v51))
    {
      v52 = [v165 description];
      *buf = 138412546;
      v177 = v158;
      v178 = 2112;
      *v179 = v52;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "%@ Local embeddings: %@", buf, 0x16u);
    }
  }

  v53 = VCPSignPostLog();
  v54 = os_signpost_id_generate(v53);

  v55 = VCPSignPostLog();
  v56 = v55;
  if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_INTERVAL_BEGIN, v54, "MADPhotosFullAssetProcessingTask_UnpackComputeSync", "", buf, 2u);
  }

  mad_computeSyncResource = [resourcesCopy mad_computeSyncResource];
  cancelBlock = [(MADProcessingTask *)self cancelBlock];
  v163 = [mad_computeSyncResource mad_existingAnalysisFromComputeSyncForAsset:v164 allowDownload:0 cancel:cancelBlock];

  v58 = VCPSignPostLog();
  v59 = v58;
  if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v59, OS_SIGNPOST_INTERVAL_END, v54, "MADPhotosFullAssetProcessingTask_UnpackComputeSync", "", buf, 2u);
  }

  if (v163)
  {
    fullAnalysisResults = [v163 fullAnalysisResults];
    v61 = fullAnalysisResults == 0;

    if (!v61)
    {
      fullAnalysisResults2 = [v163 fullAnalysisResults];
      v63 = [v164 vcp_isAnalysisValid:fullAnalysisResults2];

      if (v63)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v64 = &_os_log_default;
          v65 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v65))
          {
            fullAnalysisResults3 = [v163 fullAnalysisResults];
            v67 = [fullAnalysisResults3 vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412546;
            v177 = v158;
            v178 = 2112;
            *v179 = v67;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v65, "%@ Merging with ComputeSync: %@ ", buf, 0x16u);
          }
        }

        fullAnalysisResults4 = [v163 fullAnalysisResults];
        v69 = MADMergeAnalysis();

        v166 = v69;
        *sync = 1;
        if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
        {
          videoEmbeddingVersion2 = [v163 videoEmbeddingVersion];
          if (videoEmbeddingVersion2 > [v165 videoEmbeddingVersion])
          {
            videoEmbeddingVersion3 = [v163 videoEmbeddingVersion];
            if (MediaAnalysisEmbeddingForwardCompatibleVersion <= videoEmbeddingVersion3)
            {
              videoEmbeddingVSKAsset = [v163 videoEmbeddingVSKAsset];
              [v165 setVideoEmbedding:videoEmbeddingVSKAsset version:{objc_msgSend(v163, "videoEmbeddingVersion")}];

              *computeSync = 1;
              if (MediaAnalysisLogLevel() < 7)
              {
                goto LABEL_74;
              }

              v152 = &_os_log_default;
              v153 = VCPLogToOSLogType[7];
              if (os_log_type_enabled(&_os_log_default, v153))
              {
                videoEmbeddingAsset2 = [v165 videoEmbeddingAsset];
                videoEmbeddingVersion4 = [v165 videoEmbeddingVersion];
                v156 = @"YES";
                *buf = 138412802;
                v177 = v158;
                if (!videoEmbeddingAsset2)
                {
                  v156 = @"NO";
                }

                v178 = 2112;
                *v179 = v156;
                *&v179[8] = 1024;
                LODWORD(v180) = videoEmbeddingVersion4;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v153, "%@ Embeddings from ComputeSync: video embedding: %@ (v%d)", buf, 0x1Cu);
              }

              goto LABEL_73;
            }
          }
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v72 = &_os_log_default;
          v73 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v73))
          {
            *buf = 138412290;
            v177 = v158;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v73, "%@ No valid video embeddings from ComputeSync", buf, 0xCu);
          }

LABEL_73:
        }
      }

      else if (MediaAnalysisLogLevel() >= 6)
      {
        v74 = &_os_log_default;
        v75 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v75))
        {
          v76 = [v166 vcp_analysisDescriptionWithResultDetails:1];
          *buf = 138412546;
          v177 = v158;
          v178 = 2112;
          *v179 = v76;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v75, "%@ ComputeSync analysis is invalid %@; discarding ...", buf, 0x16u);
        }

        goto LABEL_73;
      }
    }

LABEL_74:
    if (v166 && +[VCPVideoCNNAnalyzer isMUBackboneEnabled](VCPVideoCNNAnalyzer, "isMUBackboneEnabled") && (v77 = [v163 imageEmbeddingVersion], v77 > objc_msgSend(v165, "imageEmbeddingVersion")) && (v78 = objc_msgSend(v163, "imageEmbeddingVersion"), MediaAnalysisEmbeddingForwardCompatibleVersion <= v78))
    {
      imageEmbeddingVSKAsset = [v163 imageEmbeddingVSKAsset];
      [v165 setImageEmbedding:imageEmbeddingVSKAsset version:{objc_msgSend(v163, "imageEmbeddingVersion")}];

      *computeSync = 1;
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_82;
      }

      v146 = &_os_log_default;
      v147 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v147))
      {
        imageEmbeddingAsset2 = [v165 imageEmbeddingAsset];
        imageEmbeddingVersion3 = [v165 imageEmbeddingVersion];
        v150 = @"YES";
        *buf = 138412802;
        v177 = v158;
        if (!imageEmbeddingAsset2)
        {
          v150 = @"NO";
        }

        v178 = 2112;
        *v179 = v150;
        *&v179[8] = 1024;
        LODWORD(v180) = imageEmbeddingVersion3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v147, "%@ Embeddings from ComputeSync: image embedding: %@ (v%d)", buf, 0x1Cu);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
LABEL_82:
        if (MediaAnalysisLogLevel() >= 6)
        {
          v81 = &_os_log_default;
          v82 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v82))
          {
            v83 = [v166 vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412546;
            v177 = v158;
            v178 = 2112;
            *v179 = v83;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v82, "%@ Local+ComputeSync: %@", buf, 0x16u);
          }
        }

        if (MediaAnalysisLogLevel() >= 6)
        {
          v84 = &_os_log_default;
          v85 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v85))
          {
            v86 = [v165 description];
            *buf = 138412546;
            v177 = v158;
            v178 = 2112;
            *v179 = v86;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v85, "%@ Local+ComputeSync embeddings: %@", buf, 0x16u);
          }
        }

        goto LABEL_90;
      }

      v79 = &_os_log_default;
      v80 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v80))
      {
        *buf = 138412290;
        v177 = v158;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v80, "%@ No valid image embeddings from ComputeSync", buf, 0xCu);
      }
    }

    goto LABEL_82;
  }

LABEL_90:
  if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    if ([v165 imageEmbeddingVersion] == 74)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v87 = &_os_log_default;
        v88 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v88))
        {
          imageEmbeddingVersion4 = [v165 imageEmbeddingVersion];
          *buf = 138412802;
          v177 = v158;
          v178 = 1024;
          *v179 = imageEmbeddingVersion4;
          *&v179[4] = 1024;
          *&v179[6] = 75;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v88, "%@ Bumping image embedding v%d->v%d to avoid reprocessing", buf, 0x18u);
        }
      }

      [v165 setImageEmbeddingVersion:75];
    }

    imageEmbeddingAsset3 = [v165 imageEmbeddingAsset];
    v91 = [imageEmbeddingAsset3 mad_embeddingVersion] == 8;

    if (v91)
    {
      imageEmbeddingAsset4 = [v165 imageEmbeddingAsset];
      v93 = [imageEmbeddingAsset4 mad_updateAssetWithEmbeddingVersion:9];
      [v165 setImageEmbeddingAsset:v93];
    }

    if ([v165 videoEmbeddingVersion] == 74)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v94 = &_os_log_default;
        v95 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v95))
        {
          videoEmbeddingVersion5 = [v165 videoEmbeddingVersion];
          *buf = 138412802;
          v177 = v158;
          v178 = 1024;
          *v179 = videoEmbeddingVersion5;
          *&v179[4] = 1024;
          *&v179[6] = 75;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v95, "%@ Bumping video embedding v%d->v%d to avoid reprocessing", buf, 0x18u);
        }
      }

      [v165 setVideoEmbeddingVersion:75];
    }

    videoEmbeddingAsset3 = [v165 videoEmbeddingAsset];
    v98 = [videoEmbeddingAsset3 mad_embeddingVersion] == 8;

    if (v98)
    {
      videoEmbeddingAsset4 = [v165 videoEmbeddingAsset];
      v100 = [videoEmbeddingAsset4 mad_updateAssetWithEmbeddingVersion:9];
      [v165 setVideoEmbeddingAsset:v100];
    }

    if (v166)
    {
      v101 = MADBumpEmbeddingVersionInFullAnalysisResults();
    }

    else
    {
      v101 = 0;
    }
  }

  else
  {
    v101 = v166;
  }

  v167 = v101;
  [v101 vcp_version];
  vcp_types = [v101 vcp_types];
  v102 = MediaAnalysisTypesUpdatedSince();
  if (v102)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v103 = &_os_log_default;
      v104 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v104))
      {
        v105 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v177 = v158;
        v178 = 2112;
        *v179 = v105;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v104, "%@ Checking outdated analysis %@ (and remove if needed)", buf, 0x16u);
      }
    }

    v106 = [v101 mutableCopy];
    [v106 vcp_setTypes:vcp_types & ~v102];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v107 = &_os_log_default;
      v108 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v108))
      {
        v109 = MediaAnalysisTypeShortDescription();
        v110 = MediaAnalysisTypeShortDescription();
        v111 = MediaAnalysisTypeShortDescription();
        *buf = 138413058;
        v177 = v158;
        v178 = 2112;
        *v179 = v109;
        *&v179[8] = 2112;
        v180 = v110;
        v181 = 2112;
        v182 = v111;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v108, "%@ Set valid analysis types %@ (%@ - %@)", buf, 0x2Au);
      }
    }

    vcp_flags = [v101 vcp_flags];
    v113 = MediaAnalysisFlagsForTypes() | 0x100040000;
    [v106 vcp_setFlags:vcp_flags & ~v113];
    if (MediaAnalysisLogLevel() >= 7)
    {
      v114 = &_os_log_default;
      v115 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v115))
      {
        *buf = 138413058;
        v177 = v158;
        v178 = 2048;
        *v179 = vcp_flags & ~v113;
        *&v179[8] = 2048;
        v180 = vcp_flags;
        v181 = 2048;
        v182 = v113;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v115, "%@ Set valid flags 0x%llX (0x%llX - 0x%llX)", buf, 0x2Au);
      }
    }

    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v116 = MediaAnalysisResultsKeysForAnalysisTypes();
    v117 = [v116 countByEnumeratingWithState:&v170 objects:v175 count:16];
    if (v117)
    {
      v118 = *v171;
      v119 = VCPLogToOSLogType[6];
      do
      {
        for (i = 0; i != v117; i = i + 1)
        {
          if (*v171 != v118)
          {
            objc_enumerationMutation(v116);
          }

          v121 = *(*(&v170 + 1) + 8 * i);
          vcp_results = [v106 vcp_results];
          v123 = [vcp_results objectForKeyedSubscript:v121];
          v124 = v123 == 0;

          if (!v124)
          {
            [v106 vcp_removeResultForKey:v121];
            if (MediaAnalysisLogLevel() >= 6)
            {
              v125 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, v119))
              {
                *buf = 138412546;
                v177 = v158;
                v178 = 2112;
                *v179 = v121;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v119, "%@ Removed outdated results for %@", buf, 0x16u);
              }
            }
          }
        }

        v117 = [v116 countByEnumeratingWithState:&v170 objects:v175 count:16];
      }

      while (v117);
    }

    v126 = v106;
    v167 = v126;
  }

  if ((vcp_types & 0x40000) != 0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v127 = &_os_log_default;
      v128 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v128))
      {
        v129 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v177 = v158;
        v178 = 2112;
        *v179 = v129;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v128, "%@ Removing analysis %@ (if needed)", buf, 0x16u);
      }
    }

    v130 = StripMovieCurationResultsForEligibleAsset(v164, v167, v158);

    v167 = v130;
  }

  if ((vcp_types & 0x8000000000000) != 0)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v132 = &_os_log_default;
      v133 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v133))
      {
        v134 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v177 = v158;
        v178 = 2112;
        *v179 = v134;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v133, "%@ Removing analysis %@ (if needed)", buf, 0x16u);
      }
    }

    v135 = StripVideoThumbnailResultsForEligibleAsset(v164, v167, v158);

    v131 = v135;
  }

  else
  {
    v131 = v167;
  }

  v168 = v131;
  v136 = v131;
  *analysis = v168;
  v137 = v165;
  *embeddings = v165;
  v138 = v163;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v139 = &_os_log_default;
    v140 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v140))
    {
      v141 = [*analysis vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v177 = v158;
      v178 = 2112;
      *v179 = v141;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v140, "%@ Final reusable analysis: %@", buf, 0x16u);
    }

    v138 = v163;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v142 = &_os_log_default;
    v143 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v143))
    {
      v144 = [*embeddings description];
      *buf = 138412546;
      v177 = v158;
      v178 = 2112;
      *v179 = v144;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v143, "%@ Final reusable embeddings %@", buf, 0x16u);
    }

    v138 = v163;
  }
}

- (id)_bumpVersionInAnalysis:(id)analysis
{
  v3 = [analysis mutableCopy];
  [v3 vcp_setVersion:MediaAnalysisVersion];

  return v3;
}

- (unint64_t)_findMissingAnalysisTypesForAsset:(id)asset reusableAnalysis:(id)analysis resources:(id)resources localResourcesOnly:(BOOL)only missingResource:(BOOL *)resource
{
  onlyCopy = only;
  assetCopy = asset;
  analysisCopy = analysis;
  resourcesCopy = resources;
  localIdentifier = [assetCopy localIdentifier];
  v16 = [NSString stringWithFormat:@"[%@][FMA]", localIdentifier];
  *resource = 0;
  vcp_modificationDate = [assetCopy vcp_modificationDate];

  if (!vcp_modificationDate)
  {
    if (MediaAnalysisLogLevel() < 3)
    {
      goto LABEL_33;
    }

    v28 = VCPLogToOSLogType[3];
    if (!os_log_type_enabled(&_os_log_default, v28))
    {
      goto LABEL_33;
    }

    *buf = 138412290;
    v37 = v16;
    v29 = "%@ Asset missing modification date; skipping all analysis";
    goto LABEL_19;
  }

  v18 = [(MADPhotosFullAssetProcessingTask *)self _possibleAnalysisForAsset:assetCopy resources:resourcesCopy localResourcesOnly:onlyCopy];
  if (v18)
  {
    v19 = v18 & 0xFFFFFFFFDFFFFFFFLL;
    if ((v18 & 0xFFFFFFFFDFFFFFFFLL) == 0)
    {
      if (MediaAnalysisLogLevel() < 4)
      {
        goto LABEL_33;
      }

      v33 = VCPLogToOSLogType[4];
      if (!os_log_type_enabled(&_os_log_default, v33))
      {
        goto LABEL_33;
      }

      v34 = &stru_1002890F8;
      if (onlyCopy)
      {
        v34 = @"local-only ";
      }

      *buf = 138412546;
      v37 = v16;
      v38 = 2112;
      v39 = v34;
      v29 = "%@ No %@resource to analyze; skipping ...";
      v30 = v33;
      v31 = 22;
      goto LABEL_29;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v20 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v20))
      {
        v21 = MediaAnalysisTypeShortDescription();
        v22 = v21;
        v23 = &stru_1002890F8;
        *buf = 138412802;
        v37 = v16;
        v38 = 2112;
        if (onlyCopy)
        {
          v23 = @"local-only ";
        }

        v39 = v23;
        v40 = 2112;
        v41 = v21;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "%@ Possible %@analysis types: %@", buf, 0x20u);
      }
    }

    vcp_types = [analysisCopy vcp_types];
    if ([assetCopy isVideo] && objc_msgSend(assetCopy, "vcp_needsImageCaptionProcessing"))
    {
      vcp_types &= 0xFFFCFFFFFFFFFFFFLL;
    }

    v25 = v19 & ~vcp_types;
    if (v25)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v26 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v26))
        {
          v27 = MediaAnalysisTypeShortDescription();
          *buf = 138412546;
          v37 = v16;
          v38 = 2112;
          v39 = v27;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v26, "%@ Analysis incomplete; proceed with missing analysis types %@", buf, 0x16u);
        }
      }

      goto LABEL_34;
    }

    if (MediaAnalysisLogLevel() < 6 || (v28 = VCPLogToOSLogType[6], !os_log_type_enabled(&_os_log_default, v28)))
    {
LABEL_33:
      v25 = 0;
      goto LABEL_34;
    }

    *buf = 138412290;
    v37 = v16;
    v29 = "%@ Reusable analysis is complete and up-to-date; skipping";
LABEL_19:
    v30 = v28;
    v31 = 12;
LABEL_29:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v30, v29, buf, v31);
    goto LABEL_33;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v32 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v32))
    {
      *buf = 138412290;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ No eligible resource for possible analysis", buf, 0xCu);
    }
  }

  v25 = 0;
  *resource = 1;
LABEL_34:

  return v25;
}

- (unint64_t)_missingAnalysisTypesForAsset:(id)asset resources:(id)resources localResourcesOnly:(BOOL)only existingReusableAnalysis:(id *)analysis isAnalysisFromComputeSync:(BOOL *)sync existingReusableEmbeddings:(id *)embeddings isEmbeddingFromComputeSync:(BOOL *)computeSync missingResource:(BOOL *)self0
{
  onlyCopy = only;
  assetCopy = asset;
  resourcesCopy = resources;
  [(MADPhotosFullAssetProcessingTask *)self _loadReusableAnalysisForAsset:assetCopy resources:resourcesCopy localResourcesOnly:onlyCopy existingReusableAnalysis:analysis isAnalysisFromComputeSync:sync existingReusableEmbeddings:embeddings isEmbeddingFromComputeSync:computeSync];
  if (*analysis)
  {
    v18 = [(MADPhotosFullAssetProcessingTask *)self _bumpVersionInAnalysis:?];
    *analysis = v18;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(MADPhotosFullAssetProcessingTask *)self _findMissingAnalysisTypesForAsset:assetCopy reusableAnalysis:v18 resources:resourcesCopy localResourcesOnly:onlyCopy missingResource:resource];

  return v19;
}

- (void)addPhotosAsset:(id)asset priority:(unint64_t)priority previousStatus:(unint64_t)status attempts:(unint64_t)attempts lastAttemptDate:(id)date
{
  assetCopy = asset;
  v61.receiver = self;
  v61.super_class = MADPhotosFullAssetProcessingTask;
  dateCopy = date;
  [(MADPhotosAssetProcessingTask *)&v61 addPhotosAsset:assetCopy priority:priority previousStatus:status attempts:attempts lastAttemptDate:?];
  logPrefix = self->_logPrefix;
  localIdentifier = [assetCopy localIdentifier];
  statusCopy = status;
  attemptsCopy = attempts;
  v51 = [NSString stringWithFormat:@"[%@][%@][A]", logPrefix, localIdentifier];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v15 = self->_assetEntries;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v16)
  {
    v17 = *v58;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v15);
        }

        asset = [*(*(&v57 + 1) + 8 * i) asset];
        localIdentifier2 = [asset localIdentifier];
        localIdentifier3 = [assetCopy localIdentifier];
        v22 = [localIdentifier2 isEqualToString:localIdentifier3];

        if (v22)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v24 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v24))
            {
              *buf = 138412290;
              *&buf[4] = v51;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v24, "%@ Batch already contains asset; ignoring", buf, 0xCu);
            }
          }

          goto LABEL_47;
        }
      }

      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v57 objects:v63 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if (self->_imageOnlyAnalysis || ![assetCopy vcp_isLongMovie])
  {
    v15 = [PHAssetResource vcp_allAcceptableResourcesForAsset:assetCopy];
    v25 = [(MADPhotosFullAssetProcessingTask *)self _needDownloadForAsset:assetCopy resources:v15];
    if (v25)
    {
      v26 = [(MADPhotosFullAssetProcessingTask *)self _downloadableResourceForAsset:assetCopy resources:v15];
      if (!v26)
      {
        if (MediaAnalysisLogLevel() >= 6)
        {
          v27 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v27))
          {
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "%@ No download-able resource from resources; ignoring", buf, 0xCu);
          }
        }

        [(MADPhotosFullAssetProcessingTask *)self increaseProcessedJobCountByOne];
LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v26 = 0;
    }

    v56 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
    v47 = [(MADPhotosFullAssetProcessingTask *)self _missingAnalysisTypesForAsset:assetCopy resources:v15 localResourcesOnly:v25 ^ 1 existingReusableAnalysis:&v54 isAnalysisFromComputeSync:&v56 + 1 existingReusableEmbeddings:&v53 isEmbeddingFromComputeSync:&v56 missingResource:&v55];
    v28 = v54;
    v29 = v53;
    if (v47 == VCPMAFullAnalysisTypesThumbnail)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0;
    }

    if (v30 == 1)
    {
      if (MediaAnalysisLogLevel() >= 7)
      {
        v31 = VCPLogToOSLogType[7];
        if (os_log_type_enabled(&_os_log_default, v31))
        {
          *buf = 138412290;
          *&buf[4] = v51;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v31, "%@ No analysis needs to perform; ignoring", buf, 0xCu);
        }
      }

      [(MADPhotosFullAssetProcessingTask *)self increaseProcessedJobCountByOne];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v32 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v32))
        {
          *buf = 138412290;
          *&buf[4] = v51;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Adding asset to processing batch ...", buf, 0xCu);
        }
      }

      if (!self->_imageOnlyAnalysis && [assetCopy isVideo])
      {
        [assetCopy duration];
        self->_accumulatedVideoDurations = v33 + self->_accumulatedVideoDurations;
      }

      v46 = v29;
      *buf = 0;
      v52 = 0;
      if (+[MADManagedProcessingStatus isMACDReadEnabled])
      {
        mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
        processingStatusTaskID = self->_processingStatusTaskID;
        localIdentifier4 = [assetCopy localIdentifier];
        [mad_fetchRequest fetchProcessingErrorCode:buf errorLine:&v52 taskID:processingStatusTaskID localIdentifier:localIdentifier4];
      }

      else
      {
        analysisDatabase = self->_analysisDatabase;
        v38 = self->_processingStatusTaskID;
        mad_fetchRequest = [assetCopy localIdentifier];
        [(VCPDatabaseWriter *)analysisDatabase fetchProcessingErrorCode:buf errorLine:&v52 taskID:v38 localIdentifier:mad_fetchRequest];
      }

      assetEntries = self->_assetEntries;
      if (v25)
      {
        v40 = v15;
      }

      else
      {
        v40 = 0;
      }

      LOBYTE(v45) = v25;
      LOBYTE(v43) = HIBYTE(v56);
      LOBYTE(v44) = v56;
      LOBYTE(v42) = self->_imageOnlyAnalysis;
      v41 = [MADFullAssetEntry entryWithAsset:assetCopy previousStatus:statusCopy previousAttempts:attemptsCopy lastAttemptDate:dateCopy analysisTypes:v47 missingResource:v55 imageOnlyAnalysis:v42 existingAnalysis:v28 isAnalysisFromComputeSync:v43 existingEmbeddingResults:v46 isEmbeddingFromComputeSync:v44 downloadResource:v26 needDownload:v45 acceptableResources:v40 previousErrorCode:*buf previousErrorLine:v52];
      [(NSMutableArray *)assetEntries addObject:v41];

      v29 = v46;
    }

    goto LABEL_47;
  }

  if (MediaAnalysisLogLevel() >= 4)
  {
    v23 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v23))
    {
      *buf = 138412290;
      *&buf[4] = v51;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "%@ Skipping long duration movie in the unified path", buf, 0xCu);
    }
  }

  [(MADPhotosFullAssetProcessingTask *)self increaseProcessedJobCountByOne];
LABEL_48:
}

- (id)assetLocalIdentifiers
{
  v3 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_assetEntries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        asset = [v8 asset];
        localIdentifier = [asset localIdentifier];
        [v3 addObject:localIdentifier];

        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (int)__prepareWithCurrentDate:(id)date
{
  dateCopy = date;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  obj = self->_assetEntries;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v20 = *v27;
    while (2)
    {
      v6 = 0;
      v7 = v3;
      v19 = v5;
      do
      {
        v21 = v7;
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        analysisDatabase = selfCopy->_analysisDatabase;
        previousAttempts = [v8 previousAttempts];
        asset = [v8 asset];
        processingStatusTaskID = selfCopy->_processingStatusTaskID;
        asset2 = [v8 asset];
        mediaType = [asset2 mediaType];
        asset3 = [v8 asset];
        v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](analysisDatabase, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", previousAttempts + 1, asset, processingStatusTaskID, 1, dateCopy, mediaType, [asset3 mediaSubtypes], objc_msgSend(v8, "previousErrorCode"), objc_msgSend(v8, "previousErrorLine"));

        if (v15 == -108 || v15 == -36)
        {
          v3 = v15;
        }

        else
        {
          v3 = v15;
          if (v15 != -23)
          {
            v3 = v21;
          }
        }

        objc_autoreleasePoolPop(context);
        if (v15 == -108 || v15 == -36 || v15 == -23)
        {
          v16 = v3;
          goto LABEL_19;
        }

        v6 = v6 + 1;
        v7 = v3;
      }

      while (v19 != v6);
      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      v16 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_19:

  return v16;
}

- (int)_prepare
{
  v3 = +[NSDate now];
  v4 = objc_alloc_init(VCPTimeMeasurement);
  [v4 start];
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      v7 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v8 = VCPMAQoSDescription();
      *buf = 138412802;
      v38 = logPrefix;
      v39 = 1024;
      v40 = v7;
      v41 = 2112;
      v42 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Preparing %d assets (QoS: %@)", buf, 0x1Cu);
    }
  }

  if (+[MADManagedProcessingStatus isMACDPersistEnabled])
  {
    v9 = VCPSignPostLog();
    v10 = os_signpost_id_generate(v9);

    v11 = VCPSignPostLog();
    v12 = v11;
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MADPhotosFullAssetProcessingTask_Prepare", "", buf, 2u);
    }

    photoLibrary = self->_photoLibrary;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000864A4;
    v35[3] = &unk_100282938;
    v35[4] = self;
    v36 = v3;
    v34 = 0;
    v14 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v35 error:&v34];
    v15 = v34;
    v16 = v15;
    if (v14)
    {
      v17 = VCPSignPostLog();
      v18 = v17;
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v10, "MADPhotosFullAssetProcessingTask_Prepare", "", buf, 2u);
      }
    }

    else
    {
      LODWORD(v10) = [v15 code];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v27 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v27))
        {
          v28 = self->_logPrefix;
          v29 = [(NSMutableArray *)self->_assetEntries count];
          *buf = 138412802;
          v38 = v28;
          v39 = 1024;
          v40 = v29;
          v41 = 2112;
          v42 = v16;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v27, "[%@][MACD] Failed to prepare %d assets: %@", buf, 0x1Cu);
        }
      }
    }

    if (v14)
    {
      v23 = 0;
LABEL_30:
      if (MediaAnalysisLogLevel() >= 6)
      {
        v30 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v30))
        {
          v31 = self->_logPrefix;
          *buf = 138412290;
          v38 = v31;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v30, "[%@] Preparing assets done", buf, 0xCu);
        }
      }

      [v4 stop];
      v10 = +[VCPMADCoreAnalyticsManager sharedManager];
      [v4 elapsedTimeSeconds];
      [v10 accumulateDoubleValue:@"TotalPrepareTimeInSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
      v32 = VCPCoreAnalyticsFieldForFull(self->_imageOnlyAnalysis, self->_mediaType, self->_mediaSubtype, 2);
      if (v32)
      {
        [v4 elapsedTimeSeconds];
        [v10 accumulateDoubleValue:v32 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
      }

      LODWORD(v10) = v23;
    }
  }

  else
  {
    v19 = VCPSignPostLog();
    v20 = os_signpost_id_generate(v19);

    v21 = VCPSignPostLog();
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "MADPhotosFullAssetProcessingTask_LegacyPrepare", "", buf, 2u);
    }

    v23 = [(MADPhotosFullAssetProcessingTask *)self __prepareWithCurrentDate:v3];
    commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
    LODWORD(v10) = commit;
    if (commit != -108 && commit != -36 && commit != -23)
    {
      v25 = VCPSignPostLog();
      v26 = v25;
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, v20, "MADPhotosFullAssetProcessingTask_LegacyPrepare", "", buf, 2u);
      }

      if (v10 != -36 && v10 != -23)
      {
        goto LABEL_30;
      }
    }
  }

  return v10;
}

- (void)download
{
  v60 = objc_alloc_init(VCPTimeMeasurement);
  [v60 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  spid = v4;
  v59 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFullAssetProcessingTask_Download", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      logPrefix = self->_logPrefix;
      v9 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v10 = VCPMAQoSDescription();
      *buf = 138412802;
      v82 = logPrefix;
      v83 = 1024;
      *v84 = v9;
      *&v84[4] = 2112;
      *&v84[6] = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@][DL] Downloading %d assets (QoS: %@)", buf, 0x1Cu);
    }
  }

  v11 = +[MADStateHandler sharedStateHandler];
  [v11 addBreadcrumb:{@"[%@][DL] Downloading %d assets", self->_logPrefix, -[NSMutableArray count](self->_assetEntries, "count")}];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = self->_assetEntries;
  v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (!v12)
  {
    v50 = 0;
    goto LABEL_62;
  }

  *&v63[8] = 0;
  v70 = *v78;
  v65 = VCPLogToOSLogType[4];
  v68 = VCPLogToOSLogType[3];
  *v63 = VCPLogToOSLogType[7];
  type = VCPLogToOSLogType[5];
  v62 = VCPLogToOSLogType[6];
  do
  {
    v71 = v12;
    for (i = 0; i != v71; i = i + 1)
    {
      if (*v78 != v70)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v77 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      v16 = +[VCPWatchdog sharedWatchdog];
      [v16 pet];

      v17 = self->_logPrefix;
      asset = [v14 asset];
      localIdentifier = [asset localIdentifier];
      v20 = [NSString stringWithFormat:@"[%@][%@][DL]", v17, localIdentifier];

      if ([v14 analysisTypes])
      {
        if ([v14 needDownload])
        {
          if (!self->_downloadAllowed)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
            {
              *buf = 138412290;
              v82 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Download is not allowed; skipping", buf, 0xCu);
            }

            v24 = 4294943488;
            goto LABEL_55;
          }

          cancelBlock = [(MADProcessingTask *)self cancelBlock];
          if (cancelBlock)
          {
            cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
            v23 = cancelBlock2[2]();

            if (v23)
            {
              if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
              {
                *buf = 138412290;
                v82 = v20;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Download is canceled; skipping", buf, 0xCu);
              }

              v24 = 4294967168;
LABEL_55:
              [v14 setStatus:v24];
              [v14 setDownloadResource:0];
              goto LABEL_58;
            }
          }

          downloadResource = [v14 downloadResource];
          v28 = downloadResource == 0;

          if (v28)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
            {
              *buf = 138412290;
              v82 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v68, "%@ Asset resource not found; skipping", buf, 0xCu);
            }

            v24 = 4294943494;
            goto LABEL_55;
          }

          v29 = VCPSignPostLog();
          v30 = os_signpost_id_generate(v29);

          v31 = VCPSignPostLog();
          v32 = v31;
          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "MADPhotosFullAssetProcessingTask_DownloadUnpackComputeSync", "", buf, 2u);
          }

          acceptableResources = [v14 acceptableResources];
          mad_computeSyncResource = [acceptableResources mad_computeSyncResource];

          asset2 = [v14 asset];
          cancelBlock3 = [(MADProcessingTask *)self cancelBlock];
          v66 = [mad_computeSyncResource mad_existingAnalysisFromComputeSyncForAsset:asset2 allowDownload:1 cancel:cancelBlock3];

          v36 = VCPSignPostLog();
          v37 = v36;
          if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, v30, "MADPhotosFullAssetProcessingTask_DownloadUnpackComputeSync", "", buf, 2u);
          }

          fullAnalysisResults = [v66 fullAnalysisResults];
          v39 = fullAnalysisResults == 0;

          if (!v39)
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v63[0]))
            {
              *buf = 138412290;
              v82 = v20;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v63[0], "%@ Reconsidering analysis from downloaded compute sync ...", buf, 0xCu);
            }

            v76 = 0;
            v75 = 0;
            asset3 = [v14 asset];
            v64 = [PHAssetResource vcp_allAcceptableResourcesForAsset:asset3];

            asset4 = [v14 asset];
            v73 = 0;
            v74 = 0;
            v42 = [(MADPhotosFullAssetProcessingTask *)self _missingAnalysisTypesForAsset:asset4 resources:v64 localResourcesOnly:0 existingReusableAnalysis:&v74 isAnalysisFromComputeSync:&v76 + 1 existingReusableEmbeddings:&v73 isEmbeddingFromComputeSync:&v76 missingResource:&v75];
            v43 = v74;
            v44 = v73;

            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v62))
            {
              [v43 vcp_types];
              v45 = MediaAnalysisTypeShortDescription();
              v46 = MediaAnalysisTypeShortDescription();
              *buf = 138412802;
              v82 = v20;
              v83 = 2112;
              *v84 = v45;
              *&v84[8] = 2112;
              *&v84[10] = v46;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v62, "%@ Updated reusable analysis from downloaded computer sync: %@, missing types: %@", buf, 0x20u);
            }

            [v14 setExistingAnalysis:v43];
            [v14 setIsAnalysisFromComputeSync:HIBYTE(v76)];
            [v14 setExistingEmbeddingResults:v44];
            [v14 setIsEmbeddingFromComputeSync:v76];
            if (!v42)
            {
              [v14 setAnalysisTypes:0];
              [v14 setStatus:0];
              [v14 setDownloadResource:0];

              ++*&v63[4];
LABEL_57:

              goto LABEL_58;
            }
          }

          downloadResource2 = [v14 downloadResource];
          v72 = 0;
          cancelBlock4 = [(MADProcessingTask *)self cancelBlock];
          v49 = [PHAssetResourceManager vcp_requestInMemoryDownload:downloadResource2 taskID:1 data:&v72 cancel:cancelBlock4];
          v43 = v72;
          [v14 setStatus:v49];

          if (![v14 status])
          {
            [v14 setDownloadedData:v43];
            ++*&v63[4];
          }

          [v14 setDownloadResource:0];
          goto LABEL_57;
        }

        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v65))
        {
          *buf = 138412290;
          v82 = v20;
          v25 = v65;
          v26 = "%@ Download is not needed; skipping";
          goto LABEL_27;
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v68))
      {
        *buf = 138412290;
        v82 = v20;
        v25 = v68;
        v26 = "%@ analysisTypes is nil and download is not needed; skipping";
LABEL_27:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v25, v26, buf, 0xCu);
      }

LABEL_58:

      objc_autoreleasePoolPop(v15);
    }

    v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v77 objects:v85 count:16];
  }

  while (v12);
  v50 = *&v63[4];
LABEL_62:

  if (MediaAnalysisLogLevel() >= 6)
  {
    v51 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v51))
    {
      v52 = self->_logPrefix;
      *buf = 138412546;
      v82 = v52;
      v83 = 1024;
      *v84 = v50;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v51, "[%@][DL] Downloaded %d assets", buf, 0x12u);
    }
  }

  v53 = +[MADStateHandler sharedStateHandler];
  [v53 addBreadcrumb:{@"[%@][DL] Downloaded %d assets", self->_logPrefix, v50}];

  v54 = VCPSignPostLog();
  v55 = v54;
  if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFullAssetProcessingTask_Download", "", buf, 2u);
  }

  [v60 stop];
  v56 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v60 elapsedTimeSeconds];
  [v56 accumulateDoubleValue:@"TotalDownloadTimeInSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
  v57 = VCPCoreAnalyticsFieldForFull(self->_imageOnlyAnalysis, self->_mediaType, self->_mediaSubtype, 1);
  if (v57)
  {
    [v60 elapsedTimeSeconds];
    [v56 accumulateDoubleValue:v57 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
  }
}

- (void)processAssetEntry:(id)entry
{
  entryCopy = entry;
  logPrefix = self->_logPrefix;
  asset = [entryCopy asset];
  localIdentifier = [asset localIdentifier];
  v8 = [NSString stringWithFormat:@"[%@][%@][P]", logPrefix, localIdentifier];

  if (MediaAnalysisLogLevel() >= 5)
  {
    v9 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      [entryCopy analysisTypes];
      v10 = MediaAnalysisTypeShortDescription();
      *buf = 138412546;
      v88 = v8;
      v89 = 2112;
      v90 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "%@ Starting (%@) ...", buf, 0x16u);
    }
  }

  if ([entryCopy missingResource])
  {
    if (MediaAnalysisLogLevel() < 4)
    {
      goto LABEL_9;
    }

    v11 = VCPLogToOSLogType[4];
    if (!os_log_type_enabled(&_os_log_default, v11))
    {
      goto LABEL_9;
    }

    *buf = 138412290;
    v88 = v8;
    v12 = "%@ Asset does not have eligible resource; skipping";
LABEL_8:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v12, buf, 0xCu);
LABEL_9:
    [entryCopy setStatus:4294943494];
    goto LABEL_10;
  }

  if ([entryCopy analysisTypes])
  {
    if ([entryCopy status])
    {
      if (MediaAnalysisLogLevel() >= 4)
      {
        v13 = VCPLogToOSLogType[4];
        if (os_log_type_enabled(&_os_log_default, v13))
        {
          *buf = 138412290;
          v88 = v8;
          v14 = "%@ Asset has failure status; skipping";
LABEL_19:
          _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v14, buf, 0xCu);
          goto LABEL_10;
        }
      }

      goto LABEL_10;
    }

    if ([entryCopy needDownload])
    {
      downloadedData = [entryCopy downloadedData];
      v16 = downloadedData == 0;

      if (v16)
      {
        if (MediaAnalysisLogLevel() < 4)
        {
          goto LABEL_9;
        }

        v11 = VCPLogToOSLogType[4];
        if (!os_log_type_enabled(&_os_log_default, v11))
        {
          goto LABEL_9;
        }

        *buf = 138412290;
        v88 = v8;
        v12 = "%@ Missing required resource data; skipping";
        goto LABEL_8;
      }
    }

    v82 = objc_alloc_init(VCPTimeMeasurement);
    [v82 start];
    if (!self->_imageOnlyAnalysis)
    {
      asset2 = [entryCopy asset];
      if ([asset2 isVideo])
      {
        analysisTypes = [entryCopy analysisTypes];
        v19 = analysisTypes == VCPMAFullAnalysisTypesThumbnail;

        if (!v19)
        {
          v20 = [VCPMovieAnalyzer alloc];
          asset3 = [entryCopy asset];
          existingAnalysis = [entryCopy existingAnalysis];
          analysisTypes2 = [entryCopy analysisTypes];
          downloadedData2 = [entryCopy downloadedData];
          v25 = [v20 initWithPHAsset:asset3 existingAnalysis:existingAnalysis analysisTypes:analysisTypes2 downloadedData:downloadedData2];

          buf[0] = 0;
          [v25 setAllowStreaming:1];
          [v25 setOnDemand:0];
          v26 = +[MADStateHandler sharedStateHandler];
          [v26 enterKnownTimeoutRisk:2];

          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_100088574;
          v86[3] = &unk_100283000;
          v86[4] = self;
          v83 = [v25 analyzeAsset:v86 streamed:buf];
          v27 = +[MADStateHandler sharedStateHandler];
          [v27 exitKnownTimeoutRisk];

          status = [v25 status];
          errorCode = [v25 errorCode];
          errorLine = [v25 errorLine];
          [v25 status];
          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    analysisTypes3 = [entryCopy analysisTypes];
    analysisTypes4 = [entryCopy analysisTypes];
    v33 = analysisTypes3 & 0xFFFFFFFFCBFFFFFFLL;
    if (v33)
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v34 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v34))
        {
          v35 = MediaAnalysisTypeShortDescription();
          *buf = 138412546;
          v88 = v8;
          v89 = 2112;
          v90 = v35;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "%@ Initial pass %@", buf, 0x16u);
        }
      }

      v36 = [VCPPhotoAnalyzer alloc];
      asset4 = [entryCopy asset];
      existingAnalysis2 = [entryCopy existingAnalysis];
      downloadedData3 = [entryCopy downloadedData];
      existingAnalysis3 = [v36 initWithPHAsset:asset4 existingAnalysis:existingAnalysis2 analysisTypes:v33 downloadedData:downloadedData3];

      [existingAnalysis3 setAllowStreaming:1];
      [existingAnalysis3 setSharedContext:self->_sharedContext];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100088624;
      v85[3] = &unk_100283000;
      v85[4] = self;
      v41 = [existingAnalysis3 analyzeAsset:v85 withOptions:0];
      v83 = [v41 mutableCopy];

      status = [existingAnalysis3 status];
      errorCode = [existingAnalysis3 errorCode];
      errorLine = [existingAnalysis3 errorLine];
    }

    else
    {
      existingAnalysis3 = [entryCopy existingAnalysis];
      v83 = [existingAnalysis3 mutableCopy];
      errorLine = 0;
      errorCode = 0;
      status = 2;
    }

    if (status != 2 || (v42 = analysisTypes4 & 0x34000000, (analysisTypes4 & 0x34000000) == 0))
    {
LABEL_51:
      if (status == 4)
      {
        v54 = -128;
      }

      else
      {
        v54 = -18;
      }

      if (status == 2)
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }

      [entryCopy setStatus:v55];
      [entryCopy setErrorCode:errorCode];
      [entryCopy setErrorLine:errorLine];
      [entryCopy setAnalysisResults:v83];
      [entryCopy setDownloadedData:0];
      [v82 stop];
      [v82 elapsedTimeSeconds];
      [entryCopy setProcessingInterval:?];
      analysisResults = [entryCopy analysisResults];
      existingAnalysis4 = [entryCopy existingAnalysis];
      asset5 = [entryCopy asset];
      v59 = MADMergeAnalysis();
      [entryCopy setMergedAnalysisResults:v59];

      [entryCopy setMergedEmbeddingResults:0];
      if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
      {
LABEL_69:
        if (MediaAnalysisLogLevel() >= 6)
        {
          v79 = VCPLogToOSLogType[6];
          if (os_log_type_enabled(&_os_log_default, v79))
          {
            [entryCopy processingInterval];
            *buf = 138412546;
            v88 = v8;
            v89 = 2048;
            v90 = v80;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v79, "%@ Processing asset done (interval: %.2fs)", buf, 0x16u);
          }
        }

        goto LABEL_10;
      }

      analysisResults2 = [entryCopy analysisResults];
      asset6 = [entryCopy asset];
      v62 = [MADVSKEmbeddingResults resultsFromAnalysis:analysisResults2 imageEmbeddingVersion:75 videoEmbeddingVersion:75 asset:asset6 imageOnly:self->_imageOnlyAnalysis];
      [entryCopy setMergedEmbeddingResults:v62];

      mergedEmbeddingResults = [entryCopy mergedEmbeddingResults];
      imageEmbeddingAsset = [mergedEmbeddingResults imageEmbeddingAsset];
      if (!imageEmbeddingAsset)
      {
        existingEmbeddingResults = [entryCopy existingEmbeddingResults];
        imageEmbeddingVersion = [existingEmbeddingResults imageEmbeddingVersion];
        v67 = MediaAnalysisEmbeddingForwardCompatibleVersion > imageEmbeddingVersion;

        if (v67)
        {
          goto LABEL_62;
        }

        mergedEmbeddingResults = [entryCopy mergedEmbeddingResults];
        imageEmbeddingAsset = [entryCopy existingEmbeddingResults];
        v64ImageEmbeddingAsset = [imageEmbeddingAsset imageEmbeddingAsset];
        existingEmbeddingResults2 = [entryCopy existingEmbeddingResults];
        [mergedEmbeddingResults setImageEmbedding:v64ImageEmbeddingAsset version:{objc_msgSend(existingEmbeddingResults2, "imageEmbeddingVersion")}];
      }

LABEL_62:
      mergedEmbeddingResults2 = [entryCopy mergedEmbeddingResults];
      videoEmbeddingAsset = [mergedEmbeddingResults2 videoEmbeddingAsset];
      if (!videoEmbeddingAsset)
      {
        existingEmbeddingResults3 = [entryCopy existingEmbeddingResults];
        videoEmbeddingVersion = [existingEmbeddingResults3 videoEmbeddingVersion];
        v74 = MediaAnalysisEmbeddingForwardCompatibleVersion > videoEmbeddingVersion;

        if (v74)
        {
LABEL_66:
          if (MediaAnalysisLogLevel() >= 6)
          {
            v77 = VCPLogToOSLogType[6];
            if (os_log_type_enabled(&_os_log_default, v77))
            {
              mergedEmbeddingResults3 = [entryCopy mergedEmbeddingResults];
              *buf = 138412546;
              v88 = v8;
              v89 = 2112;
              v90 = mergedEmbeddingResults3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v77, "%@ Merged existing embedding results with newly analyzed: %@", buf, 0x16u);
            }
          }

          goto LABEL_69;
        }

        mergedEmbeddingResults2 = [entryCopy mergedEmbeddingResults];
        videoEmbeddingAsset = [entryCopy existingEmbeddingResults];
        v71VideoEmbeddingAsset = [videoEmbeddingAsset videoEmbeddingAsset];
        existingEmbeddingResults4 = [entryCopy existingEmbeddingResults];
        [mergedEmbeddingResults2 setVideoEmbedding:v71VideoEmbeddingAsset version:{objc_msgSend(existingEmbeddingResults4, "videoEmbeddingVersion")}];
      }

      goto LABEL_66;
    }

    if (MediaAnalysisLogLevel() >= 6)
    {
      v43 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v43))
      {
        v44 = MediaAnalysisTypeShortDescription();
        *buf = 138412546;
        v88 = v8;
        v89 = 2112;
        v90 = v44;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Additional pass %@", buf, 0x16u);
      }
    }

    vcp_results = [v83 vcp_results];
    v25 = [vcp_results objectForKeyedSubscript:MediaAnalysisMovieSummaryResultsKey];

    if ([v25 count] && (objc_msgSend(v25, "objectAtIndexedSubscript:", 0), v46 = objc_claimAutoreleasedReturnValue(), v47 = (objc_msgSend(v46, "vcp_flags") & 0x80000) == 0, v46, !v47))
    {
      v49 = [VCPPhotoAnalyzer alloc];
      asset7 = [entryCopy asset];
      downloadedData4 = [entryCopy downloadedData];
      v52 = [v49 initWithPHAsset:asset7 existingAnalysis:0 analysisTypes:v42 downloadedData:downloadedData4];

      [v52 setAllowStreaming:1];
      [v52 setSharedContext:self->_sharedContext];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_1000886D4;
      v84[3] = &unk_100283000;
      v84[4] = self;
      v81 = [v52 analyzeAsset:v84 withOptions:0];
      status = [v52 status];
      errorCode = [v52 errorCode];
      errorLine = [v52 errorLine];
      if (status == 2)
      {
        vcp_results2 = [v81 vcp_results];
        [v83 vcp_addEntriesFromResults:vcp_results2];

        [v83 vcp_addTypes:v42];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v48 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v48))
        {
          *buf = 138412290;
          v88 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v48, "%@ Pre-gating for stabilization not passed.", buf, 0xCu);
        }
      }

      [v83 vcp_addTypes:v42];
      status = 2;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 138412290;
      v88 = v8;
      v14 = "%@ Nil analysisTypes; skipping";
      goto LABEL_19;
    }
  }

LABEL_10:
}

- (unint64_t)concurrentAssetCount
{
  if (self->_imageOnlyAnalysis && (DeviceHasANE() & 1) != 0)
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)_processAssetsConcurrently:(int64_t)concurrently
{
  v4 = dispatch_semaphore_create(concurrently);
  group = dispatch_group_create();
  v5 = qos_class_self();
  v20 = dispatch_get_global_queue(v5, 0);
  v6 = 0;
  type = VCPLogToOSLogType[5];
  *&v7 = 138412290;
  v18 = v7;
  while (v6 < [(NSMutableArray *)self->_assetEntries count])
  {
    v8 = objc_autoreleasePoolPush();
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    v9 = +[VCPWatchdog sharedWatchdog];
    [v9 pet];

    cancelBlock = [(MADProcessingTask *)self cancelBlock];
    if (cancelBlock && ([(MADProcessingTask *)self cancelBlock], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11[2](), v11, cancelBlock, v12))
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
      {
        logPrefix = self->_logPrefix;
        *buf = v18;
        v26 = logPrefix;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@] Processing canceled", buf, 0xCu);
      }

      dispatch_semaphore_signal(v4);
      v14 = 0;
    }

    else
    {
      v15 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v6];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100088AA4;
      block[3] = &unk_1002832A0;
      block[4] = self;
      v23 = v15;
      v24 = v4;
      v16 = v15;
      dispatch_group_async(group, v20, block);

      v14 = 1;
    }

    objc_autoreleasePoolPop(v8);
    if (!v14)
    {
      break;
    }

    ++v6;
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);

  return v6;
}

- (unint64_t)_processAssetsSerially
{
  v3 = 0;
  if ([(NSMutableArray *)self->_assetEntries count])
  {
    while (1)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = +[VCPWatchdog sharedWatchdog];
      [v5 pet];

      cancelBlock = [(MADProcessingTask *)self cancelBlock];
      if (cancelBlock)
      {
        cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
        v8 = cancelBlock2[2]();

        if (v8)
        {
          break;
        }
      }

      v9 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v3];
      v10 = VCPSignPostLog();
      v11 = os_signpost_id_generate(v10);

      v12 = VCPSignPostLog();
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MADPhotosFullAssetProcessingTask_ProcessAsset", "", &v19, 2u);
      }

      [(MADPhotosFullAssetProcessingTask *)self processAssetEntry:v9];
      v14 = VCPSignPostLog();
      v15 = v14;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, v11, "MADPhotosFullAssetProcessingTask_ProcessAsset", "", &v19, 2u);
      }

      objc_autoreleasePoolPop(v4);
      if (++v3 >= [(NSMutableArray *)self->_assetEntries count])
      {
        return v3;
      }
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v16 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        logPrefix = self->_logPrefix;
        v19 = 138412290;
        v20 = logPrefix;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[%@] Processing canceled", &v19, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  return v3;
}

- (int)_process
{
  v29 = objc_alloc_init(VCPTimeMeasurement);
  [v29 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  v27 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFullAssetProcessingTask_Process", "", buf, 2u);
  }

  v28 = v4;

  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      logPrefix = self->_logPrefix;
      v9 = [(NSMutableArray *)self->_assetEntries count];
      qos_class_self();
      v10 = VCPMAQoSDescription();
      *buf = 138412802;
      v31 = logPrefix;
      v32 = 1024;
      LODWORD(v33[0]) = v9;
      WORD2(v33[0]) = 2112;
      *(v33 + 6) = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Processing %d assets (QoS: %@)", buf, 0x1Cu);
    }
  }

  concurrentAssetCount = [(MADPhotosFullAssetProcessingTask *)self concurrentAssetCount];
  if (concurrentAssetCount < 2)
  {
    _processAssetsSerially = [(MADPhotosFullAssetProcessingTask *)self _processAssetsSerially];
  }

  else
  {
    _processAssetsSerially = [(MADPhotosFullAssetProcessingTask *)self _processAssetsConcurrently:concurrentAssetCount];
  }

  v13 = _processAssetsSerially;
  v14 = VCPLogToOSLogType[7];
  while (v13 < [(NSMutableArray *)self->_assetEntries count])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [(NSMutableArray *)self->_assetEntries objectAtIndexedSubscript:v13];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v14))
    {
      v17 = self->_logPrefix;
      asset = [v16 asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412546;
      v31 = v17;
      v32 = 2112;
      v33[0] = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[%@][%@] Marking asset as canceled", buf, 0x16u);
    }

    [v16 setStatus:4294967168];
    [v16 setDownloadedData:0];

    objc_autoreleasePoolPop(v15);
    ++v13;
  }

  if (MediaAnalysisLogLevel() >= 6)
  {
    v20 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v20))
    {
      v21 = self->_logPrefix;
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "[%@] Processing assets done", buf, 0xCu);
    }
  }

  v22 = VCPSignPostLog();
  v23 = v22;
  if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_END, v28, "MADPhotosFullAssetProcessingTask_Process", "", buf, 2u);
  }

  [v29 stop];
  v24 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v29 elapsedTimeSeconds];
  [v24 accumulateDoubleValue:@"TotalProcessTimeInSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
  v25 = VCPCoreAnalyticsFieldForFull(self->_imageOnlyAnalysis, self->_mediaType, self->_mediaSubtype, 3);
  if (v25)
  {
    [v29 elapsedTimeSeconds];
    [v24 accumulateDoubleValue:v25 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
  }

  return 0;
}

- (void)process
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosFullAssetProcessingTask *)self _process];
  }
}

+ (void)publishLivePhotoEffectsAnalysis:(id)analysis toAsset:(id)asset
{
  analysisCopy = analysis;
  assetCopy = asset;
  if (assetCopy)
  {
    v7 = [analysisCopy objectForKeyedSubscript:MediaAnalysisResultsKey];
    v8 = [v7 objectForKeyedSubscript:MediaAnalysisLivePhotoEffectsResultsKey];

    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:MediaAnalysisResultAttributesKey];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:MediaAnalysisResultLoopSuggestionStateAttributeKey];
        intValue = [v11 intValue];

        v13 = [v10 objectForKeyedSubscript:MediaAnalysisResultLongExposureSuggestionStateAttributeKey];
        intValue2 = [v13 intValue];

        photoLibrary = [assetCopy photoLibrary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_10008966C;
        v21[3] = &unk_1002836E8;
        v22 = assetCopy;
        v23 = intValue;
        v24 = intValue2;
        v20 = 0;
        v16 = [photoLibrary performChangesAndWait:v21 error:&v20];
        v17 = v20;

        if (MediaAnalysisLogLevel() >= 7)
        {
          v18 = VCPLogToOSLogType[7];
          if (os_log_type_enabled(&_os_log_default, v18))
          {
            v19 = @"NO";
            if (v16)
            {
              v19 = @"YES";
            }

            *buf = 138412290;
            v26 = v19;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v18, "Publish live photo effects suggestion states success: %@", buf, 0xCu);
          }
        }
      }
    }
  }
}

- (int)_propagateAssetProcessingStatus
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_assetEntries;
  v3 = 0;
  v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = objc_autoreleasePoolPush();
      status = [v7 status];
      if (status == -128)
      {
        v3 = -128;
      }

      else if ([v7 status] == -23808)
      {
        v3 = -23808;
      }

      objc_autoreleasePoolPop(v8);
      if (status == -128)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v3;
}

- (int)_publishAnalysisResults
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v3 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      logPrefix = self->_logPrefix;
      v5 = [(NSMutableArray *)self->_assetEntries count];
      *buf = 138412546;
      v15 = logPrefix;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "[%@] Persisting %lu results", buf, 0x16u);
    }
  }

  photoLibrary = self->_photoLibrary;
  v12 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000899F4;
  v13[3] = &unk_100283AD0;
  v13[4] = self;
  v7 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v13 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    code = 0;
  }

  else
  {
    code = [v8 code];
  }

  return code;
}

- (int)_publishAnalysisResultsToLegacyDatabase
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      logPrefix = self->_logPrefix;
      v6 = [(NSMutableArray *)self->_assetEntries count];
      *buf = 138412546;
      v41 = logPrefix;
      v42 = 2048;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[%@][Legacy] Persisting %lu results", buf, 0x16u);
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_assetEntries;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v34 = *v36;
    type = VCPLogToOSLogType[6];
    v32 = VCPLogToOSLogType[7];
LABEL_6:
    v8 = 0;
    v9 = v2;
    while (1)
    {
      if (*v36 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v35 + 1) + 8 * v8);
      v11 = objc_autoreleasePoolPush();
      v12 = self->_logPrefix;
      asset = [v10 asset];
      localIdentifier = [asset localIdentifier];
      v15 = [NSString stringWithFormat:@"[%@][%@][Legacy]", v12, localIdentifier];

      if ([v10 analysisTypes] || !objc_msgSend(v10, "isAnalysisFromComputeSync"))
      {
        if ([v10 status])
        {
          v2 = v9;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v32))
          {
            mergedAnalysisResults = [v10 mergedAnalysisResults];
            v24 = [mergedAnalysisResults vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412546;
            v41 = v15;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v32, "%@ Storing completed analysis into MA DB: %@", buf, 0x16u);
          }

          analysisDatabase = self->_analysisDatabase;
          asset2 = [v10 asset];
          mergedAnalysisResults2 = [v10 mergedAnalysisResults];
          v28 = [(VCPDatabaseWriter *)analysisDatabase storeAnalysisForAsset:asset2 analysis:mergedAnalysisResults2];

          if (v28 == -108 || v28 == -36)
          {
            v2 = v28;
          }

          else
          {
            v2 = v28;
            if (v28 != -23)
            {
              v2 = v9;
            }
          }

          v21 = 0;
          v22 = 1;
          if (v28 == -108 || v28 == -36 || v28 == -23)
          {
            goto LABEL_21;
          }
        }

        v22 = 0;
        v21 = 1;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
        {
          existingAnalysis = [v10 existingAnalysis];
          v17 = [existingAnalysis vcp_analysisDescriptionWithResultDetails:1];
          *buf = 138412546;
          v41 = v15;
          v42 = 2112;
          v43 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Storing existing analysis results from compute sync into MA DB: %@", buf, 0x16u);
        }

        v18 = self->_analysisDatabase;
        asset3 = [v10 asset];
        existingAnalysis2 = [v10 existingAnalysis];
        v2 = [(VCPDatabaseWriter *)v18 storeAnalysisForAsset:asset3 analysis:existingAnalysis2];

        v21 = 0;
        v22 = 1;
        if (v2 != -108 && v2 != -36 && v2 != -23)
        {
          v21 = 0;
          v22 = 5;
          v2 = v9;
        }
      }

LABEL_21:

      objc_autoreleasePoolPop(v11);
      if (v22 != 5 && v22)
      {

        if (!v21)
        {
          return v2;
        }

        goto LABEL_40;
      }

      v8 = v8 + 1;
      v9 = v2;
      if (v7 == v8)
      {
        v29 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        v7 = v29;
        if (v29)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

LABEL_40:
  LODWORD(v2) = 0;
  return v2;
}

- (int)_publishEmbeddingResults
{
  v20 = [MADVectorDatabaseChangeManager sharedManagerForPhotoLibrary:self->_photoLibrary];
  if (v20)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_assetEntries;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v3)
    {
      goto LABEL_21;
    }

    v4 = *v23;
    type = VCPLogToOSLogType[6];
    v19 = VCPLogToOSLogType[7];
    while (1)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        logPrefix = self->_logPrefix;
        asset = [v6 asset];
        localIdentifier = [asset localIdentifier];
        v11 = [NSString stringWithFormat:@"[%@][%@]", logPrefix, localIdentifier];

        if ([v6 analysisTypes] || !objc_msgSend(v6, "isEmbeddingFromComputeSync"))
        {
          if ([v6 status])
          {
            goto LABEL_19;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v19))
          {
            mergedEmbeddingResults = [v6 mergedEmbeddingResults];
            *buf = 138412546;
            v27 = v11;
            v28 = 2112;
            v29 = mergedEmbeddingResults;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Storing embedding results from completed analysis into vectorDB: %@", buf, 0x16u);
          }

          mergedEmbeddingResults2 = [v6 mergedEmbeddingResults];
          [v20 addPendingEmbeddingResults:mergedEmbeddingResults2];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
          {
            existingEmbeddingResults = [v6 existingEmbeddingResults];
            *buf = 138412546;
            v27 = v11;
            v28 = 2112;
            v29 = existingEmbeddingResults;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Storing existing embedding results from compute sync into vectorDB: %@", buf, 0x16u);
          }

          mergedEmbeddingResults2 = [v6 existingEmbeddingResults];
          [v20 addPendingEmbeddingResults:mergedEmbeddingResults2];
        }

LABEL_19:
        objc_autoreleasePoolPop(v7);
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (!v3)
      {
LABEL_21:

        publishPendingChanges = [v20 publishPendingChanges];
        goto LABEL_26;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v16 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v16))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "Failed to create MADVectorDatabaseChangeManager", buf, 2u);
    }
  }

  publishPendingChanges = -18;
LABEL_26:

  return publishPendingChanges;
}

- (int)_publishPhotosResults
{
  v47 = [VCPPhotosAssetChangeManager managerForPhotoLibrary:self->_photoLibrary];
  if (v47)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = self->_assetEntries;
    v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (!v2)
    {
      goto LABEL_48;
    }

    v49 = *v53;
    v46 = MediaAnalysisVersion;
    v42 = VCPPhotosCaptionProcessingVersion;
    v43 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[7];
    v45 = VCPLogToOSLogType[3];
    while (1)
    {
      v3 = 0;
      v50 = v2;
      do
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v52 + 1) + 8 * v3);
        v5 = objc_autoreleasePoolPush();
        logPrefix = self->_logPrefix;
        asset = [v4 asset];
        localIdentifier = [asset localIdentifier];
        v9 = [NSString stringWithFormat:@"[%@][%@]", logPrefix, localIdentifier];

        if ([v4 analysisTypes] || (objc_msgSend(v4, "existingAnalysis"), v26 = objc_claimAutoreleasedReturnValue(), v27 = v26 == 0, v26, v27))
        {
          if ([v4 status])
          {
            goto LABEL_46;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v57 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Storing completed analysis into Photos", buf, 0xCu);
          }

          asset2 = [v4 asset];
          vcp_isLivePhoto = [asset2 vcp_isLivePhoto];

          if (vcp_isLivePhoto)
          {
            v12 = objc_opt_class();
            mergedAnalysisResults = [v4 mergedAnalysisResults];
            asset3 = [v4 asset];
            [v12 publishLivePhotoEffectsAnalysis:mergedAnalysisResults toAsset:asset3];
          }

          asset4 = [v4 asset];
          mediaAnalysisProperties = [asset4 mediaAnalysisProperties];

          if (!mediaAnalysisProperties || [mediaAnalysisProperties mediaAnalysisVersion] < v46 || v46 > objc_msgSend(mediaAnalysisProperties, "mediaAnalysisImageVersion") || v46 > objc_msgSend(mediaAnalysisProperties, "imageCaptionVersion") || v46 > objc_msgSend(mediaAnalysisProperties, "videoCaptionVersion") || (objc_msgSend(mediaAnalysisProperties, "mediaAnalysisTimeStamp"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "asset"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "vcp_modificationDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "isEqualToDate:", v19), v19, v18, v17, (v20 & 1) == 0))
          {
            asset5 = [v4 asset];
            mergedAnalysisResults2 = [v4 mergedAnalysisResults];
            imageOnlyAnalysis = self->_imageOnlyAnalysis;
            mergedEmbeddingResults = [v4 mergedEmbeddingResults];
            cancelBlock = [(MADProcessingTask *)self cancelBlock];
            LOBYTE(imageOnlyAnalysis) = [v47 updateAsset:asset5 analysis:mergedAnalysisResults2 imageOnly:imageOnlyAnalysis vskResults:mergedEmbeddingResults cancelBlock:cancelBlock] == 0;

            if (!imageOnlyAnalysis)
            {
              if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v45))
              {
                *buf = 138412290;
                v57 = v9;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Failed to update changeManager", buf, 0xCu);
              }

              if (![v4 status])
              {
                goto LABEL_44;
              }
            }
          }
        }

        else
        {
          asset6 = [v4 asset];
          mediaAnalysisProperties = [asset6 mediaAnalysisProperties];

          if (self->_imageOnlyAnalysis)
          {
            if (mediaAnalysisProperties || v46 > [0 mediaAnalysisImageVersion] || v42 > objc_msgSend(0, "imageCaptionVersion"))
            {
              goto LABEL_36;
            }
          }

          else if (mediaAnalysisProperties || [0 mediaAnalysisVersion] < v46 || v42 > objc_msgSend(0, "videoCaptionVersion"))
          {
LABEL_36:
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v43))
            {
              *buf = 138412290;
              v57 = v9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "%@ Storing existing analysis into Photos", buf, 0xCu);
            }

            asset7 = [v4 asset];
            existingAnalysis = [v4 existingAnalysis];
            v35 = self->_imageOnlyAnalysis;
            existingEmbeddingResults = [v4 existingEmbeddingResults];
            cancelBlock2 = [(MADProcessingTask *)self cancelBlock];
            LOBYTE(v35) = [v47 updateAsset:asset7 analysis:existingAnalysis imageOnly:v35 vskResults:existingEmbeddingResults cancelBlock:cancelBlock2] == 0;

            if (v35)
            {
              goto LABEL_45;
            }

            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v45))
            {
              *buf = 138412290;
              v57 = v9;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "%@ Failed to update changeManager with existing results", buf, 0xCu);
            }

            if ([v4 status])
            {
              goto LABEL_45;
            }

LABEL_44:
            [v4 setStatus:4294967278];
            goto LABEL_45;
          }

          mediaAnalysisTimeStamp = [0 mediaAnalysisTimeStamp];
          asset8 = [v4 asset];
          vcp_modificationDate = [asset8 vcp_modificationDate];
          v32 = [mediaAnalysisTimeStamp isEqualToDate:vcp_modificationDate];

          if ((v32 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_45:

LABEL_46:
        objc_autoreleasePoolPop(v5);
        v3 = v3 + 1;
      }

      while (v50 != v3);
      v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (!v2)
      {
LABEL_48:

        cancelBlock3 = [(MADProcessingTask *)self cancelBlock];
        v39 = [v47 publishPendingChangesWithCancelBlock:cancelBlock3];

        goto LABEL_53;
      }
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v40 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v40))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "Failed to create VCPPhotosAssetChangeManager", buf, 2u);
    }
  }

  v39 = -18;
LABEL_53:

  return v39;
}

- (int)_publishProcessingStatus
{
  photoLibrary = self->_photoLibrary;
  v8 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B140;
  v9[3] = &unk_100283AD0;
  v9[4] = self;
  v3 = [(PHPhotoLibrary *)photoLibrary mad_performAnalysisDataStoreChanges:v9 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    code = 0;
  }

  else
  {
    code = [v4 code];
  }

  return code;
}

- (int)_publishProcessingStatusToLegacyDatabase
{
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (!v3)
  {
    goto LABEL_50;
  }

  v37 = *v43;
  type = VCPLogToOSLogType[7];
  do
  {
    v4 = 0;
    v38 = v2;
    v36 = v3;
    do
    {
      if (*v43 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v42 + 1) + 8 * v4);
      context = objc_autoreleasePoolPush();
      logPrefix = self->_logPrefix;
      asset = [v5 asset];
      localIdentifier = [asset localIdentifier];
      v40 = [NSString stringWithFormat:@"[%@][%@][Legacy]", logPrefix, localIdentifier];

      if (![v5 status])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v47 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
        }

LABEL_32:
        analysisDatabase = self->_analysisDatabase;
        asset2 = [v5 asset];
        localIdentifier2 = [asset2 localIdentifier];
        v25 = [(VCPDatabaseWriter *)analysisDatabase removeProcessingStatusForLocalIdentifier:localIdentifier2 andTaskID:self->_processingStatusTaskID];

        if (v25 == -108 || v25 == -36)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v25 != -23)
          {
            v2 = v38;
          }
        }

LABEL_37:
        v29 = 0;
        if (v25 != -108 && v25 != -36 && v25 != -23)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if ([v5 status] != -128)
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v47 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
        }

        [v5 status];
        v16 = MADProcessingStatusForOSStatus();
        asset3 = [v5 asset];
        currentAttemptDate = [v5 currentAttemptDate];
        v19 = [asset3 mad_nextAttemptDateForStatus:v16 currentAttemptDate:currentAttemptDate attemptCount:{objc_msgSend(v5, "previousAttempts") + 1}];

        v20 = self->_analysisDatabase;
        errorCode = [v5 errorCode];
        errorLine = [v5 errorLine];
        asset4 = [v5 asset];
        localIdentifier3 = [asset4 localIdentifier];
        v25 = [(VCPDatabaseWriter *)v20 updateProcessingStatus:v16 andNextAttemptDate:v19 andErrorCode:errorCode andErrorLine:errorLine forLocalIdentifier:localIdentifier3 andTaskID:self->_processingStatusTaskID];

        if (v25 == -108 || v25 == -36)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v25 != -23)
          {
            v2 = v38;
          }
        }

        goto LABEL_37;
      }

      if (![v5 previousAttempts])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          *buf = 138412290;
          v47 = v40;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
        }

        goto LABEL_32;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
      {
        *buf = 138412290;
        v47 = v40;
        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
      }

      v9 = self->_analysisDatabase;
      previousAttempts = [v5 previousAttempts];
      asset5 = [v5 asset];
      processingStatusTaskID = self->_processingStatusTaskID;
      previousStatus = [v5 previousStatus];
      lastAttemptDate = [v5 lastAttemptDate];
      asset6 = [v5 asset];
      mediaType = [asset6 mediaType];
      asset7 = [v5 asset];
      v15 = -[VCPDatabaseWriter setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:](v9, "setAttempts:asset:taskID:status:lastAttemptDate:mediaType:mediaSubtypes:errorCode:errorLine:", previousAttempts, asset5, processingStatusTaskID, previousStatus, lastAttemptDate, mediaType, [asset7 mediaSubtypes], objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine"));

      if (v15 == -108 || v15 == -36)
      {
        v2 = v15;
      }

      else
      {
        v2 = v15;
        if (v15 != -23)
        {
          v2 = v38;
        }
      }

      v29 = 0;
      if (v15 != -108 && v15 != -36 && v15 != -23)
      {
LABEL_40:
        v29 = 1;
      }

LABEL_41:

      objc_autoreleasePoolPop(context);
      if (!v29)
      {
        goto LABEL_51;
      }

      v4 = v4 + 1;
      v38 = v2;
    }

    while (v36 != v4);
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  }

  while (v3);
LABEL_50:
  v2 = 0;
LABEL_51:

  return v2;
}

- (int)_publish
{
  v109 = objc_alloc_init(VCPTimeMeasurement);
  [v109 start];
  v3 = VCPSignPostLog();
  v4 = os_signpost_id_generate(v3);

  v5 = VCPSignPostLog();
  v6 = v5;
  spid = v4;
  v107 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MADPhotosFullAssetProcessingTask_Publish", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = &_os_log_default;
    v8 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v8))
    {
      logPrefix = self->_logPrefix;
      v10 = [(NSMutableArray *)self->_assetEntries count];
      if (self->_imageOnlyAnalysis)
      {
        v11 = @"Yes";
      }

      else
      {
        v11 = @"No";
      }

      qos_class_self();
      v12 = VCPMAQoSDescription();
      *buf = 138413058;
      v131 = logPrefix;
      v132 = 1024;
      v133 = v10;
      v134 = 2112;
      v135 = v11;
      v136 = 2112;
      v137 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[%@] Persisting %d assets (imageOnly:%@) (QoS: %@)", buf, 0x26u);
    }
  }

  v13 = +[MADStateHandler sharedStateHandler];
  v14 = self->_logPrefix;
  v15 = [(NSMutableArray *)self->_assetEntries count];
  if (self->_imageOnlyAnalysis)
  {
    v16 = @"Yes";
  }

  else
  {
    v16 = @"No";
  }

  [v13 addBreadcrumb:{@"[%@] Persisting %d assets, (imageOnly:%@)", v14, v15, v16}];

  if ([(NSMutableArray *)self->_assetEntries count])
  {
    _propagateAssetProcessingStatus = [(MADPhotosFullAssetProcessingTask *)self _propagateAssetProcessingStatus];
    if (+[MADManagedPhotosAsset isMACDPersistEnabled])
    {
      v17 = VCPSignPostLog();
      v18 = os_signpost_id_generate(v17);

      v19 = VCPSignPostLog();
      v20 = v19;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MADPhotosFullAssetProcessingTask_PublishResults", "", buf, 2u);
      }

      _publishAnalysisResults = [(MADPhotosFullAssetProcessingTask *)self _publishAnalysisResults];
      if (_publishAnalysisResults)
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        v22 = self->_assetEntries;
        v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v122 objects:v129 count:16];
        if (v23)
        {
          v24 = *v123;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v123 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v122 + 1) + 8 * i);
              v27 = objc_autoreleasePoolPush();
              if (![v26 status])
              {
                [v26 setStatus:4294967278];
              }

              objc_autoreleasePoolPop(v27);
            }

            v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v122 objects:v129 count:16];
          }

          while (v23);
        }

        v28 = _propagateAssetProcessingStatus;
        if (!_propagateAssetProcessingStatus)
        {
          v28 = _publishAnalysisResults;
        }

        _propagateAssetProcessingStatus = v28;
      }

      v29 = VCPSignPostLog();
      v30 = v29;
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v18, "MADPhotosFullAssetProcessingTask_PublishResults", "", buf, 2u);
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v31 = VCPSignPostLog();
      v32 = os_signpost_id_generate(v31);

      v33 = VCPSignPostLog();
      v34 = v33;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "MADPhotosFullAssetProcessingTask_LegacyPublishResults", "", buf, 2u);
      }

      _publishAnalysisResultsToLegacyDatabase = [(MADPhotosFullAssetProcessingTask *)self _publishAnalysisResultsToLegacyDatabase];
      commit = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      v37 = _propagateAssetProcessingStatus;
      if (_propagateAssetProcessingStatus)
      {
        v38 = 1;
      }

      else
      {
        v38 = _publishAnalysisResultsToLegacyDatabase == 0;
      }

      if (!v38)
      {
        v37 = _publishAnalysisResultsToLegacyDatabase;
      }

      if (v37)
      {
        v39 = 1;
      }

      else
      {
        v39 = commit == 0;
      }

      if (!v39)
      {
        v37 = commit;
      }

      _propagateAssetProcessingStatus = v37;
      if (commit | _publishAnalysisResultsToLegacyDatabase)
      {
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v40 = self->_assetEntries;
        v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v118 objects:v128 count:16];
        if (v41)
        {
          v42 = *v119;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v119 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v118 + 1) + 8 * j);
              v45 = objc_autoreleasePoolPush();
              if (![v44 status])
              {
                [v44 setStatus:4294967278];
              }

              objc_autoreleasePoolPop(v45);
            }

            v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v118 objects:v128 count:16];
          }

          while (v41);
        }
      }

      v46 = VCPSignPostLog();
      v47 = v46;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_INTERVAL_END, v32, "MADPhotosFullAssetProcessingTask_LegacyPublishResults", "", buf, 2u);
      }
    }

    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v48 = VCPSignPostLog();
      v49 = os_signpost_id_generate(v48);

      v50 = VCPSignPostLog();
      v51 = v50;
      if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "MADPhotosFullAssetProcessingTask_PublishEmbedding", "", buf, 2u);
      }

      _publishEmbeddingResults = [(MADPhotosFullAssetProcessingTask *)self _publishEmbeddingResults];
      if (_publishEmbeddingResults)
      {
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v53 = self->_assetEntries;
        v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v114 objects:v127 count:16];
        if (v54)
        {
          v55 = *v115;
          do
          {
            for (k = 0; k != v54; k = k + 1)
            {
              if (*v115 != v55)
              {
                objc_enumerationMutation(v53);
              }

              v57 = *(*(&v114 + 1) + 8 * k);
              v58 = objc_autoreleasePoolPush();
              if (![v57 status])
              {
                [v57 setStatus:4294967278];
              }

              objc_autoreleasePoolPop(v58);
            }

            v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v114 objects:v127 count:16];
          }

          while (v54);
        }
      }

      v59 = _propagateAssetProcessingStatus;
      if (_propagateAssetProcessingStatus)
      {
        v60 = 1;
      }

      else
      {
        v60 = _publishEmbeddingResults == 0;
      }

      if (!v60)
      {
        v59 = _publishEmbeddingResults;
      }

      _propagateAssetProcessingStatus = v59;
      v61 = VCPSignPostLog();
      v62 = v61;
      if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v62, OS_SIGNPOST_INTERVAL_END, v49, "MADPhotosFullAssetProcessingTask_PublishEmbedding", "", buf, 2u);
      }
    }

    v63 = VCPSignPostLog();
    v64 = os_signpost_id_generate(v63);

    v65 = VCPSignPostLog();
    v66 = v65;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "MADPhotosFullAssetProcessingTask_PublishPhotos", "", buf, 2u);
    }

    _publishPhotosResults = [(MADPhotosFullAssetProcessingTask *)self _publishPhotosResults];
    if (_publishPhotosResults)
    {
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v68 = self->_assetEntries;
      v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v110 objects:v126 count:16];
      if (v69)
      {
        v70 = *v111;
        do
        {
          for (m = 0; m != v69; m = m + 1)
          {
            if (*v111 != v70)
            {
              objc_enumerationMutation(v68);
            }

            v72 = *(*(&v110 + 1) + 8 * m);
            v73 = objc_autoreleasePoolPush();
            if (![v72 status])
            {
              [v72 setStatus:4294967278];
            }

            objc_autoreleasePoolPop(v73);
          }

          v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v110 objects:v126 count:16];
        }

        while (v69);
      }
    }

    if (_propagateAssetProcessingStatus)
    {
      v74 = 1;
    }

    else
    {
      v74 = _publishPhotosResults == 0;
    }

    if (v74)
    {
      v75 = _propagateAssetProcessingStatus;
    }

    else
    {
      v75 = _publishPhotosResults;
    }

    v76 = VCPSignPostLog();
    v77 = v76;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_END, v64, "MADPhotosFullAssetProcessingTask_PublishPhotos", "", buf, 2u);
    }

    if (+[MADManagedPhotosAsset isMACDPersistEnabled])
    {
      v78 = VCPSignPostLog();
      v79 = os_signpost_id_generate(v78);

      v80 = VCPSignPostLog();
      v81 = v80;
      if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v81, OS_SIGNPOST_INTERVAL_BEGIN, v79, "MADPhotosFullAssetProcessingTask_PublishProcessingStatus", "", buf, 2u);
      }

      _publishProcessingStatus = [(MADPhotosFullAssetProcessingTask *)self _publishProcessingStatus];
      if (v75)
      {
        v83 = 1;
      }

      else
      {
        v83 = _publishProcessingStatus == 0;
      }

      if (!v83)
      {
        v75 = _publishProcessingStatus;
      }

      v84 = VCPSignPostLog();
      v85 = v84;
      if (v79 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_INTERVAL_END, v79, "MADPhotosFullAssetProcessingTask_PublishProcessingStatus", "", buf, 2u);
      }
    }

    if (+[VCPDatabaseWriter isLegacyPersistEnabled])
    {
      v86 = VCPSignPostLog();
      v87 = os_signpost_id_generate(v86);

      v88 = VCPSignPostLog();
      v89 = v88;
      if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v89, OS_SIGNPOST_INTERVAL_BEGIN, v87, "MADPhotosFullAssetProcessingTask_LegacyPublishProcessingStatus", "", buf, 2u);
      }

      _publishProcessingStatusToLegacyDatabase = [(MADPhotosFullAssetProcessingTask *)self _publishProcessingStatusToLegacyDatabase];
      commit2 = [(VCPDatabaseWriter *)self->_analysisDatabase commit];
      if (v75)
      {
        v92 = 1;
      }

      else
      {
        v92 = _publishProcessingStatusToLegacyDatabase == 0;
      }

      if (v92)
      {
        v93 = v75;
      }

      else
      {
        v93 = _publishProcessingStatusToLegacyDatabase;
      }

      if (v93)
      {
        v94 = 1;
      }

      else
      {
        v94 = commit2 == 0;
      }

      if (v94)
      {
        v75 = v93;
      }

      else
      {
        v75 = commit2;
      }

      v95 = VCPSignPostLog();
      v96 = v95;
      if (v87 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v96, OS_SIGNPOST_INTERVAL_END, v87, "MADPhotosFullAssetProcessingTask_LegacyPublishProcessingStatus", "", buf, 2u);
      }
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v97 = &_os_log_default;
      v98 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v98))
      {
        v99 = self->_logPrefix;
        *buf = 138412290;
        v131 = v99;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v98, "[%@] Finished persisting full analysis results to Photos", buf, 0xCu);
      }
    }

    v100 = +[MADStateHandler sharedStateHandler];
    [v100 addBreadcrumb:{@"[%@] Finished persisting %d assets", self->_logPrefix, -[NSMutableArray count](self->_assetEntries, "count")}];

    v101 = VCPSignPostLog();
    v102 = v101;
    if (v107 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v101))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v102, OS_SIGNPOST_INTERVAL_END, spid, "MADPhotosFullAssetProcessingTask_Publish", "", buf, 2u);
    }

    [v109 stop];
    [(MADPhotosFullAssetProcessingTask *)self _reportCoreAnalyticsForSession];
    v103 = +[VCPMADCoreAnalyticsManager sharedManager];
    [v109 elapsedTimeSeconds];
    [v103 accumulateDoubleValue:@"TotalPublishTimeInSeconds" forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
    v104 = VCPCoreAnalyticsFieldForFull(self->_imageOnlyAnalysis, self->_mediaType, self->_mediaSubtype, 4);
    if (v104)
    {
      [v109 elapsedTimeSeconds];
      [v103 accumulateDoubleValue:v104 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:?];
    }
  }

  else
  {
    v75 = 0;
  }

  return v75;
}

- (void)publish
{
  if (!self->_status)
  {
    self->_status = [(MADPhotosFullAssetProcessingTask *)self _publish];
  }
}

- (void)_reportCoreAnalyticsWithEntry:(id)entry
{
  entryCopy = entry;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      logPrefix = self->_logPrefix;
      asset = [entryCopy asset];
      localIdentifier = [asset localIdentifier];
      *buf = 138412546;
      v51 = logPrefix;
      v52 = 2112;
      v53 = localIdentifier;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@] Prepare to report CoreAnalytics for asset %@ ... ", buf, 0x16u);
    }
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = v9;
  if (self->_imageOnlyAnalysis)
  {
    v11 = @"ImageOnly";
  }

  else
  {
    v11 = @"Full";
  }

  [v9 setObject:v11 forKeyedSubscript:@"Activity"];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [entryCopy status] == 0);
  [v10 setObject:v12 forKeyedSubscript:@"AnalyzeSuccess"];

  asset2 = [entryCopy asset];
  vcp_typeDescription = [asset2 vcp_typeDescription];
  [v10 setObject:vcp_typeDescription forKeyedSubscript:@"AssetType"];

  [entryCopy processingInterval];
  v15 = [NSNumber numberWithDouble:?];
  [v10 setObject:v15 forKeyedSubscript:@"TimeAnalyzing"];

  asset3 = [entryCopy asset];
  if ([asset3 vcp_isLivePhoto])
  {
  }

  else
  {
    asset4 = [entryCopy asset];
    isVideo = [asset4 isVideo];

    if (!isVideo)
    {
      goto LABEL_12;
    }
  }

  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [entryCopy needDownload]);
  [v10 setObject:v19 forKeyedSubscript:@"IsStreamAnalysis"];

  asset5 = [entryCopy asset];
  isVideo2 = [asset5 isVideo];

  if (isVideo2)
  {
    asset6 = [entryCopy asset];
    [asset6 duration];
    v23 = [NSNumber numberWithDouble:?];
    [v10 setObject:v23 forKeyedSubscript:@"LengthOfMovieContentInSeconds"];
  }

LABEL_12:
  if ([entryCopy status] == -23802)
  {
    if (self->_imageOnlyAnalysis)
    {
      v24 = @"ImageOnly";
    }

    else
    {
      v24 = &stru_1002890F8;
    }

    v25 = [NSString stringWithFormat:@"%@-NoResource", v24];
    [v10 setObject:v25 forKeyedSubscript:@"AnalysisStatusExtension"];
LABEL_31:

    goto LABEL_32;
  }

  if ([entryCopy status] == -23808)
  {
    if (self->_imageOnlyAnalysis)
    {
      v26 = @"ImageOnly";
    }

    else
    {
      v26 = &stru_1002890F8;
    }

    v25 = [NSString stringWithFormat:@"%@-DownloadThrottled", v26];
    [v10 setObject:v25 forKeyedSubscript:@"AnalysisStatusExtension"];
    goto LABEL_31;
  }

  if ([entryCopy status] == -128)
  {
    if (self->_imageOnlyAnalysis)
    {
      v27 = @"ImageOnly";
    }

    else
    {
      v27 = &stru_1002890F8;
    }

    v25 = [NSString stringWithFormat:@"%@-Canceled", v27];
    [v10 setObject:v25 forKeyedSubscript:@"AnalysisStatusExtension"];
    goto LABEL_31;
  }

  if ([entryCopy status])
  {
    imageOnlyAnalysis = self->_imageOnlyAnalysis;
    status = [entryCopy status];
    v30 = &stru_1002890F8;
    if (imageOnlyAnalysis)
    {
      v30 = @"ImageOnly";
    }

    v25 = [NSString stringWithFormat:@"%@-SoftFailure-%d", v30, status];
    [v10 setObject:v25 forKeyedSubscript:@"AnalysisStatusExtension"];
    goto LABEL_31;
  }

LABEL_32:
  if ([entryCopy errorCode] >= 2 && objc_msgSend(entryCopy, "errorCode") <= 0x9F)
  {
    [entryCopy errorCode];
    v31 = MADErrorStringFromCode();
    [v10 setObject:v31 forKeyedSubscript:VCPAnalyticsFieldMADErrorCode];

    v32 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [entryCopy errorLine]);
    [v10 setObject:v32 forKeyedSubscript:VCPAnalyticsFieldMADErrorLine];
  }

  if (self->_imageOnlyAnalysis)
  {
    v33 = &off_100294698;
  }

  else
  {
    v33 = &off_1002946B0;
  }

  [v10 setObject:v33 forKeyedSubscript:@"ResourceCondition"];
  v34 = [NSNumber numberWithBool:[(MADPhotosFullAssetProcessingTask *)self doneFullAnalysis:entryCopy]];
  [v10 setObject:v34 forKeyedSubscript:@"ResourceCondition"];

  analysisResults = [entryCopy analysisResults];
  vcp_dateAnalyzed = [analysisResults vcp_dateAnalyzed];
  [vcp_dateAnalyzed timeIntervalSinceReferenceDate];
  v38 = v37;

  asset7 = [entryCopy asset];
  vcp_modificationDate = [asset7 vcp_modificationDate];
  [vcp_modificationDate timeIntervalSinceReferenceDate];
  v42 = v41;

  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [(PHPhotoLibrary *)self->_photoLibrary mad_fetchRequest];
    v44 = VCPStartTimestampKeyForTask();
    v45 = [mad_fetchRequest dataStoreValueForKey:v44];
  }

  else
  {
    analysisDatabase = self->_analysisDatabase;
    mad_fetchRequest = VCPStartTimestampKeyForTask();
    v45 = [(VCPDatabaseWriter *)analysisDatabase valueForKey:mad_fetchRequest];
  }

  v47 = v42;
  if (v45 > v42)
  {
    v47 = v45;
  }

  v48 = [NSNumber numberWithLongLong:((((v38 - v47) & ~((v38 - v47) >> 63)) * 0x1845C8A0CE512957uLL) >> 64) >> 13];
  [v10 setObject:v48 forKeyedSubscript:@"DaysWaitedBeforeAnalyzed"];

  v49 = +[VCPMADCoreAnalyticsManager sharedManager];
  [v49 sendEvent:@"com.apple.mediaanalysisd.AnalysisPerAssetInfo" withAnalytics:v10];
}

- (void)_reportCoreAnalyticsForSession
{
  v58 = +[VCPMADCoreAnalyticsManager sharedManager];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_assetEntries;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v3)
  {
    v61 = *v64;
    v60 = VCPAnalysisStickyFailureAttemptsThreshold;
    v57 = VCPAnalysisMaximumABCReportFailureAttempts;
    type = VCPLogToOSLogType[5];
    v56 = VCPLogToOSLogType[4];
    do
    {
      v62 = v3;
      for (i = 0; i != v62; i = i + 1)
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v63 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        [(MADPhotosFullAssetProcessingTask *)self increaseProcessedJobCountByOne];
        if ([v5 previousAttempts] >= v60 && objc_msgSend(v5, "previousAttempts") <= v57 && objc_msgSend(v5, "status") && objc_msgSend(v5, "status") != -128)
        {
          [v5 errorCode];
          v7 = MADErrorStringFromCode();
          v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_Line%llu", v7, [v5 errorLine]);

          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, type))
          {
            logPrefix = self->_logPrefix;
            asset = [v5 asset];
            localIdentifier = [asset localIdentifier];
            LODWORD(buf.value) = 138412802;
            *(&buf.value + 4) = logPrefix;
            LOWORD(buf.flags) = 2112;
            *(&buf.flags + 2) = localIdentifier;
            HIWORD(buf.epoch) = 2112;
            v68 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@] Asset failed processing. Failure: %@", &buf, 0x20u);
          }

          v12 = +[VCPAutoBugCapture sharedCapturer];
          asset2 = [v5 asset];
          [v12 captureProcessingFailure:v8 taskID:1 asset:asset2 previousAttempts:{objc_msgSend(v5, "previousAttempts")}];
        }

        [(MADPhotosFullAssetProcessingTask *)self _reportCoreAnalyticsWithEntry:v5];
        v14 = [(MADPhotosFullAssetProcessingTask *)self doneFullAnalysis:v5];
        asset3 = [v5 asset];
        isVideo = [asset3 isVideo];

        asset4 = [v5 asset];
        vcp_isLivePhoto = [asset4 vcp_isLivePhoto];

        asset5 = [v5 asset];
        if ([asset5 isPhoto])
        {
          asset6 = [v5 asset];
          vcp_isLivePhoto2 = [asset6 vcp_isLivePhoto];

          v22 = vcp_isLivePhoto2 ^ 1;
        }

        else
        {
          v22 = 0;
        }

        atomic_fetch_add(&qword_1002B8230, [v5 needDownload]);
        if (v14)
        {
          atomic_fetch_add(&qword_1002B8238, [v5 status] == 2);
          atomic_fetch_or(&qword_1002B8240, 0);
          atomic_fetch_add(&qword_1002B8248, [v5 status] == 3);
          atomic_fetch_or(&qword_1002B8250, 0);
          status = [v5 status];
          v24 = 0;
          v25 = isVideo;
          atomic_fetch_add(&qword_1002B8258, status == 4);
          v26 = vcp_isLivePhoto;
          v27 = v22;
        }

        else
        {
          atomic_fetch_or(&qword_1002B8238, 0);
          atomic_fetch_add(&qword_1002B8240, [v5 status] == 2);
          atomic_fetch_or(&qword_1002B8248, 0);
          atomic_fetch_add(&qword_1002B8250, [v5 status] == 3);
          atomic_fetch_or(&qword_1002B8258, 0);
          status2 = [v5 status];
          v27 = 0;
          v26 = 0;
          v25 = 0;
          v24 = status2 == 4;
        }

        atomic_fetch_add(&qword_1002B8260, v24);
        atomic_fetch_add(&qword_1002B8268, v25);
        atomic_fetch_add(&qword_1002B8270, (v14 ^ 1) & isVideo);
        atomic_fetch_add(&qword_1002B8278, v26);
        atomic_fetch_add(&qword_1002B8280, (v14 ^ 1) & vcp_isLivePhoto);
        atomic_fetch_add(&qword_1002B8288, v27);
        atomic_fetch_add(&qword_1002B8290, (v14 ^ 1) & v22);
        if (vcp_isLivePhoto)
        {
          asset7 = [v5 asset];
          photoIrisProperties = [asset7 photoIrisProperties];

          if (photoIrisProperties)
          {
            [photoIrisProperties photoIrisVideoDuration];
            Seconds = CMTimeGetSeconds(&buf);
            v32 = @"DurationOfLivePhotosAnalyzedFullResource";
            if (!v14)
            {
              v32 = @"DurationOfLivePhotosAnalyzedPartialResource";
            }

            v33 = v32;
          }

          else
          {
            Seconds = 0.0;
            if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v56))
            {
              v34 = self->_logPrefix;
              asset8 = [v5 asset];
              localIdentifier2 = [asset8 localIdentifier];
              LODWORD(buf.value) = 138412546;
              *(&buf.value + 4) = v34;
              LOWORD(buf.flags) = 2112;
              *(&buf.flags + 2) = localIdentifier2;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v56, "[%@][%@] Unable to access photoIrisProperties for live photo length", &buf, 0x16u);
            }

            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
          Seconds = 0.0;
        }

        if (isVideo)
        {
          asset9 = [v5 asset];
          [asset9 duration];
          Seconds = v38;

          v39 = @"DurationOfMoviesAnalyzedFullResource";
          if (!v14)
          {
            v39 = @"DurationOfMoviesAnalyzedPartialResource";
          }

          v40 = v39;

          v33 = v40;
        }

        if (Seconds > 0.0 && v33)
        {
          [v58 accumulateDoubleValue:v33 forField:@"com.apple.mediaanalysisd.FullAnalysisRunSession" andEvent:Seconds];
        }

        objc_autoreleasePoolPop(v6);
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v3);
  }

  v41 = atomic_load(&qword_1002B8230);
  v42 = v58;
  [v58 accumulateInt64Value:v41 forField:@"NumberOfAssetsSteamed" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v43 = atomic_load(&qword_1002B8238);
  [v42 accumulateInt64Value:v43 forField:@"NumberOfAssetsNoResourceFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v44 = atomic_load(&qword_1002B8240);
  [v42 accumulateInt64Value:v44 forField:@"NumberOfAssetsNoResourcePartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v45 = atomic_load(&qword_1002B8248);
  [v42 accumulateInt64Value:v45 forField:@"NumberOfAssetsSoftFailureFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v46 = atomic_load(&qword_1002B8250);
  [v42 accumulateInt64Value:v46 forField:@"NumberOfAssetsSoftFailurePartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v47 = atomic_load(&qword_1002B8258);
  [v42 accumulateInt64Value:v47 forField:@"NumberOfAssetsHardFailureFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v48 = atomic_load(&qword_1002B8260);
  [v42 accumulateInt64Value:v48 forField:@"NumberOfAssetsHardFailurePartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v49 = atomic_load(&qword_1002B8268);
  [v42 accumulateInt64Value:v49 forField:@"NumberOfMoviesAnalyzedFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v50 = atomic_load(&qword_1002B8270);
  [v42 accumulateInt64Value:v50 forField:@"NumberOfMoviesAnalyzedPartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v51 = atomic_load(&qword_1002B8278);
  [v42 accumulateInt64Value:v51 forField:@"NumberOfLivePhotosAnalyzedFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v52 = atomic_load(&qword_1002B8280);
  [v42 accumulateInt64Value:v52 forField:@"NumberOfLivePhotosAnalyzedPartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v53 = atomic_load(&qword_1002B8288);
  [v42 accumulateInt64Value:v53 forField:@"NumberOfPhotosAnalyzedFullResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  v54 = atomic_load(&qword_1002B8290);
  [v42 accumulateInt64Value:v54 forField:@"NumberOfPhotosAnalyzedPartialResource" andEvent:@"com.apple.mediaanalysisd.FullAnalysisRunSession"];
  atomic_store(0, &qword_1002B8230);
  atomic_store(0, &qword_1002B8238);
  atomic_store(0, &qword_1002B8240);
  atomic_store(0, &qword_1002B8248);
  atomic_store(0, &qword_1002B8250);
  atomic_store(0, &qword_1002B8258);
  atomic_store(0, &qword_1002B8260);
  atomic_store(0, &qword_1002B8268);
  atomic_store(0, &qword_1002B8270);
  atomic_store(0, &qword_1002B8278);
  atomic_store(0, &qword_1002B8280);
  atomic_store(0, &qword_1002B8288);
  atomic_store(0, &qword_1002B8290);
}

@end