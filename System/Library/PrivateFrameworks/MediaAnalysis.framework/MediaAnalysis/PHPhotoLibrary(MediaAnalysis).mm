@interface PHPhotoLibrary(MediaAnalysis)
+ (id)vcp_defaultMediaAnalysisDatabaseFilepath;
+ (id)vcp_defaultPhotoLibrary;
+ (id)vcp_defaultURL;
+ (uint64_t)mad_isProcessingNeededOnAsset:()MediaAnalysis forTaskID:;
- (BOOL)mad_calculateProgressPercentage:()MediaAnalysis totalAssetCount:progressPercentageWithFailure:taskID:phTaskID:priority:failedAssetCount:error:;
- (BOOL)vcp_anyAssetsForTaskID:()MediaAnalysis;
- (__CFString)vcp_description;
- (__CFString)vcp_libraryScaleShortDescription;
- (__CFString)vcp_mediaAnalysisDirectory;
- (id)_analysisPreferencesURL;
- (id)mad_allFacesFetchOptions;
- (id)mad_allPersonsFetchOptions;
- (id)mad_allPersonsFetchOptionsWithDetectionTypes:()MediaAnalysis andVerifiedTypes:;
- (id)mad_cloudIdentifierForLocalIdentifier:()MediaAnalysis error:;
- (id)mad_clusteredAndUnidentifiedFacesFetchOptions;
- (id)mad_clusteredFacesFetchOptions;
- (id)mad_fetchOptionsForTaskID:()MediaAnalysis;
- (id)mad_localIdentifierForCloudIdentifier:()MediaAnalysis error:;
- (id)mad_migrationDirectory;
- (id)mad_migrationStatusFilepath;
- (id)mad_restoreDirectory;
- (id)mad_restoreStatusFilepath;
- (id)mad_unclusteredFacesFetchOptions;
- (id)vcp_analysisPreferences;
- (id)vcp_faceAnalysisStateFilepath;
- (id)vcp_mediaAnalysisDatabaseFilepath;
- (id)vcp_vipModelFilepathForVIPType:()MediaAnalysis;
- (id)vcp_vipModelLastGenerationDateForVIPType:()MediaAnalysis;
- (id)vcp_visionCacheStorageDirectoryURL;
- (uint64_t)mad_countOfUnclusteredFaces;
- (uint64_t)mad_countOfUnprocessedAssetsForTaskID:()MediaAnalysis cancelBlock:extendTimeoutBlock:error:;
- (uint64_t)mad_faceProcessingInternalVersion;
- (uint64_t)mad_performChangesAndWait:()MediaAnalysis activity:cancelBlock:extendTimeoutBlock:error:;
- (uint64_t)vcp_allowsCloudLibraryResourceDownload;
- (uint64_t)vcp_assetCountForTaskID:()MediaAnalysis withPriority:;
- (uint64_t)vcp_assetCountWithInternalPredicate:()MediaAnalysis forTaskID:;
- (uint64_t)vcp_assetCountWithMediaType:()MediaAnalysis forTaskID:;
- (uint64_t)vcp_isCPLDownloadComplete;
- (uint64_t)vcp_isCPLSyncComplete;
- (uint64_t)vcp_libraryScale;
- (uint64_t)vcp_pecFailureVersionAssetCountWithPriority:()MediaAnalysis;
- (uint64_t)vcp_processedAssetCountForTaskID:()MediaAnalysis withPriority:;
- (uint64_t)vcp_requiredFaceLibraryProcessingSubTasks;
- (uint64_t)vcp_requiresDownloadForTask:()MediaAnalysis;
- (uint64_t)vcp_requiresProcessingForTask:()MediaAnalysis;
- (uint64_t)vcp_supportsCloudLibraryResourceDownload;
- (void)_mad_markAsProcessedByTask:()MediaAnalysis forAsset:;
- (void)_updateAnalysisPreferencesWithEntries:()MediaAnalysis keysToRemove:;
- (void)mad_markAsProcessedByTask:()MediaAnalysis forAssets:cancelBlock:extendTimeoutBlock:;
- (void)vcp_setAnalysisPreferencesValue:()MediaAnalysis forKey:;
@end

@implementation PHPhotoLibrary(MediaAnalysis)

+ (id)vcp_defaultPhotoLibrary
{
  v0 = +[VCPDefaultPhotoLibraryManager sharedManager];
  defaultPhotoLibrary = [v0 defaultPhotoLibrary];

  return defaultPhotoLibrary;
}

