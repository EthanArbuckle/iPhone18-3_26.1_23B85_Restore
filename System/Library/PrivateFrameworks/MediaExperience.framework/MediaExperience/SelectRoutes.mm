@interface SelectRoutes
@end

@implementation SelectRoutes

uint64_t __routingContextResilientRemote_SelectRoutes_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 40;

  return v6(a2, v3, v4);
}

void __routingContext_SelectRoutes_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && CFArrayGetCount(v2))
  {
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 40) + 8), *(a1 + 32));
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_UserPickedRoute", *MEMORY[0x1E695E4D0]);
  DoesContextSupportWHAMultiDeviceRouting = FigRoutingManagerContextUtilities_DoesContextSupportWHAMultiDeviceRouting(*(*(a1 + 40) + 8));
  v7 = *MEMORY[0x1E695E4C0];
  if (DoesContextSupportWHAMultiDeviceRouting)
  {
    v8 = v5;
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, @"RouteChangeOptionKey_RoutingContextSupportsMultiDeviceRouting", v8);
  v9 = *(a1 + 32);
  if (v9)
  {
    MutableCopy = CFArrayCreateMutableCopy(v3, 0, v9);
  }

  else
  {
    MutableCopy = 0;
  }

  v11 = 0;
  v12 = *MEMORY[0x1E69626D8];
  if (!MutableCopy)
  {
    goto LABEL_12;
  }

LABEL_11:
  for (i = CFArrayGetCount(MutableCopy); v11 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v11);
    if (FigRoutingManagerIsEndpointOfType(ValueAtIndex) && FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
    {
      v15 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      if (v15)
      {
        v16 = v15;
        CFArraySetValueAtIndex(MutableCopy, v11, v15);
        CFRelease(v16);
      }
    }

    ++v11;
    if (MutableCopy)
    {
      goto LABEL_11;
    }

LABEL_12:
    ;
  }

  FigRoutingManagerPickEndpointsForContext(*(*(a1 + 40) + 8), MutableCopy, *(a1 + 48), Mutable);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 48);
  if (v19)
  {

    CFRelease(v19);
  }
}

@end