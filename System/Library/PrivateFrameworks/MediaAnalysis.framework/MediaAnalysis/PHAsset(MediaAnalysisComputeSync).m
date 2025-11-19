@interface PHAsset(MediaAnalysisComputeSync)
+ (void)vcp_requiredAnalysisForNextAnalysisStage:()MediaAnalysisComputeSync;
- (id)mad_refetchAsset;
- (uint64_t)mad_analysisStageAfterCompletingAnalysis:()MediaAnalysisComputeSync;
- (uint64_t)mad_analysisStageAfterDroppingAnalysis:()MediaAnalysisComputeSync;
- (uint64_t)mad_isEligibleForAnalysis:()MediaAnalysisComputeSync;
- (uint64_t)mad_isEligibleForComputeSync;
- (uint64_t)mad_isEligibleForComputeSyncDownloadWithAnalysisTask:()MediaAnalysisComputeSync;
- (uint64_t)mad_isEligibleForComputeSyncIngestion;
- (uint64_t)mad_needsProcessingForComputeSyncWithAnalysis:()MediaAnalysisComputeSync;
@end

@implementation PHAsset(MediaAnalysisComputeSync)

- (uint64_t)mad_isEligibleForComputeSync
{
  if ([objc_opt_class() mad_isComputeSyncDisabled])
  {
    return 0;
  }

  v3 = [a1 photoLibrary];
  v2 = [v3 isSystemPhotoLibrary];

  return v2;
}

- (uint64_t)mad_isEligibleForComputeSyncIngestion
{
  {
    v3 = [a1 photoLibrary];
    v4 = [v3 isCloudPhotoLibraryEnabled];

    [PHAsset(MediaAnalysisComputeSync) mad_isEligibleForComputeSyncIngestion]::eligible = v4;
  }

  return [PHAsset(MediaAnalysisComputeSync) mad_isEligibleForComputeSyncIngestion]::eligible;
}

+ (void)vcp_requiredAnalysisForNextAnalysisStage:()MediaAnalysisComputeSync
{
  v6 = *MEMORY[0x1E69E9840];
  if ((a3 - 910) <= 0x28 && ((1 << (a3 + 114)) & 0x10040100401) != 0)
  {
    return &unk_1F49BEEC0;
  }

  if (a3 == 100)
  {
    return &unk_1F49BEE90;
  }

  if (a3 == 200)
  {
    return &unk_1F49BEEA8;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown analysis stage (%d), no analysis required", v5, 8u);
  }

  return 0;
}

- (uint64_t)mad_isEligibleForAnalysis:()MediaAnalysisComputeSync
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if (a3 <= 10)
  {
    if (a3 > 4)
    {
      if ((a3 - 6) >= 3)
      {
        if (a3 == 5)
        {
          return ([a1 sourceType] & 1) != 0 || (objc_msgSend(a1, "sourceType") & 4) != 0 || (objc_msgSend(a1, "sourceType") & 0x20) != 0;
        }

        if (a3 == 10)
        {
          if ((([a1 sourceType] & 1) != 0 || (objc_msgSend(a1, "sourceType") & 4) != 0 || (objc_msgSend(a1, "sourceType") & 0x20) != 0) && (objc_msgSend(a1, "isPartOfBurst") & 1) == 0 && (objc_msgSend(a1, "vcp_isPano") & 1) == 0)
          {
            goto LABEL_63;
          }

          return 0;
        }

        goto LABEL_36;
      }

      goto LABEL_14;
    }

    if (a3 <= 2)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          if ((([a1 sourceType] & 1) != 0 || (objc_msgSend(a1, "sourceType") & 4) != 0 || (objc_msgSend(a1, "sourceType") & 0x20) != 0) && (objc_msgSend(a1, "isPartOfBurst") & 1) == 0)
          {
            goto LABEL_63;
          }

          return 0;
        }

