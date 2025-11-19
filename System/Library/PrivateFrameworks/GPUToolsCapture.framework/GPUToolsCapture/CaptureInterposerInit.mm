@interface CaptureInterposerInit
@end

@implementation CaptureInterposerInit

void __CaptureInterposerInit_block_invoke(id a1)
{
  if (GTCoreLogInit_once != -1)
  {
    dispatch_once(&GTCoreLogInit_once, &__block_literal_global_15105);
  }

  hideMemory = 1;
  GTMTLCaptureEnvironment_init();
  GTMTLTelemetryEnvironment_init();
  s_logUsingOsLog = (dword_31F7C8 & 0x20000) == 0;
  apr_initialize();
  apr_pool_create_ex(&newpool, 0, 0, 0);
  g_loadURLAsMemHeader = 1;
  g_ctx = GTTraceContext_create((dword_31F7C8 >> 28) & 1);
  CaptureMTLInit();
  CaptureCA();
  _objc_addWillInitializeClassFunc();
  GTMTLCaptureManager_init();
  GTCaptureBoundaryTracker_init(g_ctx);
  if (GTTelemetry_init::onceToken != -1)
  {
    dispatch_once(&GTTelemetry_init::onceToken, &__block_literal_global_14853);
  }

  v1 = objc_autoreleasePoolPush();
  inited = GTMTLGuestAppClient_initPlatform(v1);
  objc_autoreleasePoolPop(v1);
  g_guestAppClientMTL = inited;
}

@end