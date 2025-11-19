@interface MXSessionIndependentInputAudioResource
+ (void)initialize;
- (MXSessionIndependentInputAudioResource)initWithOptions:(id)a3;
- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4;
- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4;
- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4;
- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)resetIsPlayingStates;
@end

@implementation MXSessionIndependentInputAudioResource

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sNonSerializedCopyProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioBehaviour", @"AudioCategory", @"AudioMode", @"AudioToolboxIsPlaying", @"EnableBluetoothRecording", @"ClientName", @"ClientPID", @"ClientPriority", @"AudioSessionID", @"CoreSessionID", @"HasExternalMuteNotificationContext", @"MXSessionID", @"InterruptionStyle", @"IsActive", @"IsPlaying", @"IsRecording", @"IsRecordingMuted", @"PrefersEchoCancelledInput", @"PreferredRouteControlFeatures", @"ReporterIDs", @"ShadowingAudioSessionOptions", 0}];
    sNonSerializedSetProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ClientName", @"AudioSessionID", @"HasExternalMuteNotificationContext", @"ReporterIDs", @"InterruptionStyle", @"PrefersSuppressingRecordingState", 0}];
    sNonSerializedSetPropertiesWhenSessionIsInactive = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioCategory", @"AudioMode", @"InterruptionStyle", @"EnableBluetoothRecording", @"ClientPID", @"PreferredRouteControlFeatures", @"PrefersEchoCancelledInput", @"ShadowingAudioSessionOptions", 0}];
    sOrderedMXSessionIndependentInputAudioResourceProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientName", @"AudioCategory", @"AudioMode", @"InterruptionStyle", @"EnableBluetoothRecording", 0}];
  }
}

- (MXSessionIndependentInputAudioResource)initWithOptions:(id)a3
{
  location[16] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MXSessionIndependentInputAudioResource;
  v4 = [(MXSessionIndependentAudioResource *)&v9 init];
  if (v4)
  {
    if (a3 && (v5 = [[MXCoreSessionIndependentInputAudioResource alloc] initWithOptions:a3]) != 0)
    {
      [(MXSessionBase *)v4 setParentCoreSession:v5];

      objc_initWeak(location, v4);
      [(MXCoreSessionBase *)[(MXSessionBase *)v4 parentCoreSession] addMXSessionIndependentInputAudioResource:objc_loadWeak(location)];
      objc_destroyWeak(location);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v4 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] teardown];
  [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] addMXSessionIndependentInputAudioResource:0];
  v3.receiver = self;
  v3.super_class = MXSessionIndependentInputAudioResource;
  [(MXSessionIndependentAudioResource *)&v3 dealloc];
}

- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4
{
  if (!a3)
  {
    [MXSessionIndependentInputAudioResource copyPropertyForKeyInternal:? valueOut:?];
    return v15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXSessionIndependentInputAudioResource copyPropertyForKeyInternal:? valueOut:?];
    return v13;
  }

  if (!a4)
  {
    [MXSessionIndependentInputAudioResource copyPropertyForKeyInternal:? valueOut:?];
    return v14;
  }

  if ([a3 isEqualToString:@"AudioToolboxIsPlaying"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    v8 = [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying];
LABEL_6:
    v9 = [v7 initWithBool:v8];
LABEL_9:
    v10 = v9;
    result = 0;
    *a4 = v10;
    return result;
  }

  if ([a3 isEqualToString:@"MXSessionID"])
  {
    v9 = [(MXSessionBase *)self ID];
    goto LABEL_9;
  }

  if ([a3 isEqualToString:@"IsPlaying"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    v8 = [(MXSessionIndependentAudioResource *)self clientIsPlaying];
    goto LABEL_6;
  }

  if ([a3 isEqualToString:@"IsRecording"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    v8 = [(MXSessionIndependentAudioResource *)self isRecording];
    goto LABEL_6;
  }

  v12 = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)v12 copyPropertyForKey:a3 valueOut:a4];
}

- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5
{
  if (!a3)
  {
    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  if ([a3 isEqualToString:@"AudioToolboxIsPlaying"])
  {
    if (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [a4 BOOLValue];
        if (v8 != [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying])
        {
          [(MXSessionIndependentAudioResource *)self setAudioToolboxIsPlaying:v8];
LABEL_13:
          v10 = [(MXSessionIndependentAudioResource *)self clientIsPlaying]|| [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying];
          [(MXSessionIndependentAudioResource *)self setIsPlaying:v10];
          [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] updateIsPlaying:[(MXSessionIndependentAudioResource *)self isPlaying]];
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  if (![a3 isEqualToString:@"IsPlaying"])
  {
    if (![a3 isEqualToString:@"IsRecording"])
    {
      goto LABEL_22;
    }

    if (a4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [a4 BOOLValue];
        if (v11 != [(MXSessionIndependentAudioResource *)self isRecording])
        {
          [(MXSessionIndependentAudioResource *)self setIsRecording:v11];
          [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] updateIsRecording:[(MXSessionIndependentAudioResource *)self isRecording]];
        }

        goto LABEL_22;
      }
    }

    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  if (!a4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  v9 = [a4 BOOLValue];
  if (v9 != [(MXSessionIndependentAudioResource *)self clientIsPlaying])
  {
    [(MXSessionIndependentAudioResource *)self setClientIsPlaying:v9];
    goto LABEL_13;
  }

LABEL_22:
  v12 = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)v12 setPropertyForKey:a3 value:a4];
}

- (void)dumpDebugInfo
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4
{
  v6 = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)v6 _beginInterruptionWithSecTask:a3 andFlags:a4];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4
{
  v6 = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)v6 _endInterruptionWithSecTask:a3 andStatus:a4];
}

- (void)resetIsPlayingStates
{
  [(MXSessionIndependentAudioResource *)self setIsPlaying:0];
  [(MXSessionIndependentAudioResource *)self setClientIsPlaying:0];

  [(MXSessionIndependentAudioResource *)self setAudioToolboxIsPlaying:0];
}

- (uint64_t)copyPropertyForKeyInternal:(_DWORD *)a1 valueOut:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKeyInternal:(_DWORD *)a1 valueOut:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKeyInternal:(_DWORD *)a1 valueOut:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKeyInternal:(_DWORD *)a1 value:fromPropertiesBatch:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKeyInternal:(_DWORD *)a1 value:fromPropertiesBatch:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKeyInternal:(_DWORD *)a1 value:fromPropertiesBatch:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKeyInternal:(_DWORD *)a1 value:fromPropertiesBatch:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKeyInternal:(_DWORD *)a1 value:fromPropertiesBatch:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end