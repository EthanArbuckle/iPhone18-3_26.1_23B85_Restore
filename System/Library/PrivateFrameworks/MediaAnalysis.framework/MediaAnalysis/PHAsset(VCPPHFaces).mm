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
  v7 = [a1 pixelWidth];
  if (v7 >= [a1 pixelHeight])
  {
    [a1 pixelWidth];
    [a1 pixelHeight];
  }

  else
  {
    v8 = [a1 pixelHeight];
    v6 = v6 * (v8 / [a1 pixelWidth]);
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
    v41 = [MEMORY[0x1E695DF70] array];
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
          [a1 vcp_faceRectFrom:v7];
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

          v14 = [a1 vcp_flagsForPHFace:v7 withFaceRect:?];
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
          [v41 addObject:v27];

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
      v29 = [MEMORY[0x1E695DF70] array];
      v30 = MediaAnalysisShotType(v28);
      v53 = @"attributes";
      v51 = @"shotType";
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
      v52 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v54 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      [v29 addObject:v33];

      *a3 |= 0x20uLL;
      v49[0] = @"FaceResults";
      v49[1] = @"ShotTypeResults";
      v50[0] = v41;
      v50[1] = v29;
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
  v5 = [a1 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setIncludeTorsoAndFaceDetectionData:1];
  if ([MEMORY[0x1E69789B0] mad_clusterVideoFaces])
  {
    [v6 setIncludeMediaAnalysisProcessingRangeTypes:3];
  }

  if ([v4 count])
  {
    [v6 setFetchPropertySets:v4];
  }

  v7 = [MEMORY[0x1E69787D0] fetchFacesInAsset:a1 options:v6];

  return v7;
}

- (uint64_t)vcp_quickFaceClassificationDone
{
  v2 = [a1 faceAdjustmentVersion];
  v3 = [a1 adjustmentVersion];
  if ([v2 isEqualToDate:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 faceAdjustmentVersion];
    v6 = [MEMORY[0x1E6978628] quickClassificationFaceAdjustmentVersion];
    v4 = [v5 isEqualToDate:v6];
  }

  return v4;
}

- (uint64_t)vcp_needsFaceProcessing
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 faceAdjustmentVersion];

  if (v2)
  {
    v3 = [a1 faceAdjustmentVersion];
    v4 = [a1 adjustmentVersion];
    v5 = [v3 isEqualToDate:v4];

    if (v5)
    {
      result = _os_feature_enabled_impl();
      if (!result)
      {
        return result;
      }

      v7 = [a1 photoLibrary];
      v8 = [v7 mad_faceProcessingInternalVersion];

      if (v8 == [a1 faceAnalysisVersion])
      {
        return 0;
      }

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v13 = [a1 localIdentifier];
        v14 = 138412802;
        v15 = v13;
        v16 = 1024;
        *v17 = [a1 faceAnalysisVersion];
        *&v17[4] = 1024;
        *&v17[6] = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] faceAnalysisVersion %d (target %d)", &v14, 0x18u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v10 = [a1 localIdentifier];
      v11 = [a1 faceAdjustmentVersion];
      v12 = [a1 adjustmentVersion];
      v14 = 138412802;
      v15 = v10;
      v16 = 2112;
      *v17 = v11;
      *&v17[8] = 2112;
      v18 = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] faceAdjustmentVersion %@ != adjustmentTimestamp %@", &v14, 0x20u);
    }
  }

  else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = [a1 localIdentifier];
    v14 = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][FaceAnalysisStateCheck] no faceAdjustmentVersion", &v14, 0xCu);
  }

  return 1;
}

@end