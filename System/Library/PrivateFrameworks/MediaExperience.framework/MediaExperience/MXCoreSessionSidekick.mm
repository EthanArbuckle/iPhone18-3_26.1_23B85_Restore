@interface MXCoreSessionSidekick
- (BOOL)allowsAirPlayBuffered;
- (BOOL)allowsAirPlayVideo;
- (BOOL)isCategoryValid:(id)a3;
- (BOOL)isModeValidForCategory:(id)a3;
- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)a3;
- (id)_initWithRemoteDeviceID:(id)a3;
- (int)_activate;
- (int)_copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)_setPropertyForKey:(id)a3 value:(id)a4;
- (int)activate;
- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4;
- (int)deactivate:(BOOL)a3 postInterruptionNotification:(BOOL)a4;
- (int)setPropertyForKey:(id)a3 value:(id)a4;
- (void)dealloc;
@end

@implementation MXCoreSessionSidekick

- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v5 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MXCoreSessionSidekick_initWithRemoteDeviceID___block_invoke;
  v8[3] = &unk_1E7AEB1E8;
  v8[5] = a3;
  v8[6] = &v9;
  v8[4] = self;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick initWithRemoteDeviceID:]", "MXCoreSessionSidekick.m", 46, 0, 0, v5, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __48__MXCoreSessionSidekick_initWithRemoteDeviceID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _initWithRemoteDeviceID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (int)activate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MXCoreSessionSidekick_activate__block_invoke;
  v5[3] = &unk_1E7AEB210;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick activate]", "MXCoreSessionSidekick.m", 57, 0, 0, v3, v5);
  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __33__MXCoreSessionSidekick_activate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _activate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)deactivate:(BOOL)a3 postInterruptionNotification:(BOOL)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MXCoreSessionSidekick_deactivate_postInterruptionNotification___block_invoke;
  v10[3] = &unk_1E7AEB238;
  v10[4] = self;
  v10[5] = &v13;
  v11 = a3;
  v12 = a4;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick deactivate:postInterruptionNotification:]", "MXCoreSessionSidekick.m", 69, 0, 0, v7, v10);
  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t __65__MXCoreSessionSidekick_deactivate_postInterruptionNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deactivate:*(a1 + 48) postInterruptionNotification:*(a1 + 49)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick unregisterMXCoreSessionSidekick:"unregisterMXCoreSessionSidekick:", self];

  v4.receiver = self;
  v4.super_class = MXCoreSessionSidekick;
  [(MXCoreSessionBase *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (int)setPropertyForKey:(id)a3 value:(id)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke;
  v9[3] = &unk_1E7AE70A8;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = &v10;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick setPropertyForKey:value:]", "MXCoreSessionSidekick.m", 91, 0, 0, v7, v9);
  LODWORD(a4) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return a4;
}

uint64_t __49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__MXCoreSessionSidekick_copyPropertyForKey_valueOut___block_invoke;
  v9[3] = &unk_1E7AE70D0;
  v9[4] = self;
  v9[5] = a3;
  v9[6] = &v10;
  v9[7] = a4;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick copyPropertyForKey:valueOut:]", "MXCoreSessionSidekick.m", 102, 0, 0, v7, v9);
  LODWORD(a4) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return a4;
}

uint64_t __53__MXCoreSessionSidekick_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)allowsAirPlayVideo
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self audioMode];
  v3 = FigCFEqual();
  if (v3)
  {
    if (FigCFEqual() || FigCFEqual() || (v3 = FigCFEqual()) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)allowsAirPlayBuffered
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self displayID];
  v3 = [(MXCoreSessionSidekick *)self remoteDeviceID];
  result = 0;
  if ((![(MXCoreSessionBase *)self mixesWithEveryone]|| v3) && !FigCFEqual())
  {
    v4 = FigCFEqual() && v3 == 0;
    if (!v4 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return 1;
    }
  }

  return result;
}

