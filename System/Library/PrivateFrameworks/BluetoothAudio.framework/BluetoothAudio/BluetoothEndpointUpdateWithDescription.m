@interface BluetoothEndpointUpdateWithDescription
@end

@implementation BluetoothEndpointUpdateWithDescription

void ___BluetoothEndpointUpdateWithDescription_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *MEMORY[0x277CC0D48];
  v3 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end