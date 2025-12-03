@interface MADComputeSyncPayloadResults
+ (id)fullAnalysisResultsFromAnalysisProto:(id)proto asset:(id)asset payloadData:(id)data;
+ (id)payloadDataForAsset:(id)asset targetStage:(signed __int16)stage embeddingResults:(id)results fullAnalysisResults:(id)analysisResults;
+ (id)resultsForAsset:(id)asset payloadData:(id)data;
- (MADComputeSyncPayloadResults)initWithFullAnalysisResults:(id)results imageEmbeddingVSKAsest:(id)asest imageEmbeddingVersion:(signed __int16)version videoEmbeddingVSKAsset:(id)asset videoEmbeddingVersion:(signed __int16)embeddingVersion;
@end

@implementation MADComputeSyncPayloadResults

- (MADComputeSyncPayloadResults)initWithFullAnalysisResults:(id)results imageEmbeddingVSKAsest:(id)asest imageEmbeddingVersion:(signed __int16)version videoEmbeddingVSKAsset:(id)asset videoEmbeddingVersion:(signed __int16)embeddingVersion
{
  resultsCopy = results;
  asestCopy = asest;
  assetCopy = asset;
  v19.receiver = self;
  v19.super_class = MADComputeSyncPayloadResults;
  v16 = [(MADComputeSyncPayloadResults *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fullAnalysisResults, results);
    objc_storeStrong(&v17->_imageEmbeddingVSKAsset, asest);
    if (asestCopy)
    {
      v17->_imageEmbeddingVersion = version;
    }

    objc_storeStrong(&v17->_videoEmbeddingVSKAsset, asset);
    if (assetCopy)
    {
      v17->_videoEmbeddingVersion = embeddingVersion;
    }
  }

  return v17;
}

+ (id)fullAnalysisResultsFromAnalysisProto:(id)proto asset:(id)asset payloadData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  assetCopy = asset;
  dataCopy = data;
  if (protoCopy)
  {
    exportToLegacyDictionary = [protoCopy exportToLegacyDictionary];
    if (exportToLegacyDictionary)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [assetCopy localIdentifier];
        vcp_typeDescription = [assetCopy vcp_typeDescription];
        v13 = [exportToLegacyDictionary vcp_analysisDescriptionWithResultDetails:1];
        v24 = 138412802;
        v25 = localIdentifier;
        v26 = 2112;
        v27 = vcp_typeDescription;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@][%@] Extracted full analysis results from compute sync %@", &v24, 0x20u);
      }

      vcp_dateModified = [exportToLegacyDictionary vcp_dateModified];
      vcp_modificationDate = [assetCopy vcp_modificationDate];
      v16 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

      if (v16)
      {
        v17 = exportToLegacyDictionary;
LABEL_19:

        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        localIdentifier2 = [assetCopy localIdentifier];
        vcp_dateModified2 = [exportToLegacyDictionary vcp_dateModified];
        vcp_modificationDate2 = [assetCopy vcp_modificationDate];
        v24 = 138412802;
        v25 = localIdentifier2;
        v26 = 2112;
        v27 = vcp_dateModified2;
        v28 = 2112;
        v29 = vcp_modificationDate2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ComputeSyncPayload][%@] Full analysis results from compute sync is outdated (modification date in analysis: %@ vs asset: %@)", &v24, 0x20u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier3 = [assetCopy localIdentifier];
      v24 = 138412546;
      v25 = localIdentifier3;
      v26 = 1024;
      LODWORD(v27) = [dataCopy length];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to deserialize analysis results from proto (MediaAnalysis payload: %d bytes)", &v24, 0x12u);
    }

    v17 = 0;
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier4 = [assetCopy localIdentifier];
    v24 = 138412546;
    v25 = localIdentifier4;
    v26 = 1024;
    LODWORD(v27) = [dataCopy length];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to recover proto from payload data (MediaAnalysis payload: %d bytes)", &v24, 0x12u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

