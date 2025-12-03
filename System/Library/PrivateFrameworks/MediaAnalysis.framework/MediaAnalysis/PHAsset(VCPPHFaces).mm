@interface PHAsset(VCPPHFaces)
- (double)vcp_faceRectFrom:()VCPPHFaces;
- (id)vcp_PHFaces:()VCPPHFaces;
- (uint64_t)vcp_flagsForPHFace:()VCPPHFaces withFaceRect:;
- (uint64_t)vcp_needsFaceProcessing;
- (uint64_t)vcp_queryPHFaces:()VCPPHFaces results:;
- (uint64_t)vcp_quickFaceClassificationDone;
@end

@implementation PHAsset(VCPPHFaces)

- (uint64_t)vcp_flagsForPHFace:()VCPPHFaces withFaceRect:
{
  v9 = a7;
  if ([v9 hasSmile])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if ([v9 isLeftEyeClosed] && objc_msgSend(v9, "isRightEyeClosed"))
  {
    v10 |= 4uLL;
  }

  else if (([v9 isLeftEyeClosed] & 1) != 0 || objc_msgSend(v9, "isRightEyeClosed"))
  {
    v10 |= 8uLL;
  }

  if (a3 >= a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = a4;
  }

  if (v11 >= 0.449999988)
  {
    v10 |= 0x10uLL;
  }

  return v10;
}

- (double)vcp_faceRectFrom:()VCPPHFaces
{
  v4 = a3;
  [v4 size];
  v6 = v5;
  [v4 size];
  pixelWidth = [self pixelWidth];
  if (pixelWidth >= [self pixelHeight])
  {
    [self pixelWidth];
    [self pixelHeight];
  }

  else
  {
    pixelHeight = [self pixelHeight];
    v6 = v6 * (pixelHeight / [self pixelWidth]);
  }

  [v4 centerX];
  v10 = v9;
  [v4 centerX];
  v12 = v11;
  [v4 centerY];
  [v4 centerY];
  [v4 centerX];
  v14 = v13;
  [v4 centerY];
  v15 = 1.0 - v12;
  if (1.0 - v12 >= v10)
  {
    v15 = v10;
  }

  v16 = v15 + v15;
  if (v16 < v6)
  {
    v6 = v16;
  }

  return v14 - v6 * 0.5;
}

- (uint64_t)vcp_queryPHFaces:()VCPPHFaces results:
{
  v60 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v37 = [MEMORY[0x1E69787D0] fetchFacesInAsset:? options:?];
  if (v37 && [v37 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v37;
    v4 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v4)
    {
      v39 = *v46;
      v5 = 0.0;
      v43 = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v45 + 1) + 8 * i);
          memset(&v44, 0, sizeof(v44));
          [self vcp_faceRectFrom:v7];
          v44.origin.x = v10;
          v44.origin.y = v11;
          v44.size.width = v8;
          v44.size.height = v9;
          if (v8 >= v9)
          {
            v12 = v8;
          }

          else
          {
            v12 = v9;
          }

          v13 = v12;
          if (v5 < v13)
          {
            v5 = v13;
          }

          v14 = [self vcp_flagsForPHFace:v7 withFaceRect:?];
          v15 = MediaAnalysisFacePosition(&v44);
          [v7 poseYaw];
          *&v16 = v16;
          v17 = MediaAnalysisPoseYawFromRadian(*&v16);
          [v7 quality];
          v18 = v43;
          if (v19 == -1.0)
          {
            v18 = 0;
          }

          v43 = v18;
          v57[0] = @"flags";
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v14];
          v58[0] = v20;
          v57[1] = @"attributes";
          v55[0] = @"faceQuality";
          v21 = MEMORY[0x1E696AD98];
          [v7 quality];
          v22 = [v21 numberWithDouble:?];
          v56[0] = v22;
          v55[1] = @"facePosition";
          v23 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
          v56[1] = v23;
          v55[2] = @"faceBounds";
          v24 = NSStringFromRect(v44);
          v56[2] = v24;
          v55[3] = @"facePoseYaw";
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
          v56[3] = v25;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];
          v58[1] = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
          [array addObject:v27];

          *a3 |= v14;
        }

        v4 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
      }

      while (v4);
      v28 = v5;
    }

    else
    {
      v28 = 0.0;
      v43 = 1;
    }

    if ([obj count])
    {
      array2 = [MEMORY[0x1E695DF70] array];
      v30 = MediaAnalysisShotType(v28);
      v53 = @"attributes";
      v51 = @"shotType";
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
      v52 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v54 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      [array2 addObject:v33];

      *a3 |= 0x20uLL;
      v49[0] = @"FaceResults";
      v49[1] = @"ShotTypeResults";
      v50[0] = array;
      v50[1] = array2;
      v49[2] = @"FaceQualityFlag";
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
      v50[2] = v34;
      *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];
    }
  }

  return 0;
}

