@interface ARFrame(OUFrame)
- (id)sceneCamera;
- (uint64_t)sceneColorBuffer;
- (uint64_t)sceneDepthBuffer;
- (uint64_t)sceneDepthConfidenceBuffer;
- (uint64_t)semanticConfidenceBuffer;
- (uint64_t)semanticLabelBuffer;
- (uint64_t)vioTrackingState;
@end

@implementation ARFrame(OUFrame)

- (id)sceneCamera
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 wideCamera];

  return v2;
}

- (uint64_t)sceneColorBuffer
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 capturedImage];

  return v2;
}

- (uint64_t)sceneDepthBuffer
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 depthBuffer];

  return v2;
}

- (uint64_t)sceneDepthConfidenceBuffer
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 depthConfidenceBuffer];

  return v2;
}

- (uint64_t)semanticLabelBuffer
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 semanticSegmentationBufferSampledForDepth];

  return v2;
}

- (uint64_t)semanticConfidenceBuffer
{
  v1 = [a1 rawSceneUnderstandingData];
  v2 = [v1 semanticSegmentationConfidenceBufferSampledForDepth];

  return v2;
}

- (uint64_t)vioTrackingState
{
  v1 = [a1 worldTrackingState];
  v2 = [v1 vioTrackingState];

  return v2;
}

@end