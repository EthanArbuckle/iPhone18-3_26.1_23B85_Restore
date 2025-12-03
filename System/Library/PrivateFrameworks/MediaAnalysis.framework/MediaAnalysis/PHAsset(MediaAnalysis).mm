@interface PHAsset(MediaAnalysis)
+ (float)mad_sceneConfidenceThresholdForTask:()MediaAnalysis;
+ (id)vcp_fetchOptionsForLibrary:()MediaAnalysis forTaskID:;
- (BOOL)vcp_needsImageCaptionProcessing;
- (BOOL)vcp_needsVideoCaptionProcessing;
- (__CFString)vcp_typeDescription;
- (double)vcp_originalSize;
- (id)vcp_modificationDate;
- (uint64_t)mad_isShared;
- (uint64_t)vcp_eligibleForVideoDownload:()MediaAnalysis;
- (uint64_t)vcp_hasAdjustments;
- (uint64_t)vcp_isLongMovie;
- (uint64_t)vcp_needsFullAnalysisProcessing:()MediaAnalysis;
- (uint64_t)vcp_needsProcessingForTask:()MediaAnalysis;
- (uint64_t)vcp_targetMajorDimensionForImageWithWidth:()MediaAnalysis height:andMinPreferredMinorDimension:;
- (unint64_t)vcp_majorDimensionForResource:()MediaAnalysis withTargetResolution:;
@end

@implementation PHAsset(MediaAnalysis)

+ (float)mad_sceneConfidenceThresholdForTask:()MediaAnalysis
{
  if (a3 == 10)
  {
    [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
    return v7;
  }

  else
  {
    result = 0.0;
    if (a3 == 3)
    {
      v6 = MEMORY[0x1E6978628];

      [v6 mad_peopleThreshold];
    }
  }

  return result;
}

- (__CFString)vcp_typeDescription
{
  if ([self mediaType] == 1)
  {
    if (([self mediaSubtypes] & 8) != 0)
    {
      return @"Live Photo";
    }

    if ([self mediaSubtypes])
    {
      return @"Pano Photo";
    }

    if (([self mediaSubtypes] & 4) != 0)
    {
      return @"Screenshot";
    }

    if (([self mediaSubtypes] & 2) != 0)
    {
      return @"HDR Photo";
    }

    mediaSubtypes = [self mediaSubtypes];
    v3 = @"SDOF Photo";
    v4 = @"Photo";
    v5 = (mediaSubtypes & 0x10) == 0;
  }

  else
  {
    if ([self mediaType] != 2)
    {
      return @"Unknown";
    }

    if (([self mediaSubtypes] & 0x20000) != 0)
    {
      return @"Slow-mo Movie";
    }

    mediaSubtypes2 = [self mediaSubtypes];
    v3 = @"Timelapse Movie";
    v4 = @"Movie";
    v5 = (mediaSubtypes2 & 0x40000) == 0;
  }

  if (v5)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (double)vcp_originalSize
{
  pixelWidth = [self pixelWidth];
  [self pixelHeight];
  return pixelWidth;
}

- (id)vcp_modificationDate
{
  adjustmentTimestamp = [self adjustmentTimestamp];
  if (adjustmentTimestamp)
  {
    adjustmentTimestamp2 = [self adjustmentTimestamp];
  }

  else
  {
    creationDate = [self creationDate];
    if (creationDate)
    {
      [self creationDate];
    }

    else
    {
      [MEMORY[0x1E695DF00] distantPast];
    }
    adjustmentTimestamp2 = ;
  }

  return adjustmentTimestamp2;
}

- (uint64_t)vcp_eligibleForVideoDownload:()MediaAnalysis
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([self isVideo] & 1) != 0 || (objc_msgSend(self, "vcp_isLivePhoto")) && (objc_msgSend(self, "vcp_isVideoSlowmo") & 1) == 0)
  {
    if (!v4)
    {
      v4 = [MEMORY[0x1E69786D0] vcp_allAcceptableResourcesForAsset:self];
    }

    vcp_smallMovieDerivativeResource = [v4 vcp_smallMovieDerivativeResource];
    if (!vcp_smallMovieDerivativeResource)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        localIdentifier = [self localIdentifier];
        v12 = 138412290;
        v13 = localIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Asset has no small video derivative; skipping", &v12, 0xCu);
      }

      goto LABEL_16;
    }

    if ([self isVideo])
    {
      fileSize = [vcp_smallMovieDerivativeResource fileSize];
      if (fileSize > +[VCPDownloadManager maxSizeBytes])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier2 = [self localIdentifier];
          v12 = 138412290;
          v13 = localIdentifier2;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] File size exceeds streaming threshold; skipping", &v12, 0xCu);
        }

