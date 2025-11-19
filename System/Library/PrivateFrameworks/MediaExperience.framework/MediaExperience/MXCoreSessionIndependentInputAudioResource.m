@interface MXCoreSessionIndependentInputAudioResource
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)a3;
- (id)additiveRoutingInfo;
- (id)copyMXSessionIndependentInputAudioResourceList;
- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4;
- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)sendSessionConfigurationInfoToVA;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (void)addMXSessionIndependentInputAudioResource:(id)a3;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)a3;
- (void)removeMXSessionIndependentInputAudioResource:(id)a3;
- (void)resetMXSessionIsPlayingStates;
- (void)resetMXSessionIsRecordingStates;
- (void)teardown;
@end

@implementation MXCoreSessionIndependentInputAudioResource

- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)a3
{
  location[16] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MXCoreSessionIndependentInputAudioResource;
  v4 = [(MXCoreSessionIndependentAudioResource *)&v12 init];
  if (v4)
  {
    if (a3)
    {
      -[MXCoreSessionBase extractAndSetAuditToken:](v4, "extractAndSetAuditToken:", [a3 objectForKey:@"AuditToken"]);
      v14 = 0u;
      v15 = 0u;
      [(MXCoreSessionBase *)v4 auditToken];
      v5 = xpc_copy_entitlement_for_token();
      if (v5)
      {
        xpc_release(v5);
        v4->mMXSessionIndependentInputAudioResourceList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
        v4->mMXSessionIndependentInputAudioResourceListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
        objc_initWeak(location, v4);
        [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource addMXCoreSessionIndependentInputAudioResource:"addMXCoreSessionIndependentInputAudioResource:", objc_loadWeak(location)];
        [(MXCoreSessionBase *)v4 setAudioCategory:@"Record"];
        [(MXCoreSessionBase *)v4 setAudioMode:@"Default"];
        [(MXCoreSessionBase *)v4 setInterruptionStyle:16];
        cmsUpdateAudioBehavior(v4);
        v13[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v13);
        [(MXCoreSessionBase *)v4 setRoutingContextUUID:v13[0]];

        [(MXCoreSessionBase *)v4 setMode:1768776806];
        [(MXCoreSessionBase *)v4 setAllowsBluetoothRecordingCustomization:1];
        [(MXCoreSessionBase *)v4 setAllowsDefaultBuiltInRouteCustomization:0];
        [(MXCoreSessionBase *)v4 setHasInput:1];
        objc_destroyWeak(location);
        goto LABEL_12;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      LODWORD(v13[0]) = 0;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = v13[0];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        LODWORD(v14) = 136315138;
        *(&v14 + 4) = "[MXCoreSessionIndependentInputAudioResource initWithOptions:]";
        _os_log_send_and_compose_impl();
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v4 = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)a3
{
  [a3 setObject:MEMORY[0x1E695E118] forKey:@"prefer independent route"];
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  [(MXCoreSessionBase *)&v5 populateAdditiveRoutingInfoWithRouteControlFeatures:a3];
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  [(MXCoreSessionIndependentInputAudioResource *)self populateAdditiveRoutingInfoWithRouteControlFeatures:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithEchoCancelledInput:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithBTRecordingCustomizations:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithFollowingVADInformation:v3 inputOnly:1];
  return v3;
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentInputAudioResource;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  v3 = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (v3)
  {
    LOBYTE(v3) = [(MXCoreSessionIndependentInputAudioResource *)self willRouteToOnDemandVADOnActivation];
  }

  return v3;
}

- (int)sendSessionConfigurationInfoToVA
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && ![(MXCoreSessionIndependentInputAudioResource *)self shouldSendSessionConfigurationInfoToVA])
  {
    if (dword_1EB75DE40)
    {
      v8 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    result = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MXCoreSessionIndependentInputAudioResource;
    result = [(MXCoreSessionBase *)&v6 sendSessionConfigurationInfoToVA:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)teardown
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXCoreSessionIndependentAudioResource *)self deactivate:v5];
  CMSMSleep_UpdateIdleSleepPreventor(self, 0);
  [(MXCoreSessionBase *)self unregisterSessionAudioObject];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)resetMXSessionIsPlayingStates
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetIsPlayingStates];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetMXSessionIsRecordingStates
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetIsRecordingState];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource addMXCoreSessionIndependentInputAudioResource:"addMXCoreSessionIndependentInputAudioResource:", 0];

  self->mMXSessionIndependentInputAudioResourceList = 0;
  self->mMXSessionIndependentInputAudioResourceListLock = 0;
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentInputAudioResource;
  [(MXCoreSessionIndependentAudioResource *)&v3 dealloc];
}