- (id)vcp_visionCacheStorageDirectoryURL
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if ([processName isEqualToString:@"mediaanalysisd"])
  {
    v23 = 0;
    v4 = [selfCopy urlForApplicationDataFolderIdentifier:2 error:&v23];
    v5 = v23;
    if (v4)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        photoLibraryURL = [selfCopy photoLibraryURL];
        *buf = 138412546;
        v25 = v4;
        v26 = 2112;
        v27 = photoLibraryURL;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Retrieving VisionCache directory URL %@ for %@", buf, 0x16u);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = v5;
      v8 = [defaultManager createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v22];
      v9 = v22;

      if ((v8 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL2 = [selfCopy photoLibraryURL];
        *buf = 138412802;
        v25 = v4;
        v26 = 2112;
        v27 = photoLibraryURL2;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VisionCache directory (%@) for %@ - %@", buf, 0x20u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL3 = [selfCopy photoLibraryURL];
        *buf = 138412546;
        v25 = photoLibraryURL3;
        v26 = 2112;
        v27 = v5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid VisionCache directory for %@ - %@", buf, 0x16u);
      }

      v9 = v5;
    }
  }

  else if ([processName isEqualToString:@"mediaanalysisd-service"])
  {
    if ([selfCopy isSystemPhotoLibrary])
    {
      v21 = 0;
      v4 = [selfCopy urlForApplicationDataFolderIdentifier:2 error:&v21];
      v11 = v21;
      if (!v4 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        photoLibraryURL4 = [selfCopy photoLibraryURL];
        *buf = 138412546;
        v25 = photoLibraryURL4;
        v26 = 2112;
        v27 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Invalid VisionCache directory for %@ - %@", buf, 0x16u);
      }
    }

    else
    {
      photoLibraryURL5 = [selfCopy photoLibraryURL];
      v4 = [photoLibraryURL5 URLByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision"];
    }
  }

  else
  {
    service = [MEMORY[0x1E69AE3E0] service];
    photoLibraryURL6 = [selfCopy photoLibraryURL];
    v20 = 0;
    v4 = [service requestApplicationDataFolderIdentifierVisionServiceWithPhotosLibraryURL:photoLibraryURL6 error:&v20];
    v15 = v20;

    if (!v4 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      photoLibraryURL7 = [selfCopy photoLibraryURL];
      *buf = 138412546;
      v25 = photoLibraryURL7;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to query VisionCache storage %@ - %@", buf, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (__CFString)vcp_mediaAnalysisDirectory
{
  photoLibraryURL = [self photoLibraryURL];
  if (photoLibraryURL)
  {
    if ([self isSystemPhotoLibrary])
    {
      v3 = @"/var/mobile/Media/MediaAnalysis";
    }

    else
    {
      path = [photoLibraryURL path];
      v3 = [path stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)vcp_defaultURL
{
  vcp_defaultPhotoLibrary = [objc_opt_class() vcp_defaultPhotoLibrary];
  photoLibraryURL = [vcp_defaultPhotoLibrary photoLibraryURL];

  return photoLibraryURL;
}

+ (id)vcp_defaultMediaAnalysisDatabaseFilepath
{
  vcp_defaultPhotoLibrary = [objc_opt_class() vcp_defaultPhotoLibrary];
  vcp_mediaAnalysisDatabaseFilepath = [vcp_defaultPhotoLibrary vcp_mediaAnalysisDatabaseFilepath];

  return vcp_mediaAnalysisDatabaseFilepath;
}

+ (uint64_t)mad_isProcessingNeededOnAsset:()MediaAnalysis forTaskID:
{
  v5 = a3;
  mad_isShared = [v5 mad_isShared];
  if (a4 == 2)
  {
    v7 = mad_isShared;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0 && (a4 <= 0x10 && ((1 << a4) & 0x1140E) != 0 || a4 == 255))
  {
    v8 = [MEMORY[0x1E69789B0] additionalCheckForProcessingNeededForAsset:v5 taskID:PHMediaProcessingTaskIDForVCPTaskID(a4) priority:0];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)vcp_mediaAnalysisDatabaseFilepath
{
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  v2 = vcp_mediaAnalysisDirectory;
  if (vcp_mediaAnalysisDirectory)
  {
    v3 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@"mediaanalysis.db"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mad_restoreDirectory
{
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  v2 = vcp_mediaAnalysisDirectory;
  if (vcp_mediaAnalysisDirectory)
  {
    v3 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@".restore"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mad_restoreStatusFilepath
{
  mad_restoreDirectory = [self mad_restoreDirectory];
  v2 = mad_restoreDirectory;
  if (mad_restoreDirectory)
  {
    v3 = [mad_restoreDirectory stringByAppendingPathComponent:@"restore_status.plist"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mad_migrationDirectory
{
  vcp_mediaAnalysisDirectory = [self vcp_mediaAnalysisDirectory];
  v2 = vcp_mediaAnalysisDirectory;
  if (vcp_mediaAnalysisDirectory)
  {
    v3 = [vcp_mediaAnalysisDirectory stringByAppendingPathComponent:@".migration"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mad_migrationStatusFilepath
{
  mad_migrationDirectory = [self mad_migrationDirectory];
  v2 = mad_migrationDirectory;
  if (mad_migrationDirectory)
  {
    v3 = [mad_migrationDirectory stringByAppendingPathComponent:@"migration_status.plist"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)vcp_anyAssetsForTaskID:()MediaAnalysis
{
  v3 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self forTaskID:a3];
  [v3 setShouldPrefetchCount:1];
  [v3 setFetchLimit:1];
  v4 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v3];
  v5 = [v4 count] != 0;

  return v5;
}

- (uint64_t)vcp_assetCountForTaskID:()MediaAnalysis withPriority:
{
  if (a3 == 10)
  {
    [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
    v7 = v9;
  }

  else
  {
    v7 = 0.0;
    if (a3 == 3)
    {
      [MEMORY[0x1E6978628] mad_peopleThreshold];
      v7 = v8;
    }
  }

  v10 = PHMediaProcessingTaskIDForVCPTaskID(a3);
  v13 = 0;
  *&v11 = v7;
  return [self countOfAllAssetsForMediaProcessingTaskID:v10 priority:a4 sceneConfidenceThreshold:&v13 error:v11];
}

- (uint64_t)vcp_processedAssetCountForTaskID:()MediaAnalysis withPriority:
{
  v7 = 0.0;
  if (a3 == 16)
  {
    v9 = [self vcp_pecFailureVersionAssetCountWithPriority:a4];
  }

  else if (a3 == 10)
  {
    [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
    v9 = 0;
    v7 = v10;
  }

  else
  {
    if (a3 == 3)
    {
      [MEMORY[0x1E6978628] mad_peopleThreshold];
      v7 = v8;
    }

    v9 = 0;
  }

  v11 = PHMediaProcessingTaskIDForVCPTaskID(a3);
  v12 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:self];
  v16 = 0;
  *&v13 = v7;
  v14 = [self countOfProcessedAssetsForMediaProcessingTaskID:v11 priority:a4 algorithmVersion:v12 sceneConfidenceThreshold:&v16 error:v13] - v9;

  return v14;
}

- (uint64_t)vcp_pecFailureVersionAssetCountWithPriority:()MediaAnalysis
{
  v5 = objc_alloc_init(MEMORY[0x1E69788E8]);
  [v5 setVaAnalysisVersion:VCPPhotosPECProcessingVersion_Failures];
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:16];
  v8 = 0;
  v6 = [self countOfProcessedAssetsForMediaProcessingTaskID:16 priority:a3 algorithmVersion:v5 sceneConfidenceThreshold:&v8 error:?];

  return v6;
}

- (uint64_t)vcp_assetCountWithMediaType:()MediaAnalysis forTaskID:
{
  v4 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:self forTaskID:?];
  [v4 setShouldPrefetchCount:1];
  v5 = [MEMORY[0x1E6978628] fetchAssetsWithMediaType:a3 options:v4];
  v6 = [v5 count];

  return v6;
}

- (uint64_t)vcp_assetCountWithInternalPredicate:()MediaAnalysis forTaskID:
{
  v16[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [self fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(a4) priority:0 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:0 error:0.0];
  [v7 setShouldPrefetchCount:1];
  if (a4 == 16 || a4 == 12)
  {
    [v7 setPredicate:0];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    [v7 setInternalPredicate:v8];
  }

  else
  {
    if (a4 != 10)
    {
      goto LABEL_7;
    }

    [v7 setPredicate:0];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype != %d", 1];
    [v7 setInternalPredicate:v8];
  }

LABEL_7:
  internalPredicate = [v7 internalPredicate];
  v10 = internalPredicate;
  if (internalPredicate)
  {
    v16[0] = v6;
    v16[1] = internalPredicate;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v11];
    [v7 setInternalPredicate:v12];
  }

  else
  {
    [v7 setInternalPredicate:v6];
  }

  v13 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v7];
  v14 = [v13 count];

  return v14;
}

- (BOOL)mad_calculateProgressPercentage:()MediaAnalysis totalAssetCount:progressPercentageWithFailure:taskID:phTaskID:priority:failedAssetCount:error:
{
  v42 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:a6];
  v18 = v17;
  v33 = 0;
  v32 = [self countOfAllAssetsForMediaProcessingTaskID:a7 priority:a8 sceneConfidenceThreshold:&v33 error:?];
  v19 = v33;
  if (v19)
  {
    v20 = v19;
    if (a10)
    {
      *a10 = [v19 copy];
    }

    if (a3)
    {
      *a3 = 0;
    }

    v21 = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:self];
    LODWORD(v22) = v18;
    v31 = [self countOfProcessedAssetsForMediaProcessingTaskID:a7 priority:a8 algorithmVersion:v22 sceneConfidenceThreshold:? error:?];
    v20 = 0;
    if (a6 == 16)
    {
      v31 -= [self vcp_pecFailureVersionAssetCountWithPriority:a8];
    }

    v21 = v20 == 0;
    if (v20)
    {
      if (a10)
      {
        *a10 = [v20 copy];
      }

      if (a3)
      {
        *a3 = 0;
      }

      v23 = v30;
      if (a5)
      {
        *a5 = 0;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = v32;
      }

      if (a3)
      {
        v24 = v32 ? 100 * v31 / v32 : 0;
        *a3 = v24;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v25 = *a3;
          *buf = 67109888;
          v35 = v25;
          v36 = 1024;
          v37 = a6;
          v38 = 1024;
          v39 = a7;
          v40 = 1024;
          v41 = a8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Progress percentage %d for task-%d, phTask-%d, priority-%d", buf, 0x1Au);
        }
      }

      v23 = v30;
      if (a5)
      {
        if (v32)
        {
          v26 = v31 + a9;
          if (v32 < v31 + a9)
          {
            v26 = v32;
          }

          v27 = 100 * v26 / v32;
        }

        else
        {
          v27 = 0;
        }

        *a5 = v27;
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v28 = *a5;
          *buf = 67109888;
          v35 = v28;
          v36 = 1024;
          v37 = a6;
          v38 = 1024;
          v39 = a7;
          v40 = 1024;
          v41 = a8;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Progress percentage with failure %d for task-%d, phTask-%d, priority-%d", buf, 0x1Au);
        }
      }
    }
  }

  return v21;
}

- (uint64_t)vcp_isCPLSyncComplete
{
  cplStatus = [self cplStatus];
  lastSuccessfulSyncDate = [cplStatus lastSuccessfulSyncDate];
  if (lastSuccessfulSyncDate)
  {
    isExceedingQuota = 1;
  }

  else
  {
    cplStatus2 = [self cplStatus];
    isExceedingQuota = [cplStatus2 isExceedingQuota];
  }

  return isExceedingQuota;
}

- (uint64_t)vcp_isCPLDownloadComplete
{
  cplStatus = [self cplStatus];
  lastCompletePrefetchDate = [cplStatus lastCompletePrefetchDate];
  if (lastCompletePrefetchDate)
  {
    isExceedingQuota = 1;
  }

  else
  {
    cplStatus2 = [self cplStatus];
    isExceedingQuota = [cplStatus2 isExceedingQuota];
  }

  return isExceedingQuota;
}

- (uint64_t)vcp_supportsCloudLibraryResourceDownload
{
  if ([self isCloudPhotoLibraryEnabled])
  {
    return 1;
  }

  return [self vcp_isSyndicationLibrary];
}

- (uint64_t)vcp_allowsCloudLibraryResourceDownload
{
  if (![self vcp_supportsCloudLibraryResourceDownload])
  {
    return 0;
  }

  v1 = +[VCPInternetReachability sharedInstance];
  hasWifiOrEthernetConnection = [v1 hasWifiOrEthernetConnection];

  return hasWifiOrEthernetConnection;
}

- (uint64_t)vcp_libraryScale
{
  v2 = [self vcp_assetCountWithMediaType:1 forTaskID:1];
  v3 = [self vcp_assetCountWithMediaType:2 forTaskID:1];
  if (v3 >= 0x7D0 || v2 >= 0x7D0)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (v3 >> 3 >= 0x271 || v2 >> 3 >= 0x271)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

- (__CFString)vcp_libraryScaleShortDescription
{
  v6 = *MEMORY[0x1E69E9840];
  vcp_libraryScale = [self vcp_libraryScale];
  if ((vcp_libraryScale - 1) < 3)
  {
    return off_1E834D988[vcp_libraryScale - 1];
  }

  v3 = vcp_libraryScale;
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown library scale %lu", &v4, 0xCu);
  }

  return @"L";
}

- (id)mad_cloudIdentifierForLocalIdentifier:()MediaAnalysis error:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [self cloudIdentifierMappingsForLocalIdentifiers:v7];

  v9 = [v8 objectForKeyedSubscript:v6];
  cloudIdentifier = [v9 cloudIdentifier];
  stringValue = [cloudIdentifier stringValue];

  if (a4 && !stringValue)
  {
    error = [v9 error];
    *a4 = [error copy];
  }

  return stringValue;
}

- (id)mad_localIdentifierForCloudIdentifier:()MediaAnalysis error:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E6978730]) initWithStringValue:v6];
  v15[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v9 = [self localIdentifierMappingsForCloudIdentifiers:v8];

  v10 = [v9 objectForKeyedSubscript:v7];
  localIdentifier = [v10 localIdentifier];
  v12 = localIdentifier;
  if (a4 && !localIdentifier)
  {
    error = [v10 error];
    *a4 = [error copy];
  }

  return v12;
}

- (void)_mad_markAsProcessedByTask:()MediaAnalysis forAsset:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    adjustmentVersion = [v6 adjustmentVersion];

    if (adjustmentVersion)
    {
      v9 = [MEMORY[0x1E6978640] changeRequestForAsset:v7];
      if (a3 <= 9)
      {
        if (a3 == 1)
        {
          if (+[VCPVideoCaptionAnalyzer mode]== 1)
          {
            [v9 setGeneratedAssetDescription:&stru_1F496CB30 analysisVersion:73 sourceType:2];
          }

          [v9 setMediaAnalysisVersion:75];
          if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
          {
            [v9 setVideoEmbeddingVersion:75];
          }

          goto LABEL_32;
        }

        if (a3 == 2)
        {
          v17 = VCPPhotosSceneProcessingVersionInternal();
          adjustmentVersion2 = [v7 adjustmentVersion];
          [v9 setSceneClassifications:0 ofType:0 version:v17 timestamp:adjustmentVersion2];

          if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
          {
            [v9 setImageEmbeddingVersion:75];
          }

          goto LABEL_32;
        }

        if (a3 != 3)
        {
          goto LABEL_26;
        }

        [v9 setFaceAnalysisVersion:{objc_msgSend(self, "mad_faceProcessingInternalVersion")}];
        faceAdjustmentVersion = [v7 faceAdjustmentVersion];
        [v9 setFaceAdjustmentVersion:faceAdjustmentVersion];
      }

      else if (a3 > 15)
      {
        if (a3 != 16)
        {
          if (a3 == 255)
          {
            if (+[VCPVideoCaptionAnalyzer mode]== 1)
            {
              [v9 setGeneratedAssetDescription:&stru_1F496CB30 analysisVersion:73 sourceType:1];
            }

            [v9 setMediaAnalysisImageVersion:75];
            if ([v7 mad_isNonLivePhotoImage])
            {
              [v9 setMediaAnalysisVersion:75];
            }

            goto LABEL_32;
          }

          goto LABEL_26;
        }

        faceAdjustmentVersion = [v7 adjustmentVersion];
        [v9 setSceneClassifications:0 ofType:5 version:5 timestamp:faceAdjustmentVersion];
      }

      else
      {
        if (a3 != 10)
        {
          if (a3 == 12)
          {
            v10 = VCPPhotosVisualSearchAlgorithmVersion();
            adjustmentVersion3 = [v7 adjustmentVersion];
            [v9 setVisualSearchData:0 algorithmVersion:v10 adjustmentVersion:adjustmentVersion3];

            [v9 setStickerConfidenceScore:1 stickerAlgorithmVersion:0.0];
LABEL_32:

            goto LABEL_33;
          }

LABEL_26:
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v15 = objc_opt_class();
            localIdentifier = [v7 localIdentifier];
            v19 = 138412802;
            v20 = v15;
            v21 = 2112;
            v22 = localIdentifier;
            v23 = 2048;
            v24 = a3;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@][%@] Unsupported taskID %lu", &v19, 0x20u);
          }

          goto LABEL_32;
        }

        faceAdjustmentVersion = [v7 adjustmentVersion];
        [v9 setCharacterRecognitionData:0 machineReadableCodeData:0 algorithmVersion:8 adjustmentVersion:faceAdjustmentVersion];
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      localIdentifier2 = [v7 localIdentifier];
      creationDate = [v7 creationDate];
      [(PHPhotoLibrary(MediaAnalysis) *)localIdentifier2 _mad_markAsProcessedByTask:creationDate forAsset:&v19];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [PHPhotoLibrary(MediaAnalysis) _mad_markAsProcessedByTask:forAsset:];
  }

LABEL_33:
}

- (void)mad_markAsProcessedByTask:()MediaAnalysis forAssets:cancelBlock:extendTimeoutBlock:
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v28 = [v10 count];
    v29 = 2048;
    v30 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Started marking %lu assets as processed for taskID %lu", buf, 0x16u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__PHPhotoLibrary_MediaAnalysis__mad_markAsProcessedByTask_forAssets_cancelBlock_extendTimeoutBlock___block_invoke;
  v23[3] = &unk_1E834D7D0;
  v13 = v10;
  v24 = v13;
  selfCopy = self;
  v26 = a3;
  v22 = 0;
  v14 = [self mad_performChangesAndWait:v23 activity:a3 cancelBlock:v11 extendTimeoutBlock:v12 error:&v22];
  v15 = v22;
  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 count];
      *buf = 134218240;
      v28 = v16;
      v29 = 2048;
      v30 = a3;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "Successfully marked %lu assets as processed for taskID %lu";
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 22;
LABEL_11:
      _os_log_impl(&dword_1C9B70000, v17, v19, v18, buf, v20);
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [v13 count];
    *buf = 134218498;
    v28 = v21;
    v29 = 2048;
    v30 = a3;
    v31 = 2112;
    v32 = v15;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "Failed to mark %lu assets as processed for taskID %lu :%@";
    v19 = OS_LOG_TYPE_ERROR;
    v20 = 32;
    goto LABEL_11;
  }
}

- (uint64_t)mad_performChangesAndWait:()MediaAnalysis activity:cancelBlock:extendTimeoutBlock:error:
{
  v97[1] = *MEMORY[0x1E69E9840];
  v60 = a3;
  v10 = a5;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__PHPhotoLibrary_MediaAnalysis__mad_performChangesAndWait_activity_cancelBlock_extendTimeoutBlock_error___block_invoke;
  aBlock[3] = &unk_1E834D560;
  v58 = v10;
  v84 = v58;
  v59 = v11;
  v85 = v59;
  v12 = _Block_copy(aBlock);
  v13 = VCPSignPostPersistentLog();
  spid = os_signpost_id_generate(v13);

  v14 = VCPSignPostPersistentLog();
  v15 = v14;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PhotosPersistence", " enableTelemetry=YES ", buf, 2u);
  }

  v16 = [MEMORY[0x1E695DF00] now];
  v56 = v16;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PhotosDBPersistence] Starting ...", buf, 2u);
  }

  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  *buf = 0;
  v74 = buf;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__22;
  v77 = __Block_byref_object_dispose__22;
  v78 = 0;
  v17 = dispatch_semaphore_create(0);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __105__PHPhotoLibrary_MediaAnalysis__mad_performChangesAndWait_activity_cancelBlock_extendTimeoutBlock_error___block_invoke_672;
  v71[3] = &unk_1E834D918;
  v57 = v60;
  v72 = v57;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __105__PHPhotoLibrary_MediaAnalysis__mad_performChangesAndWait_activity_cancelBlock_extendTimeoutBlock_error___block_invoke_673;
  v66[3] = &unk_1E834D940;
  v18 = v16;
  v67 = v18;
  v69 = &v79;
  v70 = buf;
  v19 = v17;
  v68 = v19;
  [self performChanges:v71 completionHandler:{v66, v56}];
  v20 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v21 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v19, v21))
    {
      v27 = 0;
      goto LABEL_25;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v86 = 0;
      _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_DEBUG, "[PhotosDBPersistence][Thread] Waiting ...", v86, 2u);
    }

    if (v12 && v12[2](v12))
    {
      break;
    }

    [v18 timeIntervalSinceNow];
    if (v22 < -300.0)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v86 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosDBPersistence][Thread] Timeout while waiting", v86, 2u);
      }

      v23 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A578];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PhotosDBPersistence][Thread] Timeout while waiting"];
      v95 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      v26 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v25];
      goto LABEL_24;
    }
  }

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v86 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosDBPersistence][Thread] Canceled while waiting", v86, 2u);
  }

  v28 = MEMORY[0x1E696ABC0];
  v96 = *MEMORY[0x1E696A578];
  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[PhotosDBPersistence][Thread] Canceled while waiting"];
  v97[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v26 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v25];
