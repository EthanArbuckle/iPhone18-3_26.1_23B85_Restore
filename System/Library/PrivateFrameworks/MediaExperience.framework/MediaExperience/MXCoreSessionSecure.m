@interface MXCoreSessionSecure
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSessionSecure)initWithOptions:(id)a3;
- (id)additiveRoutingInfo;
- (id)copyMXSessionSecureList;
- (id)getIsolatedAudioUseCaseIDAsString;
- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4;
- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)sendSessionConfigurationInfoToVA;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (unint64_t)addMXSessionSecure:(id)a3;
- (unint64_t)removeMXSessionSecure:(id)a3;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXCoreSessionSecure

- (MXCoreSessionSecure)initWithOptions:(id)a3
{
  location[16] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MXCoreSessionSecure;
  v4 = [(MXCoreSessionBase *)&v17 init];
  if (!v4)
  {
    goto LABEL_24;
  }

  if (!a3)
  {
    v18 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v18;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_13:
    LODWORD(v19) = 136315138;
    *(&v19 + 4) = "[MXCoreSessionSecure initWithOptions:]";
    _os_log_send_and_compose_impl();
LABEL_23:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v4 = 0;
    goto LABEL_24;
  }

  if (!CMSMDeviceState_DeviceHasExclaveCapability())
  {
    v18 = 0;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v18;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  -[MXCoreSessionBase extractAndSetAuditToken:](v4, "extractAndSetAuditToken:", [a3 objectForKey:@"AuditToken"]);
  v19 = 0u;
  v20 = 0u;
  [(MXCoreSessionBase *)v4 auditToken];
  v5 = xpc_copy_entitlement_for_token();
  if (!v5 || (xpc_release(v5), v6 = [objc_msgSend(a3 objectForKey:{@"IsolatedAudioUseCaseID", "unsignedIntValue"}], v7 = v6, !v6))
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_23;
  }

  if (v6 == 1936290409)
  {
    [(MXCoreSessionBase *)v4 setIsTheAssistant:1];
  }

  [(MXCoreSessionSecure *)v4 setIsolatedAudioUseCaseID:v7];
  v4->mMXSessionSecureList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v4->mMXSessionSecureListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  objc_initWeak(location, v4);
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure addMXCoreSessionSecure:"addMXCoreSessionSecure:", objc_loadWeak(location)];
  objc_destroyWeak(location);
LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure addMXCoreSessionSecure:"addMXCoreSessionSecure:", 0];

  self->mMXSessionSecureList = 0;
  self->mMXSessionSecureListLock = 0;
  v3.receiver = self;
  v3.super_class = MXCoreSessionSecure;
  [(MXCoreSessionBase *)&v3 dealloc];
}

