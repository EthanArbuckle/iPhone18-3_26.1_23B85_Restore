@interface MXAudioAccessoryServices
+ (id)sharedInstance;
- (BOOL)isAnyManagedDeviceConnected;
- (MXAudioAccessoryServices)init;
- (id)copyDeviceAddressFromVADPort:(unsigned int)port;
- (id)copyHighestPriorityLocalSession;
- (void)clearDevicesStateCache;
- (void)copyPreferredDeviceAddress:(id *)address andPreemptivePortInfo:(id *)info;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)finalizeAudioAccessoryConnection;
- (void)handleBTNotificationAudioRoutingChange;
- (void)handlePortDisconnected:(unsigned int)disconnected;
- (void)handleServerDeath;
- (void)initializeAudioAccessoryConnection;
- (void)routeToBTDeviceIfNeeded:(id)needed;
- (void)updateDeviceManagementState:(id)state reason:(id)reason;
@end

@implementation MXAudioAccessoryServices

- (BOOL)isAnyManagedDeviceConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MXAudioAccessoryServices_isAnyManagedDeviceConnected__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchSync("[MXAudioAccessoryServices isAnyManagedDeviceConnected]", "MX_AudioAccessoryServices.m", 726, 0, 0, mSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[MXAudioAccessoryServices sharedInstance];
  }

  return sharedInstance_sSharedInstance_15;
}

uint64_t __55__MXAudioAccessoryServices_isAnyManagedDeviceConnected__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 24);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        result = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{*(*(&v8 + 1) + 8 * v6)), "BOOLValue"}];
        if (result)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

MXAudioAccessoryServices *__42__MXAudioAccessoryServices_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAudioAccessoryServices);
  sharedInstance_sSharedInstance_15 = result;
  return result;
}

- (MXAudioAccessoryServices)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MXAudioAccessoryServices;
  v2 = [(MXAudioAccessoryServices *)&v10 init];
  if (v2)
  {
    if (+[MXAudioAccessoryServices isSupported])
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      *(v2 + 1) = dispatch_queue_create("com.apple.mediaexperience.AudioAccessoryServices", v3);
      *(v2 + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v2 + 4) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = MXGetSerialQueue();
      notify_register_dispatch("com.apple.BluetoothServices.AudioRoutingChanged", v2 + 10, v4, &__block_literal_global_7_0);
      if (MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled())
      {
        v5 = MXGetSerialQueue();
        notify_register_dispatch("com.apple.BluetoothServices.PreemptivePortChanged", v2 + 11, v5, &__block_literal_global_10_0);
        v6 = MXGetSerialQueue();
        notify_register_dispatch("com.apple.BluetoothServices.PreemptivePortDisconnected", v2 + 12, v6, &__block_literal_global_13);
      }

      MXDispatchAsync("[MXAudioAccessoryServices init]", "MX_AudioAccessoryServices.m", 155, 0, 0, *(v2 + 1), &__block_literal_global_16_1);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v2 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __32__MXAudioAccessoryServices_init__block_invoke()
{
  v0 = +[MXAudioAccessoryServices sharedInstance];

  return [(MXAudioAccessoryServices *)v0 handleBTNotificationAudioRoutingChange];
}

uint64_t __32__MXAudioAccessoryServices_init__block_invoke_4()
{
  v0 = +[MXAudioAccessoryServices sharedInstance];

  return [(MXAudioAccessoryServices *)v0 initializeAudioAccessoryConnection];
}

- (void)dealloc
{
  [(MXAudioAccessoryServices *)self finalizeAudioAccessoryConnection];
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  self->mDevicesState = 0;
  self->mPortToDeviceAddressMapping = 0;
  notify_cancel(self->mBTNotificationAudioRoutingChangedToken);
  if (MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled())
  {
    notify_cancel(self->mBTNotificationPreemptivePortChangedToken);
    notify_cancel(self->mBTNotificationPreemptivePortDisconnectedToken);
  }

  v4.receiver = self;
  v4.super_class = MXAudioAccessoryServices;
  [(MXAudioAccessoryServices *)&v4 dealloc];
}

- (void)initializeAudioAccessoryConnection
{
  gotLoadHelper_x8__OBJC_CLASS___BTAudioRoutingRequest(v2);
  v5 = objc_alloc_init(*(v4 + 1112));
  self->mAudioRoutingRequest = v5;
  [(BTAudioRoutingRequest *)v5 setDispatchQueue:self->mSerialQueue];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mAudioRoutingRequest = self->mAudioRoutingRequest;

  [defaultCenter addObserver:self selector:sel_handleServerDeath name:@"AudioAccessorydDiedNotification" object:mAudioRoutingRequest];
}

- (void)finalizeAudioAccessoryConnection
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest invalidate];

  self->mAudioRoutingRequest = 0;
}

