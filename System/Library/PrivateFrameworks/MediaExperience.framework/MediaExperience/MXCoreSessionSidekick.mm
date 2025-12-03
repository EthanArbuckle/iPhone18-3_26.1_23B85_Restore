@interface MXCoreSessionSidekick
- (BOOL)allowsAirPlayBuffered;
- (BOOL)allowsAirPlayVideo;
- (BOOL)isCategoryValid:(id)valid;
- (BOOL)isModeValidForCategory:(id)category;
- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)d;
- (id)_initWithRemoteDeviceID:(id)d;
- (int)_activate;
- (int)_copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)_setPropertyForKey:(id)key value:(id)value;
- (int)activate;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)deactivate:(BOOL)deactivate postInterruptionNotification:(BOOL)notification;
- (int)setPropertyForKey:(id)key value:(id)value;
- (void)dealloc;
@end

@implementation MXCoreSessionSidekick

- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)d
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MXCoreSessionSidekick_initWithRemoteDeviceID___block_invoke;
  v8[3] = &unk_1E7AEB1E8;
  v8[5] = d;
  v8[6] = &v9;
  v8[4] = self;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick initWithRemoteDeviceID:]", "MXCoreSessionSidekick.m", 46, 0, 0, serialQueue, v8);
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
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MXCoreSessionSidekick_activate__block_invoke;
  v5[3] = &unk_1E7AEB210;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick activate]", "MXCoreSessionSidekick.m", 57, 0, 0, serialQueue, v5);
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

- (int)deactivate:(BOOL)deactivate postInterruptionNotification:(BOOL)notification
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MXCoreSessionSidekick_deactivate_postInterruptionNotification___block_invoke;
  v10[3] = &unk_1E7AEB238;
  v10[4] = self;
  v10[5] = &v13;
  deactivateCopy = deactivate;
  notificationCopy = notification;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick deactivate:postInterruptionNotification:]", "MXCoreSessionSidekick.m", 69, 0, 0, serialQueue, v10);
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

- (int)setPropertyForKey:(id)key value:(id)value
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke;
  v9[3] = &unk_1E7AE70A8;
  v9[4] = self;
  v9[5] = key;
  v9[6] = value;
  v9[7] = &v10;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick setPropertyForKey:value:]", "MXCoreSessionSidekick.m", 91, 0, 0, serialQueue, v9);
  LODWORD(value) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return value;
}

uint64_t __49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__MXCoreSessionSidekick_copyPropertyForKey_valueOut___block_invoke;
  v9[3] = &unk_1E7AE70D0;
  v9[4] = self;
  v9[5] = key;
  v9[6] = &v10;
  v9[7] = out;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick copyPropertyForKey:valueOut:]", "MXCoreSessionSidekick.m", 102, 0, 0, serialQueue, v9);
  LODWORD(out) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return out;
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
  remoteDeviceID = [(MXCoreSessionSidekick *)self remoteDeviceID];
  result = 0;
  if ((![(MXCoreSessionBase *)self mixesWithEveryone]|| remoteDeviceID) && !FigCFEqual())
  {
    v4 = FigCFEqual() && remoteDeviceID == 0;
    if (!v4 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return 1;
    }
  }

  return result;
}

- (id)_initWithRemoteDeviceID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MXCoreSessionSidekick;
  v4 = [(MXCoreSessionBase *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(MXCoreSessionSidekick *)v4 setRemoteDeviceID:d];
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
    reporterIDs = [(MXCoreSessionBase *)self reporterIDs];
    v5 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v20 objects:v26 count:16];
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
            objc_enumerationMutation(reporterIDs);
          }

          CMSUtility_SetAudioServiceTypeForReporterID(self, [*(*(&v20 + 1) + 8 * i) longLongValue]);
        }

        v6 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v20 objects:v26 count:16];
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

- (BOOL)isCategoryValid:(id)valid
{
  if ([valid isEqualToString:@"Alarm"])
  {
    return 1;
  }

  return [valid isEqualToString:@"MediaPlayback"];
}