LABEL_24:
  v27 = v26;

LABEL_25:
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v86 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosDBPersistence][Thread] Returning ...", v86, 2u);
  }

  [v18 timeIntervalSinceNow];
  v30 = -v29;
  if (v27)
  {
    if (a7)
    {
      *a7 = [v27 copy];
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v86 = 134218242;
      v87 = v30;
      v88 = 2112;
      v89 = v27;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "[PhotosDBPersistence] Finished with failures after %.2f seconds - %@";
LABEL_43:
      v33 = OS_LOG_TYPE_ERROR;
      v34 = 22;
LABEL_44:
      _os_log_impl(&dword_1C9B70000, v31, v33, v32, v86, v34);
    }
  }

  else
  {
    if (v80[3])
    {
      if (MediaAnalysisLogLevel() < 6 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        goto LABEL_45;
      }

      *v86 = 134217984;
      v87 = v30;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "[PhotosDBPersistence] Finished with success after %.2f seconds";
      v33 = OS_LOG_TYPE_INFO;
      v34 = 12;
      goto LABEL_44;
    }

    if (a7)
    {
      *a7 = [*(v74 + 5) copy];
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = *(v74 + 5);
      *v86 = 134218242;
      v87 = v30;
      v88 = 2112;
      v89 = v35;
      v31 = MEMORY[0x1E69E9C10];
      v32 = "[PhotosDBPersistence] Finished with failures after %.2f seconds - %@";
      goto LABEL_43;
    }
  }