LABEL_36:
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11[0] = 67109120;
          v11[1] = v3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown taskID (%d), any untrashed asset will be considered eligible", v11, 8u);
        }

        if (([a1 sourceType] & 1) != 0 || (objc_msgSend(a1, "sourceType") & 4) != 0 || (objc_msgSend(a1, "sourceType") & 0x20) != 0)
        {
          v6 = [a1 isTrashed];
          return v6 ^ 1u;
        }

        return 0;
      }

      goto LABEL_14;
    }

    if (a3 == 3)
    {
      if ([a1 sourceType] & 1) == 0 && (objc_msgSend(a1, "sourceType") & 4) == 0 && (objc_msgSend(a1, "sourceType") & 0x20) == 0 || (objc_msgSend(a1, "isPartOfBurst"))
      {
        return 0;
      }

      v7 = [a1 photoLibrary];
      if ([v7 isSystemPhotoLibrary])
      {
        v8 = [a1 isGuestAsset];

        if (v8)
        {
          return 0;
        }
      }

      else
      {
      }

LABEL_63:
      v6 = [a1 isTrashed];
      return v6 ^ 1u;
    }

LABEL_14:
    if (([a1 sourceType] & 1) == 0 && (objc_msgSend(a1, "sourceType") & 4) == 0 && (objc_msgSend(a1, "sourceType") & 0x20) == 0)
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (a3 > 0x12)
  {
    goto LABEL_34;
  }

  if (((1 << a3) & 0x6E000) != 0)
  {
    goto LABEL_14;
  }

  if (a3 == 12 || a3 == 16)
  {
    if ([a1 sourceType] & 1) == 0 && (objc_msgSend(a1, "sourceType") & 4) == 0 && (objc_msgSend(a1, "sourceType") & 0x20) == 0 || (objc_msgSend(a1, "isPartOfBurst"))
    {
      return 0;
    }

    result = [a1 isPhoto];
    if (result)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_34:
    if (a3 != 11)
    {
      if (a3 != 0x7FFFFFFF)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    if (([a1 sourceType] & 1) == 0 && (objc_msgSend(a1, "sourceType") & 4) == 0 && (objc_msgSend(a1, "sourceType") & 0x20) == 0)
    {
      return 0;
    }

    if (([a1 vcp_isLivePhoto] & 1) != 0 || (result = objc_msgSend(a1, "isVideo"), result))
    {
      v9 = [a1 mediaAnalysisProperties];
      v10 = [v9 mediaAnalysisVersion];

      if (v10 >= 0x27)
      {
        return 0;
      }

      goto LABEL_63;
    }
  }

  return result;
}

