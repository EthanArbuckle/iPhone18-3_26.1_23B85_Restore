@interface MXSessionSecure
+ (void)initialize;
- (MXSessionSecure)initWithOptions:(id)options;
- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status;
- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out;
- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXSessionSecure

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sNonSerializedCopyProperties_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioBehaviour", @"AudioCategory", @"AudioMode", @"AudioToolboxIsPlaying", @"AuditToken", @"ClientName", @"ClientPID", @"ClientPriority", @"AudioSessionID", @"CoreSessionID", @"CurrentInputSampleRate", @"MXSessionID", @"ReporterIDs", 0}];
    sNonSerializedSetProperties_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AuditToken", @"ClientName", @"AudioSessionID", @"ReporterIDs", 0}];
    sNonSerializedSetPropertiesWhenSessionIsInactive_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioCategory", @"AudioMode", @"ClientPID", 0}];
    sOrderedMXSessionSecureProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientName", @"AudioSessionID", @"AudioCategory", @"AudioMode", 0}];
  }
}

- (MXSessionSecure)initWithOptions:(id)options
{
  location[16] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MXSessionSecure;
  v4 = [(MXSessionBase *)&v9 init];
  if (v4)
  {
    if (options && (v5 = [[MXCoreSessionSecure alloc] initWithOptions:options]) != 0)
    {
      [(MXSessionBase *)v4 setParentCoreSession:v5];

      objc_initWeak(location, v4);
      [(MXCoreSessionBase *)[(MXSessionBase *)v4 parentCoreSession] addMXSessionSecure:objc_loadWeak(location)];
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
  [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] unregisterSessionAudioObject];
  [(MXCoreSessionBase *)[(MXSessionBase *)self parentCoreSession] addMXSessionSecure:0];
  v3.receiver = self;
  v3.super_class = MXSessionSecure;
  [(MXSessionBase *)&v3 dealloc];
}

- (int)copyPropertyForKeyInternal:(id)internal valueOut:(id *)out
{
  if (!internal)
  {
    [MXSessionSecure copyPropertyForKeyInternal:? valueOut:?];
    return v13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXSessionSecure copyPropertyForKeyInternal:? valueOut:?];
    return v11;
  }

  if (!out)
  {
    [MXSessionSecure copyPropertyForKeyInternal:? valueOut:?];
    return v12;
  }

  if ([internal isEqualToString:@"AudioToolboxIsPlaying"])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
LABEL_8:
    v8 = v7;
    result = 0;
    *out = v8;
    return result;
  }

  if ([internal isEqualToString:@"MXSessionID"])
  {
    v7 = [(MXSessionBase *)self ID];
    goto LABEL_8;
  }

  parentCoreSession = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)parentCoreSession copyPropertyForKey:internal valueOut:out];
}

- (int)setPropertyForKeyInternal:(id)internal value:(id)value fromPropertiesBatch:(id)batch
{
  if (internal)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parentCoreSession = [(MXSessionBase *)self parentCoreSession];

      return [(MXCoreSessionBase *)parentCoreSession setPropertyForKey:internal value:value];
    }

    else
    {
      [MXSessionSecure setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
      return v10;
    }
  }

  else
  {
    [MXSessionSecure setPropertyForKeyInternal:? value:? fromPropertiesBatch:?];
    return v11;
  }
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

@end