LABEL_45:
  v64 = -1;
  v65 = -1;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    mad_fetchRequest = [self mad_fetchRequest];
    [mad_fetchRequest fetchAssetCountForTaskID:a4 totalAssets:&v65 processedAssets:&v64];

    mad_fetchRequest2 = [self mad_fetchRequest];
    v38 = [mad_fetchRequest2 dataStoreValueForKey:@"OSVersionUpdateTimestamp"];
  }

  else
  {
    mad_fetchRequest2 = [VCPDatabaseReader databaseForPhotoLibrary:self];
    [mad_fetchRequest2 countAssetsForTaskID:a4 totalAssets:&v65 processedAssets:&v64];
    v38 = [mad_fetchRequest2 valueForKey:@"OSVersionUpdateTimestamp"];
  }

  v39 = v38;

  if (v39)
  {
    v40 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v39];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v42 = [MEMORY[0x1E695DF00] now];
    v43 = [currentCalendar components:16 fromDate:v40 toDate:v42 options:0];
    v44 = [v43 day];
  }

  else
  {
    v44 = -1;
  }

  v45 = VCPSignPostPersistentLog();
  v46 = v45;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    v47 = VCPTaskIDDescription(a4);
    v48 = v47;
    uTF8String = [v47 UTF8String];
    v50 = qos_class_self();
    v51 = VCPMAQoSDescription(v50);
    v52 = v51;
    uTF8String2 = [v51 UTF8String];
    *v86 = 136446978;
    v87 = *&uTF8String;
    v88 = 2082;
    v89 = uTF8String2;
    v90 = 2050;
    v91 = v65;
    v92 = 2050;
    v93 = v44;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_END, spid, "PhotosPersistence", "Activity=%{public, signpost.telemetry:string1}s QoS=%{public, signpost.telemetry:string2}s LibrarySize=%{public, signpost.telemetry:number1}lld DaysSinceOSUpdate=%{public, signpost.telemetry:number2}lld  enableTelemetry=YES ", v86, 0x2Au);
  }

  v54 = *(v80 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v79, 8);
  return v54 & 1;
}

