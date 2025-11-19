@interface VNGenerateObjectnessBasedSaliencyImageRequest(MediaAnalysis)
+ (uint64_t)vcp_sceneRequest;
@end

@implementation VNGenerateObjectnessBasedSaliencyImageRequest(MediaAnalysis)

+ (uint64_t)vcp_sceneRequest
{
  v0 = MEMORY[0x1E6984598];
  v1 = objc_opt_class();

  return [v0 vcp_sceneRequestWithRequestClass:v1 andRevision:3737841666];
}

@end