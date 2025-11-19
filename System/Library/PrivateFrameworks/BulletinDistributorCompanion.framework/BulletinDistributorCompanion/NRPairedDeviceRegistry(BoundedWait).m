@interface NRPairedDeviceRegistry(BoundedWait)
+ (id)blt_boundedWaitForActivePairedDevice;
@end

@implementation NRPairedDeviceRegistry(BoundedWait)

+ (id)blt_boundedWaitForActivePairedDevice
{
  if (blt_boundedWaitForActivePairedDevice_onceToken != -1)
  {
    +[NRPairedDeviceRegistry(BoundedWait) blt_boundedWaitForActivePairedDevice];
  }

  os_unfair_lock_lock(&blt_boundedWaitForActivePairedDevice_deviceLock);
  v0 = blt_boundedWaitForActivePairedDevice_device;
  os_unfair_lock_unlock(&blt_boundedWaitForActivePairedDevice_deviceLock);
  if (!v0)
  {
    v1 = blt_general_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      +[(NRPairedDeviceRegistry(BoundedWait) *)v1];
    }

    v2 = [MEMORY[0x277D2BCF8] sharedInstance];
    v0 = [v2 getActivePairedDevice];
  }

  return v0;
}

@end