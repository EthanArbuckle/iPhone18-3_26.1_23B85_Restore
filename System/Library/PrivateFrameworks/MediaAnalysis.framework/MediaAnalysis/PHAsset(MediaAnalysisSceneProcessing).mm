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
  result = [a1 mad_isShared];
  if (result)
  {
    return [a1 compactSCSensitivityAnalysis] == 0;
  }

  return result;
}

- (uint64_t)vcp_needSceneProcessing
{
  v2 = [a1 sceneAnalysisProperties];
  v3 = [v2 sceneAnalysisVersion];
  if (VCPPhotosSceneProcessingVersionInternal() == v3)
  {
    v4 = [v2 sceneAnalysisTimestamp];
    v5 = [a1 adjustmentVersion];
    if ([v4 isEqualToDate:v5] && (objc_msgSend(a1, "mad_needsImageEmbeddingProcessing") & 1) == 0)
    {
      v6 = [a1 mad_needSceneProcessingForSharedAsset];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)mad_needsImageEmbeddingProcessing
{
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    return 0;
  }

  v2 = [a1 mediaAnalysisProperties];
  v3 = [v2 imageEmbeddingVersion] != 75;

  return v3;
}

- (BOOL)mad_needsVideoEmbeddingProcessing
{
  if (!+[VCPVideoCNNAnalyzer isMUBackboneEnabled])
  {
    return 0;
  }

  v2 = [a1 mediaAnalysisProperties];
  v3 = [v2 videoEmbeddingVersion] != 75;

  return v3;
}

- (id)vcp_confidenceForExtendedSceneIdentifier:()MediaAnalysisSceneProcessing
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [a1 sceneAnalysisProperties];
  v6 = [v5 sceneAnalysisVersion];
  if ((VCPPhotosSceneProcessingVersionInternal() == v6 || (v7 = [v5 sceneAnalysisVersion], *MEMORY[0x1E69C0C30] == v7)) && (objc_msgSend(v5, "sceneAnalysisTimestamp"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "adjustmentVersion"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToDate:", v9), v9, v8, v10))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [a1 sceneClassifications];
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v11);
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

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v2 = [a1 pixelWidth] <= 0x12A && objc_msgSend(a1, "pixelHeight") < 0x12B;
  if ([a1 pixelHeight])
  {
    v3 = [a1 pixelWidth];
    v4 = v3 / [a1 pixelHeight];
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