@interface SelectRouteDescriptors
@end

@implementation SelectRouteDescriptors

uint64_t __routingContextResilientRemote_SelectRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 48;

  return v6(a2, v3, v4);
}

void __routingContext_SelectRouteDescriptors_block_invoke(uint64_t a1)
{
  v2 = FigEndpointDescriptorUtility_CopyEndpointArrayFromDescriptors(*(a1 + 32), 0);
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2))
    {
      FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 40) + 8), v3);
    }

    CFRelease(v3);
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(*(*(a1 + 40) + 8), 3);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4D0]);
  FigRoutingManagerPickRouteDescriptorsForContext(*(*(a1 + 40) + 8), *(a1 + 32), *(a1 + 48), Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {

    CFRelease(v7);
  }
}

@end