- (void)handleServerDeath
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  mSerialQueue = self->mSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__MXAudioAccessoryServices_handleServerDeath__block_invoke;
  v6[3] = &unk_1E7AE7CE0;
  v6[4] = self;
  MXDispatchAsync("[MXAudioAccessoryServices handleServerDeath]", "MX_AudioAccessoryServices.m", 247, 0, 0, mSerialQueue, v6);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __45__MXAudioAccessoryServices_handleServerDeath__block_invoke(uint64_t a1)
{
  [*(a1 + 32) finalizeAudioAccessoryConnection];
  v2 = *(a1 + 32);

  return [v2 initializeAudioAccessoryConnection];
}

- (void)routeToBTDeviceIfNeeded:(id)needed
{
  v17 = *MEMORY[0x1E69E9840];
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  if (IsBluetoothSharingSessionEnabled | FigPredictedRouting_IsTimerActive())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if (!needed)
  {
    ArrayFromPortIDAndPartners = [(MXAudioAccessoryServices *)self copyHighestPriorityLocalSession];
    displayID = [(__CFArray *)ArrayFromPortIDAndPartners displayID];
    LocalSessionPriority = CMSM_GetLocalSessionPriority(ArrayFromPortIDAndPartners, 1);
    if (!CMSUtility_IsSessionRouteEligibleForTipi(ArrayFromPortIDAndPartners))
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_22;
    }

    v12 = [(MXAudioAccessoryServices *)self copyPreferredDeviceAddress:LocalSessionPriority bundleID:displayID isHypotheticalQuery:0 reason:@"Device became managed"];
    if (dword_1EB75DE40)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(v12);
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  if (!FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn())
  {
    if (dword_1EB75DE40)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  A2DPPort = cmsmGetA2DPPort(needed);
  if (!A2DPPort)
  {
    goto LABEL_23;
  }

  v7 = A2DPPort;
  if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort))
  {
    if (!vaemShouldRequestOwnershipForSharedAudioRoute())
    {
      goto LABEL_23;
    }

    if (dword_1EB75DE40)
    {
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (vaeRequestOwnershipOnBTPort(v7))
    {
      goto LABEL_23;
    }

    v12 = CMSMUtility_CopySystemAudioRoutingContextUUID();
    ArrayFromPortIDAndPartners = CMSMVAUtility_CreateArrayFromPortIDAndPartners(v7);
    vaemMakeArrayOfPortsRoutable(ArrayFromPortIDAndPartners, 1, 0, v12, 0);
    goto LABEL_21;
  }

  if (dword_1EB75DE40)
  {
LABEL_19:
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_23:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleBTNotificationAudioRoutingChange
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  v5 = [(__CFArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[MXAudioAccessoryServices isPortManaged:](self, "isPortManaged:", objc_msgSend(*(*(&v33 + 1) + 8 * i), "unsignedIntValue"))), *(*(&v33 + 1) + 8 * i)}];
      }

      v6 = [(__CFArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v6);
  }

  [(MXAudioAccessoryServices *)self clearDevicesStateCache];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(__CFArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v30;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        v14 = v3;
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * j);
        v16 = -[MXAudioAccessoryServices copyDeviceAddressFromVADPort:](self, "copyDeviceAddressFromVADPort:", [v15 unsignedIntValue]);
        v17 = [objc_msgSend(v4 objectForKey:{v15), "BOOLValue"}];
        [(MXAudioAccessoryServices *)self updateDeviceManagementState:v16 reason:@"BTNotificationAudioRoutingChange is received"];
        v18 = -[MXAudioAccessoryServices isPortManaged:](self, "isPortManaged:", [v15 unsignedIntValue]);
        v19 = v17 | v11;
        v20 = !v18;
        v3 = v14;
        if (v18)
        {
          v21 = v27;
        }

        else
        {
          v21 = v14;
        }

        if (v20)
        {
          v11 = v19;
        }

        [v21 addObject:v15];
      }

      v10 = [(__CFArray *)obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemUpdateSharedAudioRouteState([v27 allObjects], objc_msgSend(v3, "allObjects"));
  if ((v11 & 1) != 0 && [v3 count])
  {
    allObjects = [v3 allObjects];
LABEL_31:
    [(MXAudioAccessoryServices *)self routeToBTDeviceIfNeeded:allObjects];
    goto LABEL_32;
  }

  if ([v27 count] && !objc_msgSend(v3, "count"))
  {
    allObjects = 0;
    goto LABEL_31;
  }

LABEL_32:
  FigPredictedRouting_UpdatePredictedRoute(2);

  v24 = *MEMORY[0x1E69E9840];
}

