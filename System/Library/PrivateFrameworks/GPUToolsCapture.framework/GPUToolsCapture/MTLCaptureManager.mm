@interface MTLCaptureManager
@end

@implementation MTLCaptureManager

void __MTLCaptureManager_sharedCaptureManager_block_invoke(id a1)
{
  v1 = [[CaptureMTLCaptureManager alloc] initWithCaptureContext:g_ctx andIsToolsManager:0];
  v2 = MTLCaptureManager_sharedCaptureManager_sharedCaptureManager;
  MTLCaptureManager_sharedCaptureManager_sharedCaptureManager = v1;

  _objc_release_x1(v1, v2);
}

@end