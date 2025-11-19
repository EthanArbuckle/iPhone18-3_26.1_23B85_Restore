@interface FLTelemetryFactory
+ (id)sharedTelemetryController;
@end

@implementation FLTelemetryFactory

+ (id)sharedTelemetryController
{
  if (sharedTelemetryController_onceToken != -1)
  {
    +[FLTelemetryFactory sharedTelemetryController];
  }

  v3 = sharedTelemetryController_controller;

  return v3;
}

uint64_t __47__FLTelemetryFactory_sharedTelemetryController__block_invoke()
{
  sharedTelemetryController_controller = objc_alloc_init(FLTelemetryAnalyticsController);

  return MEMORY[0x2821F96F8]();
}

@end