- (uint64_t)mad_isEligibleForComputeSyncDownloadWithAnalysisTask:()MediaAnalysisComputeSync
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a1 mediaAnalysisProperties];
  v6 = v5;
  if (!v5)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = [a1 localIdentifier];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] missing MediaAnalysisProperties, ineligible for compute sync analysis download", &v12, 0xCu);
    }

    goto LABEL_20;
  }

  if (a3 > 2)
  {
    if (a3 == 3 || a3 == 10 || a3 == 12)
    {
      v7 = [v5 cloudAnalysisStage];
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (a3 == 1)
  {
LABEL_16:
    v9 = [a1 mad_isComputeSyncStageFull:{objc_msgSend(v6, "cloudAnalysisStage")}];
    goto LABEL_21;
  }

  if (a3 != 2)
  {
LABEL_17:
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [a1 localIdentifier];
      v12 = 138412546;
      v13 = v10;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Unsupported taskID (%d), ineligible for compute sync analysis download", &v12, 0x12u);
    }

LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  if ([v5 cloudAnalysisStage] == 100)
  {
    goto LABEL_15;
  }

  v7 = [v6 cloudAnalysisStage];
LABEL_7:
  if (v7 != 200)
  {
    goto LABEL_16;
  }

LABEL_15:
  v9 = 1;
LABEL_21:

  return v9;
}

- (uint64_t)mad_needsProcessingForComputeSyncWithAnalysis:()MediaAnalysisComputeSync
{
  if (a3 == 10)
  {
    v4 = [a1 characterRecognitionProperties];
    if ([v4 algorithmVersion] == 8 || objc_msgSend(v4, "algorithmVersion") == 0x7FFF)
    {
      v5 = [v4 adjustmentVersion];
      v6 = [a1 adjustmentVersion];
      v7 = [v5 isEqualToDate:v6] ^ 1;
    }

    else
    {
      v7 = 1;
    }

    return v7;
  }

  else
  {

    return [a1 vcp_needsProcessingForTask:?];
  }
}

- (uint64_t)mad_analysisStageAfterCompletingAnalysis:()MediaAnalysisComputeSync
{
  v50 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v48[0] = &unk_1F49BDBA0;
  v48[1] = &unk_1F49BDBB8;
  v5 = [MEMORY[0x1E696AD98] numberWithShort:MADLatestComputeSyncFullStage];
  v48[2] = v5;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  v6 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v6)
  {
    v29 = 0;
    v28 = *v36;
    *&v7 = 138413314;
    v24 = v7;
    while (2)
    {
      v8 = 0;
      v27 = v6;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [v9 intValue];
        v11 = [objc_opt_class() vcp_requiredAnalysisForNextAnalysisStage:v10];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v47 count:16];
        if (v13)
        {
          v14 = *v32;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [*(*(&v31 + 1) + 8 * i) unsignedIntegerValue];
              if (v16 != a3 && [a1 mad_isEligibleForAnalysis:v16] && objc_msgSend(a1, "mad_needsProcessingForComputeSyncWithAnalysis:", v16))
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v18 = [a1 localIdentifier];
                  v19 = VCPTaskIDDescription(a3);
                  v20 = VCPTaskIDDescription(v16);
                  *buf = v24;
                  v40 = v18;
                  v41 = 1024;
                  v42 = v10;
                  v43 = 1024;
                  *v44 = v29;
                  *&v44[4] = 2112;
                  *&v44[6] = v19;
                  v45 = 2112;
                  v46 = v20;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncStage][%@] Unable to reach next stage %d (current stage %d) after completing %@ due to incomplete %@", buf, 0x2Cu);
                }

                v17 = 0;
                v25 = v29;
                goto LABEL_21;
              }
            }

            v13 = [v12 countByEnumeratingWithState:&v31 objects:v47 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v17 = 1;
LABEL_21:

        objc_autoreleasePoolPop(context);
        if (!v17)
        {

          return v25;
        }

        ++v8;
        v29 = v10;
      }

      while (v8 != v27);
      v6 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      v29 = v10;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v21 = [a1 localIdentifier];
    v22 = VCPTaskIDDescription(a3);
    *buf = 138412802;
    v40 = v21;
    v41 = 1024;
    v42 = v10;
    v43 = 2112;
    *v44 = v22;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncStage][%@] Reaching stage %d after completing %@", buf, 0x1Cu);
  }

  return v10;
}

