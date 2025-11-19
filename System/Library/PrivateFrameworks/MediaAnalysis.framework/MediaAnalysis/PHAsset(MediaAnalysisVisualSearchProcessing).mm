@interface PHAsset(MediaAnalysisVisualSearchProcessing)
- (BOOL)vcp_needsStickerGatingProcessing;
- (uint64_t)vcp_needsPECProcessing;
- (uint64_t)vcp_needsVisualSearchProcessing;
@end

@implementation PHAsset(MediaAnalysisVisualSearchProcessing)

- (uint64_t)vcp_needsVisualSearchProcessing
{
  v2 = [a1 visualSearchProperties];
  v3 = [v2 algorithmVersion];
  if (v3 >= VCPPhotosVisualSearchAlgorithmVersion())
  {
    v5 = [v2 adjustmentVersion];
    if (v5)
    {
      v6 = [v2 adjustmentVersion];
      v7 = [a1 adjustmentVersion];
      v4 = [v6 isEqualToDate:v7] ^ 1;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)vcp_needsStickerGatingProcessing
{
  if (![MEMORY[0x1E6978628] enableStickerScore])
  {
    return 0;
  }

  v2 = [a1 visualSearchProperties];
  v3 = [v2 stickerAlgorithmVersion] < 1;

  return v3;
}

- (uint64_t)vcp_needsPECProcessing
{
  v2 = [a1 sceneAnalysisProperties];
  if ([v2 privateEncryptedComputeAnalysisVersion] == 5)
  {
    v3 = [v2 privateEncryptedComputeAnalysisTimestamp];
    v4 = [a1 adjustmentVersion];
    v5 = [v3 isEqualToDate:v4];

    v6 = v5 ^ 1u;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end