+ (id)resultsForAsset:(id)asset payloadData:(id)data
{
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dataCopy = data;
  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];

  if (localAnalysisStage - 910 <= 0x28 && ((1 << (localAnalysisStage + 114)) & 0x10040100401) != 0)
  {
    v10 = [[VCPProtoAssetAnalysis alloc] initWithData:dataCopy];
    v11 = [objc_opt_class() fullAnalysisResultsFromAnalysisProto:v10 asset:assetCopy payloadData:dataCopy];
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      localIdentifier = [assetCopy localIdentifier];
      v13 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVSKAssetWithLocalIdentifier:localIdentifier];

      imageEmbeddingVersion = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVersion];
      localIdentifier2 = [assetCopy localIdentifier];
      v16 = [(VCPProtoAssetAnalysis *)v10 videoEmbeddingVSKAssetWithLocalIdentifier:localIdentifier2 mediaAnalysisResults:v11];

      videoEmbeddingVersion = [(VCPProtoAssetAnalysis *)v10 videoEmbeddingVersion];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier3 = [assetCopy localIdentifier];
        v19 = @"YES";
        v27 = 138413314;
        v28 = localIdentifier3;
        v29 = 2112;
        if (v13)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v30 = v20;
        v31 = 1024;
        if (!v16)
        {
          v19 = @"NO";
        }

        v32 = imageEmbeddingVersion;
        v33 = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = videoEmbeddingVersion;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Extracted embedding results from compute sync: image embedding: %@ (v%d), video embedding: %@ (v%d)", &v27, 0x2Cu);
      }
    }

    else
    {
      videoEmbeddingVersion = 0;
      v16 = 0;
      imageEmbeddingVersion = 0;
      v13 = 0;
    }

LABEL_30:

    v25 = [[MADComputeSyncPayloadResults alloc] initWithFullAnalysisResults:v11 imageEmbeddingVSKAsest:v13 imageEmbeddingVersion:imageEmbeddingVersion videoEmbeddingVSKAsset:v16 videoEmbeddingVersion:videoEmbeddingVersion];
    goto LABEL_31;
  }

  if (localAnalysisStage == 100 || localAnalysisStage == 200)
  {
    v10 = [[MADProtoComputeSyncThumbnailPayload alloc] initWithData:dataCopy];
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      localIdentifier4 = [assetCopy localIdentifier];
      v13 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVSKAssetWithLocalIdentifier:localIdentifier4];

      imageEmbeddingVersion = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVersion];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier5 = [assetCopy localIdentifier];
        v23 = @"YES";
        v27 = 138412802;
        v28 = localIdentifier5;
        if (!v13)
        {
          v23 = @"NO";
        }

        v29 = 2112;
        v30 = v23;
        v31 = 1024;
        v32 = imageEmbeddingVersion;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Extracted embedding results from compute sync: image embedding: %@ (v%d)", &v27, 0x1Cu);
      }

      videoEmbeddingVersion = 0;
      v16 = 0;
    }

    else
    {
      videoEmbeddingVersion = 0;
      v16 = 0;
      imageEmbeddingVersion = 0;
      v13 = 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier6 = [assetCopy localIdentifier];
    v27 = 138412546;
    v28 = localIdentifier6;
    v29 = 1024;
    LODWORD(v30) = localAnalysisStage;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to extract results from compute sync payload due to invalid analysis stage %d", &v27, 0x12u);
  }

  v16 = 0;
  v13 = 0;
  v11 = 0;
  v25 = 0;
LABEL_31:

  return v25;
}

