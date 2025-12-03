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
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  wideCamera = [rawSceneUnderstandingData wideCamera];

  return wideCamera;
}

- (uint64_t)sceneColorBuffer
{
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  capturedImage = [rawSceneUnderstandingData capturedImage];

  return capturedImage;
}

- (uint64_t)sceneDepthBuffer
{
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  depthBuffer = [rawSceneUnderstandingData depthBuffer];

  return depthBuffer;
}

- (uint64_t)sceneDepthConfidenceBuffer
{
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  depthConfidenceBuffer = [rawSceneUnderstandingData depthConfidenceBuffer];

  return depthConfidenceBuffer;
}

- (uint64_t)semanticLabelBuffer
{
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  semanticSegmentationBufferSampledForDepth = [rawSceneUnderstandingData semanticSegmentationBufferSampledForDepth];

  return semanticSegmentationBufferSampledForDepth;
}

- (uint64_t)semanticConfidenceBuffer
{
  rawSceneUnderstandingData = [self rawSceneUnderstandingData];
  semanticSegmentationConfidenceBufferSampledForDepth = [rawSceneUnderstandingData semanticSegmentationConfidenceBufferSampledForDepth];

  return semanticSegmentationConfidenceBufferSampledForDepth;
}

- (uint64_t)vioTrackingState
{
  worldTrackingState = [self worldTrackingState];
  vioTrackingState = [worldTrackingState vioTrackingState];

  return vioTrackingState;
}

@end