- (BOOL)isModeValidForCategory:(id)category
{
  if (![(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"Alarm"])
  {
    v7 = [(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"MediaPlayback"];
    if (!v7)
    {
      return v7;
    }

    if (([category isEqualToString:@"Default"] & 1) == 0 && (objc_msgSend(category, "isEqualToString:", @"VoicePrompt") & 1) == 0)
    {
      v5 = kMXSessionAudioMode_VoiceMessages;
      goto LABEL_4;
    }

LABEL_10:
    LOBYTE(v7) = 1;
    return v7;
  }

  if ([category isEqualToString:@"Default"])
  {
    goto LABEL_10;
  }

  v5 = kMXSessionAudioMode_Sleep;
LABEL_4:
  v6 = *v5;

  LOBYTE(v7) = [category isEqualToString:v6];
  return v7;
}

- (int)_setPropertyForKey:(id)key value:(id)value
{
  v30 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![key isEqualToString:{@"AudioSessionID", v26, v27}])
  {
    if ([key isEqualToString:@"ClientPID"])
    {
      if (value)
      {
        v9 = CFGetTypeID(value);
        if (v9 == CFNumberGetTypeID())
        {
          [(MXCoreSessionBase *)self setClientPID:value];
          goto LABEL_15;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
      goto LABEL_60;
    }

    if ([key isEqualToString:@"ClientName"])
    {
      if (value)
      {
        v10 = CFGetTypeID(value);
        if (v10 == CFStringGetTypeID())
        {
          [(MXCoreSessionBase *)self updateClientName:value];
          goto LABEL_15;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
      goto LABEL_60;
    }

    if ([key isEqualToString:@"AudioCategory"])
    {
      if (value)
      {
        v14 = CFGetTypeID(value);
        if (v14 == CFStringGetTypeID())
        {
          if ([(MXCoreSessionSidekick *)self isCategoryValid:value])
          {
            [(MXCoreSessionBase *)self setAudioCategory:value];
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

    if (![key isEqualToString:@"AudioMode"])
    {
      if ([key isEqualToString:@"IsPlaying"])
      {
        if (value)
        {
          v17 = CFGetTypeID(value);
          if (v17 == CFBooleanGetTypeID())
          {
            v18 = *MEMORY[0x1E695E4D0];
            v19 = *MEMORY[0x1E695E4D0] == value;
            if ([(MXCoreSessionBase *)self isPlaying]!= v19)
            {
              if (v18 == value && ![(MXCoreSessionBase *)self isActive])
              {
                [(MXCoreSessionSidekick *)self _activate];
              }

              [(MXCoreSessionBase *)self setIsPlaying:v18 == value];
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

      if ([key isEqualToString:@"IAmTheAssistant"])
      {
        if (value)
        {
          v21 = CFGetTypeID(value);
          if (v21 == CFBooleanGetTypeID())
          {
            [(MXCoreSessionBase *)self setIsTheAssistant:*MEMORY[0x1E695E4D0] == value];
            goto LABEL_15;
          }
        }

        [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
        goto LABEL_60;
      }

      if (![key isEqualToString:@"InterruptionFadeDuration"])
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
      if (value)
      {
        v25 = CFGetTypeID(value);
        if (v25 != CFNumberGetTypeID())
        {
          [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
          goto LABEL_60;
        }

        CFNumberGetValue(value, kCFNumberFloat32Type, &valuePtr);
      }

      [(MXCoreSessionBase *)self setInterruptionFadeDuration:?];
      v11 = 0;
      goto LABEL_43;
    }

    if (value)
    {
      v15 = CFGetTypeID(value);
      if (v15 == CFStringGetTypeID())
      {
        audioMode = [(MXCoreSessionBase *)self audioMode];
        if ([(MXCoreSessionSidekick *)self isModeValidForCategory:value])
        {
          [(MXCoreSessionBase *)self setAudioMode:value];
          [(MXCoreSessionBase *)self updateDefaultInterruptionFadeDuration:audioMode];
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

  if (!value || (v8 = CFGetTypeID(value), v8 != CFNumberGetTypeID()))
  {
    [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v29 value:?];
    goto LABEL_60;
  }

  -[MXCoreSessionBase setAudioSessionID:](self, "setAudioSessionID:", [value unsignedIntValue]);
LABEL_15:
  v11 = 0;
LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)_copyPropertyForKey:(id)key valueOut:(id *)out
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    result = -15682;
    goto LABEL_13;
  }

  if (![key isEqualToString:@"RemoteDeviceID"])
  {
    if ([key isEqualToString:@"RoutingContextUUID"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self routingContextUUID];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"RoutingContext"])
    {
      FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([(MXCoreSessionBase *)self routingContextUUID], out);
      goto LABEL_8;
    }

    if ([key isEqualToString:@"AudioSessionID"])
    {
      v11 = *MEMORY[0x1E695E480];
      [(MXCoreSessionBase *)self audioSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_20:
      *out = UInt32;
      goto LABEL_8;
    }

    if ([key isEqualToString:@"ClientPID"])
    {
      valuePtr[0] = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
LABEL_18:
      v13 = *MEMORY[0x1E695E480];
      v14 = kCFNumberIntType;
LABEL_19:
      UInt32 = CFNumberCreate(v13, v14, valuePtr);
      goto LABEL_20;
    }

    if ([key isEqualToString:@"ClientName"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self clientName];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"AudioCategory"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self audioCategory];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"AudioMode"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self audioMode];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"IsActive"])
    {
      isActive = [(MXCoreSessionBase *)self isActive];
    }

    else if ([key isEqualToString:@"IsPlaying"])
    {
      isActive = [(MXCoreSessionBase *)self isPlaying];
    }

    else
    {
      if ([key isEqualToString:@"MaximumNumberOfOutputChannels"])
      {
        valuePtr[0] = 2;
        goto LABEL_18;
      }

      if (![key isEqualToString:@"SomeOtherClientIsPlaying"])
      {
        if ([key isEqualToString:@"DetailedActiveAudioRoute"])
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
          routingContextUUID = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          goto LABEL_7;
        }

        if ([key isEqualToString:@"ReporterIDs"])
        {
          CMSUtility_CreateReporterIDIfNeeded(self);
          routingContextUUID = [(MXCoreSessionBase *)self reporterIDs];
          goto LABEL_7;
        }

        if (![key isEqualToString:@"InterruptionFadeDuration"])
        {
          *out = 0;
          goto LABEL_8;
        }

        [(MXCoreSessionBase *)self interruptionFadeDuration];
        valuePtr[0] = v17;
        v13 = *MEMORY[0x1E695E480];
        v14 = kCFNumberFloat32Type;
        goto LABEL_19;
      }

      isActive = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick isSomeOtherSessionPlaying:"isSomeOtherSessionPlaying:", self];
    }

    v16 = MEMORY[0x1E695E4D0];
    if (!isActive)
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    routingContextUUID = *v16;
    goto LABEL_7;
  }

  routingContextUUID = [(MXCoreSessionSidekick *)self remoteDeviceID];
LABEL_7:
  *out = routingContextUUID;
  CFRetain(routingContextUUID);
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