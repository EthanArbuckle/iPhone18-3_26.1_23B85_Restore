@interface CopyAvailableEndpoints
@end

@implementation CopyAvailableEndpoints

uint64_t __remoteXPCRouteDiscoverer_CopyAvailableEndpoints_block_invoke(void *a1)
{
  result = *(a1[8] + 24);
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    result = FigEndpointRPCCacheApplyObjectDeltas();
    *(*(a1[6] + 8) + 24) = result;
    if (!*(*(a1[6] + 8) + 24))
    {
      v5 = *(a1[8] + 24);
      v6 = *(a1[7] + 8);
      result = FigEndpointRPCCacheCopyAvailableObjects();
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

@end