- (unint64_t)addMXSessionSecure:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXSessionSecureListLock lock];
  [(NSPointerArray *)self->mMXSessionSecureList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXSessionSecureList compact];
  v4 = [(NSPointerArray *)self->mMXSessionSecureList count];
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)removeMXSessionSecure:(id)a3
{
  objc_initWeak(&location, a3);
  [(NSLock *)self->mMXSessionSecureListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXSessionSecureList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXSessionSecureList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXSessionSecureList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXSessionSecureList compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)self->mMXSessionSecureList count];
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (id)copyMXSessionSecureList
{
  [(NSLock *)self->mMXSessionSecureListLock lock];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSPointerArray *)self->mMXSessionSecureList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  return v4;
}

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MXCoreSessionSecure copyPropertyForKey:v21 valueOut:?];
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure copyPropertyForKey:v21 valueOut:?];
    goto LABEL_35;
  }

  if (!a4)
  {
    [MXCoreSessionSecure copyPropertyForKey:v21 valueOut:?];
LABEL_35:
    v10 = v21[0];
    if (!LODWORD(v21[0]))
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

  if (![a3 isEqualToString:@"AudioBehaviour"])
  {
    if ([a3 isEqualToString:@"CurrentInputSampleRate"])
    {
      v8 = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
      v7 = -[NSDictionary objectForKey:](v8, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSUtility_GetCurrentInputVADID(self)]);
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"AudioCategory"])
    {
      v7 = [(MXCoreSessionBase *)self audioCategory];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"ReporterIDs"])
    {
      CMSUtility_CreateReporterIDIfNeeded(self);
      v7 = [(MXCoreSessionBase *)self reporterIDs];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"AudioMode"])
    {
      v7 = [(MXCoreSessionBase *)self audioMode];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"AuditToken"])
    {
      memset(v21, 0, 32);
      if (self)
      {
        [(MXCoreSessionBase *)self auditToken];
      }

      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v21 length:32];
      goto LABEL_15;
    }

    if ([a3 isEqualToString:@"ClientName"])
    {
      v7 = [(MXCoreSessionBase *)self clientName];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"ClientPID"])
    {
      v7 = [(MXCoreSessionBase *)self clientPID];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"ClientPriority"])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
      goto LABEL_15;
    }

    if ([a3 isEqualToString:@"AudioSessionID"])
    {
      v13 = objc_alloc(MEMORY[0x1E696AD98]);
      DeviceBufferNumPCMFrames = [(MXCoreSessionBase *)self audioSessionID];
LABEL_29:
      v9 = [v13 initWithUnsignedInt:DeviceBufferNumPCMFrames];
      goto LABEL_15;
    }

    if ([a3 isEqualToString:@"CoreSessionID"])
    {
      v7 = [(MXCoreSessionBase *)self ID];
      goto LABEL_14;
    }

    if ([a3 isEqualToString:@"IsActive"])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{-[MXCoreSessionBase isActive](self, "isActive")}];
      goto LABEL_15;
    }

    if ([a3 isEqualToString:@"CurrentInputDeviceBufferSize"])
    {
      v13 = objc_alloc(MEMORY[0x1E696AD98]);
      CurrentInputVADID = CMSUtility_GetCurrentInputVADID(self);
      DeviceBufferNumPCMFrames = vaemGetDeviceBufferNumPCMFrames(CurrentInputVADID, 0x696E7074u);
      goto LABEL_29;
    }

    if ([a3 isEqualToString:@"CurrentInputLatency"])
    {
      v17 = objc_alloc(MEMORY[0x1E696AD98]);
      v18 = CMSUtility_GetCurrentInputVADID(self);
      *&v19 = vaemGetCurrentLatencyForVADIDAndScope(v18, 1);
      v9 = [v17 initWithFloat:v19];
      goto LABEL_15;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = -12984;
LABEL_36:
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_16;
  }

  v7 = [(MXCoreSessionBase *)self audioBehaviour];
LABEL_14:
  v9 = v7;
LABEL_15:
  v10 = 0;
  *a4 = v9;
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  location[16] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
LABEL_54:
    v7 = location[0];
LABEL_26:
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
    goto LABEL_54;
  }

  if (![a3 isEqualToString:@"AuditToken"])
  {
    if ([a3 isEqualToString:@"ClientName"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MXCoreSessionBase *)self updateClientName:a4];
        goto LABEL_9;
      }

      [MXCoreSessionSecure setPropertyForKey:? value:?];
      goto LABEL_54;
    }

    if ([a3 isEqualToString:@"ClientPID"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if (![a4 unsignedIntValue])
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if ([(NSNumber *)[(MXCoreSessionBase *)self clientPID] isEqualToNumber:a4])
      {
        goto LABEL_9;
      }

      [(MXCoreSessionBase *)self setClientPID:a4];
      CMSessionMgrCopyDisplayIdentifierToSession(self);
    }

    else
    {
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
              v22 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSMNotificationUtility_PostReporterIDsDidChange(self);
          }

          goto LABEL_9;
        }

        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if (![a3 isEqualToString:@"AudioCategory"])
      {
        if ([a3 isEqualToString:@"AudioMode"])
        {
          v12 = [(MXCoreSessionBase *)self audioMode];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MXCoreSessionSecure setPropertyForKey:? value:?];
            goto LABEL_54;
          }

          [(MXCoreSessionBase *)self setAudioMode:a4];
          if ([(NSString *)v12 isEqualToString:a4]|| ![(MXCoreSessionBase *)self isActive])
          {
            goto LABEL_9;
          }

          v7 = [(MXCoreSessionSecure *)self sendSessionConfigurationInfoToVA];
          if (!v7)
          {
            goto LABEL_10;
          }

          [(MXCoreSessionBase *)self setAudioMode:v12];
        }

        else
        {
          if ([a3 isEqualToString:@"AudioSessionID"])
          {
            v13 = [(MXCoreSessionBase *)self audioSessionID];
            if (a4)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MXCoreSessionSecure setPropertyForKey:? value:?];
                goto LABEL_54;
              }

              v14 = [a4 unsignedIntValue];
            }

            else
            {
              v14 = 0;
            }

            if (v13 != v14)
            {
              [(MXCoreSessionBase *)self setAudioSessionID:v14];
              objc_initWeak(location, self);
              v16 = MXGetSerialQueue();
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __47__MXCoreSessionSecure_setPropertyForKey_value___block_invoke;
              v18[3] = &unk_1E7AEA310;
              objc_copyWeak(&v19, location);
              v20 = v14;
              MXDispatchAsync("[MXCoreSessionSecure setPropertyForKey:value:]", "MXCoreSessionSecureCommon.m", 446, 0, 0, v16, v18);
              objc_destroyWeak(&v19);
              objc_destroyWeak(location);
            }

            goto LABEL_9;
          }

          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v7 = -12984;
        }

