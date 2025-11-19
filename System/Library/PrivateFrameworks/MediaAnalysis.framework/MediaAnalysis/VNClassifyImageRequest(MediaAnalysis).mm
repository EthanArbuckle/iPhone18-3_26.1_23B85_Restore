@interface VNClassifyImageRequest(MediaAnalysis)
+ (id)vcp_sceneRequest;
@end

@implementation VNClassifyImageRequest(MediaAnalysis)

+ (id)vcp_sceneRequest
{
  v0 = [MEMORY[0x1E6984598] vcp_sceneRequestWithRequestClass:objc_opt_class() andRevision:3737841667];
  [v0 setMaximumLeafObservations:15];
  [v0 setMaximumHierarchicalObservations:15];

  return v0;
}

@end