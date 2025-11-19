@interface FigRoutingContextUtilities
@end

@implementation FigRoutingContextUtilities

void *__FigRoutingContextUtilities_IsFollowingAnotherContext_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    result = _routingContextUtilities_getLeaderWeakRef(result);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

void __FigRoutingContextUtilities_CopyLeaderUUIDForContext_block_invoke(uint64_t a1)
{
  ContextForUUIDFromDict = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (ContextForUUIDFromDict)
  {
    v3 = ContextForUUIDFromDict;
    if (_routingContextUtilities_getLeaderWeakRef(ContextForUUIDFromDict))
    {
      _routingContextUtilities_getLeaderWeakRef(v3);
      v4 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v4)
      {
        v5 = v4;
        BytePtr = CFDataGetBytePtr(v4);
        if (BytePtr)
        {
          v7 = *(BytePtr + 1);
          if (v7)
          {
            v7 = CFRetain(v7);
          }

          **(a1 + 56) = v7;
        }

        CFRelease(v5);
      }
    }

    v8 = *(a1 + 56);
    if (!*v8)
    {
      v9 = *(v3 + 8);
      if (v9)
      {
        v9 = CFRetain(v9);
        v8 = *(a1 + 56);
      }

      *v8 = v9;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -17420;
  }
}

const UInt8 *__FigRoutingContextUtilities_SetLeaderUUIDForContext_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_setLeaderUUIDForContext(*(a1 + 48), *(a1 + 56));
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 64) + 480), *(a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __FigRoutingContextUtilities_UnfollowUUIDFromLeader_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 48) + 480), *(a1 + 56));
  LeaderWeakRef = _routingContextUtilities_getLeaderWeakRef(*(*(*(a1 + 32) + 8) + 24));
  ContextFromWeakRef = _routingContextUtilities_getContextFromWeakRef(LeaderWeakRef);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    v5 = ContextFromWeakRef == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = -17420;
  }

  else
  {
    v6 = ContextFromWeakRef;
    IndexOfFollower = _routingContextUtilities_getIndexOfFollower(ContextFromWeakRef, v4);
    if ((IndexOfFollower & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(*(v6 + 11), IndexOfFollower);
    }

    v8 = *(*(*(a1 + 32) + 8) + 24);

    _routingContextUtilities_removeLeader(v8);
  }
}

CFIndex __FigRoutingContextUtilities_GetIndexOfCurrentlyActivatingSubEndpoints_block_invoke(uint64_t a1)
{
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = *(a1 + 56);
    while (1)
    {
      result = *(v3 + 112);
      if (result)
      {
        result = CFArrayGetCount(result);
      }

      if (v4 >= result)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 112), v4);
      Value = CFDictionaryGetValue(ValueAtIndex, @"CurrentlyActivatingEndpointsInfo_SubEndpoints");
      result = MXCFArrayAreArrayContentsEqual(Value, v5);
      if (result)
      {
        goto LABEL_9;
      }

      ++v4;
    }

    v4 = -1;
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return result;
}