- (void)addMXSessionIndependentInputAudioResource:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList compact];
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (void)removeMXSessionIndependentInputAudioResource:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXSessionIndependentInputAudioResourceList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList compact];
      break;
    }
  }

  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (id)copyMXSessionIndependentInputAudioResourceList
{
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  return v4;
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  location[16] = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (!a3)
  {
    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if (dword_1EB75DE40)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([a3 isEqualToString:{@"ClientName", v30, v32}])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MXCoreSessionBase *)self updateClientName:a4];
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([a3 isEqualToString:@"ClientPID"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a4 unsignedIntValue])
      {
        if ([(NSNumber *)[(MXCoreSessionBase *)self clientPID] isEqualToNumber:a4])
        {
          goto LABEL_8;
        }

        [(MXCoreSessionBase *)self setClientPID:a4];
        CMSessionMgrCopyDisplayIdentifierToSession(self);
        if (![(MXCoreSessionBase *)self isActive])
        {
          goto LABEL_8;
        }

        v11 = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA];
        goto LABEL_52;
      }

      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    else
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

LABEL_119:
    v8 = location[0];
    goto LABEL_53;
  }

  if ([a3 isEqualToString:@"HasExternalMuteNotificationContext"])
  {
    if (a4)
    {
      v12 = CFGetTypeID(a4);
      if (v12 == CFBooleanGetTypeID())
      {
        -[MXCoreSessionBase setHasExternalMuteNotificationContext:](self, "setHasExternalMuteNotificationContext:", [a4 BOOLValue]);
        if (dword_1EB75DE40)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_8;
      }
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([a3 isEqualToString:@"InterruptionStyle"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a4 unsignedIntValue] == 16 || !objc_msgSend(a4, "unsignedIntValue"))
      {
        goto LABEL_8;
      }

      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    else
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    goto LABEL_119;
  }

  if ([a3 isEqualToString:@"PreferredRouteControlFeatures"])
  {
    if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }
    }

    v14 = [(NSDictionary *)[(MXCoreSessionBase *)self preferredRouteControlFeatures] copy];
    [(MXCoreSessionBase *)self setPreferredRouteControlFeatures:a4];
    v15 = [v14 isEqual:a4];
    if (dword_1EB75DE40)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if ((v16 & 1) == 0)
    {
      v38 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([a3 isEqualToString:@"PrefersSuppressingRecordingState"])
  {
    if (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [a4 BOOLValue];
        if (v18 != [(MXCoreSessionBase *)self prefersSuppressingRecordingState])
        {
          [(MXCoreSessionBase *)self setPrefersSuppressingRecordingState:v18];
          if (dword_1EB75DE40)
          {
            v38 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if ([(MXCoreSessionBase *)self isRecording:v31])
          {
            MX_SystemStatus_PublishRecordingClientsInfo();
          }
        }

        goto LABEL_8;
      }
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([a3 isEqualToString:@"ReporterIDs"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(NSArray *)[(MXCoreSessionBase *)self reporterIDs] isEqualToArray:a4])
      {
        [(MXCoreSessionBase *)self setReporterIDs:a4];
        if (dword_1EB75DE40)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostReporterIDsDidChange(self);
      }

      goto LABEL_8;
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([a3 isEqualToString:@"AudioCategory"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([a4 isEqualToString:@"Record"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioCategory:a4];
    cmsUpdateAudioBehavior(self);
    v21 = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([a3 isEqualToString:@"AudioMode"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([a4 isEqualToString:@"Default"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioMode:a4];
    [(MXCoreSessionBase *)self setMode:CMSMVAUtility_GetVADModeFromFigModeName(a4)];
    cmsUpdateAudioBehavior(self);
    v21 = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([a3 isEqualToString:@"EnableBluetoothRecording"])
  {
    if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      v23 = [a4 BOOLValue];
    }

    else
    {
      v23 = 0;
    }

    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreference:v23];
    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreferenceSetByClient:1];
    [(MXCoreSessionBase *)self setAudioCategory:CMSUtility_GetCustomizedCategory(self)];
    v21 = [(MXCoreSessionBase *)self isActive];
LABEL_50:
    v39 = v21;
    if (!v21)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  if ([a3 isEqualToString:@"AudioSessionID"])
  {
    v24 = [(MXCoreSessionBase *)self audioSessionID];
    if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      v25 = [a4 unsignedIntValue];
    }

    else
    {
      v25 = 0;
    }

    if (v24 != v25)
    {
      [(MXCoreSessionBase *)self setAudioSessionID:v25];
      objc_initWeak(location, self);
      v27 = MXGetSerialQueue();
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__MXCoreSessionIndependentInputAudioResource_setPropertyForKey_value___block_invoke;
      v34[3] = &unk_1E7AEA310;
      objc_copyWeak(&v35, location);
      v36 = v25;
      MXDispatchAsync("[MXCoreSessionIndependentInputAudioResource setPropertyForKey:value:]", "MXCoreSessionIndependentInputAudioResource.m", 417, 0, 0, v27, v34);
      objc_destroyWeak(&v35);
      objc_destroyWeak(location);
    }

    goto LABEL_8;
  }

  if ([a3 isEqualToString:@"PrefersEchoCancelledInput"])
  {
    if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      v26 = [a4 BOOLValue];
      if (v26 == [(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v26 = 0;
      v8 = 0;
      if (![(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        goto LABEL_9;
      }
    }

    if (dword_1EB75DE40)
    {
      v38 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setPrefersEchoCancelledInput:v26, v31, v33];
    v29 = [(MXCoreSessionBase *)self isActive];
    v39 = v29;
    if (!v29)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  if (![a3 isEqualToString:@"ShadowingAudioSessionOptions"])
  {
    if (![a3 isEqualToString:@"IsRecordingMuted"])
    {
      goto LABEL_8;
    }

    if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }
    }

    if (!MX_FeatureFlags_IsSessionBasedMutingEnabled())
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (![(MXCoreSessionBase *)self shadowingAudioSessionID])
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if ([(MXCoreSessionBase *)self shadowingAudioSessionOptions]== 1)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    v11 = -[MXCoreSessionBase updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:](self, "updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:", [a4 BOOLValue], 0);
LABEL_52:
    v8 = v11;
    goto LABEL_53;
  }

  if (a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }
  }

  v8 = [(MXCoreSessionBase *)self updateShadowingAudioSessionOptions:a4 shouldUpdateVAConfig:&v39];
  if (v39)
  {
LABEL_51:
    v11 = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA:v31];
    goto LABEL_52;
  }

LABEL_53:
  if (v8)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

id __70__MXCoreSessionIndependentInputAudioResource_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = result;
    [result updateAudioSessionIDAndAudioObject:*(a1 + 40)];
    result = [v3 isActive];
    if (result)
    {

      return [v3 sendSessionConfigurationInfoToVA];
    }
  }

  return result;
}

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a3 isEqualToString:@"AudioBehaviour"])
      {
        v7 = [(MXCoreSessionBase *)self audioBehaviour];
LABEL_9:
        v8 = v7;
LABEL_10:
        v9 = 0;
        *a4 = v8;
        goto LABEL_11;
      }

      if ([a3 isEqualToString:@"AudioCategory"])
      {
        v7 = [(MXCoreSessionBase *)self audioCategory];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"AudioMode"])
      {
        v7 = [(MXCoreSessionBase *)self audioMode];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"AvailableRouteControlFeatures"])
      {
        v8 = [(MXCoreSessionBase *)self copyAvailableRouteControlFeatures:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
        goto LABEL_10;
      }

      if ([a3 isEqualToString:@"EnableBluetoothRecording"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self enableBluetoothRecordingPreference];
LABEL_16:
        v14 = v13;
        v15 = v12;
LABEL_17:
        v8 = [v15 initWithBool:v14];
        goto LABEL_10;
      }

      if ([a3 isEqualToString:@"ClientName"])
      {
        v7 = [(MXCoreSessionBase *)self clientName];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"ClientPID"])
      {
        v7 = [(MXCoreSessionBase *)self clientPID];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"ClientPriority"])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        goto LABEL_10;
      }

      if ([a3 isEqualToString:@"AudioSessionID"])
      {
        v16 = objc_alloc(MEMORY[0x1E696AD98]);
        v17 = [(MXCoreSessionBase *)self audioSessionID];
LABEL_26:
        v18 = v17;
        v19 = v16;
LABEL_27:
        v8 = [v19 initWithUnsignedInt:v18];
        goto LABEL_10;
      }

      if ([a3 isEqualToString:@"CoreSessionID"])
      {
        v7 = [(MXCoreSessionBase *)self ID];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"HasExternalMuteNotificationContext"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self hasExternalMuteNotificationContext];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"InterruptionStyle"])
      {
        v16 = objc_alloc(MEMORY[0x1E696AD98]);
        v17 = [(MXCoreSessionBase *)self interruptionStyle];
        goto LABEL_26;
      }

      if ([a3 isEqualToString:@"IsActive"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self isActive];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"IsPlaying"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self isPlaying];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"IsRecording"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self isRecording];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"IsRecordingMuted"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self isRecordingMuted];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"PrefersEchoCancelledInput"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self prefersEchoCancelledInput];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"PreferredRouteControlFeatures"])
      {
        v7 = [(MXCoreSessionBase *)self preferredRouteControlFeatures];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"SystemHasAudioInputDevice"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        v13 = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        goto LABEL_16;
      }

      if ([a3 isEqualToString:@"ReporterIDs"])
      {
        CMSUtility_CreateReporterIDIfNeeded(self);
        v7 = [(MXCoreSessionBase *)self reporterIDs];
        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"ShadowingAudioSessionOptions"])
      {
        if ([(MXCoreSessionBase *)self shadowingAudioSessionID])
        {
          v21 = objc_alloc(MEMORY[0x1E695DF20]);
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXCoreSessionBase shadowingAudioSessionID](self, "shadowingAudioSessionID")}];
          v8 = [v21 initWithObjectsAndKeys:{v22, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[MXCoreSessionBase shadowingAudioSessionOptions](self, "shadowingAudioSessionOptions")), @"ShadowingOptions", 0}];
          goto LABEL_10;
        }

