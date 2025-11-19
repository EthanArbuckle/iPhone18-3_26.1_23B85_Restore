@interface RemoveFromSelectedRouteDescriptors
@end

@implementation RemoveFromSelectedRouteDescriptors

uint64_t __routingContextResilientRemote_RemoveFromSelectedRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 16) + 104);
  if (!v6)
  {
    return 4294954514;
  }

  v7 = *(VTable + 16) + 104;

  return v6(a2, v3, v4);
}

void __routingContext_RemoveFromSelectedRouteDescriptors_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v2 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), *(*(a1 + 48) + 8));
  cf[0] = 0;
  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonEndedFailed");
    goto LABEL_23;
  }

  v3 = v2;
  v4 = *(a1 + 48);
  v5 = *v4;
  if (*v4 > 0xDu)
  {
LABEL_10:
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (((1 << v5) & 0x201A) == 0)
  {
    if (v5 == 9)
    {
      v10 = MXSystemRemotePool_RemoveEndpointFromContext(v2, v4[1], *(a1 + 72));
LABEL_17:
      *(*(*(a1 + 32) + 8) + 24) = v10;
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(v4[1], 5);
  v6 = *(a1 + 48);
  if (*v6 != 13 || (FigRoutingManagerCopyPickedRouteDescriptorForRoutingContext(*(v6 + 8), cf), FigCFDictionaryGetValue(), v7 = *(a1 + 40), FigCFDictionaryGetValue(), v8 = *(a1 + 40), FigCFDictionaryGetValue(), !FigCFEqual()) && FigCFEqual())
  {
    v12 = *MEMORY[0x1E69626D8];
    if (FigRoutingManagerIsEndpointOfType(v3) && FigRoutingManagerIsEndpointWHAGroupable(v3))
    {
      v13 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      if (dword_1EB75DF40)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v13)
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*(*(a1 + 32) + 8) + 24) = FigRoutingManager_iOSRemoveEndpointFromContext(*(*(a1 + 48) + 8), v13, *(a1 + 72));
      if (v13)
      {
        CFRelease(v13);
      }

      goto LABEL_22;
    }

    v10 = FigRoutingManager_iOSRemoveEndpointFromContext(*(*(a1 + 48) + 8), v3, *(a1 + 72));
    goto LABEL_17;
  }

  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonEndedNoop");
LABEL_22:
  CFRelease(v3);
LABEL_23:
  v16 = *(a1 + 80);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 72);
  if (v18)
  {
    CFRelease(v18);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end