int *__FigRoutingContextUtilities_CreateStateInfoStringForContext_block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  result = _routingContextUtilities_getContextForUUIDFromDict(*(*(a1 + 40) + 480), *(a1 + 48));
  if (result)
  {
    v3 = result;
    [*(a1 + 32) appendFormat:@"[type: %@]\n", routingContextUtilities_getFeatureString(*result)];
    [*(a1 + 32) appendFormat:@"[uuid: %@]\n", *(v3 + 1)];
    [*(a1 + 32) appendFormat:@"[hijackID: %@]\n", *(v3 + 2)];
    [*(a1 + 32) appendFormat:@"[clientPID: %d]\n", v3[6]];
    [*(a1 + 32) appendFormat:@"[avoidAuthPrompt: %hhu]\n", *(v3 + 28)];
    [*(a1 + 32) appendFormat:@"[routeSelectionClientPID: %d]\n", v3[8]];
    [*(a1 + 32) appendFormat:@"[groupID: %@]\n", *(v3 + 5)];
    [*(a1 + 32) appendFormat:@"[pickingState: %d]\n", v3[14]];
    v4 = *(a1 + 32);
    v5 = *(v3 + 8);
    if (v5)
    {
      v6 = CFCopyDescription(v5);
    }

    else
    {
      v6 = @"NULL";
    }

    [v4 appendFormat:@"[aggregateEndpoint: %@]\n", v6];
    v61 = v3;
    v62 = a1;
    v69 = *(a1 + 32);
    v7 = *(v3 + 9);
    v8 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v87;
      obj = *MEMORY[0x1E69620F8];
      v12 = *MEMORY[0x1E695E480];
      v13 = *MEMORY[0x1E69621E8];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v87 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v86 + 1) + 8 * i);
          cf[0] = 0;
          v76[0] = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v17)
          {
            v17(CMBaseObject, obj, v12, cf);
          }

          v18 = FigEndpointGetCMBaseObject();
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v19)
          {
            v19(v18, v13, v12, v76);
          }

          [v8 appendFormat:@"endpoint: %@ endpointID: %@ endpointName: %@\n", v15, cf[0], v76[0]];
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v76[0])
          {
            CFRelease(v76[0]);
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v10);
    }

    [v69 appendFormat:@"[currentEndpoints: %@]\n", v8];
    [*(v62 + 32) appendFormat:@"[defaultLeaderUUID: %@]\n", *(v61 + 12)];
    [*(v62 + 32) appendFormat:@"[commChannelUUID: %@]\n", *(v61 + 13)];
    v70 = *(v62 + 32);
    v20 = *(v61 + 14);
    v21 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v22 = [v20 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v87;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v87 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v86 + 1) + 8 * j);
          Value = FigCFDictionaryGetValue();
          v28 = FigCFDictionaryGetValue();
          v29 = FigCFDictionaryGetValue();
          [v21 appendFormat:@"endpoint: %@ clientRoutingContextUUID: %@ ClientRouteChangeOptions: %@ internalRouteChangeOptions:%@\r", Value, v28, v29, FigCFDictionaryGetValue()];
          v30 = FigCFDictionaryGetValue();
          v31 = 0;
          if (v30)
          {
LABEL_26:
            Count = CFArrayGetCount(v30);
            goto LABEL_28;
          }

          while (1)
          {
            Count = 0;
LABEL_28:
            if (v31 >= Count)
            {
              break;
            }

            [v21 appendFormat:@"\tsubEndpoint: %@\r", CFArrayGetValueAtIndex(v30, v31++)];
            if (v30)
            {
              goto LABEL_26;
            }
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v86 objects:v90 count:16];
      }

      while (v23);
    }

    [v70 appendFormat:@"[currentlyActivatingEndpointsInfo: %@]\n", v21];
    v60 = *(v62 + 32);
    v33 = *(v61 + 15);
    obja = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *cf = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v63 = v33;
    v66 = [v33 countByEnumeratingWithState:cf objects:v90 count:16];
    if (v66)
    {
      v64 = *v83;
      v71 = *MEMORY[0x1E69621E8];
      v68 = *MEMORY[0x1E69620F8];
      theArray = Mutable;
      do
      {
        v35 = 0;
        do
        {
          if (*v83 != v64)
          {
            objc_enumerationMutation(v63);
          }

          v67 = v35;
          v36 = *(cf[1] + v35);
          v37 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v38 = FigCFDictionaryGetValue();
          v39 = FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          FigCFDictionaryGetValue();
          v40 = CFDictionaryGetValue(v36, @"ActivatedEndpointsInfo_SubEndpointsInfo");
          v80 = 0;
          v81 = 0;
          if (v38)
          {
            v41 = FigEndpointGetCMBaseObject();
            v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v42)
            {
              v42(v41, v71, obja, &v81);
            }

            v43 = FigEndpointGetCMBaseObject();
            v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v44)
            {
              v44(v43, v68, obja, &v80);
            }
          }

          v46 = v80;
          v45 = v81;
          UInt64 = FigCFNumberGetUInt64();
          [v37 appendFormat:@"<endpoint %p endpointName: %@ endpointID %@ activationSeed %llu transportType: %@ endpointFeatures: %llu>\r", v38, v45, v46, UInt64, v39, FigCFNumberGetUInt64()];
          if (v81)
          {
            CFRelease(v81);
            v81 = 0;
          }

          if (v80)
          {
            CFRelease(v80);
            v80 = 0;
          }

          v78 = 0u;
          v79 = 0u;
          *v76 = 0u;
          v77 = 0u;
          v48 = [v40 countByEnumeratingWithState:v76 objects:&v86 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v77;
            do
            {
              for (k = 0; k != v49; ++k)
              {
                if (*v77 != v50)
                {
                  objc_enumerationMutation(v40);
                }

                v52 = *(v76[1] + k);
                v53 = FigCFDictionaryGetValue();
                FigCFDictionaryGetValue();
                v74 = 0;
                v75 = 0;
                if (v53)
                {
                  v54 = FigEndpointGetCMBaseObject();
                  v55 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v55)
                  {
                    v55(v54, v71, obja, &v75);
                  }

                  v56 = FigEndpointGetCMBaseObject();
                  v57 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v57)
                  {
                    v57(v56, v68, obja, &v74);
                  }
                }

                [v37 appendFormat:@"\t<subEndpoint %p subEndpointName: %@ subEndpointID %@ activationSeed %llu>\r", v53, v75, v74, FigCFNumberGetUInt64()];
                if (v75)
                {
                  CFRelease(v75);
                  v75 = 0;
                }

                if (v74)
                {
                  CFRelease(v74);
                }
              }

              v49 = [v40 countByEnumeratingWithState:v76 objects:&v86 count:16];
            }

            while (v49);
          }

          Mutable = theArray;
          CFArrayAppendValue(theArray, v37);

          v35 = v67 + 1;
        }

        while (v67 + 1 != v66);
        v66 = [v63 countByEnumeratingWithState:cf objects:v90 count:16];
      }

      while (v66);
    }

    v58 = [(__CFArray *)Mutable componentsJoinedByString:@"\n"];
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    [v60 appendFormat:@"[activatedEndpointsInfo: %@]\n", v58];
    [*(v62 + 32) appendFormat:@"[currentPickedRouteDescriptors: %@]\n", *(v61 + 16)];
    [*(v62 + 32) appendFormat:@"[multiRouteSelectionSucceeded: %hhu]\n", *(v61 + 136)];
    [*(v62 + 32) appendFormat:@"[scaleFactorsForEndpoints: %@]\n", *(v61 + 18)];
    [*(v62 + 32) appendFormat:@"[mainVolume: %f]\n", *(v61 + 38)];
    [*(v62 + 32) appendFormat:@"[cachedScreenEndpointID: %@]\n", *(v61 + 20)];
    [*(v62 + 32) appendFormat:@"[cachedAudioEndpointID: %@]\n", *(v61 + 21)];
    result = [*(v62 + 32) appendFormat:@"[supportedOutputChannelLayouts: %@]\n", *(v61 + 26)];
  }

  v59 = *MEMORY[0x1E69E9840];
  return result;
}

@end