LABEL_43:
        v22 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_10;
      }

      v11 = [(MXCoreSessionBase *)self audioCategory];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      [(MXCoreSessionBase *)self setAudioCategory:a4];
      if ([(NSString *)v11 isEqualToString:a4])
      {
        goto LABEL_9;
      }
    }

    if (![(MXCoreSessionBase *)self isActive])
    {
      goto LABEL_9;
    }

    v7 = [(MXCoreSessionSecure *)self sendSessionConfigurationInfoToVA];
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
    goto LABEL_54;
  }

  [(MXCoreSessionBase *)self extractAndSetAuditToken:a4];
LABEL_9:
  v7 = 0;
LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

id __47__MXCoreSessionSecure_setPropertyForKey_value___block_invoke(uint64_t a1)
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

- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4
{
  v7 = +[MXSessionManagerSecure sharedInstance];

  return [(MXSessionManagerSecure *)v7 _beginInterruption:self withSecTask:a3 andFlags:a4];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4
{
  v7 = +[MXSessionManagerSecure sharedInstance];

  return [(MXSessionManagerSecure *)v7 _endInterruption:self withSecTask:a3 andStatus:a4];
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionSecure;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")), 0x1F2897590}];
  return v3;
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionSecure;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSessionSecure *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionSecure;
  v3 = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (v3)
  {
    LOBYTE(v3) = [(MXCoreSessionSecure *)self willRouteToOnDemandVADOnActivation];
  }

  return v3;
}

- (int)sendSessionConfigurationInfoToVA
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled() && ![(MXCoreSessionSecure *)self shouldSendSessionConfigurationInfoToVA])
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
    v6.super_class = MXCoreSessionSecure;
    result = [(MXCoreSessionBase *)&v6 sendSessionConfigurationInfoToVA:[(MXCoreSessionSecure *)self additiveRoutingInfo]];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)getIsolatedAudioUseCaseIDAsString
{
  v3 = [(MXCoreSessionSecure *)self isolatedAudioUseCaseID];
  if (v3 > 1936290408)
  {
    if (v3 == 1986225004)
    {
      return @"VoiceControl";
    }

    if (v3 != 1936614497)
    {
      if (v3 == 1936290409)
      {
        return @"Siri";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown [%c%c%c%c]", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 24, (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 16), (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 8), -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")];
    }

    return @"SoundAnalysis";
  }

  else
  {
    if (!v3)
    {
      return @"Unknown";
    }

    if (v3 != 1751741300)
    {
      if (v3 == 1836346212)
      {
        return @"MutedTalkerDetection";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown [%c%c%c%c]", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 24, (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 16), (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 8), -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")];
    }

    return @"HistoricalAudio";
  }
}

- (void)dumpDebugInfo
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [(MXCoreSessionSecure *)self copyMXSessionSecureList];
  v3 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(v2);
  if (dword_1EB75DE40)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v28 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v28 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            v28 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (dword_1EB75DE40)
            {
              v28 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:{16, v21, v22}];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v23 + 1) + 8 * i) dumpDebugInfo];
      }

      v11 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  if (dword_1EB75DE40)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v28;
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
      v30 = 136315138;
      v31 = "[MXCoreSessionSecure dumpDebugInfo]";
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = v28;
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
        v30 = 136315138;
        v31 = "[MXCoreSessionSecure dumpDebugInfo]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
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

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
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

@end