@interface CopySelectedRouteForRemoteControl
@end

@implementation CopySelectedRouteForRemoteControl

uint64_t __routingContextResilientRemote_CopySelectedRouteForRemoteControl_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 72);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 72;

  return v5(a2, v3);
}

uint64_t __routingContext_CopySelectedRouteForRemoteControl_block_invoke(uint64_t a1)
{
  result = FigRoutingManagerCopyPickedEndpointForRemoteControl(*(*(a1 + 40) + 8), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end