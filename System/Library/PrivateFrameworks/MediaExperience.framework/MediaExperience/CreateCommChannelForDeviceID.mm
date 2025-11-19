@interface CreateCommChannelForDeviceID
@end

@implementation CreateCommChannelForDeviceID

uint64_t __routingContextResilientRemote_CreateCommChannelForDeviceID_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 16) + 152);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 16) + 152;

  return v7(a2, v3, v4, v5);
}

uint64_t __routingContext_CreateCommChannelForDeviceID_block_invoke(void *a1)
{
  result = MXSystemRemotePool_CreateCommChannel(a1[5], a1[6], a1[7]);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

@end