@interface StartSessionWithRouteDescriptors
@end

@implementation StartSessionWithRouteDescriptors

uint64_t __routingSessionManagerResilientRemote_StartSessionWithRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 72);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 16) + 72;

  return v5(a2, v3);
}

void __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[5];
  if (v5)
  {
    CFRetain(v5);
    v6 = a1[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1[6] + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_2;
  v9[3] = &unk_1E7AED018;
  v9[5] = a3;
  v9[6] = v6;
  v9[4] = a1[4];
  MXDispatchAsync("routingSessionManager_StartSessionWithRouteDescriptors_block_invoke", "FigRoutingSessionManager.m", 2681, 0, 0, v7, v9);
  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
  }
}

void __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_2(uint64_t a1)
{
  routingSessionManager_setPredictionContextForSession(*(a1 + 48), [*(a1 + 32) newSession], *(a1 + 40));
  [*(a1 + 32) setPredictionContext:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_3(uint64_t a1, const __CFArray *a2)
{
  result = routingSessionManager_createAvailableDestinationFromAvailableRoutes(a2, *(a1 + 40));
  if (result)
  {
    v4 = result;
    CFRetain(result);
    v5 = *(a1 + 48);
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      CFRetain(v6);
      v7 = *(a1 + 56);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(*(a1 + 64) + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_4;
    v10[3] = &unk_1E7AED068;
    v9 = *(a1 + 48);
    v10[4] = *(a1 + 32);
    v10[5] = v4;
    v11 = *(a1 + 72);
    v10[6] = v9;
    v10[7] = v7;
    MXDispatchAsync("routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_3", "FigRoutingSessionManager.m", 2706, 0, 0, v8, v10);
    CFRelease(v4);
    return 1;
  }

  return result;
}

void __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    routingSessionManager_updateCurrentSession(*(a1 + 32), 0, 0, 0, 0, 0, 0, 1, *(a1 + 40), 0, @"Failed to discover pending route", 0);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

void __routingSessionManager_StartSessionWithRouteDescriptors_block_invoke_4(uint64_t a1)
{
  cf = 0;
  if (!FigRoutingSessionCreate(*MEMORY[0x1E695E480], 0, *(a1 + 40), &cf))
  {
    routingSessionManager_updateCurrentSession(*(a1 + 48), cf, [*(a1 + 32) predictionContext], *(a1 + 64), *(a1 + 65), 0, 0, 1, *(a1 + 56), 1, @"Update route descriptors of pending route session", 0);
    [*(a1 + 32) setNewSession:cf];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }
}

@end