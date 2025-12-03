@interface MXCoreSessionIndependentInputAudioResource
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)options;
- (id)additiveRoutingInfo;
- (id)copyMXSessionIndependentInputAudioResourceList;
- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)sendSessionConfigurationInfoToVA;
- (int)setPropertyForKey:(id)key value:(id)value;
- (void)addMXSessionIndependentInputAudioResource:(id)resource;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features;
- (void)removeMXSessionIndependentInputAudioResource:(id)resource;
- (void)resetMXSessionIsPlayingStates;
- (void)resetMXSessionIsRecordingStates;
- (void)teardown;
@end

@implementation MXCoreSessionIndependentInputAudioResource

- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)options
{
  location[16] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MXCoreSessionIndependentInputAudioResource;
  v4 = [(MXCoreSessionIndependentAudioResource *)&v12 init];
  if (v4)
  {
    if (options)
    {
      -[MXCoreSessionBase extractAndSetAuditToken:](v4, "extractAndSetAuditToken:", [options objectForKey:@"AuditToken"]);
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

- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features
{
  [features setObject:MEMORY[0x1E695E118] forKey:@"prefer independent route"];
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  [(MXCoreSessionBase *)&v5 populateAdditiveRoutingInfoWithRouteControlFeatures:features];
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
  shouldSendSessionConfigurationInfoToVA = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (shouldSendSessionConfigurationInfoToVA)
  {
    LOBYTE(shouldSendSessionConfigurationInfoToVA) = [(MXCoreSessionIndependentInputAudioResource *)self willRouteToOnDemandVADOnActivation];
  }

  return shouldSendSessionConfigurationInfoToVA;
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
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetIsPlayingStates];
      }

      while (v4 != v6);
      v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)resetMXSessionIsRecordingStates
{
  v13 = *MEMORY[0x1E69E9840];
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetIsRecordingState];
      }

      while (v4 != v6);
      v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)addMXSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList compact];
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (void)removeMXSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
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
  allObjects = [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  return allObjects;
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  location[16] = *MEMORY[0x1E69E9840];
  v39 = 0;
  if (!key)
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

  if ([key isEqualToString:{@"ClientName", v30, v32}])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MXCoreSessionBase *)self updateClientName:value];
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([key isEqualToString:@"ClientPID"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([value unsignedIntValue])
      {
        if ([(NSNumber *)[(MXCoreSessionBase *)self clientPID] isEqualToNumber:value])
        {
          goto LABEL_8;
        }

        [(MXCoreSessionBase *)self setClientPID:value];
        CMSessionMgrCopyDisplayIdentifierToSession(self);
        if (![(MXCoreSessionBase *)self isActive])
        {
          goto LABEL_8;
        }

        sendSessionConfigurationInfoToVA = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA];
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

  if ([key isEqualToString:@"HasExternalMuteNotificationContext"])
  {
    if (value)
    {
      v12 = CFGetTypeID(value);
      if (v12 == CFBooleanGetTypeID())
      {
        -[MXCoreSessionBase setHasExternalMuteNotificationContext:](self, "setHasExternalMuteNotificationContext:", [value BOOLValue]);
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

  if ([key isEqualToString:@"InterruptionStyle"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([value unsignedIntValue] == 16 || !objc_msgSend(value, "unsignedIntValue"))
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

  if ([key isEqualToString:@"PreferredRouteControlFeatures"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }
    }

    v14 = [(NSDictionary *)[(MXCoreSessionBase *)self preferredRouteControlFeatures] copy];
    [(MXCoreSessionBase *)self setPreferredRouteControlFeatures:value];
    v15 = [v14 isEqual:value];
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

    isActive = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([key isEqualToString:@"PrefersSuppressingRecordingState"])
  {
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [value BOOLValue];
        if (bOOLValue != [(MXCoreSessionBase *)self prefersSuppressingRecordingState])
        {
          [(MXCoreSessionBase *)self setPrefersSuppressingRecordingState:bOOLValue];
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

  if ([key isEqualToString:@"ReporterIDs"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![(NSArray *)[(MXCoreSessionBase *)self reporterIDs] isEqualToArray:value])
      {
        [(MXCoreSessionBase *)self setReporterIDs:value];
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

  if ([key isEqualToString:@"AudioCategory"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([value isEqualToString:@"Record"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioCategory:value];
    cmsUpdateAudioBehavior(self);
    isActive = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([key isEqualToString:@"AudioMode"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([value isEqualToString:@"Default"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioMode:value];
    [(MXCoreSessionBase *)self setMode:CMSMVAUtility_GetVADModeFromFigModeName(value)];
    cmsUpdateAudioBehavior(self);
    isActive = [(MXCoreSessionBase *)self isActive];
    goto LABEL_50;
  }

  if ([key isEqualToString:@"EnableBluetoothRecording"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      bOOLValue2 = [value BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreference:bOOLValue2];
    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreferenceSetByClient:1];
    [(MXCoreSessionBase *)self setAudioCategory:CMSUtility_GetCustomizedCategory(self)];
    isActive = [(MXCoreSessionBase *)self isActive];
LABEL_50:
    v39 = isActive;
    if (!isActive)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  if ([key isEqualToString:@"AudioSessionID"])
  {
    audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      unsignedIntValue = [value unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
    }

    if (audioSessionID != unsignedIntValue)
    {
      [(MXCoreSessionBase *)self setAudioSessionID:unsignedIntValue];
      objc_initWeak(location, self);
      v27 = MXGetSerialQueue();
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__MXCoreSessionIndependentInputAudioResource_setPropertyForKey_value___block_invoke;
      v34[3] = &unk_1E7AEA310;
      objc_copyWeak(&v35, location);
      v36 = unsignedIntValue;
      MXDispatchAsync("[MXCoreSessionIndependentInputAudioResource setPropertyForKey:value:]", "MXCoreSessionIndependentInputAudioResource.m", 417, 0, 0, v27, v34);
      objc_destroyWeak(&v35);
      objc_destroyWeak(location);
    }

    goto LABEL_8;
  }

  if ([key isEqualToString:@"PrefersEchoCancelledInput"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      bOOLValue3 = [value BOOLValue];
      if (bOOLValue3 == [(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        goto LABEL_8;
      }
    }

    else
    {
      bOOLValue3 = 0;
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

    [(MXCoreSessionBase *)self setPrefersEchoCancelledInput:bOOLValue3, v31, v33];
    isActive2 = [(MXCoreSessionBase *)self isActive];
    v39 = isActive2;
    if (!isActive2)
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  if (![key isEqualToString:@"ShadowingAudioSessionOptions"])
  {
    if (![key isEqualToString:@"IsRecordingMuted"])
    {
      goto LABEL_8;
    }

    if (value)
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

    sendSessionConfigurationInfoToVA = -[MXCoreSessionBase updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:](self, "updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:", [value BOOLValue], 0);
LABEL_52:
    v8 = sendSessionConfigurationInfoToVA;
    goto LABEL_53;
  }

  if (value)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }
  }

  v8 = [(MXCoreSessionBase *)self updateShadowingAudioSessionOptions:value shouldUpdateVAConfig:&v39];
  if (v39)
  {
LABEL_51:
    sendSessionConfigurationInfoToVA = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA:v31];
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

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v36 = *MEMORY[0x1E69E9840];
  if (key)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([key isEqualToString:@"AudioBehaviour"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioBehaviour];
LABEL_9:
        v8 = audioBehaviour;
LABEL_10:
        v9 = 0;
        *out = v8;
        goto LABEL_11;
      }

      if ([key isEqualToString:@"AudioCategory"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioCategory];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"AudioMode"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioMode];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"AvailableRouteControlFeatures"])
      {
        v8 = [(MXCoreSessionBase *)self copyAvailableRouteControlFeatures:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"EnableBluetoothRecording"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self enableBluetoothRecordingPreference];
LABEL_16:
        v14 = enableBluetoothRecordingPreference;
        v15 = v12;
LABEL_17:
        v8 = [v15 initWithBool:v14];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"ClientName"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self clientName];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ClientPID"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self clientPID];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ClientPriority"])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"AudioSessionID"])
      {
        v16 = objc_alloc(MEMORY[0x1E696AD98]);
        audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
LABEL_26:
        v18 = audioSessionID;
        v19 = v16;
LABEL_27:
        v8 = [v19 initWithUnsignedInt:v18];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"CoreSessionID"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self ID];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"HasExternalMuteNotificationContext"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self hasExternalMuteNotificationContext];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"InterruptionStyle"])
      {
        v16 = objc_alloc(MEMORY[0x1E696AD98]);
        audioSessionID = [(MXCoreSessionBase *)self interruptionStyle];
        goto LABEL_26;
      }

      if ([key isEqualToString:@"IsActive"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self isActive];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsPlaying"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self isPlaying];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsRecording"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self isRecording];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsRecordingMuted"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self isRecordingMuted];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"PrefersEchoCancelledInput"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self prefersEchoCancelledInput];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"PreferredRouteControlFeatures"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self preferredRouteControlFeatures];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"SystemHasAudioInputDevice"])
      {
        v12 = objc_alloc(MEMORY[0x1E696AD98]);
        enableBluetoothRecordingPreference = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"ReporterIDs"])
      {
        CMSUtility_CreateReporterIDIfNeeded(self);
        audioBehaviour = [(MXCoreSessionBase *)self reporterIDs];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ShadowingAudioSessionOptions"])
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
        *out = 0;
        goto LABEL_11;
      }

      if ([key isEqualToString:@"CurrentAudioHardwareInputNumberChannels"])
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

      if ([key isEqualToString:@"CurrentInputSampleRate"])
      {
        if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
        {
          devicesSampleRates = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
          audioBehaviour = -[NSDictionary objectForKey:](devicesSampleRates, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSUtility_GetCurrentInputVADID(self)]);
        }

        else
        {
          audioBehaviour = &unk_1F28AF5F0;
        }

        goto LABEL_9;
      }

      if ([key isEqualToString:@"HasEchoCancelledInput"])
      {
        isRoutedToOnDemandVAD = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        if (CMSMVAUtility_IsAdditiveRoutingEnabled() && [(MXCoreSessionBase *)self isActive]&& isRoutedToOnDemandVAD)
        {
          IsRecordingCategory = CMSMUtility_IsRecordingCategory([(MXCoreSessionBase *)self audioCategory]);
LABEL_85:
          v15 = objc_alloc(MEMORY[0x1E696AD98]);
          v14 = IsRecordingCategory;
          goto LABEL_17;
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled())
        {
          hasEchoCancelledInput = [(MXCoreSessionBase *)self hasEchoCancelledInput];
LABEL_76:
          IsRecordingCategory = hasEchoCancelledInput;
          goto LABEL_85;
        }
      }

      else
      {
        if ([key isEqualToString:@"MaximumNumberOfInputChannels"])
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

        if ([key isEqualToString:@"RouteControlFeatures"])
        {
          v31 = CMSMVAUtility_IsAdditiveRoutingEnabled() && [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
          v32 = objc_alloc(MEMORY[0x1E695DF20]);
          v8 = [v32 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v31), @"RouteControlFeatures", 0, v33, v34}];
          goto LABEL_10;
        }

        if (![key isEqualToString:@"SupportsEchoCancelledInput"])
        {
          goto LABEL_83;
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled())
        {
          hasEchoCancelledInput = [(MXCoreSessionBase *)self supportsEchoCancelledInput];
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

- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _beginInterruption:self withSecTask:task andFlags:flags];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _endInterruption:self withSecTask:task andStatus:status];
}

- (void)dumpDebugInfo
{
  v16 = *MEMORY[0x1E69E9840];
  [(MXCoreSessionBase *)self dumpDebugConfigInfo];
  [(MXCoreSessionBase *)self dumpDebugStateInfo];
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v11 + 1) + 8 * i) dumpDebugInfo];
      }

      v5 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v11 objects:v15 count:16];
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