LABEL_16:
        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      if (!fileSize && [self vcp_isLongMovie])
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier3 = [self localIdentifier];
          v12 = 138412290;
          v13 = localIdentifier3;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Duration exceeds streaming threshold; skipping", &v12, 0xCu);
        }

        goto LABEL_16;
      }
    }

    v5 = 1;
    goto LABEL_23;
  }

  v5 = 0;
LABEL_24:

  return v5;
}

+ (id)vcp_fetchOptionsForLibrary:()MediaAnalysis forTaskID:
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4 - 1;
  if (a4 - 1) < 0x10 && ((0x8EBFu >> v6))
  {
    v7 = qword_1C9F62CE8[v6];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v69 = a4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Unknown VCPTaskID (%lu); redirect to VCPTaskID_MediaAnalysis", buf, 0xCu);
    }

    v7 = 1;
  }

  v8 = objc_alloc_init(MEMORY[0x1E6978838]);
  [v8 setIncludeAssetSourceTypes:5];
  if (v7 > 11)
  {
    if (v7 == 12 || v7 == 16)
    {
      v9 = [MEMORY[0x1E696AE18] vcp_imagesPredicate:0];
      [v8 setPredicate:v9];
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 - 2) < 2)
    {
      goto LABEL_16;
    }

    if (v7 == 10)
    {
      v9 = [MEMORY[0x1E696AE18] vcp_nonPanoPredicate:0];
      [v8 setPredicate:v9];
LABEL_15:

      goto LABEL_16;
    }
  }

  [v8 setIncludeAllBurstAssets:1];
  if (v7 == 11)
  {
    v9 = [MEMORY[0x1E696AE18] vcp_fullAnalysisPredatesVersionInternalPredicate:39];
    v48 = [MEMORY[0x1E696AE18] vcp_livePhotosPredicate:1];
    v20 = [MEMORY[0x1E696AE18] vcp_moviesPredicate:1];
    v21 = MEMORY[0x1E696AB28];
    v67[0] = v48;
    v67[1] = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v23 = [v21 orPredicateWithSubpredicates:v22];

    v24 = MEMORY[0x1E696AB28];
    v66[0] = v9;
    v66[1] = v23;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];
    [v8 setInternalPredicate:v26];

    goto LABEL_15;
  }

LABEL_16:
  if ([MEMORY[0x1E69789B0] isMultiLibraryModeEnabled])
  {
    vcp_defaultPhotoLibrary = v5;
    if (!v5)
    {
      vcp_defaultPhotoLibrary = [MEMORY[0x1E69789B0] vcp_defaultPhotoLibrary];
    }

    [v8 setPhotoLibrary:vcp_defaultPhotoLibrary];
    if (!v5)
    {
    }
  }

  [v8 setIncludeGuestAssets:1];
  if (v7 > 5)
  {
    if (v7 > 10)
    {
      switch(v7)
      {
        case 11:
          v46 = *MEMORY[0x1E6978CA0];
          v57[0] = *MEMORY[0x1E6978C98];
          v57[1] = v46;
          v57[2] = *MEMORY[0x1E6978C40];
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
        case 12:
          v37 = *MEMORY[0x1E6978CE8];
          v51[0] = *MEMORY[0x1E6978CA0];
          v51[1] = v37;
          v38 = *MEMORY[0x1E6978D20];
          v52 = *MEMORY[0x1E6978C98];
          v53 = v38;
          v39 = *MEMORY[0x1E6978BF8];
          v54 = *MEMORY[0x1E6978C40];
          v55 = v39;
          v56 = v52;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:7];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
        case 16:
          v15 = *MEMORY[0x1E6978CE8];
          v50[0] = *MEMORY[0x1E6978CA0];
          v50[1] = v15;
          v16 = *MEMORY[0x1E6978D20];
          v50[2] = *MEMORY[0x1E6978C98];
          v50[3] = v16;
          v50[4] = *MEMORY[0x1E6978C40];
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:5];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
      }
    }

    else
    {
      switch(v7)
      {
        case 6:
          v43 = *MEMORY[0x1E6978CA0];
          v59[0] = *MEMORY[0x1E6978C98];
          v59[1] = v43;
          v44 = *MEMORY[0x1E6978CE8];
          v59[2] = *MEMORY[0x1E6978CC0];
          v59[3] = v44;
          v45 = *MEMORY[0x1E6978C40];
          v59[4] = *MEMORY[0x1E6978D00];
          v59[5] = v45;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:6];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
        case 8:
          v36 = *MEMORY[0x1E6978C40];
          v61[0] = *MEMORY[0x1E6978CA0];
          v61[1] = v36;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
        case 10:
          v11 = *MEMORY[0x1E6978CA0];
          v58[0] = *MEMORY[0x1E6978BF8];
          v58[1] = v11;
          v12 = *MEMORY[0x1E6978C40];
          v58[2] = *MEMORY[0x1E6978CE8];
          v58[3] = v12;
          v13 = *MEMORY[0x1E6978C98];
          v58[4] = *MEMORY[0x1E6978D20];
          v58[5] = v13;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:6];
          [v8 setFetchPropertySets:v14];
          goto LABEL_52;
      }
    }