- (uint64_t)mad_analysisStageAfterDroppingAnalysis:()MediaAnalysisComputeSync
{
  v54 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v52[0] = &unk_1F49BDBA0;
  v52[1] = &unk_1F49BDBB8;
  v6 = [MEMORY[0x1E696AD98] numberWithShort:MADLatestComputeSyncFullStage];
  v52[2] = v6;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];

  v7 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v7)
  {
    v33 = 0;
    v32 = *v40;
    *&v8 = 138413314;
    v28 = v8;
    while (2)
    {
      v9 = 0;
      v31 = v7;
      do
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = [v10 intValue];
        v12 = v11;
        v13 = [objc_opt_class() vcp_requiredAnalysisForNextAnalysisStage:v11];
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v35 objects:v51 count:16];
        if (v15)
        {
          v29 = v3;
          v16 = *v36;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v35 + 1) + 8 * i) unsignedIntegerValue];
              if (v18 == a3)
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v20 = [a1 localIdentifier];
                  v21 = VCPTaskIDDescription(a3);
                  *buf = 138412802;
                  v44 = v20;
                  v45 = 1024;
                  v46 = v33;
                  v47 = 2112;
                  *v48 = v21;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncStage][%@] Falling to stage %d after dropping %@", buf, 0x1Cu);
                }

                goto LABEL_24;
              }

              if ([a1 mad_isEligibleForAnalysis:v18] && objc_msgSend(a1, "mad_needsProcessingForComputeSyncWithAnalysis:", v18))
              {
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  v22 = [a1 localIdentifier];
                  v23 = VCPTaskIDDescription(a3);
                  v24 = VCPTaskIDDescription(v18);
                  *buf = v28;
                  v44 = v22;
                  v45 = 1024;
                  v46 = v12;
                  v47 = 1024;
                  *v48 = v33;
                  *&v48[4] = 2112;
                  *&v48[6] = v23;
                  v49 = 2112;
                  v50 = v24;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncStage][%@] Unable to reach next stage %d (current stage %d) after dropping %@ due to incomplete %@", buf, 0x2Cu);
                }

LABEL_24:
                v19 = 0;
                v3 = v33;
                goto LABEL_25;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v35 objects:v51 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }

          v19 = 1;
          v33 = v11;
          v3 = v29;
        }

        else
        {
          v19 = 1;
          v33 = v11;
        }

LABEL_25:

        objc_autoreleasePoolPop(context);
        if (!v19)
        {

          return v3;
        }

        ++v9;
      }

      while (v9 != v31);
      v7 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOWORD(v33) = 0;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v25 = [a1 localIdentifier];
    v26 = VCPTaskIDDescription(a3);
    *buf = 138412802;
    v44 = v25;
    v45 = 1024;
    v46 = v33;
    v47 = 2112;
    *v48 = v26;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[ComputeSyncStage][%@] Reaching stage %d after dropping %@", buf, 0x1Cu);
  }

  LOWORD(v3) = v33;
  return v3;
}

- (id)mad_refetchAsset
{
  v28[6] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6978838]);
  v3 = [a1 photoLibrary];
  [v2 setPhotoLibrary:v3];

  v4 = *MEMORY[0x1E6978CE8];
  v28[0] = *MEMORY[0x1E6978CA0];
  v28[1] = v4;
  v5 = *MEMORY[0x1E6978BF8];
  v28[2] = *MEMORY[0x1E6978C40];
  v28[3] = v5;
  v6 = *MEMORY[0x1E6978C98];
  v28[4] = *MEMORY[0x1E6978D20];
  v28[5] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
  [v2 setFetchPropertySets:v7];

  v8 = VCPSignPostLog();
  v9 = os_signpost_id_generate(v8);

  v10 = VCPSignPostLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MADRefetchAsset", "", &v23, 2u);
  }

  v12 = MEMORY[0x1E6978628];
  v13 = [a1 localIdentifier];
  v27 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v15 = [v12 fetchAssetsWithLocalIdentifiers:v14 options:v2];

  v16 = VCPSignPostLog();
  v17 = v16;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v23) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v17, OS_SIGNPOST_INTERVAL_END, v9, "MADRefetchAsset", "", &v23, 2u);
  }

  if ([v15 count])
  {
    if ([v15 count] >= 2 && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v18 = [a1 localIdentifier];
      v19 = [v15 count];
      v23 = 138412546;
      v24 = v18;
      v25 = 1024;
      v26 = v19;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Re-fetched %d assets, using first one", &v23, 0x12u);
    }

    v20 = [v15 objectAtIndexedSubscript:0];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [a1 localIdentifier];
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to re-fetch asset to obtain updated properties", &v23, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

@end