- (id)copyDeviceAddressFromVADPort:(unsigned int)port
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  mSerialQueue = self->mSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MXAudioAccessoryServices_copyDeviceAddressFromVADPort___block_invoke;
  v6[3] = &unk_1E7AEC940;
  v6[4] = self;
  v6[5] = &v8;
  portCopy = port;
  MXDispatchSync("[MXAudioAccessoryServices copyDeviceAddressFromVADPort:]", "MX_AudioAccessoryServices.m", 437, 0, 0, mSerialQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __57__MXAudioAccessoryServices_copyDeviceAddressFromVADPort___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 32) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  result = MX_FeatureFlags_IsSystemInputPickerEnabled();
  if (result)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      result = vaeCopyDeviceAddressFromVADPort(*(a1 + 48));
      *(*(*(a1 + 40) + 8) + 40) = result;
      v3 = *(*(*(a1 + 40) + 8) + 40);
      if (v3)
      {
        v4 = *(*(a1 + 32) + 32);
        v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];

        return [v4 setObject:v3 forKey:v5];
      }
    }
  }

  return result;
}

- (void)updateDeviceManagementState:(id)state reason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  if (state)
  {
    stateCopy = state;
    mSerialQueue = self->mSerialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke;
    v11[3] = &unk_1E7AEC990;
    v11[4] = self;
    v11[5] = state;
    v11[6] = reason;
    MXDispatchAsync("[MXAudioAccessoryServices updateDeviceManagementState:reason:]", "MX_AudioAccessoryServices.m", 463, 0, 0, mSerialQueue, v11);
  }

  else
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    [*(a1 + 32) sendAudioRoutingRequestToDevice:MEMORY[0x1E69E9820] appBundleID:3221225472 audioScore:__63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke_2 flags:&unk_1E7AEC968 reason:*(a1 + 40) responseHandler:*(a1 + 32)];
  }
}

uint64_t __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (([a2 action] | 2) == 2)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = MEMORY[0x1E695E110];
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = MEMORY[0x1E695E118];
  }

  result = [*(*(a1 + 40) + 24) setObject:v5 forKey:{*(a1 + 32), v8, v9}];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)clearDevicesStateCache
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MXAudioAccessoryServices_clearDevicesStateCache__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXAudioAccessoryServices clearDevicesStateCache]", "MX_AudioAccessoryServices.m", 492, 0, 0, mSerialQueue, v3);
}

uint64_t __50__MXAudioAccessoryServices_clearDevicesStateCache__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [*(*(a1 + 32) + 24) removeAllObjects];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyHighestPriorityLocalSession
{
  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled())
  {
    v2 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v2 copyHighestPriorityActiveSession:0x1F2893B50 deviceIdentifier:0];
  }

  else
  {

    return CMSM_CopyHighestPriorityLocalPlayingSession(1);
  }
}

uint64_t __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke_2;
  v8[3] = &unk_1E7AEC9B8;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  return [v2 sendAudioRoutingRequestToDevice:v1 appBundleID:v5 audioScore:v3 flags:v4 reason:v6 responseHandler:v8];
}