LABEL_40:
    v27 = *MEMORY[0x1E6978C40];
    v49[0] = *MEMORY[0x1E6978CA0];
    v49[1] = v27;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [v8 setFetchPropertySets:v14];
    goto LABEL_52;
  }

  if (v7 > 2)
  {
    if (v7 == 3)
    {
      if ([v5 isSystemPhotoLibrary])
      {
        [v8 setIncludeGuestAssets:0];
      }

      v40 = *MEMORY[0x1E6978C40];
      v62[0] = *MEMORY[0x1E6978CA0];
      v62[1] = v40;
      v41 = *MEMORY[0x1E6978BF8];
      v62[2] = *MEMORY[0x1E6978CE8];
      v62[3] = v41;
      v42 = *MEMORY[0x1E6978C98];
      v62[4] = *MEMORY[0x1E6978D20];
      v62[5] = v42;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:6];
      [v8 setFetchPropertySets:v14];
      goto LABEL_52;
    }

    if (v7 == 4)
    {
      v33 = *MEMORY[0x1E6978CA0];
      v60[0] = *MEMORY[0x1E6978C98];
      v60[1] = v33;
      v34 = *MEMORY[0x1E6978CE8];
      v60[2] = *MEMORY[0x1E6978CC0];
      v60[3] = v34;
      v35 = *MEMORY[0x1E6978C40];
      v60[4] = *MEMORY[0x1E6978D00];
      v60[5] = v35;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];
      [v8 setFetchPropertySets:v14];
      goto LABEL_52;
    }

    [v8 setIncludeTrashedAssets:1];
    goto LABEL_40;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      v17 = *MEMORY[0x1E6978CE8];
      v63[0] = *MEMORY[0x1E6978CA0];
      v63[1] = v17;
      v18 = *MEMORY[0x1E6978C40];
      v63[2] = *MEMORY[0x1E6978C60];
      v63[3] = v18;
      v19 = *MEMORY[0x1E6978D20];
      v63[4] = *MEMORY[0x1E6978BF8];
      v63[5] = v19;
      v63[6] = *MEMORY[0x1E6978C98];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:7];
      [v8 setFetchPropertySets:v14];
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  v28 = *MEMORY[0x1E6978CA0];
  v65[0] = *MEMORY[0x1E6978C98];
  v65[1] = v28;
  v29 = *MEMORY[0x1E6978CE8];
  v65[2] = *MEMORY[0x1E6978CC0];
  v65[3] = v29;
  v30 = *MEMORY[0x1E6978C40];
  v65[4] = *MEMORY[0x1E6978D00];
  v65[5] = v30;
  v31 = *MEMORY[0x1E6978D20];
  v65[6] = *MEMORY[0x1E6978BF8];
  v65[7] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:8];
  [v8 setFetchPropertySets:v32];

  if (![v5 vcp_isSyndicationLibrary])
  {
    goto LABEL_53;
  }

  v64 = *MEMORY[0x1E6978C28];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  [v8 addFetchPropertySets:v14];
LABEL_52:

LABEL_53:

  return v8;
}

- (uint64_t)vcp_hasAdjustments
{
  if ([self vcp_isVideoSlowmo])
  {
    return [self adjustmentsState] == 2;
  }

  return [self hasAdjustments];
}

