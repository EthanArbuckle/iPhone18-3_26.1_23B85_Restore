@interface PHAssetResource(MediaAnalysis)
+ (id)vcp_allAcceptableResourcesForAsset:()MediaAnalysis;
+ (id)vcp_allResourcesForAsset:()MediaAnalysis;
+ (id)vcp_allowedBundlesForSyndicationLibrary;
- (BOOL)vcp_hasExtremeAbnormalDimensionForScene;
- (BOOL)vcp_isDecodable;
- (double)vcp_size;
- (id)mad_existingAnalysisFromComputeSyncForAsset:()MediaAnalysis allowDownload:cancel:;
- (id)vcp_uniformTypeIdentifier;
- (uint64_t)mad_isAnalysisCompleteFromComputeSyncForAsset:()MediaAnalysis taskID:allowDownload:cancel:;
- (uint64_t)vcp_fileSize;
- (uint64_t)vcp_isLocallyAvailable;
- (uint64_t)vcp_isMovie;
- (uint64_t)vcp_isPhoto;
@end

@implementation PHAssetResource(MediaAnalysis)

+ (id)vcp_allowedBundlesForSyndicationLibrary
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v4[0] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v4[1] = @"com.apple.FileProvider.LocalStorage";
  v4[2] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v4[3] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v4[4] = @"com.apple.photos.filesPlaceholder";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];

  [v2 addObject:@"com.apple.mobilenotes"];

  return v2;
}

+ (id)vcp_allResourcesForAsset:()MediaAnalysis
{
  v3 = [MEMORY[0x1E69786D0] assetResourcesForAsset:a3 includeDerivatives:1];

  return v3;
}

+ (id)vcp_allAcceptableResourcesForAsset:()MediaAnalysis
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:v3];
  if ([v3 isGuestAsset])
  {
    v5 = [v3 photoLibrary];
    v6 = [v5 isSystemPhotoLibrary];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v3 photoLibrary];
  v9 = [v8 vcp_isSyndicationLibrary];

  if (v9)
  {
    [v3 fetchPropertySetsIfNeeded];
    v10 = [v3 curationProperties];
    v11 = [v10 importedByBundleIdentifier];

    if (!v11 || ([objc_opt_class() vcp_allowedBundlesForSyndicationLibrary], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v11), v12, (v13 & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v15 = [v3 localIdentifier];
        *buf = 138412546;
        v28 = v15;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][%@] Syndication library asset not from Notes / Files; skipping original resource", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  if (v7)
  {
    v14 = v4;
    goto LABEL_26;
  }

LABEL_14:
  v14 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if ([v20 type] != 2 && objc_msgSend(v20, "type") != 1 && objc_msgSend(v20, "type") != 9)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

LABEL_26:

  return v14;
}

- (id)vcp_uniformTypeIdentifier
{
  v1 = MEMORY[0x1E6982C40];
  v2 = [a1 uniformTypeIdentifier];
  v3 = [v1 typeWithIdentifier:v2];

  return v3;
}

- (uint64_t)vcp_isMovie
{
  v2 = [a1 vcp_uniformTypeIdentifier];
  if ([v2 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 vcp_uniformTypeIdentifier];
    v3 = [v4 conformsToType:*MEMORY[0x1E6983080]];
  }

  return v3;
}

- (uint64_t)vcp_isPhoto
{
  v1 = [a1 vcp_uniformTypeIdentifier];
  v2 = [v1 conformsToType:*MEMORY[0x1E6982E30]];

  return v2;
}

- (BOOL)vcp_isDecodable
{
  v1 = [a1 vcp_uniformTypeIdentifier];
  v2 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:v1];

  return v2;
}

- (uint64_t)vcp_isLocallyAvailable
{
  if ([objc_opt_class() instancesRespondToSelector:sel_isLocallyAvailable])
  {

    return [a1 isLocallyAvailable];
  }

  else
  {
    v3 = [a1 privateFileURL];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AC08] defaultManager];
      v5 = [v3 path];
      v6 = [v4 fileExistsAtPath:v5];
    }

    else
    {
      v6 = 0;
    }

    return v6;
  }
}

- (BOOL)vcp_hasExtremeAbnormalDimensionForScene
{
  if ([a1 pixelHeight] < 1)
  {
    v3 = 1.0;
  }

  else
  {
    v2 = [a1 pixelWidth];
    v3 = v2 / [a1 pixelHeight];
  }

  v4 = [a1 pixelWidth];
  v5 = [a1 pixelHeight];
  if (v3 <= 10.0 && v3 >= 0.1)
  {
    return 0;
  }

  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  return v7 < 0x32;
}

- (uint64_t)vcp_fileSize
{
  v1 = [a1 privateFileURL];
  v2 = [v1 path];

  if (v2)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 attributesOfItemAtPath:v2 error:0];
    v5 = [v4 fileSize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)vcp_size
{
  v2 = (([a1 pixelWidth] + 1) & 0xFFFFFFFFFFFFFFFELL);
  [a1 pixelHeight];
  return v2;
}