LABEL_83:
        v9 = 0;
        *a4 = 0;
        goto LABEL_11;
      }

      if ([a3 isEqualToString:@"CurrentAudioHardwareInputNumberChannels"])
      {
        if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
        {
          CurrentInputVADID = CMSUtility_GetCurrentInputVADID(self);
          NumberOfChannelsForVADIDAndScope = vaemGetNumberOfChannelsForVADIDAndScope(CurrentInputVADID, 1);
LABEL_60:
          v25 = NumberOfChannelsForVADIDAndScope;
LABEL_73:
          v19 = objc_alloc(MEMORY[0x1E696AD98]);
          v18 = v25;
          goto LABEL_27;
        }

        goto LABEL_72;
      }

      if ([a3 isEqualToString:@"CurrentInputSampleRate"])
      {
        if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
        {
          v26 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
          v7 = -[NSDictionary objectForKey:](v26, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSUtility_GetCurrentInputVADID(self)]);
        }

        else
        {
          v7 = &unk_1F28AF5F0;
        }

        goto LABEL_9;
      }

      if ([a3 isEqualToString:@"HasEchoCancelledInput"])
      {
        v27 = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [(MXCoreSessionBase *)self isActive]&& v27)
        {
          IsRecordingCategory = CMSMUtility_IsRecordingCategory([(MXCoreSessionBase *)self audioCategory]);
LABEL_85:
          v15 = objc_alloc(MEMORY[0x1E696AD98]);
          v14 = IsRecordingCategory;
          goto LABEL_17;
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled())
        {
          v30 = [(MXCoreSessionBase *)self hasEchoCancelledInput];
LABEL_76:
          IsRecordingCategory = v30;
          goto LABEL_85;
        }
      }

      else
      {
        if ([a3 isEqualToString:@"MaximumNumberOfInputChannels"])
        {
          if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
          {
            v29 = CMSUtility_GetCurrentInputVADID(self);
            NumberOfChannelsForVADIDAndScope = vaemGetMaximumNumberOfChannels(1, v29, 1);
            goto LABEL_60;
          }

LABEL_72:
          v25 = 0;
          goto LABEL_73;
        }

        if ([a3 isEqualToString:@"RouteControlFeatures"])
        {
          v31 = CMSMVAUtility_IsAdditiveRoutingEnabled() && [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
          v32 = objc_alloc(MEMORY[0x1E695DF20]);
          v8 = [v32 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v31), @"RouteControlFeatures", 0, v33, v34}];
          goto LABEL_10;
        }

        if (![a3 isEqualToString:@"SupportsEchoCancelledInput"])
        {
          goto LABEL_83;
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled())
        {
          v30 = [(MXCoreSessionBase *)self supportsEchoCancelledInput];
          goto LABEL_76;
        }
      }

      IsRecordingCategory = 0;
      goto LABEL_85;
    }

    [MXCoreSessionIndependentInputAudioResource copyPropertyForKey:v35 valueOut:?];
  }

  else
  {
    [MXCoreSessionIndependentInputAudioResource copyPropertyForKey:v35 valueOut:?];
  }

  v9 = v35[0];
  if (v35[0])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _beginInterruption:self withSecTask:a3 andFlags:a4];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _endInterruption:self withSecTask:a3 andStatus:a4];
}

- (void)dumpDebugInfo
{
  v16 = *MEMORY[0x1E69E9840];
  [(MXCoreSessionBase *)self dumpDebugConfigInfo];
  [(MXCoreSessionBase *)self dumpDebugStateInfo];
  v3 = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) dumpDebugInfo];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.20(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.21(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.22(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.23(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end