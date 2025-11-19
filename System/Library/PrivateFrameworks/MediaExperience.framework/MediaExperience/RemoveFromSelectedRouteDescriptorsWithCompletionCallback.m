@interface RemoveFromSelectedRouteDescriptorsWithCompletionCallback
@end

@implementation RemoveFromSelectedRouteDescriptorsWithCompletionCallback

uint64_t __routingContextResilientRemote_RemoveFromSelectedRouteDescriptorsWithCompletionCallback_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  VTable = CMBaseObjectGetVTable();
  v8 = *(*(VTable + 16) + 208);
  if (!v8)
  {
    return 4294954514;
  }

  v9 = *(VTable + 16) + 208;

  return v8(a2, v3, v4, v5, v6);
}

@end