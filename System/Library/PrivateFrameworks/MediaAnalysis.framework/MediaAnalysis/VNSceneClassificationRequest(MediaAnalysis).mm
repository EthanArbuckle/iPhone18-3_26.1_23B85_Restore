@interface VNSceneClassificationRequest(MediaAnalysis)
+ (id)vcp_sceneRequest;
@end

@implementation VNSceneClassificationRequest(MediaAnalysis)

+ (id)vcp_sceneRequest
{
  v0 = [MEMORY[0x1E6984598] vcp_sceneRequestWithRequestClass:objc_opt_class() andRevision:3737841665];
  if (objc_opt_respondsToSelector())
  {
    [v0 setMaximumLeafObservations:15];
  }

  if (objc_opt_respondsToSelector())
  {
    [v0 setMaximumHierarchicalObservations:15];
  }

  return v0;
}

@end