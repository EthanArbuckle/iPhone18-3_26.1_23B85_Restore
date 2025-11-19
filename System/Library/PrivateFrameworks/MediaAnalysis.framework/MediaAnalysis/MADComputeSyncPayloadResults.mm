@interface MADComputeSyncPayloadResults
+ (id)fullAnalysisResultsFromAnalysisProto:(id)a3 asset:(id)a4 payloadData:(id)a5;
+ (id)payloadDataForAsset:(id)a3 targetStage:(signed __int16)a4 embeddingResults:(id)a5 fullAnalysisResults:(id)a6;
+ (id)resultsForAsset:(id)a3 payloadData:(id)a4;
- (MADComputeSyncPayloadResults)initWithFullAnalysisResults:(id)a3 imageEmbeddingVSKAsest:(id)a4 imageEmbeddingVersion:(signed __int16)a5 videoEmbeddingVSKAsset:(id)a6 videoEmbeddingVersion:(signed __int16)a7;
@end

@implementation MADComputeSyncPayloadResults

- (MADComputeSyncPayloadResults)initWithFullAnalysisResults:(id)a3 imageEmbeddingVSKAsest:(id)a4 imageEmbeddingVersion:(signed __int16)a5 videoEmbeddingVSKAsset:(id)a6 videoEmbeddingVersion:(signed __int16)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MADComputeSyncPayloadResults;
  v16 = [(MADComputeSyncPayloadResults *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_fullAnalysisResults, a3);
    objc_storeStrong(&v17->_imageEmbeddingVSKAsset, a4);
    if (v14)
    {
      v17->_imageEmbeddingVersion = a5;
    }

    objc_storeStrong(&v17->_videoEmbeddingVSKAsset, a6);
    if (v15)
    {
      v17->_videoEmbeddingVersion = a7;
    }
  }

  return v17;
}

+ (id)fullAnalysisResultsFromAnalysisProto:(id)a3 asset:(id)a4 payloadData:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = [v7 exportToLegacyDictionary];
    if (v10)
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v11 = [v8 localIdentifier];
        v12 = [v8 vcp_typeDescription];
        v13 = [v10 vcp_analysisDescriptionWithResultDetails:1];
        v24 = 138412802;
        v25 = v11;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@][%@] Extracted full analysis results from compute sync %@", &v24, 0x20u);
      }

      v14 = [v10 vcp_dateModified];
      v15 = [v8 vcp_modificationDate];
      v16 = [v14 isEqualToDate:v15];

      if (v16)
      {
        v17 = v10;
LABEL_19:

        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v20 = [v8 localIdentifier];
        v21 = [v10 vcp_dateModified];
        v22 = [v8 vcp_modificationDate];
        v24 = 138412802;
        v25 = v20;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ComputeSyncPayload][%@] Full analysis results from compute sync is outdated (modification date in analysis: %@ vs asset: %@)", &v24, 0x20u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [v8 localIdentifier];
      v24 = 138412546;
      v25 = v19;
      v26 = 1024;
      LODWORD(v27) = [v9 length];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to deserialize analysis results from proto (MediaAnalysis payload: %d bytes)", &v24, 0x12u);
    }

    v17 = 0;
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [v8 localIdentifier];
    v24 = 138412546;
    v25 = v18;
    v26 = 1024;
    LODWORD(v27) = [v9 length];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to recover proto from payload data (MediaAnalysis payload: %d bytes)", &v24, 0x12u);
  }

  v17 = 0;
LABEL_20:

  return v17;
}

+ (id)resultsForAsset:(id)a3 payloadData:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 mediaAnalysisProperties];
  v8 = [v7 localAnalysisStage];

  if (v8 - 910 <= 0x28 && ((1 << (v8 + 114)) & 0x10040100401) != 0)
  {
    v10 = [[VCPProtoAssetAnalysis alloc] initWithData:v6];
    v11 = [objc_opt_class() fullAnalysisResultsFromAnalysisProto:v10 asset:v5 payloadData:v6];
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v12 = [v5 localIdentifier];
      v13 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVSKAssetWithLocalIdentifier:v12];

      v14 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVersion];
      v15 = [v5 localIdentifier];
      v16 = [(VCPProtoAssetAnalysis *)v10 videoEmbeddingVSKAssetWithLocalIdentifier:v15 mediaAnalysisResults:v11];

      v17 = [(VCPProtoAssetAnalysis *)v10 videoEmbeddingVersion];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v18 = [v5 localIdentifier];
        v19 = @"YES";
        v27 = 138413314;
        v28 = v18;
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

        v32 = v14;
        v33 = 2112;
        v34 = v19;
        v35 = 1024;
        v36 = v17;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Extracted embedding results from compute sync: image embedding: %@ (v%d), video embedding: %@ (v%d)", &v27, 0x2Cu);
      }
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v14 = 0;
      v13 = 0;
    }