- (uint64_t)mad_countOfUnprocessedAssetsForTaskID:()MediaAnalysis cancelBlock:extendTimeoutBlock:error:
{
  v79[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__PHPhotoLibrary_MediaAnalysis__mad_countOfUnprocessedAssetsForTaskID_cancelBlock_extendTimeoutBlock_error___block_invoke;
  aBlock[3] = &unk_1E834D560;
  v43 = v8;
  v68 = v43;
  v44 = v9;
  v69 = v44;
  v10 = _Block_copy(aBlock);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__22;
  v65 = __Block_byref_object_dispose__22;
  v66 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  queue = dispatch_queue_create("com.apple.mediaanalysisd.UnprocessedAssetCountFetch", 0);
  v42 = dispatch_semaphore_create(0);
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:a3];
  v12 = v11;
  v41 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:self];
  v49 = [MEMORY[0x1E695DF00] now];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__PHPhotoLibrary_MediaAnalysis__mad_countOfUnprocessedAssetsForTaskID_cancelBlock_extendTimeoutBlock_error___block_invoke_2;
  block[3] = &unk_1E834D968;
  v53 = &v57;
  block[4] = self;
  v55 = a3;
  v56 = v12;
  v45 = v41;
  v51 = v45;
  v54 = &v61;
  v13 = v42;
  v52 = v13;
  dispatch_async(queue, block);
  v14 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v15 = dispatch_time(0, 5000000000);
    if (!dispatch_semaphore_wait(v13, v15))
    {
      break;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      selfCopy = self;
      v17 = objc_opt_class();
      *buf = 138412290;
      v71 = v17;
      v18 = v17;
      _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_DEBUG, "[%@][mad_countOfUnprocessedAssetsForTaskID] Waiting ...", buf, 0xCu);

      self = selfCopy;
    }

    if (v10[2](v10))
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138412290;
        v71 = v26;
        v27 = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][mad_countOfUnprocessedAssetsForTaskID] Canceled while waiting", buf, 0xCu);
      }

      v28 = MEMORY[0x1E696ABC0];
      v78 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][mad_countOfUnprocessedAssetsForTaskID] Canceled while waiting", objc_opt_class()];
      v79[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      v25 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v24];
