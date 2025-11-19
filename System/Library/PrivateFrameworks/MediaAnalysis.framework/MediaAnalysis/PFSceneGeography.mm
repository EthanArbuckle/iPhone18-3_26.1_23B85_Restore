@interface PFSceneGeography
@end

@implementation PFSceneGeography

void __59__PFSceneGeography_MediaAnalysis__vcp_sharedSceneGeography__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69C0848]);
  v1 = +[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography]::instance;
  +[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography]::instance = v0;

  if (!+[PFSceneGeography(MediaAnalysis) vcp_sharedSceneGeography]::instance && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to initialize PFSceneGeography", v2, 2u);
  }
}

@end