- (id)vcp_PHFaces:()VCPPHFaces
{
  v4 = a3;
  photoLibrary = [self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [librarySpecificFetchOptions setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  if ([v4 count])
  {
    [librarySpecificFetchOptions setFetchPropertySets:v4];
  }

  v7 = [MEMORY[0x1E69787D0] fetchFacesInAsset:self options:librarySpecificFetchOptions];

  return v7;
}

- (uint64_t)vcp_quickFaceClassificationDone
{
  faceAdjustmentVersion = [self faceAdjustmentVersion];
  adjustmentVersion = [self adjustmentVersion];
  if ([faceAdjustmentVersion isEqualToDate:adjustmentVersion])
  {
    v4 = 1;
  }

  else
  {
    faceAdjustmentVersion2 = [self faceAdjustmentVersion];
    quickClassificationFaceAdjustmentVersion = [MEMORY[0x1E6978628] quickClassificationFaceAdjustmentVersion];
    v4 = [faceAdjustmentVersion2 isEqualToDate:quickClassificationFaceAdjustmentVersion];
  }

  return v4;
}

- (uint64_t)vcp_needsFaceProcessing
{
  v19 = *MEMORY[0x1E69E9840];
  faceAdjustmentVersion = [self faceAdjustmentVersion];

  if (faceAdjustmentVersion)
  {
    faceAdjustmentVersion2 = [self faceAdjustmentVersion];
    adjustmentVersion = [self adjustmentVersion];
    v5 = [faceAdjustmentVersion2 isEqualToDate:adjustmentVersion];

    if (v5)
    {
      result = _os_feature_enabled_impl();
      if (!result)
      {
        return result;
      }

      photoLibrary = [self photoLibrary];
      mad_faceProcessingInternalVersion = [photoLibrary mad_faceProcessingInternalVersion];

      if (mad_faceProcessingInternalVersion == [self faceAnalysisVersion])
      {
        return 0;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [self localIdentifier];
        v14 = 138412802;
        v15 = localIdentifier;
        v16 = 1024;
        *v17 = [self faceAnalysisVersion];
        *&v17[4] = 1024;
        *&v17[6] = mad_faceProcessingInternalVersion;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] faceAnalysisVersion %d (target %d)", &v14, 0x18u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [self localIdentifier];
      faceAdjustmentVersion3 = [self faceAdjustmentVersion];
      adjustmentVersion2 = [self adjustmentVersion];
      v14 = 138412802;
      v15 = localIdentifier2;
      v16 = 2112;
      *v17 = faceAdjustmentVersion3;
      *&v17[8] = 2112;
      v18 = adjustmentVersion2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] faceAdjustmentVersion %@ != adjustmentTimestamp %@", &v14, 0x20u);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier3 = [self localIdentifier];
    v14 = 138412290;
    v15 = localIdentifier3;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] no faceAdjustmentVersion", &v14, 0xCu);
  }

  return 1;
}

@end