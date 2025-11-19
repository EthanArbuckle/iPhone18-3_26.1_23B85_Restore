@interface CloseCommChannelForDeviceID
@end

@implementation CloseCommChannelForDeviceID

uint64_t __routingContextResilientRemote_CloseCommChannelForDeviceID_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 168);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 168;

  return v6(a2, v3, v4);
}

uint64_t __routingContext_CloseCommChannelForDeviceID_block_invoke(void *a1)
{
  result = MXSystemRemotePool_CloseCommChannel(a1[5], a1[6]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end