- (uint64_t)vcp_targetMajorDimensionForImageWithWidth:()MediaAnalysis height:andMinPreferredMinorDimension:
{
  v7 = a5;
  v29 = *MEMORY[0x1E69E9840];
  if (a3 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (v8 > v7)
  {
    v10 = vcvtmd_s64_f64(log2(v8 / v7));
    v11 = 1 << (v10 - 1);
    if (!v10)
    {
      v11 = 0;
    }

    v12 = ((v11 + a3) >> v10) & 0xFFFFFFFE;
    v13 = ((v11 + a4) >> v10) & 0xFFFFFFFE;
    if (v12 * v13 >= 3657831)
    {
      v14 = a3;
      v15 = (sqrt(a3 * 3048192.0 / a4) + 0.5) & 0xFFFFFFFE;
      v16 = (sqrt(a4 * 3048192.0 / v14) + 0.5) & 0xFFFFFFFE;
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [self localIdentifier];
        v23 = 138412802;
        v24 = localIdentifier;
        v25 = 1024;
        v26 = v15;
        v27 = 1024;
        v28 = v16;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at scaled resolution (%dx%d)", &v23, 0x18u);
      }

      if (v15 <= v16)
      {
        return v16;
      }

      else
      {
        return v15;
      }
    }

    v19 = MediaAnalysisLogLevel();
    if (v10 >= 1)
    {
      if (v19 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier2 = [self localIdentifier];
        v23 = 138412802;
        v24 = localIdentifier2;
        v25 = 1024;
        v26 = v12;
        v27 = 1024;
        v28 = v13;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at subsampled resolution (%dx%d)", &v23, 0x18u);
      }

      if (v12 <= v13)
      {
        return v13;
      }

      else
      {
        return v12;
      }
    }

    if (v19 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier3 = [self localIdentifier];
      v23 = 138412802;
      v24 = localIdentifier3;
      v25 = 1024;
      v26 = a3;
      v27 = 1024;
      v28 = a4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at full resolution (%dx%d)", &v23, 0x18u);
    }
  }

  return 0;
}

- (unint64_t)vcp_majorDimensionForResource:()MediaAnalysis withTargetResolution:
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [self localIdentifier];
      v30 = 138412546;
      v31 = localIdentifier;
      v32 = 1024;
      type = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid target resolution (%d)", &v30, 0x12u);
    }

    goto LABEL_39;
  }

  pixelWidth = [v6 pixelWidth];
  pixelHeight = [v7 pixelHeight];
  v10 = pixelHeight;
  if (!pixelWidth || !pixelHeight)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [self localIdentifier];
      v30 = 138413058;
      v31 = localIdentifier2;
      v32 = 1024;
      type = [v7 type];
      v34 = 1024;
      v35 = pixelWidth;
      v36 = 1024;
      v37 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Resource (%d) has invalid dimensions (%dx%d); falling back to asset", &v30, 0x1Eu);
    }

    pixelWidth = [self pixelWidth];
    pixelHeight2 = [self pixelHeight];
    v10 = pixelHeight2;
    if (!pixelWidth || !pixelHeight2)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier3 = [self localIdentifier];
        v30 = 138412802;
        v31 = localIdentifier3;
        v32 = 1024;
        type = pixelWidth;
        v34 = 1024;
        v35 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Asset has invalid dimensions (%dx%d)", &v30, 0x18u);
      }

      goto LABEL_39;
    }
  }

  if (pixelWidth * v10 <= a4)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

LABEL_38:
    localIdentifier4 = [self localIdentifier];
    v30 = 138412802;
    v31 = localIdentifier4;
    v32 = 1024;
    type = pixelWidth;
    v34 = 1024;
    v35 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at full resolution (%dx%d)", &v30, 0x18u);

LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  v13 = pixelWidth;
  v14 = v10;
  v15 = a4;
  v16 = vcvtmd_u64_f64(log2(sqrt(v10 * pixelWidth / (a4 * 0.9))));
  v17 = 1 << (v16 - 1);
  if (!v16)
  {
    v17 = 0;
  }

  v18 = ((v17 + pixelWidth) >> v16) & 0xFFFFFFFFFFFFFFFELL;
  v19 = ((v17 + v10) >> v16) & 0xFFFFFFFFFFFFFFFELL;
  if (v18 * v19 > (v15 * 6.0 / 5.0))
  {
    v20 = (sqrt(v15 * v13 / v14) + 0.5) & 0xFFFFFFFE;
    v21 = (sqrt(v15 * v14 / v13) + 0.5) & 0xFFFFFFFE;
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier5 = [self localIdentifier];
      v30 = 138412802;
      v31 = localIdentifier5;
      v32 = 1024;
      type = v20;
      v34 = 1024;
      v35 = v21;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at scaled resolution (%dx%d)", &v30, 0x18u);
    }

    if (v20 <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23;
    goto LABEL_40;
  }

  if (!v16)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier6 = [self localIdentifier];
    v30 = 138412802;
    v31 = localIdentifier6;
    v32 = 1024;
    type = v18;
    v34 = 1024;
    v35 = v19;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Processing image at subsampled resolution (%dx%d)", &v30, 0x18u);
  }

  if (v18 <= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v18;
  }

