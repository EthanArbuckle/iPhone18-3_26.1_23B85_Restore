@interface CopyRoute
@end

@implementation CopyRoute

uint64_t __routingContextResilientRemote_CopyRoute_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 24);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 24;

  return v5(a2, v3);
}

void __routingContext_CopyRoute_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  *(*(*(a1 + 32) + 8) + 24) = FigRoutingManagerCopyPickedEndpointForRoutingContext(*(DerivedStorage + 8), &cf);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    **(a1 + 48) = cf;
  }
}

@end