@interface SendDataForDeviceID
@end

@implementation SendDataForDeviceID

uint64_t __routingContext_SendDataForDeviceID_block_invoke(uint64_t a1)
{
  result = MXSystemRemotePool_SendData(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end