LABEL_16:
      v29 = v25;

      if (v29)
      {
        if (a6)
        {
          *a6 = [v29 copy];
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          *buf = 138412802;
          v71 = v30;
          v72 = 1024;
          v73 = a3;
          v74 = 2112;
          v75 = v29;
          v31 = v30;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@][mad_countOfUnprocessedAssetsForTaskID] Failed to fetch assets count for taskID: %u, %@", buf, 0x1Cu);
        }

        goto LABEL_32;
      }

      break;
    }

    [v49 timeIntervalSinceNow];
    if (v19 < -300.0)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138412290;
        v71 = v20;
        v21 = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@][mad_countOfUnprocessedAssetsForTaskID] Timeout while waiting", buf, 0xCu);
      }

      v22 = MEMORY[0x1E696ABC0];
      v76 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@][mad_countOfUnprocessedAssetsForTaskID] Timeout while waiting", objc_opt_class()];
      v77 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v25 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v24];
      goto LABEL_16;
    }
  }

  v32 = v62[5];
  if (v32)
  {
    if (a6)
    {
      *a6 = [v32 copy];
    }

    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      v34 = v62[5];
      *buf = 138412802;
      v71 = v33;
      v72 = 1024;
      v73 = a3;
      v74 = 2112;
      v75 = v34;
      v35 = v33;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@][mad_countOfUnprocessedAssetsForTaskID] Failed to fetch assets count for taskID: %u, %@", buf, 0x1Cu);
    }
  }

  else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v36 = objc_opt_class();
    v37 = v58[3];
    *buf = 138412802;
    v71 = v36;
    v72 = 1024;
    v73 = v37;
    v74 = 1024;
    LODWORD(v75) = a3;
    v38 = v36;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@][mad_countOfUnprocessedAssetsForTaskID] Finished fetching %u unprocessed assets count for taskID: %u", buf, 0x18u);
  }

  v29 = 0;