- (id)_initWithRemoteDeviceID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MXCoreSessionSidekick;
  v4 = [(MXCoreSessionBase *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(MXCoreSessionSidekick *)v4 setRemoteDeviceID:a3];
    [(MXCoreSessionBase *)v5 setAudioCategory:@"MediaPlayback"];
    [(MXCoreSessionBase *)v5 setAudioMode:@"Default"];
    cf = 0;
    FigRoutingManagerContextUtilities_CopySidePlayContextUUID(&cf);
    [(MXCoreSessionBase *)v5 setRoutingContextUUID:cf];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    LODWORD(v6) = *"333?nsscbolg";
    [(MXCoreSessionBase *)v5 setInterruptionFadeDuration:v6];
    [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick registerMXCoreSessionSidekick:"registerMXCoreSessionSidekick:", v5];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int)_activate
{
  v27 = *MEMORY[0x1E69E9840];
  if (![(MXCoreSessionBase *)self isActive])
  {
    [(MXCoreSessionBase *)self setIsActive:1];
    if (dword_1EB75DE40)
    {
      v25 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_CreateReporterIDIfNeeded(self);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [(MXCoreSessionBase *)self reporterIDs];
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          CMSUtility_SetAudioServiceTypeForReporterID(self, [*(*(&v20 + 1) + 8 * i) longLongValue]);
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v6);
    }

    CMSUtility_StartReporterWithAudioStatistics(self);
    [(MXCoreSessionBase *)self interruptionFadeDuration];
    v10 = v9;
    if ([(NSString *)[(MXCoreSessionBase *)self audioMode] isEqualToString:@"Sleep"])
    {
      v11 = 5.0;
    }

    else
    {
      v11 = *"333?nsscbolg";
    }

    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MXCoreSessionBase audioSessionID](self, "audioSessionID")}];
    v14 = [v12 initWithObjectsAndKeys:{v13, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", -[MXCoreSessionBase isActive](self, "isActive")), @"IsActive", -[MXCoreSessionBase audioCategory](self, "audioCategory"), @"AudioCategory", -[MXCoreSessionBase audioMode](self, "audioMode"), @"AudioMode", 0}];
    if (v10 != v11)
    {
      v15 = MEMORY[0x1E696AD98];
      [(MXCoreSessionBase *)self interruptionFadeDuration];
      [v14 setObject:objc_msgSend(v15 forKey:{"numberWithFloat:"), @"InterruptionFadeDuration"}];
    }

    if (MX_FeatureFlags_IsAirPlayDaemonEnabled())
    {
      [v14 setObject:-[MXCoreSessionSidekick remoteDeviceID](self forKey:{"remoteDeviceID"), @"RemoteDeviceID"}];
    }

    [MXSystemController notifyAll:@"SomeClientIsActiveDidChange" payload:v14 dontPostIfSuspended:0 remoteDeviceID:[(MXCoreSessionSidekick *)self remoteDeviceID]];
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

void __79__MXCoreSessionSidekick_InternalUse___deactivate_postInterruptionNotification___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v4 = [v2 initWithObjectsAndKeys:{v3, @"InterruptionCmd", @"MXSessionManager", @"InterruptorName", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 2), @"InterruptionReason", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXSessionManagerSidekick postNotification:v7]payload:"postNotification:toSession:payload:", @"Interruption", *(a1 + 40), v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCategoryValid:(id)a3
{
  if ([a3 isEqualToString:@"Alarm"])
  {
    return 1;
  }

  return [a3 isEqualToString:@"MediaPlayback"];
}

- (BOOL)isModeValidForCategory:(id)a3
{
  if (![(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"Alarm"])
  {
    v7 = [(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"MediaPlayback"];
    if (!v7)
    {
      return v7;
    }

    if (([a3 isEqualToString:@"Default"] & 1) == 0 && (objc_msgSend(a3, "isEqualToString:", @"VoicePrompt") & 1) == 0)
    {
      v5 = kMXSessionAudioMode_VoiceMessages;
      goto LABEL_4;
    }

LABEL_10:
    LOBYTE(v7) = 1;
    return v7;
  }

  if ([a3 isEqualToString:@"Default"])
  {
    goto LABEL_10;
  }

  v5 = kMXSessionAudioMode_Sleep;
LABEL_4:
  v6 = *v5;

  LOBYTE(v7) = [a3 isEqualToString:v6];
  return v7;
}

- (int)_setPropertyForKey:(id)a3 value:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![a3 isEqualToString:{@"AudioSessionID", v26, v27}])
  {
    if ([a3 isEqualToString:@"ClientPID"])
    {
      if (a4)
      {
        v9 = CFGetTypeID(a4);
        if (v9 == CFNumberGetTypeID())
        {
          [(MXCoreSessionBase *)self setClientPID:a4];
          goto LABEL_15;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
      goto LABEL_60;
    }

    if ([a3 isEqualToString:@"ClientName"])
    {
      if (a4)
      {
        v10 = CFGetTypeID(a4);
        if (v10 == CFStringGetTypeID())
        {
          [(MXCoreSessionBase *)self updateClientName:a4];
          goto LABEL_15;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
      goto LABEL_60;
    }

    if ([a3 isEqualToString:@"AudioCategory"])
    {
      if (a4)
      {
        v14 = CFGetTypeID(a4);
        if (v14 == CFStringGetTypeID())
        {
          if ([(MXCoreSessionSidekick *)self isCategoryValid:a4])
          {
            [(MXCoreSessionBase *)self setAudioCategory:a4];
            goto LABEL_15;
          }

          v11 = -12981;
LABEL_44:
          v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_16;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
      goto LABEL_60;
    }

    if (![a3 isEqualToString:@"AudioMode"])
    {
      if ([a3 isEqualToString:@"IsPlaying"])
      {
        if (a4)
        {
          v17 = CFGetTypeID(a4);
          if (v17 == CFBooleanGetTypeID())
          {
            v18 = *MEMORY[0x1E695E4D0];
            v19 = *MEMORY[0x1E695E4D0] == a4;
            if ([(MXCoreSessionBase *)self isPlaying]!= v19)
            {
              if (v18 == a4 && ![(MXCoreSessionBase *)self isActive])
              {
                [(MXCoreSessionSidekick *)self _activate];
              }

              [(MXCoreSessionBase *)self setIsPlaying:v18 == a4];
              if (dword_1EB75DE40)
              {
                v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SomeSidekickSessionIsPlayingDidChange", [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[MXCoreSessionSidekick remoteDeviceID](self, "remoteDeviceID"), @"RemoteDeviceID", 0}], 0);
            }

            goto LABEL_15;
          }
        }

        [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
        goto LABEL_60;
      }

      if ([a3 isEqualToString:@"IAmTheAssistant"])
      {
        if (a4)
        {
          v21 = CFGetTypeID(a4);
          if (v21 == CFBooleanGetTypeID())
          {
            [(MXCoreSessionBase *)self setIsTheAssistant:*MEMORY[0x1E695E4D0] == a4];
            goto LABEL_15;
          }
        }

        [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
        goto LABEL_60;
      }

      if (![a3 isEqualToString:@"InterruptionFadeDuration"])
      {
        goto LABEL_15;
      }

      v23 = [(MXCoreSessionBase *)self hasAudioMode:@"Sleep"];
      v24 = *"333?nsscbolg";
      if (v23)
      {
        v24 = 5.0;
      }

      valuePtr = v24;
      if (a4)
      {
        v25 = CFGetTypeID(a4);
        if (v25 != CFNumberGetTypeID())
        {
          [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
          goto LABEL_60;
        }

        CFNumberGetValue(a4, kCFNumberFloat32Type, &valuePtr);
      }

      [(MXCoreSessionBase *)self setInterruptionFadeDuration:?];
      v11 = 0;
      goto LABEL_43;
    }

    if (a4)
    {
      v15 = CFGetTypeID(a4);
      if (v15 == CFStringGetTypeID())
      {
        v16 = [(MXCoreSessionBase *)self audioMode];
        if ([(MXCoreSessionSidekick *)self isModeValidForCategory:a4])
        {
          [(MXCoreSessionBase *)self setAudioMode:a4];
          [(MXCoreSessionBase *)self updateDefaultInterruptionFadeDuration:v16];
          v11 = 0;
        }

        else
        {
          v11 = -12981;
        }

LABEL_43:
        if (!v11)
        {
          goto LABEL_16;
        }

        goto LABEL_44;
      }
    }

    [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
LABEL_60:
    v11 = v29[0];
    goto LABEL_43;
  }

  if (!a4 || (v8 = CFGetTypeID(a4), v8 != CFNumberGetTypeID()))
  {
    [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
    goto LABEL_60;
  }

  -[MXCoreSessionBase setAudioSessionID:](self, "setAudioSessionID:", [a4 unsignedIntValue]);
LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)_copyPropertyForKey:(id)a3 valueOut:(id *)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    result = -15682;
    goto LABEL_13;
  }

  if (![a3 isEqualToString:@"RemoteDeviceID"])
  {
    if ([a3 isEqualToString:@"RoutingContextUUID"])
    {
      v7 = [(MXCoreSessionBase *)self routingContextUUID];
      goto LABEL_7;
    }

    if ([a3 isEqualToString:@"RoutingContext"])
    {
      FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([(MXCoreSessionBase *)self routingContextUUID], a4);
      goto LABEL_8;
    }

    if ([a3 isEqualToString:@"AudioSessionID"])
    {
      v11 = *MEMORY[0x1E695E480];
      [(MXCoreSessionBase *)self audioSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_20:
      *a4 = UInt32;
      goto LABEL_8;
    }

    if ([a3 isEqualToString:@"ClientPID"])
    {
      valuePtr[0] = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
LABEL_18:
      v13 = *MEMORY[0x1E695E480];
      v14 = kCFNumberIntType;
LABEL_19:
      UInt32 = CFNumberCreate(v13, v14, valuePtr);
      goto LABEL_20;
    }

    if ([a3 isEqualToString:@"ClientName"])
    {
      v7 = [(MXCoreSessionBase *)self clientName];
      goto LABEL_7;
    }

    if ([a3 isEqualToString:@"AudioCategory"])
    {
      v7 = [(MXCoreSessionBase *)self audioCategory];
      goto LABEL_7;
    }

    if ([a3 isEqualToString:@"AudioMode"])
    {
      v7 = [(MXCoreSessionBase *)self audioMode];
      goto LABEL_7;
    }

    if ([a3 isEqualToString:@"IsActive"])
    {
      v15 = [(MXCoreSessionBase *)self isActive];
    }

    else if ([a3 isEqualToString:@"IsPlaying"])
    {
      v15 = [(MXCoreSessionBase *)self isPlaying];
    }

    else
    {
      if ([a3 isEqualToString:@"MaximumNumberOfOutputChannels"])
      {
        valuePtr[0] = 2;
        goto LABEL_18;
      }

      if (![a3 isEqualToString:@"SomeOtherClientIsPlaying"])
      {
        if ([a3 isEqualToString:@"DetailedActiveAudioRoute"])
        {
          v22 = @"RouteDetailedDescription_Outputs";
          v19[0] = @"RouteDetailedDescription_Name";
          v19[1] = @"RouteDetailedDescription_PortType";
          v19[2] = @"RouteDetailedDescription_UID";
          v20[0] = @"AirTunes";
          v20[1] = @"AirTunes";
          v20[2] = @"AirTunes";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
          v23[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
          v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          goto LABEL_7;
        }

        if ([a3 isEqualToString:@"ReporterIDs"])
        {
          CMSUtility_CreateReporterIDIfNeeded(self);
          v7 = [(MXCoreSessionBase *)self reporterIDs];
          goto LABEL_7;
        }

        if (![a3 isEqualToString:@"InterruptionFadeDuration"])
        {
          *a4 = 0;
          goto LABEL_8;
        }

        [(MXCoreSessionBase *)self interruptionFadeDuration];
        valuePtr[0] = v17;
        v13 = *MEMORY[0x1E695E480];
        v14 = kCFNumberFloat32Type;
        goto LABEL_19;
      }

      v15 = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick isSomeOtherSessionPlaying:"isSomeOtherSessionPlaying:", self];
    }

    v16 = MEMORY[0x1E695E4D0];
    if (!v15)
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    v7 = *v16;
    goto LABEL_7;
  }

  v7 = [(MXCoreSessionSidekick *)self remoteDeviceID];
LABEL_7:
  *a4 = v7;
  CFRetain(v7);
LABEL_8:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = 0;
LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

@end