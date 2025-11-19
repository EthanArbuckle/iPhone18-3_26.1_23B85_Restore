@interface CopySelectedBufferedEndpoint
@end

@implementation CopySelectedBufferedEndpoint

uint64_t __routingContextResilientRemote_CopySelectedBufferedEndpoint_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 144);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 144;

  return v6(a2, v3, v4);
}

CFTypeRef __routingContext_CopySelectedBufferedEndpoint_block_invoke(uint64_t a1)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v3 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = UpTimeNanoseconds - *(a1 + 48);
  result = FigRoutingManagerCopySelectedBufferedEndpoint(*(v3 + 8), *(a1 + 64));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end