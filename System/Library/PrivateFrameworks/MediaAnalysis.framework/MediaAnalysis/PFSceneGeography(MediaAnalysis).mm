@interface PFSceneGeography(MediaAnalysis)
+ (id)vcp_sharedSceneGeography;
@end

@implementation PFSceneGeography(MediaAnalysis)

+ (id)vcp_sharedSceneGeography
{
  if (+[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography]::once != -1)
  {
    +[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography];
  }

  v1 = +[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography]::instance;

  return v1;
}

@end