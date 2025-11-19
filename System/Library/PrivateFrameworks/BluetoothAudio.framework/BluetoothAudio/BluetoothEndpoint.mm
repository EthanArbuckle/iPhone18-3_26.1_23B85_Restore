@interface BluetoothEndpoint
@end

@implementation BluetoothEndpoint

void __BluetoothEndpoint_Disassociate_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *MEMORY[0x277CC0D30];
  v3 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v4 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 32);
  if (v6)
  {
    v7 = *(VTable + 16) + 32;
    v6(v4);
  }

  v8 = *(a1 + 32);

  CFRelease(v8);
}

@end