LABEL_30:

    v25 = [[MADComputeSyncPayloadResults alloc] initWithFullAnalysisResults:v11 imageEmbeddingVSKAsest:v13 imageEmbeddingVersion:v14 videoEmbeddingVSKAsset:v16 videoEmbeddingVersion:v17];
    goto LABEL_31;
  }

  if (v8 == 100 || v8 == 200)
  {
    v10 = [[MADProtoComputeSyncThumbnailPayload alloc] initWithData:v6];
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      v21 = [v5 localIdentifier];
      v13 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVSKAssetWithLocalIdentifier:v21];

      v14 = [(VCPProtoAssetAnalysis *)v10 imageEmbeddingVersion];
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v22 = [v5 localIdentifier];
        v23 = @"YES";
        v27 = 138412802;
        v28 = v22;
        if (!v13)
        {
          v23 = @"NO";
        }

        v29 = 2112;
        v30 = v23;
        v31 = 1024;
        v32 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Extracted embedding results from compute sync: image embedding: %@ (v%d)", &v27, 0x1Cu);
      }

      v17 = 0;
      v16 = 0;
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v14 = 0;
      v13 = 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [v5 localIdentifier];
    v27 = 138412546;
    v28 = v24;
    v29 = 1024;
    LODWORD(v30) = v8;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to extract results from compute sync payload due to invalid analysis stage %d", &v27, 0x12u);
  }

  v16 = 0;
  v13 = 0;
  v11 = 0;
  v25 = 0;
LABEL_31:

  return v25;
}

+ (id)payloadDataForAsset:(id)a3 targetStage:(signed __int16)a4 embeddingResults:(id)a5 fullAnalysisResults:(id)a6
{
  v8 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 mediaAnalysisProperties];
  v13 = [v12 localAnalysisStage];

  if (v13 == v8)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v14 = [v9 localIdentifier];
      v37 = 138412546;
      v38 = v14;
      v39 = 1024;
      v40 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncPayload][%@] Asset already at target stage %d, skip re-generating payload", &v37, 0x12u);
    }

    goto LABEL_18;
  }

  if ((v8 - 910) <= 0x28 && ((1 << (v8 + 114)) & 0x10040100401) != 0)
  {
    if (!v11)
    {
      if (+[MADManagedPhotosAsset isMACDReadEnabled])
      {
        v15 = [v9 photoLibrary];
        v16 = [v15 mad_fetchRequest];

        v17 = [v9 localIdentifier];
        [v16 fetchAnalysisWithLocalIdentifier:v17 predicate:0];
      }

      else
      {
        v21 = [v9 photoLibrary];
        v22 = [v21 photoLibraryURL];
        v16 = [VCPClientDatabaseManager sharedDatabaseForPhotoLibraryURL:v22];

        v17 = [v9 localIdentifier];
        [v16 queryAnalysisForAsset:v17];
      }
      v11 = ;
    }

    if ([v9 isVideo])
    {
      [VCPProtoAssetAnalysis movieAnalysisComputeSyncPayloadFromLegacyDictionary:v11];
    }

    else
    {
      [VCPProtoAssetAnalysis imageAnalysisComputeSyncPayloadFromLegacyDictionary:v11];
    }
    v23 = ;
    if (+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
      if ([v10 imageEmbeddingVersion])
      {
        v24 = [v10 imageEmbeddingVersion];
      }

      else
      {
        v25 = [v9 mediaAnalysisProperties];
        v24 = [v25 imageEmbeddingVersion];
      }

      v26 = [v10 imageEmbeddingAsset];
      if (v26)
      {
        [v10 imageEmbeddingAsset];
      }

      else
      {
        [MEMORY[0x1E69DF5F8] mad_fetchImageEmbeddingForPhotosAsset:v9];
      }
      v27 = ;

      if ([v10 videoEmbeddingVersion])
      {
        v28 = [v10 videoEmbeddingVersion];
      }

      else
      {
        v29 = [v9 mediaAnalysisProperties];
        v28 = [v29 videoEmbeddingVersion];
      }

      [v23 setImageEmbeddingResultsFromVSKAsset:v27 imageEmbeddingVersion:v24];
      [v23 setVideoEmbeddingVersion:v28];
    }

    if (v23)
    {
      v20 = [v23 data];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v30 = [v9 localIdentifier];
        v37 = 138412290;
        v38 = v30;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to serialize analysis results as compute sync full payload", &v37, 0xCu);
      }

      v20 = 0;
    }
  }

  else
  {
    if (v8 != 200 && v8 != 100)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = [v9 localIdentifier];
        v37 = 138412546;
        v38 = v19;
        v39 = 1024;
        v40 = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to generate payload data due to invalid analysis stage %d", &v37, 0x12u);
      }

      goto LABEL_18;
    }

    if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
    {
LABEL_18:
      v20 = 0;
      goto LABEL_53;
    }

    if ([v10 imageEmbeddingVersion])
    {
      v18 = [v10 imageEmbeddingVersion];
    }

    else
    {
      v31 = [v9 mediaAnalysisProperties];
      v18 = [v31 imageEmbeddingVersion];
    }

    v32 = [v10 imageEmbeddingAsset];
    if (v32)
    {
      [v10 imageEmbeddingAsset];
    }

    else
    {
      [MEMORY[0x1E69DF5F8] mad_fetchImageEmbeddingForPhotosAsset:v9];
    }
    v23 = ;

    v33 = [MADProtoComputeSyncThumbnailPayload payloadFromVSKAsset:v23 imageEmbeddingVersion:v18];
    v34 = v33;
    if (v33)
    {
      v20 = [v33 data];
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v35 = [v9 localIdentifier];
        v37 = 138412290;
        v38 = v35;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ComputeSyncPayload][%@] Failed to serialize analysis results as compute sync thumbnail payload", &v37, 0xCu);
      }

      v20 = 0;
    }
  }

LABEL_53:

  return v20;
}

@end