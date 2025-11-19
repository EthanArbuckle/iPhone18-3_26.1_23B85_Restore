@interface FigRouteDiscoveryManagerCopyRoutePresentForType
@end

@implementation FigRouteDiscoveryManagerCopyRoutePresentForType

const __CFArray *__FigRouteDiscoveryManagerCopyRoutePresentForType_block_invoke(void *a1)
{
  v2 = 0;
  v3 = *MEMORY[0x1E69618B0];
  v4 = *MEMORY[0x1E695E480];
  v5 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    result = *(a1[5] + 240);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (v2 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1[5] + 240), v2);
    CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_SupportedEndpointFeaturesKey");
    if ((a1[6] & FigCFNumberGetUInt64()) != 0)
    {
      if (CFDictionaryGetValue(ValueAtIndex, @"EndpointManager_RefKey"))
      {
        v8 = *(a1[4] + 8);
        CMBaseObject = FigEndpointManagerGetCMBaseObject();
        VTable = CMBaseObjectGetVTable();
        v11 = *(VTable + 8);
        result = (VTable + 8);
        v12 = *(v11 + 48);
        if (v12)
        {
          result = v12(CMBaseObject, v3, v4, v8 + 24);
        }

        if (*(*(a1[4] + 8) + 24) == v5)
        {
          break;
        }
      }
    }

    ++v2;
  }

  return result;
}

@end