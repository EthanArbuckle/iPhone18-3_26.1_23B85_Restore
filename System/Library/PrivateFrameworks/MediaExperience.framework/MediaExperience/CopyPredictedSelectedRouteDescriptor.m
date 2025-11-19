@interface CopyPredictedSelectedRouteDescriptor
@end

@implementation CopyPredictedSelectedRouteDescriptor

uint64_t __routingContextResilientRemote_CopyPredictedSelectedRouteDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 176);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 176;

  return v6(a2, v3, v4);
}

@end