- (id)mad_existingAnalysisFromComputeSyncForAsset:()MediaAnalysis allowDownload:cancel:
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (([v8 mad_isEligibleForComputeSync] & 1) == 0 || !objc_msgSend(v8, "mad_isEligibleForComputeSyncIngestion"))
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if ([a1 type] != 112)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 localIdentifier];
      *buf = 138412546;
      v31 = v11;
      v32 = 1024;
      LODWORD(v33) = [a1 type];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid resource type (%d), unable to extract analysis results from compute sync", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (v9 && v9[2](v9))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v10 = [v8 localIdentifier];
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Analysis extraction from compute sync resource cancelled", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v14 = [a1 privateFileURL];
  if (a4 && ([objc_opt_class() mad_disableComputeSyncDownload] & 1) == 0)
  {
    if (([v8 mad_isEligibleForComputeSyncDownloadWithAnalysisTask:1] & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v25 = [v8 localIdentifier];
        *buf = 138412546;
        v31 = v25;
        v32 = 1024;
        LODWORD(v33) = 1;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible for compute sync downalod with taskID %d", buf, 0x12u);
      }

      goto LABEL_46;
    }

    v16 = VCPSignPostLog();
    v17 = os_signpost_id_generate(v16);

    v18 = VCPSignPostLog();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "MADDownloadComputeSyncResource", "", buf, 2u);
    }

    v29 = v14;
    v20 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:a1 withTaskID:1 toResourceURL:&v29 cancel:v9];
    v21 = v29;

    v22 = VCPSignPostLog();
    v23 = v22;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_END, v17, "MADDownloadComputeSyncResource", "", buf, 2u);
    }

    if (v20)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = [v8 localIdentifier];
        *buf = 138412546;
        v31 = v24;
        v32 = 1024;
        LODWORD(v33) = v20;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to download compute sync resource (%d)", buf, 0x12u);
      }

      v12 = 0;
      v14 = v21;
      goto LABEL_47;
    }

    v14 = v21;
    if (v21)
    {
      goto LABEL_19;
    }
  }

  else if (v14)
  {
LABEL_19:
    if ([a1 isLocallyAvailable])
    {
      v15 = [MEMORY[0x1E69786D0] computeSyncMediaAnalysisPayloadDataForResourceURL:v14];
      if (v15)
      {
        v12 = [MADComputeSyncPayloadResults resultsForAsset:v8 payloadData:v15];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v26 = [v8 localIdentifier];
          v27 = [v14 path];
          *buf = 138412546;
          v31 = v26;
          v32 = 2112;
          v33 = v27;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] No MediaAnalysis payload data in compute sync resource at %@", buf, 0x16u);
        }

        v12 = 0;
      }

      goto LABEL_47;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v28 = [v8 localIdentifier];
    *buf = 138412546;
    v31 = v28;
    v32 = 1024;
    LODWORD(v33) = a4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Compute sync resource not locally available (allowDownload: %d)", buf, 0x12u);
  }

LABEL_46:
  v12 = 0;
LABEL_47:

LABEL_13:

  return v12;
}

- (uint64_t)mad_isAnalysisCompleteFromComputeSyncForAsset:()MediaAnalysis taskID:allowDownload:cancel:
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (([v10 mad_isEligibleForComputeSync] & 1) != 0 && objc_msgSend(v10, "mad_isEligibleForComputeSyncIngestion"))
  {
    if ([a1 type] != 112)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = [v10 localIdentifier];
        *buf = 138412546;
        v36 = v13;
        v37 = 1024;
        LODWORD(v38) = [a1 type];
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid resource type (%d), unable to extract analysis results from compute sync", buf, 0x12u);
      }

      goto LABEL_12;
    }

    if (v11 && v11[2](v11))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v12 = [v10 localIdentifier];
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Analysis extraction from compute sync resource cancelled", buf, 0xCu);
      }

      goto LABEL_12;
    }

    v16 = [a1 privateFileURL];
    if (!a5 || ([objc_opt_class() mad_disableComputeSyncDownload] & 1) != 0)
    {
      goto LABEL_16;
    }

    if ([v10 mad_isEligibleForComputeSyncDownloadWithAnalysisTask:a4])
    {
      v22 = VCPSignPostLog();
      v23 = os_signpost_id_generate(v22);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADDownloadComputeSyncResource", "", buf, 2u);
      }

      v34 = v16;
      v26 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:a1 withTaskID:a4 toResourceURL:&v34 cancel:v11];
      v27 = v34;

      v16 = v27;
      v28 = VCPSignPostLog();
      v29 = v28;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v23, "MADDownloadComputeSyncResource", "", buf, 2u);
      }

      if (!v26 && v16 && ([a1 isLocallyAvailable] & 1) != 0)
      {
        v30 = [v10 mad_refetchAsset];
        if (v30)
        {

          v10 = v30;
LABEL_16:
          v17 = [v10 vcp_needsProcessingForTask:a4];
          v14 = v17 ^ 1u;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            v18 = [v10 localIdentifier];
            v19 = VCPTaskIDDescription(a4);
            v20 = v19;
            v21 = @"complete";
            *buf = 138413314;
            v36 = v18;
            v37 = 2112;
            if (v17)
            {
              v21 = @"incomplete";
            }

            v38 = v19;
            v39 = 2112;
            v40 = v21;
            v41 = 2112;
            v42 = v16;
            v43 = 1024;
            v44 = a5;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] %@ %@ with compute sync resource at %@ (allowDownload: %d)", buf, 0x30u);
          }

          goto LABEL_43;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v33 = [v10 localIdentifier];
          *buf = 138412290;
          v36 = v33;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to re-fetch asset after compute sync download attempt", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v32 = [v10 localIdentifier];
        *buf = 138412546;
        v36 = v32;
        v37 = 1024;
        LODWORD(v38) = v26;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to download compute sync resource (%d)", buf, 0x12u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v31 = [v10 localIdentifier];
      *buf = 138412546;
      v36 = v31;
      v37 = 1024;
      LODWORD(v38) = a4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible for compute sync downalod with taskID %d", buf, 0x12u);
    }

    v14 = 0;
LABEL_43:

    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

@end