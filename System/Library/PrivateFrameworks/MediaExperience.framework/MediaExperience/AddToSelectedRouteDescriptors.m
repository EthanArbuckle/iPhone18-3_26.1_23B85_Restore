@interface AddToSelectedRouteDescriptors
@end

@implementation AddToSelectedRouteDescriptors

uint64_t __routingContextResilientRemote_AddToSelectedRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 88);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 88;

  return v6(a2, v3, v4);
}

void __routingContext_AddToSelectedRouteDescriptors_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), *(*(a1 + 48) + 8));
  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 64), @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 64), @"configUpdateReasonEndedFailed");
    goto LABEL_25;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v2, 0}];
  FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 48) + 8), v4);

  v5 = *(a1 + 48);
  v6 = *v5;
  if ((*v5 - 3) >= 2 && v6 != 1)
  {
    if (v6 == 9)
    {
      MXSystemRemotePool_AddEndpointToContext(v3, v5[1], *(a1 + 64));
    }

    else if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled() && (v15 = *(a1 + 48), *v15 == 14))
    {
      IsEndpointPicked = FigRoutingManagerUtilities_IsEndpointPicked(v3, *(v15 + 8));
      v17 = *(*(a1 + 48) + 8);
      v18 = *(a1 + 64);
      if (IsEndpointPicked)
      {
        v19 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedNoOp;
      }

      else
      {
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v17, v18, @"configUpdateReasonStarted");
        v17 = *(*(a1 + 48) + 8);
        v18 = *(a1 + 64);
        v19 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v17, v18, *v19);
    }

    else
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(v5[1], 4);
  v8 = *MEMORY[0x1E69626D8];
  if (!FigRoutingManagerIsEndpointOfType(v3) || !FigRoutingManagerIsEndpointWHAGroupable(v3))
  {
    v12 = *(*(a1 + 48) + 8);
    v13 = *(a1 + 64);
    v14 = v3;
LABEL_15:
    FigRoutingManager_iOSAddEndpointToContext(v12, v14, v13);
    goto LABEL_24;
  }

  v9 = FigRoutingManagerCopyLocalAirPlayEndpoint();
  if (!v9)
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = *(*(a1 + 48) + 8);
    v13 = *(a1 + 64);
    v14 = 0;
    goto LABEL_15;
  }

  v10 = v9;
  FigRoutingManager_iOSAddEndpointToContext(*(*(a1 + 48) + 8), v9, *(a1 + 64));
  CFRelease(v10);
LABEL_24:
  CFRelease(v3);
LABEL_25:
  v22 = *(a1 + 72);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end