+ (id)payloadDataForAsset:(id)asset targetStage:(signed __int16)stage embeddingResults:(id)results fullAnalysisResults:(id)analysisResults
{
  stageCopy = stage;
  v41 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  resultsCopy = results;
  analysisResultsCopy = analysisResults;
  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];

  if (localAnalysisStage == stageCopy)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [assetCopy localIdentifier];
      v37 = 138412546;
      v38 = localIdentifier;
      v39 = 1024;
      v40 = stageCopy;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Asset already at target stage %d, skip re-generating payload", &v37, 0x12u);
    }

    goto LABEL_18;
  }

  if ((stageCopy - 910) <= 0x28 && ((1 << (stageCopy + 114)) & 0x10040100401) != 0)
  {
    if (!analysisResultsCopy)
    {
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        photoLibrary = [assetCopy photoLibrary];
        mad_fetchRequest = [photoLibrary mad_fetchRequest];

        localIdentifier2 = [assetCopy localIdentifier];
        [mad_fetchRequest fetchAnalysisWithLocalIdentifier:localIdentifier2 predicate:0];
      }

      else
      {
        photoLibrary2 = [assetCopy photoLibrary];
        photoLibraryURL = [photoLibrary2 photoLibraryURL];
        mad_fetchRequest = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:photoLibraryURL];

        localIdentifier2 = [assetCopy localIdentifier];
        [mad_fetchRequest queryAnalysisForAsset:localIdentifier2];
      }
      analysisResultsCopy = ;
    }

    if ([assetCopy isVideo])
    {
      [VCPProtoAssetAnalysis movieAnalysisComputeSyncPayloadFromLegacyDictionary:analysisResultsCopy];
    }

    else
    {
      [VCPProtoAssetAnalysis imageAnalysisComputeSyncPayloadFromLegacyDictionary:analysisResultsCopy];
    }
    v23 = ;
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      if ([resultsCopy imageEmbeddingVersion])
      {
        imageEmbeddingVersion = [resultsCopy imageEmbeddingVersion];
      }

      else
      {
        mediaAnalysisProperties2 = [assetCopy mediaAnalysisProperties];
        imageEmbeddingVersion = [mediaAnalysisProperties2 imageEmbeddingVersion];
      }

      imageEmbeddingAsset = [resultsCopy imageEmbeddingAsset];
      if (imageEmbeddingAsset)
      {
        [resultsCopy imageEmbeddingAsset];
      }

      else
      {
        [MEMORY[0x1E69DF5F8] mad_fetchImageEmbeddingForPhotosAsset:assetCopy];
      }
      v27 = ;

      if ([resultsCopy videoEmbeddingVersion])
      {
        videoEmbeddingVersion = [resultsCopy videoEmbeddingVersion];
      }

      else
      {
        mediaAnalysisProperties3 = [assetCopy mediaAnalysisProperties];
        videoEmbeddingVersion = [mediaAnalysisProperties3 videoEmbeddingVersion];
      }

      [v23 setImageEmbeddingResultsFromVSKAsset:v27 imageEmbeddingVersion:imageEmbeddingVersion];
      [v23 setVideoEmbeddingVersion:videoEmbeddingVersion];
    }

    if (v23)
    {
      data = [v23 data];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier3 = [assetCopy localIdentifier];
        v37 = 138412290;
        v38 = localIdentifier3;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to serialize analysis results as compute sync full payload", &v37, 0xCu);
      }

      data = 0;
    }
  }

  else
  {
    if (stageCopy != 200 && stageCopy != 100)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier4 = [assetCopy localIdentifier];
        v37 = 138412546;
        v38 = localIdentifier4;
        v39 = 1024;
        v40 = stageCopy;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to generate payload data due to invalid analysis stage %d", &v37, 0x12u);
      }

      goto LABEL_18;
    }

    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
LABEL_18:
      data = 0;
      goto LABEL_53;
    }

    if ([resultsCopy imageEmbeddingVersion])
    {
      imageEmbeddingVersion2 = [resultsCopy imageEmbeddingVersion];
    }

    else
    {
      mediaAnalysisProperties4 = [assetCopy mediaAnalysisProperties];
      imageEmbeddingVersion2 = [mediaAnalysisProperties4 imageEmbeddingVersion];
    }

    imageEmbeddingAsset2 = [resultsCopy imageEmbeddingAsset];
    if (imageEmbeddingAsset2)
    {
      [resultsCopy imageEmbeddingAsset];
    }

    else
    {
      [MEMORY[0x1E69DF5F8] mad_fetchImageEmbeddingForPhotosAsset:assetCopy];
    }
    v23 = ;

    v33 = [MADProtoComputeSyncThumbnailPayload payloadFromVSKAsset:v23 imageEmbeddingVersion:imageEmbeddingVersion2];
    v34 = v33;
    if (v33)
    {
      data = [v33 data];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier5 = [assetCopy localIdentifier];
        v37 = 138412290;
        v38 = localIdentifier5;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to serialize analysis results as compute sync thumbnail payload", &v37, 0xCu);
      }

      data = 0;
    }
  }

LABEL_53:

  return data;
}

@end