@interface CMSM
@end

@implementation CMSM

void __CMSM_IDSServer_StartAutomaticOwnershipTransferToPhoneTimer_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  CMSM_IDSServer_CancelAutomaticOwnershipTransferToPhoneTimer();
  if (FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn())
  {
    v0 = *MEMORY[0x1E69E9840];

    CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership();
  }

  else
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v2 = *MEMORY[0x1E69E9840];
  }
}

CMSM_IDSClient *__cmsm_IDSClient_GetClient_block_invoke()
{
  result = objc_alloc_init(CMSM_IDSClient);
  cmsm_IDSClient_GetClient_idsClient = result;
  return result;
}

void __CMSM_IDSClient_SendMessageAsyncAndCopyIdentifier_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) sendMessage:*(a1 + 72) toDestinations:objc_msgSend(MEMORY[0x1E695DFD8] priority:"setWithObject:" options:*(a1 + 40)) identifier:300 error:{0, *(*(a1 + 56) + 8) + 40, *(*(a1 + 64) + 8) + 40}];
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(*(*(a1 + 56) + 8) + 40);

    CMSM_IDSConnection_SetMessageWaitSemaphore(v2);
  }
}

uint64_t __CMSM_IDSConnection_Initialize_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  [gIDSConnection updateNearbyPairedDevice];
  sIDSConnectedInitializationDone = 1;
  v0 = [gIDSConnection copyNearbyPairedDevice];
  [v0 isNearby];

  result = CMSM_IDSConnection_IsNearbyPairedDevicePresentAndConnected();
  v2 = result;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v2)
  {
    CMSM_IDSClient_NotifyRemote_LocalIsBeingInitialized();
    CMSM_IDSClient_QueryRemote_BTDeviceConnectionStatus();
    result = CMSM_IDSClient_QueryRemote_PlayingInfo();
  }

  else
  {
    byte_1EB75CCC8 = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __CMSM_IDSConnection_CopyMXCoreSession_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  if (CMSessionCreate(&sIDSInfo))
  {
    v0 = 1;
  }

  else
  {
    v0 = sIDSInfo == 0;
  }

  if (v0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (sIDSInfo)
    {
      CFRelease(sIDSInfo);
      sIDSInfo = 0;
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    _CMSessionSetProperty(sIDSInfo, @"ClientName", @"IDSMXCoreSession (Default)");
    _CMSessionSetProperty(sIDSInfo, @"IAmIDSMXCoreSession", [MEMORY[0x1E696AD98] numberWithBool:1]);
    _CMSessionSetProperty(sIDSInfo, @"AudioCategory", @"MediaPlayback");
    _CMSessionSetProperty(sIDSInfo, @"AudioMode", @"Default");
    _CMSessionSetProperty(sIDSInfo, @"AudioHardwareControlFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:0]);
    _CMSessionSetProperty(sIDSInfo, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:1]);
    v2 = sIDSInfo;
    v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v4 = *MEMORY[0x1E69E9840];

    _CMSessionSetProperty(v2, @"HandsOverInterruptionsToInterruptor", v3);
  }
}

void __CMSM_IDSConnection_DeactivateIDSMXCoreSession_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __CMSM_IDSConnection_StartWaitForRemoteToReplyWithInitialPlayingInfoTimer_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  byte_1EB75CCC8 = 1;
  CMSM_IDSConnection_RouteToSharedAudioRouteUponReceivingOwnership();
  FigSimpleMutexLock();
  if (qword_1EB75CCD0)
  {
    dispatch_source_cancel(qword_1EB75CCD0);
    if (qword_1EB75CCD0)
    {
      dispatch_release(qword_1EB75CCD0);
      qword_1EB75CCD0 = 0;
    }
  }

  result = FigSimpleMutexUnlock();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CMSM_IDSConnection_StopWaitForRemoteToReplyWithInitialPlayingInfoTimer_block_invoke()
{
  FigSimpleMutexLock();
  if (qword_1EB75CCD0)
  {
    dispatch_source_cancel(qword_1EB75CCD0);
    if (qword_1EB75CCD0)
    {
      dispatch_release(qword_1EB75CCD0);
      qword_1EB75CCD0 = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

void __CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke(uint64_t a1)
{
  v2 = MXGetSerialQueue();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke_2;
  v3[3] = &__block_descriptor_48_e5_v8__0l;
  v4 = *(a1 + 32);
  MXDispatchAsync("CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke", "CMSessionManager_IDSConnection.m", 844, 0, 0, v2, v3);
}

void __CMSM_IDSConnection_DelaySharedAudioRoutingUntilRemoteInitialPlayingInfoIsReceived_block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (byte_1EB75CCA4)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      byte_1EB75CCA4 = 0;
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      byte_1EB75CCA4 = 0;
    }

    if (CMSM_IDSConnection_IsSomeClientPlayingOverSharedAudioRouteOnRemote())
    {
      if (!byte_1EB75E138)
      {
        goto LABEL_18;
      }

      if (dword_1EB75DE40)
      {
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!byte_1EB75CCA3)
      {
LABEL_17:
        vaemTakeOwnershipOnSharedAudioRoute(*(a1 + 32));
LABEL_18:
        A2DPPort = cmsmGetA2DPPort(*(a1 + 32));
        if (vaeGetBTPortOwnsSharedAudioConnection(A2DPPort) && (!vaeDoesBTPortSupportInEarDetection(A2DPPort) || vaeDoesBTPortSupportInEarDetection(A2DPPort) && CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort)))
        {
          PortListArrayFromPortID = vaeCreatePortListArrayFromPortID(A2DPPort);
          Routable = cmsmCopyPartnerPortsToMakeRoutable(PortListArrayFromPortID);
          v10 = *MEMORY[0x1E695E480];
          UInt32 = FigCFNumberCreateUInt32();
          CFArrayAppendValue(Routable, UInt32);
          if (dword_1EB75DE40)
          {
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          vaemMakeArrayOfPortsRoutable(Routable, 1, 0, *(a1 + 40), 1);
          if (PortListArrayFromPortID)
          {
            CFRelease(PortListArrayFromPortID);
          }

          if (Routable)
          {
            CFRelease(Routable);
          }

          if (UInt32)
          {
            CFRelease(UInt32);
          }
        }

        v13 = *(a1 + 40);
        if (v13)
        {
          CFRelease(v13);
        }

        v14 = *(a1 + 32);
        if (v14)
        {
          CFRelease(v14);
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!byte_1EB75CCA3)
      {
        goto LABEL_17;
      }
    }

    byte_1EB75CCA3 = 0;
    cmsm_IDSConnection_UpdateOtherDevicesConnectedInfoInPickableRoutesCache();
    goto LABEL_17;
  }

  if (dword_1EB75DE40)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_34:
  v15 = *MEMORY[0x1E69E9840];
}

dispatch_queue_t __CMSM_IDSConnection_GetMessagingQueue_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.cmsession.ids.messaging", v0);
  CMSM_IDSConnection_GetMessagingQueue_messagingQueue = result;
  return result;
}

@end