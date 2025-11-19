@interface SetProperty
@end

@implementation SetProperty

void __discoverer_SetProperty_block_invoke_2(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (CFEqual(*(a1 + 40), @"DiscoveryMode"))
  {
    v2 = *(*(a1 + 48) + 16);
    if (FigCFEqual() && MX_FeatureFlags_IsCorianderEnabled())
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        CFRetain(v3);
      }

      NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __discoverer_SetProperty_block_invoke_3;
      v46[3] = &__block_descriptor_40_e5_v8__0l;
      v46[4] = *(a1 + 56);
      MXDispatchAsync("discoverer_SetProperty_block_invoke_2", "FigRouteDiscoverer.m", 635, 0, 0, NotificationQueue, v46);
    }

    else
    {
      v5 = *(*(a1 + 48) + 16);
      if (FigCFEqual())
      {
        v6 = dword_1EB75DF60 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v45 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = *(a1 + 48);
      if (*v8)
      {
        v9 = CFRetain(*v8);
        v8 = *(a1 + 48);
        v10 = *v8;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v11 = *(a1 + 64);
      *v8 = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v12 = **(a1 + 48);
      if (FigCFEqual())
      {
        v13 = *(*(a1 + 48) + 80);
        FigSimpleMutexLock();
        v14 = *(a1 + 48);
        *(v14 + 88) = 0;
        v15 = *(v14 + 80);
        FigSimpleMutexUnlock();
      }

      if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled())
      {
        v16 = **(a1 + 48);
        if (!FigCFEqual())
        {
          v17 = *(a1 + 56);
          FigRouteDiscoveryManagerRemoveCachedDiscoverers();
        }
      }

      v18 = **(a1 + 48);
      if (FigCFEqual())
      {
        if (dword_1EB75DF60)
        {
          v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DF60)
        {
          v45 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v21 = **(a1 + 48);
        if (!FigRouteDiscovereryManagerIsNewDiscoveryModeHigher())
        {
          v22 = *(*(a1 + 48) + 16);
          if (FigRouteDiscovererShouldLogForClient())
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            v24 = *(*(a1 + 48) + 80);
            FigSimpleMutexLock();
            v25 = *(*(a1 + 48) + 96);
            v26 = *(a1 + 48);
            *(v26 + 64) = UpTimeNanoseconds;
            v27 = *(v26 + 80);
            FigSimpleMutexUnlock();
            discoverer_logAvailableRouteDetails(*(*(a1 + 48) + 16), *(*(a1 + 48) + 56), v25);
            if (v25)
            {
              CFRelease(v25);
            }
          }
        }

        if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled())
        {
          v28 = **(a1 + 48);
          if (FigCFEqual())
          {
            v29 = *(a1 + 56);
            FigRouteDiscoveryManagerAddToCachedDiscoverers();
          }
        }

        FigRouteDiscoveryManagerUpdateDiscoveryMode();
        v30 = **(a1 + 48);
        if (FigRouteDiscovereryManagerIsNewDiscoveryModeHigher())
        {
          theArray[0] = 0;
          FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(*MEMORY[0x1E695E480], *(*(a1 + 48) + 56), *(*(a1 + 48) + 8), *(*(a1 + 48) + 24), theArray);
          v31 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(theArray[0], *(*(a1 + 48) + 8));
          v32 = *(*(a1 + 48) + 80);
          FigSimpleMutexLock();

          v33 = theArray[0];
          v34 = *(a1 + 48);
          *(v34 + 104) = v33;

          if (*(*(a1 + 48) + 56) == 8 && v31 && CFArrayGetCount(v31))
          {
            [-[__CFArray objectAtIndex:](v31 objectAtIndex:{0), "setValue:forKey:", @"Default", @"RouteType"}];
          }

          v35 = v31;
          v36 = *(a1 + 48);
          *(v36 + 96) = v35;
          v37 = *(v36 + 80);
          FigSimpleMutexUnlock();
          if (v31)
          {
            CFRelease(v31);
          }

          if (FigCFEqual() && (v38 = **(a1 + 48), FigCFEqual()) || FigCFEqual() && (v39 = **(a1 + 48), FigCFEqual()) && *(*(a1 + 48) + 56) == 8)
          {
            discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(*(a1 + 56), theArray[0], 0);
          }

          if (theArray[0])
          {
            if (CFArrayGetCount(theArray[0]))
            {
              v40 = *(a1 + 56);
              if (v40)
              {
                CFRetain(v40);
              }

              v41 = FigRouteDiscoveryManagerGetNotificationQueue();
              v43[0] = MEMORY[0x1E69E9820];
              v43[1] = 3221225472;
              v43[2] = __discoverer_SetProperty_block_invoke_2_53;
              v43[3] = &__block_descriptor_40_e5_v8__0l;
              v43[4] = *(a1 + 56);
              MXDispatchAsync("discoverer_SetProperty_block_invoke", "FigRouteDiscoverer.m", 757, 0, 0, v41, v43);
            }

            if (theArray[0])
            {
              CFRelease(theArray[0]);
            }
          }
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __central_SetProperty_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = FigSignalErrorAtGM();
  }

  else
  {
    v5 = DerivedStorage;
    if (CFEqual(v2, *MEMORY[0x1E6962358]))
    {
      if (*v5)
      {
        v10 = 4294954511;
      }

      else if (v3 && (v6 = CFGetTypeID(v3), v6 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(v3);
        if (Value)
        {
          v8 = 0x100000000;
        }

        else
        {
          v8 = 0xFFFFFFFF00000000;
        }

        if (Value)
        {
          v9 = @"iOS navigation session started";
        }

        else
        {
          v9 = @"iOS navigation session ended";
        }

        v10 = FigEndpointCentralUpdateiOSDeviceState(v1, v8, 0, v9, 1);
      }

      else
      {
        v10 = 4294954516;
      }
    }

    else
    {
      v11 = *(v5 + 1);
      CMBaseObject = FigEndpointGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v14 = *(*(VTable + 8) + 56);
      if (v14)
      {
        v15 = *(VTable + 8) + 56;
        v10 = v14(CMBaseObject, v2, v3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  return OUTLINED_FUNCTION_0_3(v10);
}

void __discoverer_SetProperty_block_invoke_3(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __discoverer_SetProperty_block_invoke_2_53(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  v2 = *(a1 + 32);
  CMNotificationCenterPostNotification();
  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t __routingContextResilientRemote_SetProperty_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 8) + 56;

  return v6(a2, v3, v4);
}

uint64_t __endpointAggregate_SetProperty_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  v6 = *(VTable + 8) + 56;

  return v5(CMBaseObject, v1, v2);
}

@end