LABEL_32:
  v39 = v58[3];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v61, 8);

  return v39;
}

- (id)mad_fetchOptionsForTaskID:()MediaAnalysis
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v4 = [self fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(a3) priority:0 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:&v7 error:0.0];
  v5 = v7;
  if (v5 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[mad_fetchOptionsForTaskID] Failed to create fetch options for taskID %d: %@", buf, 0x12u);
  }

  return v4;
}

- (id)_analysisPreferencesURL
{
  vcp_visionCacheStorageDirectoryURL = [self vcp_visionCacheStorageDirectoryURL];
  v2 = [vcp_visionCacheStorageDirectoryURL URLByAppendingPathComponent:@"PhotoAnalysisServicePreferences.plist"];

  return v2;
}

- (id)vcp_analysisPreferences
{
  _analysisPreferencesURL = [self _analysisPreferencesURL];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_analysisPreferencesURL)
  {
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:_analysisPreferencesURL];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)_updateAnalysisPreferencesWithEntries:()MediaAnalysis keysToRemove:
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _analysisPreferencesURL = [self _analysisPreferencesURL];
  if (_analysisPreferencesURL)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    vcp_analysisPreferences = [selfCopy vcp_analysisPreferences];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([vcp_analysisPreferences count])
    {
      [dictionary addEntriesFromDictionary:vcp_analysisPreferences];
    }

    if ([v6 count])
    {
      [dictionary addEntriesFromDictionary:v6];
    }

    if ([v7 count])
    {
      [dictionary removeObjectsForKeys:v7];
    }

    if (([dictionary isEqual:vcp_analysisPreferences] & 1) == 0)
    {
      v18 = 0;
      v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:&v18];
      v13 = v18;
      v14 = v13;
      if (v12)
      {
        v17 = v13;
        v15 = [v12 writeToURL:_analysisPreferencesURL options:1073741825 error:&v17];
        v16 = v17;

        if ((v15 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = selfCopy;
          v21 = 2112;
          v22 = v16;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to write library analysis preferences for %@: %@", buf, 0x16u);
        }

        v14 = v16;
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = selfCopy;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize library analysis preferences for %@: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)vcp_setAnalysisPreferencesValue:()MediaAnalysis forKey:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v13 = v7;
      v14[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [self _updateAnalysisPreferencesWithEntries:v9 keysToRemove:0];
    }

    else
    {
      v12 = v7;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
      [self _updateAnalysisPreferencesWithEntries:0 keysToRemove:v10];
    }
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Key for setLibraryAnalysisPreferencesValue is nil", v11, 2u);
  }
}

