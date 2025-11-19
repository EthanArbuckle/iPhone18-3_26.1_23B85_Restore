@interface CopyProperty
@end

@implementation CopyProperty

uint64_t __routingContextResilientRemote_CopyProperty_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  VTable = CMBaseObjectGetVTable();
  v7 = *(*(VTable + 8) + 48);
  if (!v7)
  {
    return 4294954514;
  }

  v8 = *(VTable + 8) + 48;

  return v7(a2, v3, v4, v5);
}

void __routingContext_CopyProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), @"currentGroupID"))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 48) + 8);

    FigRoutingManagerCopyCurrentGroupUUID(v3, v2);
  }

  else
  {
    if (CFEqual(*(a1 + 40), @"associatedAudioDevice"))
    {
      v4 = *(a1 + 64);
      CMBaseObjectGetDerivedStorage();
      **(a1 + 56) = 0;
      return;
    }

    if (CFEqual(*(a1 + 40), @"isWHASilentPrimary"))
    {
      IsConfigurationWHASilentPrimary = FigRoutingManagerIsConfigurationWHASilentPrimary(*(*(a1 + 48) + 8));
      v6 = MEMORY[0x1E695E4D0];
      if (!IsConfigurationWHASilentPrimary)
      {
        v6 = MEMORY[0x1E695E4C0];
      }

      **(a1 + 56) = CFRetain(*v6);
    }

    else
    {
      if (CFEqual(*(a1 + 40), @"selectedEndpointsForDiagnostics"))
      {
        theDict = 0;
        *(*(*(a1 + 32) + 8) + 24) = FigRoutingManagerContextUtilities_CopyNonControlPickedContexts(&theDict);
        if (theDict)
        {
          v7 = *MEMORY[0x1E695E480];
          MutableCopy = FigCFArrayCreateMutableCopy();
          CFDictionaryApplyFunction(theDict, routingContext_collectPickedEndpoints, MutableCopy);
        }

        else
        {
          MutableCopy = 0;
        }

        **(a1 + 56) = MutableCopy;
      }

      else
      {
        if (!CFEqual(*(a1 + 40), @"IsAnyRoutePickedOrBeingPicked"))
        {
          *(*(*(a1 + 32) + 8) + 24) = -12784;
          return;
        }

        theDict = 0;
        FigRoutingManagerCopyPickedEndpointForRoutingContext(*(*(a1 + 48) + 8), &theDict);
        if (!theDict)
        {
          return;
        }

        **(a1 + 56) = CFRetain(*MEMORY[0x1E695E4D0]);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }
    }
  }
}

uint64_t __endpointAggregate_CopyProperty_block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 8) + 48;

  return v6(CMBaseObject, v1, v2, v3);
}

@end