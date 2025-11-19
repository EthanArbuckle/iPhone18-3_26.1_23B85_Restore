@interface CSOtherAppRecordingStateMonitorASMac
+ (id)sharedInstance;
@end

@implementation CSOtherAppRecordingStateMonitorASMac

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8474 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8474, &__block_literal_global_8475);
  }

  v3 = sharedInstance_sharedInstance_8476;

  return v3;
}

uint64_t __54__CSOtherAppRecordingStateMonitorASMac_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSOtherAppRecordingStateMonitorASMac);
  v1 = sharedInstance_sharedInstance_8476;
  sharedInstance_sharedInstance_8476 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end