- (id)vcp_vipModelFilepathForVIPType:()MediaAnalysis
{
  v15 = *MEMORY[0x1E69E9840];
  if ([self vcp_isSyndicationLibrary])
  {
    vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    vcp_visionCacheStorageDirectoryURL = [vcp_defaultPhotoLibrary vcp_visionCacheStorageDirectoryURL];
    absoluteURL = [vcp_visionCacheStorageDirectoryURL absoluteURL];
  }

  else
  {
    vcp_defaultPhotoLibrary = [self vcp_visionCacheStorageDirectoryURL];
    absoluteURL = [vcp_defaultPhotoLibrary absoluteURL];
  }

  if (a3 == 1)
  {
    path = [absoluteURL path];
    v9 = +[VCPFaceIDModel petVIPModelFileName];
    v10 = [path stringByAppendingPathComponent:v9];
    goto LABEL_8;
  }

  if (!a3)
  {
    path = [absoluteURL path];
    v9 = +[VCPFaceIDModel personVIPModelFileName];
    v10 = [path stringByAppendingPathComponent:v9];
LABEL_8:
    v11 = v10;

    goto LABEL_13;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch VIP model file path with unknown VCPMAVIPType (%lu)", &v13, 0xCu);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)vcp_vipModelLastGenerationDateForVIPType:()MediaAnalysis
{
  v12 = *MEMORY[0x1E69E9840];
  vcp_analysisPreferences = [self vcp_analysisPreferences];
  v5 = vcp_analysisPreferences;
  if (a3 == 1)
  {
    v6 = [vcp_analysisPreferences objectForKeyedSubscript:@"PetIDModelLastGenerationKey"];
    if (!v6)
    {
LABEL_11:
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      goto LABEL_12;
    }

LABEL_6:
    distantPast = v6;
LABEL_12:
    v8 = distantPast;

    goto LABEL_13;
  }

  if (!a3)
  {
    v6 = [vcp_analysisPreferences objectForKeyedSubscript:@"FaceIDModelLastGenerationKey"];
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to fetch VIP model last generation date with unknown VCPMAVIPType (%lu)", &v10, 0xCu);
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)vcp_faceAnalysisStateFilepath
{
  vcp_visionCacheStorageDirectoryURL = [self vcp_visionCacheStorageDirectoryURL];
  absoluteURL = [vcp_visionCacheStorageDirectoryURL absoluteURL];

  path = [absoluteURL path];
  v4 = [path stringByAppendingPathComponent:@"faceWorkerState.plist"];

  return v4;
}

- (uint64_t)mad_faceProcessingInternalVersion
{
  v1 = [VCPFaceProcessingVersionManager sharedManagerForPhotoLibrary:self];
  currentProcessingVersion = [v1 currentProcessingVersion];

  return currentProcessingVersion;
}

- (id)mad_unclusteredFacesFetchOptions
{
  v11[4] = *MEMORY[0x1E69E9840];
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEA40];
  mad_faceProcessingInternalVersion = [self mad_faceProcessingInternalVersion];
  v4 = _os_feature_enabled_impl();
  if (mad_faceProcessingInternalVersion >= 14)
  {
    LODWORD(v5) = 14;
  }

  else
  {
    LODWORD(v5) = mad_faceProcessingInternalVersion;
  }

  if (v4)
  {
    v5 = v5;
  }

  else
  {
    v5 = mad_faceProcessingInternalVersion;
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(faceAlgorithmVersion >= %d) AND (vuObservationID = 0) AND (((hidden = 0) AND (manual = 0) AND ((trainingType = %d) OR (trainingType = nil))) OR ((trainingType = %d) OR (trainingType = %d) OR (trainingType = %d)))", v5, 0, 1, 2, 5];
  [librarySpecificFetchOptions setInternalPredicate:v6];

  if ([objc_opt_class() mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  v7 = *MEMORY[0x1E6978D70];
  v11[0] = *MEMORY[0x1E6978D80];
  v11[1] = v7;
  v8 = *MEMORY[0x1E6978D90];
  v11[2] = *MEMORY[0x1E6978D68];
  v11[3] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v9];

  return librarySpecificFetchOptions;
}

- (id)mad_clusteredFacesFetchOptions
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEA58];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(faceAlgorithmVersion = %d) AND (vuObservationID != 0) AND (((hidden = 0) AND (manual = 0) AND ((trainingType = %d) OR (trainingType = nil))) OR ((trainingType = %d) OR (trainingType = %d) OR (trainingType = %d)))", objc_msgSend(self, "mad_faceProcessingInternalVersion"), 0, 1, 2, 5];
  [librarySpecificFetchOptions setInternalPredicate:v3];

  if ([objc_opt_class() mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  return librarySpecificFetchOptions;
}

- (id)mad_clusteredAndUnidentifiedFacesFetchOptions
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludeOnlyFacesWithFaceprints:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEA70];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(faceAlgorithmVersion = %d) AND (vuObservationID != 0) AND (((hidden = 0) AND (manual = 0) AND ((trainingType = %d) OR (trainingType = nil))) OR ((trainingType = %d) OR (trainingType = %d) OR (trainingType = %d))) AND (personForFace = nil AND personForTorso = nil AND personForTemporalDetectedFaces = nil)", objc_msgSend(self, "mad_faceProcessingInternalVersion"), 0, 1, 2, 5];
  [librarySpecificFetchOptions setInternalPredicate:v3];

  if ([objc_opt_class() mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  return librarySpecificFetchOptions;
}

- (uint64_t)mad_countOfUnclusteredFaces
{
  mad_unclusteredFacesFetchOptions = [self mad_unclusteredFacesFetchOptions];
  [mad_unclusteredFacesFetchOptions setShouldPrefetchCount:1];
  v2 = [MEMORY[0x1E69787D0] fetchFacesWithOptions:mad_unclusteredFacesFetchOptions];
  v3 = [v2 count];

  return v3;
}

- (id)mad_allFacesFetchOptions
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeNonvisibleFaces:1];
  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEA88];
  if ([objc_opt_class() mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  return librarySpecificFetchOptions;
}

- (id)mad_allPersonsFetchOptions
{
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F49BEAA0];

  return librarySpecificFetchOptions;
}

- (id)mad_allPersonsFetchOptionsWithDetectionTypes:()MediaAnalysis andVerifiedTypes:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = a4;
  librarySpecificFetchOptions = [self librarySpecificFetchOptions];
  [librarySpecificFetchOptions setMinimumUnverifiedFaceCount:0];
  [librarySpecificFetchOptions setMinimumVerifiedFaceCount:0];
  [librarySpecificFetchOptions setIncludeTorsoOnlyPerson:1];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_1F49BEAB8;
  }

  [librarySpecificFetchOptions setIncludedDetectionTypes:v8];
  if (v18)
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v18;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"verifiedType = %@", *(*(&v19 + 1) + 8 * i)];
          [array addObject:v14];
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [array componentsJoinedByString:@" OR "];
    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:v15];
    [librarySpecificFetchOptions setPredicate:v16];
  }

  return librarySpecificFetchOptions;
}

- (uint64_t)vcp_requiresProcessingForTask:()MediaAnalysis
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 > 0x10)
  {
    goto LABEL_10;
  }

  if (((1 << a3) & 0x140E) != 0)
  {
    return 1;
  }

  if (a3 != 16)
  {
LABEL_10:
    if (MediaAnalysisLogLevel() >= 3)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v5 = 134217984;
      v6 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Not requiring processing for unknown taskID %lu", &v5, 0xCu);
    }

    return 0;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {

    return MADIsPECProcessingEnabled();
  }

  return result;
}

- (uint64_t)vcp_requiredFaceLibraryProcessingSubTasks
{
  if ([self vcp_isSyndicationLibrary])
  {
    return 51;
  }

  else
  {
    return -1;
  }
}

- (__CFString)vcp_description
{
  if ([self isSystemPhotoLibrary])
  {
    return @"SPL";
  }

  if ([self wellKnownPhotoLibraryIdentifier] == 3)
  {
    return @"SyndPL";
  }

  return @"PL";
}

- (uint64_t)vcp_requiresDownloadForTask:()MediaAnalysis
{
  if (a3 == 3 && _os_feature_enabled_impl() && [self mad_pauseFCPeopleFurtherProcessing])
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[FaceProcessing][FC] Resource download disabled", v8, 2u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    vcp_supportsCloudLibraryResourceDownload = [self vcp_supportsCloudLibraryResourceDownload];
    v5 = 0x40Au >> a3;
    if (a3 > 0xA)
    {
      LOBYTE(v5) = 0;
    }

    if (!vcp_supportsCloudLibraryResourceDownload)
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

- (void)_mad_markAsProcessedByTask:()MediaAnalysis forAsset:.cold.1(void *a1, void *a2, uint8_t *buf)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "[markAsProcessedByTask][%@] Asset has no adjustment version, creation date is [%@]", buf, 0x16u);
}

@end