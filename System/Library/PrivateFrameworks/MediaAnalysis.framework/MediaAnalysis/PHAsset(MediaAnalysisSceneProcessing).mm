@interface PHAsset(MediaAnalysisSceneProcessing)
- (BOOL)mad_needsImageEmbeddingProcessing;
- (BOOL)mad_needsVideoEmbeddingProcessing;
- (id)vcp_confidenceForExtendedSceneIdentifier:()MediaAnalysisSceneProcessing;
- (uint64_t)mad_needSceneProcessingForSharedAsset;
- (uint64_t)vcp_abnormalImageDimensionForSceneNet;
- (uint64_t)vcp_needSceneProcessing;
@end

@implementation PHAsset(MediaAnalysisSceneProcessing)

- (uint64_t)mad_needSceneProcessingForSharedAsset
{
  result = [self mad_isShared];
  if (result)
  {
    return [self compactSCSensitivityAnalysis] == 0;
  }

  return result;
}

- (uint64_t)vcp_needSceneProcessing
{
  sceneAnalysisProperties = [self sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  if (VCPPhotosSceneProcessingVersionInternal() == sceneAnalysisVersion)
  {
    sceneAnalysisTimestamp = [sceneAnalysisProperties sceneAnalysisTimestamp];
    adjustmentVersion = [self adjustmentVersion];
    if ([sceneAnalysisTimestamp isEqualToDate:adjustmentVersion] && (objc_msgSend(self, "mad_needsImageEmbeddingProcessing") & 1) == 0)
    {
      mad_needSceneProcessingForSharedAsset = [self mad_needSceneProcessingForSharedAsset];
    }

    else
    {
      mad_needSceneProcessingForSharedAsset = 1;
    }
  }

  else
  {
    mad_needSceneProcessingForSharedAsset = 1;
  }

  return mad_needSceneProcessingForSharedAsset;
}

- (BOOL)mad_needsImageEmbeddingProcessing
{
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    return 0;
  }

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  v3 = [mediaAnalysisProperties imageEmbeddingVersion] != 75;

  return v3;
}

- (BOOL)mad_needsVideoEmbeddingProcessing
{
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    return 0;
  }

  mediaAnalysisProperties = [self mediaAnalysisProperties];
  v3 = [mediaAnalysisProperties videoEmbeddingVersion] != 75;

  return v3;
}

- (id)vcp_confidenceForExtendedSceneIdentifier:()MediaAnalysisSceneProcessing
{
  v24 = *MEMORY[0x1E69E9840];
  sceneAnalysisProperties = [self sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  if ((VCPPhotosSceneProcessingVersionInternal() == sceneAnalysisVersion || (v7 = [sceneAnalysisProperties sceneAnalysisVersion], *MEMORY[0x1E69C0C30] == v7)) && (objc_msgSend(sceneAnalysisProperties, "sceneAnalysisTimestamp"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "adjustmentVersion"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDate:", v9), v9, v8, v10))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    sceneClassifications = [self sceneClassifications];
    v12 = [sceneClassifications countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      v14 = &unk_1F49BDBD0;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(sceneClassifications);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v16 extendedSceneIdentifier] == a3)
          {
            v17 = MEMORY[0x1E696AD98];
            [v16 confidence];
            v14 = [v17 numberWithDouble:?];
            goto LABEL_16;
          }
        }

        v12 = [sceneClassifications countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = &unk_1F49BDBD0;
    }

LABEL_16:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)vcp_abnormalImageDimensionForSceneNet
{
  v2 = [self pixelWidth] <= 0x12A && objc_msgSend(self, "pixelHeight") < 0x12B;
  if ([self pixelHeight])
  {
    pixelWidth = [self pixelWidth];
    v4 = pixelWidth / [self pixelHeight];
  }

  else
  {
    v4 = 1.0;
  }

  if (v4 > 0.5 && v4 < 2.0)
  {
    return v2;
  }

  else
  {
    return v2 | 2;
  }
}

@end