LABEL_40:

  return v24;
}

- (uint64_t)vcp_needsFullAnalysisProcessing:()MediaAnalysis
{
  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if (![self mad_isNonLivePhotoImage])
  {
    if (a3)
    {
      if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
      {
        v10 = 0;
        goto LABEL_24;
      }

      vcp_needsImageCaptionProcessing = [self vcp_needsImageCaptionProcessing];
      if (mediaAnalysisProperties)
      {
        v12 = vcp_needsImageCaptionProcessing;
      }

      else
      {
        v12 = 1;
      }

      if ((v12 & 1) == 0 && [mediaAnalysisProperties mediaAnalysisImageVersion] >= 75)
      {
        goto LABEL_7;
      }
    }

    else if (([self vcp_needsImageCaptionProcessing] & 1) == 0)
    {
      vcp_needsVideoCaptionProcessing = [self vcp_needsVideoCaptionProcessing];
      v14 = mediaAnalysisProperties ? vcp_needsVideoCaptionProcessing : 1;
      if ((v14 & 1) == 0 && [mediaAnalysisProperties mediaAnalysisVersion] >= 0x4B && objc_msgSend(mediaAnalysisProperties, "mediaAnalysisImageVersion") >= 75)
      {
        goto LABEL_7;
      }
    }

LABEL_23:
    v10 = 1;
    goto LABEL_24;
  }

  vcp_needsImageCaptionProcessing2 = [self vcp_needsImageCaptionProcessing];
  if (mediaAnalysisProperties)
  {
    v7 = vcp_needsImageCaptionProcessing2;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) != 0 || [mediaAnalysisProperties mediaAnalysisImageVersion] < 75)
  {
    goto LABEL_23;
  }

LABEL_7:
  mediaAnalysisTimeStamp = [mediaAnalysisProperties mediaAnalysisTimeStamp];
  vcp_modificationDate = [self vcp_modificationDate];
  v10 = [mediaAnalysisTimeStamp isEqualToDate:vcp_modificationDate] ^ 1;

LABEL_24:
  return v10;
}

- (BOOL)vcp_needsImageCaptionProcessing
{
  if (+[VCPVideoCaptionAnalyzer mode]!= 1)
  {
    return 0;
  }

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  v3 = mediaAnalysisProperties;
  if (mediaAnalysisProperties)
  {
    v4 = [mediaAnalysisProperties imageCaptionVersion] < 73;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)vcp_needsVideoCaptionProcessing
{
  if (+[VCPVideoCaptionAnalyzer mode]!= 1)
  {
    return 0;
  }

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  if ([self mad_isNonLivePhotoImage])
  {
    v3 = 0;
  }

  else if (mediaAnalysisProperties)
  {
    v3 = [mediaAnalysisProperties videoCaptionVersion] < 73;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (uint64_t)vcp_needsProcessingForTask:()MediaAnalysis
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 > 9)
  {
    if (a3 == 10)
    {

      return [self vcp_needsOCRProcessing];
    }

    if (a3 == 12)
    {
      if ([self vcp_needsVisualSearchProcessing])
      {
        return 1;
      }

      return [self vcp_needsStickerGatingProcessing];
    }

    if (a3 != 255)
    {
      goto LABEL_19;
    }

    v6 = 1;
LABEL_13:

    return [self vcp_needsFullAnalysisProcessing:v6];
  }

  if (a3 == 1)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {

      return [self vcp_needsFaceProcessing];
    }

LABEL_19:
    if (MediaAnalysisLogLevel() >= 5)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v7 = VCPTaskIDDescription(a3);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PHAsset vcp_needsProcessingForTask] not implemented for %@", &v8, 0xCu);
    }

    return 0;
  }

  return [self vcp_needSceneProcessing];
}

- (uint64_t)vcp_isLongMovie
{
  result = [self isVideo];
  if (result)
  {
    [self duration];
    return v3 > [objc_opt_class() vcp_longMovieDurationThreshold];
  }

  return result;
}

- (uint64_t)mad_isShared
{
  if ([self isCloudSharedAsset])
  {
    return 1;
  }

  return [self isCollectionShareAsset];
}

@end