uint64_t __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  result = [a2 action];
  *(*(*(a1 + 32) + 8) + 24) = result == 1;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __42__MXAudioAccessoryServices_isPortManaged___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 24) objectForKey:{a1[5]), "BOOLValue"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __59__MXAudioAccessoryServices_handleNewWirelessPortConnected___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setObject:*(a1 + 40) forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (![*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
  {
    [*(a1 + 32) updateDeviceManagementState:*(a1 + 40) reason:@"Checking management state for a new connected wireless port"];
  }

  v2 = *(a1 + 40);
}

- (void)handlePortDisconnected:(unsigned int)disconnected
{
  v5 = [(MXAudioAccessoryServices *)self copyDeviceAddressFromVADPort:?];
  mSerialQueue = self->mSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MXAudioAccessoryServices_handlePortDisconnected___block_invoke;
  v7[3] = &unk_1E7AE7D58;
  disconnectedCopy = disconnected;
  v7[4] = self;
  v7[5] = v5;
  MXDispatchAsync("[MXAudioAccessoryServices handlePortDisconnected:]", "MX_AudioAccessoryServices.m", 775, 0, 0, mSerialQueue, v7);
}

void __51__MXAudioAccessoryServices_handlePortDisconnected___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 32) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}])
  {
    if (dword_1EB75DE40)
    {
      v20 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 32) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48), v13, v14)}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_7:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{*(*(&v15 + 1) + 8 * v7)), "isEqualToString:", *(a1 + 40)}])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v5)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if ([*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
    {
      if (dword_1EB75DE40)
      {
        v20 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = v20;
        if (os_log_type_enabled(v8, type))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 0xFFFFFFFE;
        }

        if (v10)
        {
          v11 = *(a1 + 40);
          v21 = 136315395;
          v22 = "[MXAudioAccessoryServices handlePortDisconnected:]_block_invoke";
          v23 = 2113;
          v24 = v11;
          LODWORD(v14) = 22;
          v13 = &v21;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [*(*(a1 + 32) + 24) removeObjectForKey:{*(a1 + 40), v13, v14}];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyPreferredDeviceAddress:(id *)address andPreemptivePortInfo:(id *)info
{
  v24 = *MEMORY[0x1E69E9840];
  if (address && info)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = __Block_byref_object_copy__13;
    v22 = __Block_byref_object_dispose__13;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__13;
    v16 = __Block_byref_object_dispose__13;
    v17 = 0;
    mSerialQueue = self->mSerialQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke;
    v9[3] = &unk_1E7AECA30;
    v9[4] = self;
    v9[5] = &v12;
    v9[6] = &v18;
    MXDispatchSync("[MXAudioAccessoryServices copyPreferredDeviceAddress:andPreemptivePortInfo:]", "MX_AudioAccessoryServices.m", 819, 0, 0, mSerialQueue, v9);
    *address = v13[5];
    *info = v19[5];
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke_2;
  v3[3] = &unk_1E7AECA08;
  v4 = *(a1 + 40);
  return [v1 sendAudioRoutingRequestToDevice:0 appBundleID:0 audioScore:301 flags:16 reason:@"Copying preemptive port info" responseHandler:v3];
}

id __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a2 action] != 5 || (*(*(*(a1 + 32) + 8) + 40) = objc_msgSend(a2, "deviceAddress"), result = objc_msgSend(a2, "wxInfo"), *(*(*(a1 + 40) + 8) + 40) = result, dword_1EB75DE40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __91__MXAudioAccessoryServices_copyPreferredDeviceAddress_bundleID_isHypotheticalQuery_reason___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(*(a1 + 32) + 8) + 40) = [a2 deviceAddress];
  v5 = [a2 action];
  switch(v5)
  {
    case 3:
      if (![objc_msgSend(a2 "reason")] || *(a1 + 48) != 501)
      {
        break;
      }

      if (dword_1EB75DE40)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 6:
      if (dword_1EB75DE40)
      {
LABEL_13:
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_14:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      break;
    case 4:
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*(*(a1 + 32) + 8) + 40) = 0;
      break;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MXAudioAccessoryServices_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXAudioAccessoryServices dumpDebugInfo]", "MX_AudioAccessoryServices.m", 889, 0, 0, mSerialQueue, v3);
}

uint64_t __41__MXAudioAccessoryServices_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v51 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v59 count:{16, v37, v39}];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (dword_1EB75DE40)
        {
          v8 = *(*(&v46 + 1) + 8 * i);
          v51 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = v51;
          if (os_log_type_enabled(v9, type))
          {
            v11 = v10;
          }

          else
          {
            v11 = v10 & 0xFFFFFFFE;
          }

          if (v11)
          {
            v12 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v8), "BOOLValue"}];
            v53 = 136315651;
            v13 = @"Unmanaged";
            if (v12)
            {
              v13 = @"Managed";
            }

            v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
            v55 = 2113;
            v56 = v8;
            v57 = 2114;
            v58 = v13;
            LODWORD(v40) = 32;
            v38 = &v53;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v5);
  }

  if (dword_1EB75DE40)
  {
    v51 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v51;
    if (os_log_type_enabled(v14, type))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      v53 = 136315138;
      v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
      LODWORD(v40) = 12;
      v38 = &v53;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v51;
      if (os_log_type_enabled(v17, type))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v53 = 136315138;
        v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
        LODWORD(v40) = 12;
        v38 = &v53;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v20 = *(*(a1 + 32) + 32);
  result = [v20 countByEnumeratingWithState:&v42 objects:v52 count:{16, v38, v40}];
  if (result)
  {
    v22 = result;
    v23 = *v43;
    do
    {
      v24 = 0;
      do
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        if (dword_1EB75DE40)
        {
          v25 = *(*(&v42 + 1) + 8 * v24);
          v51 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v27 = v51;
          if (os_log_type_enabled(v26, type))
          {
            v28 = v27;
          }

          else
          {
            v28 = v27 & 0xFFFFFFFE;
          }

          if (v28)
          {
            v29 = [*(*(a1 + 32) + 32) objectForKey:v25];
            v53 = 136315650;
            v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
            v55 = 2114;
            v56 = v25;
            v57 = 2114;
            v58 = v29;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        ++v24;
      }

      while (v22 != v24);
      result = [v20 countByEnumeratingWithState:&v42 objects:v52 count:16];
      v22 = result;
    }

    while (result);
  }

  if (dword_1EB75DE40)
  {
    v51 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = v51;
    if (os_log_type_enabled(v30, type))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (v32)
    {
      v53 = 136315138;
      v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl();
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v34 = v51;
      if (os_log_type_enabled(v33, type))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v53 = 136315138;
        v54 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return result;
}

@end