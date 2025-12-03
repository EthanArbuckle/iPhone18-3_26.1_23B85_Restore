@interface MXSessionIndependentInputAudioResource
+ (void)initialize;
- (MXSessionIndependentInputAudioResource)initWithOptions:(id)options;
- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status;
- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out;
- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)resetIsPlayingStates;
@end

@implementation MXSessionIndependentInputAudioResource

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sNonSerializedCopyProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioBehaviour", @"AudioCategory", @"AudioMode", @"AudioToolboxIsPlaying", @"EnableBluetoothRecording", @"ClientName", @"ClientPID", @"ClientPriority", @"AudioSessionID", @"CoreSessionID", @"HasExternalMuteNotificationContext", @"MXSessionID", @"InterruptionStyle", @"IsActive", @"IsPlaying", @"IsRecording", @"IsRecordingMuted", @"PrefersEchoCancelledInput", @"PreferredRouteControlFeatures", @"ReporterIDs", @"ShadowingAudioSessionOptions", 0}];
    sNonSerializedSetProperties = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ClientName", @"AudioSessionID", @"HasExternalMuteNotificationContext", @"ReporterIDs", @"InterruptionStyle", @"PrefersSuppressingRecordingState", 0}];
    sNonSerializedSetPropertiesWhenSessionIsInactive = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioCategory", @"AudioMode", @"InterruptionStyle", @"EnableBluetoothRecording", @"ClientPID", @"PreferredRouteControlFeatures", @"PrefersEchoCancelledInput", @"ShadowingAudioSessionOptions", 0}];
    sOrderedMXSessionIndependentInputAudioResourceProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientName", @"AudioCategory", @"AudioMode", @"InterruptionStyle", @"EnableBluetoothRecording", 0}];
  }
}

- (MXSessionIndependentInputAudioResource)initWithOptions:(id)options
{
  location[16] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MXSessionIndependentInputAudioResource;
  v4 = [(MXSessionIndependentAudioResource *)&v9 init];
  if (v4)
  {
    if (options && (v5 = [[MXCoreSessionIndependentInputAudioResource alloc] initWithOptions:options]) != 0)
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

- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out
{
  if (!internal)
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

  if (!out)
  {
    [MXSessionIndependentInputAudioResource copyPropertyForKeyInternal:? valueOut:?];
    return v14;
  }

  if ([internal isEqualToString:@"AudioToolboxIsPlaying"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    audioToolboxIsPlaying = [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying];
LABEL_6:
    v9 = [v7 initWithBool:audioToolboxIsPlaying];
LABEL_9:
    v10 = v9;
    result = 0;
    *out = v10;
    return result;
  }

  if ([internal isEqualToString:@"MXSessionID"])
  {
    v9 = [(MXSessionBase *)self ID];
    goto LABEL_9;
  }

  if ([internal isEqualToString:@"IsPlaying"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    audioToolboxIsPlaying = [(MXSessionIndependentAudioResource *)self clientIsPlaying];
    goto LABEL_6;
  }

  if ([internal isEqualToString:@"IsRecording"])
  {
    v7 = objc_alloc(MEMORY[0x1E696AD98]);
    audioToolboxIsPlaying = [(MXSessionIndependentAudioResource *)self isRecording];
    goto LABEL_6;
  }

  parentCoreSession = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)parentCoreSession copyPropertyForKey:internal valueOut:out];
}

- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch
{
  if (!internal)
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

  if ([internal isEqualToString:@"AudioToolboxIsPlaying"])
  {
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [value BOOLValue];
        if (bOOLValue != [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying])
        {
          [(MXSessionIndependentAudioResource *)self setAudioToolboxIsPlaying:bOOLValue];
LABEL_13:
          audioToolboxIsPlaying = [(MXSessionIndependentAudioResource *)self clientIsPlaying]|| [(MXSessionIndependentAudioResource *)self audioToolboxIsPlaying];
          [(MXSessionIndependentAudioResource *)self setIsPlaying:audioToolboxIsPlaying];
          [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] updateIsPlaying:[(MXSessionIndependentAudioResource *)self isPlaying]];
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  if (![internal isEqualToString:@"IsPlaying"])
  {
    if (![internal isEqualToString:@"IsRecording"])
    {
      goto LABEL_22;
    }

    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue2 = [value BOOLValue];
        if (bOOLValue2 != [(MXSessionIndependentAudioResource *)self isRecording])
        {
          [(MXSessionIndependentAudioResource *)self setIsRecording:bOOLValue2];
          [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] updateIsRecording:[(MXSessionIndependentAudioResource *)self isRecording]];
        }

        goto LABEL_22;
      }
    }

    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  if (!value || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MXSessionIndependentInputAudioResource setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v14;
  }

  bOOLValue3 = [value BOOLValue];
  if (bOOLValue3 != [(MXSessionIndependentAudioResource *)self clientIsPlaying])
  {
    [(MXSessionIndependentAudioResource *)self setClientIsPlaying:bOOLValue3];
    goto LABEL_13;
  }

LABEL_22:
  parentCoreSession = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)parentCoreSession setPropertyForKey:internal value:value];
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

- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  parentCoreSession = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)parentCoreSession _beginInterruptionWithSecTask:task andFlags:flags];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status
{
  parentCoreSession = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)parentCoreSession _endInterruptionWithSecTask:task andStatus:status];
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