@interface NSPredicate(MediaAnalysis)
+ (id)mad_internalPredicateForTaskID:()MediaAnalysis;
+ (id)mad_internalPredicateNeedsProcessingForTaskID:()MediaAnalysis;
+ (id)mad_internalPredicateWithPriority:()MediaAnalysis forTaskID:;
+ (id)vcp_imagesPredicate:()MediaAnalysis;
+ (id)vcp_livePhotosPredicate:()MediaAnalysis;
+ (id)vcp_moviesPredicate:()MediaAnalysis;
+ (id)vcp_nonPanoPredicate:()MediaAnalysis;
+ (id)vcp_stillImagesPredicate:()MediaAnalysis;
+ (uint64_t)mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate;
+ (uint64_t)mad_prioritizedAssetsForFaceDetectionInternalPredicate;
@end

@implementation NSPredicate(MediaAnalysis)

+ (id)vcp_imagesPredicate:()MediaAnalysis
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaType == %d", 1];
  }
  v3 = ;

  return v3;
}

+ (id)vcp_stillImagesPredicate:()MediaAnalysis
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d && kindSubtype != %d", 0, 2, v5];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaType == %d && !((mediaSubtype & %d) == %d)", 1, 8, 8];
  }
  v3 = ;

  return v3;
}

+ (id)vcp_livePhotosPredicate:()MediaAnalysis
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype == %d", 2, v5];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(mediaSubtype & %d) == %d", 8, 8];
  }
  v3 = ;

  return v3;
}

+ (id)vcp_nonPanoPredicate:()MediaAnalysis
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype != %d", 1, v5];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"!((mediaSubtype & %d) == %d)", 1, 1];
  }
  v3 = ;

  return v3;
}

+ (id)vcp_moviesPredicate:()MediaAnalysis
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 1];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaType == %d", 2];
  }
  v3 = ;

  return v3;
}

+ (uint64_t)mad_prioritizedAssetsForFaceDetectionInternalPredicate
{
  v0 = MEMORY[0x1E696AE18];
  [MEMORY[0x1E6978628] mad_peopleThreshold];
  return [v0 predicateWithFormat:@"kindSubtype != %d && SUBQUERY(additionalAttributes.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence > %f).@count > 0", 1, 881, v1];
}

+ (uint64_t)mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate
{
  v0 = MEMORY[0x1E696AE18];
  [MEMORY[0x1E6978628] mad_peopleThreshold];
  return [v0 predicateWithFormat:@"kindSubtype != %d && SUBQUERY(additionalAttributes.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence > %f).@count = 0", 1, 881, v1];
}

+ (id)mad_internalPredicateForTaskID:()MediaAnalysis
{
  if (a3 == 12)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kind == %d", 0];
    goto LABEL_5;
  }

  if (a3 == 10)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype != %d", 1];
    v3 = LABEL_5:;
    goto LABEL_7;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

+ (id)mad_internalPredicateWithPriority:()MediaAnalysis forTaskID:
{
  v5 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (a4 == 10)
  {
    if (a3 == 2)
    {
      v11 = MEMORY[0x1E696AE18];
      [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
      mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = [v11 predicateWithFormat:@"SUBQUERY(additionalAttributes.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence >= %f).@count = 0", 2147482063, v12];
      goto LABEL_14;
    }

    if (a3 == 1)
    {
      v7 = MEMORY[0x1E696AE18];
      [MEMORY[0x1E6978628] vcp_ocrGatingThreshold];
      mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = [v7 predicateWithFormat:@"SUBQUERY(additionalAttributes.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence >= %f).@count > 0", 2147482063, v8];
      goto LABEL_14;
    }
  }

  else if (a4 == 3)
  {
    switch(a3)
    {
      case 3:
        mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = [MEMORY[0x1E696AE18] predicateWithFormat:@"kindSubtype == %d", 1];
        goto LABEL_14;
      case 2:
        mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = [MEMORY[0x1E696AE18] mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate];
        goto LABEL_14;
      case 1:
        mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = [MEMORY[0x1E696AE18] mad_prioritizedAssetsForFaceDetectionInternalPredicate];
        goto LABEL_14;
    }
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = VCPTaskIDDescription(a4);
    *buf = 138412546;
    v14 = v9;
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Predicate requested for unsupported task (%@) & priority (%d)", buf, 0x12u);
  }

  mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate = 0;
LABEL_14:

  return mad_nonPrioritizedAssetsForFaceDetectionInternalPredicate;
}

+ (id)mad_internalPredicateNeedsProcessingForTaskID:()MediaAnalysis
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.characterRecognitionAttributes = NULL || mediaAnalysisAttributes.characterRecognitionAttributes.algorithmVersion != %d || adjustmentTimestamp != mediaAnalysisAttributes.characterRecognitionAttributes.adjustmentVersion", 8];
      goto LABEL_14;
    }

    if (a3 == 12)
    {
      v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.visualSearchAttributes = NULL || mediaAnalysisAttributes.visualSearchAttributes.algorithmVersion != %d || mediaAnalysisAttributes.visualSearchAttributes.stickerConfidenceAlgorithmVersion != %d ||adjustmentTimestamp != mediaAnalysisAttributes.visualSearchAttributes.adjustmentVersion", VCPPhotosVisualSearchAlgorithmVersion(), 1];
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 == 2)
    {
      v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"additionalAttributes.sceneAnalysisVersion != %d || adjustmentTimestamp != additionalAttributes.sceneAnalysisTimestamp", VCPPhotosSceneProcessingVersionInternal()];
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"adjustmentTimestamp != faceAdjustmentVersion"];
      goto LABEL_14;
    }
  }

  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = VCPTaskIDDescription(a3);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Predicate requested for unsupported task (%@)", buf, 0xCu);
  }

  v4 = 0;
LABEL_14:

  return v4;
}

@end