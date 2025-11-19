@interface IsDeviceDifferentFromLastReturnedDevice
@end

@implementation IsDeviceDifferentFromLastReturnedDevice

void ____IsDeviceDifferentFromLastReturnedDevice_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.NanoPassKit.LastReturnedDevice", 0);
  v1 = __LastReturnedDeviceQueue;
  __LastReturnedDeviceQueue = v0;
}

void ____IsDeviceDifferentFromLastReturnedDevice_block_invoke_2(uint64_t a1)
{
  obj = [*(a1 + 32) valueForProperty:*MEMORY[0x277D2BBB8]];
  if (([__LastReturnedDevicePairingID isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&__LastReturnedDevicePairingID, obj);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

@end