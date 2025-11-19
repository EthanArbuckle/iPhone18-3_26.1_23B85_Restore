@interface CMSM_IDSServer
- (CMSM_IDSServer)init;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CMSM_IDSServer

- (CMSM_IDSServer)init
{
  v6.receiver = self;
  v6.super_class = CMSM_IDSServer;
  v2 = [(CMSM_IDSServer *)&v6 init];
  v2->pIdsService = [objc_alloc(CMSM_GetIDSServiceClass()) initWithService:@"com.apple.private.alloy.cmsession"];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.cmsession.ids.server.dispatch", v3);
  v2->idsDispatchQueue = v4;
  [(IDSService *)v2->pIdsService addDelegate:v2 queue:v4];
  return v2;
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = [a5 objectForKey:{kMXSession_IDSMessage_TypeKey, a4}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal() && v9 != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusChanged && v9 != kMXSession_IDSMessage_Type_BTDeviceConnectionStatusReply)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (FigCFEqual())
  {
    v34 = [a7 outgoingResponseIdentifier];
    v13 = CMSM_IDSConnection_CopyMXCoreSession();
    if (cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_onceToken != -1)
    {
      [CMSM_IDSServer service:account:incomingMessage:fromID:context:];
    }

    if (!a5)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = [a5 objectForKey:{kMXSession_IDSMessage_SessionWillPlayInfoKey, v30, v32}];
    if (!v18)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v20 = [v18 objectForKey:{@"AudioCategory", v31, v33}];
    if (!v20)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithString:@"MediaPlayback"];
    }

    v21 = [v18 objectForKey:@"AudioMode"];
    if (!v21)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithString:@"Default"];
    }

    v22 = [v18 objectForKey:?];
    if (!v22)
    {
      v22 = [MEMORY[0x1E696AD98] numberWithInt:0];
    }

    v23 = [v18 objectForKey:kMXSession_IDSMessage_HandoverInterruption];
    if (!v23)
    {
      v23 = [MEMORY[0x1E696AD98] numberWithBool:0];
    }

    v24 = [v18 objectForKey:@"ClientName"];
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = @"Unknown";
    }

    if (![v20 isEqualToString:cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioCategory] || !objc_msgSend(v21, "isEqualToString:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioMode) || !objc_msgSend(v22, "isEqualToNumber:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientPriority) || !objc_msgSend(v23, "isEqualToNumber:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldHandoverInterruption) || (-[__CFString isEqualToString:](v25, "isEqualToString:", cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientName) & 1) == 0)
    {
      CMSessionSetProperty(v13, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:0]);
      CMSessionSetProperty(v13, @"ClientName", [MEMORY[0x1E696AEC0] stringWithFormat:@"IDSMXCoreSession (%@)", v25]);
      CMSessionSetProperty(v13, @"IAmIDSMXCoreSession", [MEMORY[0x1E696AD98] numberWithBool:1]);
      CMSessionSetProperty(v13, @"AudioCategory", v20);
      CMSessionSetProperty(v13, @"AudioMode", v21);
      CMSessionSetProperty(v13, @"ClientPriority", v22);
      CMSessionSetProperty(v13, @"AudioHardwareControlFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:0]);
      CMSessionSetProperty(v13, @"HandsOverInterruptionsToInterruptor", v23);
      CMSessionSetProperty(v13, @"DoesntActuallyPlayAudio", [MEMORY[0x1E696AD98] numberWithBool:1]);

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioCategory = v20;
      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldAudioMode = v21;

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientPriority = v22;
      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldHandoverInterruption = v23;

      cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_oldClientName = v25;
    }

    v26 = CMSessionBeginInterruption(v13);
    CMSM_IDSClient_NotifyRemote_InterruptionDone(v26, v34);
    v27 = MXGetNotificationSenderQueue();
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __cmsm_IDSServer_ProcessRemoteInterruptionStartMessage_block_invoke_130;
    v38 = &__block_descriptor_40_e5_v8__0l;
    v39 = v13;
    MXDispatchAsync("cmsm_IDSServer_ProcessRemoteInterruptionStartMessage", "CMSessionManager_IDSServer.m", 306, 0, 0, v27, &v35);
  }

  else if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(a5, kMXSession_IDSMessage_IdentifierKey);
    MessagingQueue = CMSM_IDSConnection_GetMessagingQueue();
    v35 = MEMORY[0x1E69E9820];
    v36 = 3221225472;
    v37 = __cmsm_IDSServer_ProcessRemoteInterruptionDoneMessage_block_invoke;
    v38 = &__block_descriptor_40_e5_v8__0l;
    v39 = Value;
    MXDispatchSync("cmsm_IDSServer_ProcessRemoteInterruptionDoneMessage", "CMSessionManager_IDSServer.m", 323, 0, 0, MessagingQueue, &v35);
  }

  else if (FigCFEqual())
  {
    IsSharedAudioRouteConnectedToLocal = CMSM_IDSConnection_IsSharedAudioRouteConnectedToLocal();
    CMSM_IDSClient_ReplyToRemote_BTDeviceConnectionStatus(IsSharedAudioRouteConnectedToLocal);
  }

  else if (FigCFEqual())
  {
    v29 = CFDictionaryGetValue(a5, kMXSession_IDSMessage_BTDeviceIsConnectedKey) == *MEMORY[0x1E695E4D0];
    CMSM_IDSConnection_UpdateSharedAudioRouteIsConnectedToRemote(v29);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessBTDeviceConnectionStatusChangedMessage(a5);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessRemotePlayingInfoQueryMessage();
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessRemotePlayingInfoReplyMessage(a5);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsPlayingStartMessage(a5);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsPlayingDoneMessage(a5);
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessLocalIsDoingEndInterruption(a5);
  }

  else if (FigCFEqual())
  {
    CMSM_IDSConnection_ResetRemotePlayingInfo();
    CMSM_IDSConnection_DeactivateIDSMXCoreSession(@"non-resumable.remoteDeviceIsBeingInitialized");
  }

  else if (FigCFEqual())
  {
    cmsm_IDSServer_ProcessUpdateSharedAudioRouteMacAddress(a5);
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end