@interface AddToSelectedRouteDescriptorsWithCompletionCallback
@end

@implementation AddToSelectedRouteDescriptorsWithCompletionCallback

uint64_t __routingContextResilientRemote_AddToSelectedRouteDescriptorsWithCompletionCallback_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(CMBaseObjectGetVTable() + 16);
  if (!*(v7 + 88))
  {
    return 4294954514;
  }

  v8 = *(v7 + 200);

  return v8(a2, v3, v4, v5, v6);
}

@end