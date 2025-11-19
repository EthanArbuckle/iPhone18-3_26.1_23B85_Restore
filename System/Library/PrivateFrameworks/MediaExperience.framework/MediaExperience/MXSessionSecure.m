@interface MXSessionSecure
+ (void)initialize;
- (MXSessionSecure)initWithOptions:(id)a3;
- (int)_beginInterruptionWithSecTask:(__SecTask *)a3 andFlags:(unint64_t)a4;
- (int)_endInterruptionWithSecTask:(__SecTask *)a3 andStatus:(id)a4;
- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4;
- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXSessionSecure

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sNonSerializedCopyProperties_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioBehaviour", @"AudioCategory", @"AudioMode", @"AudioToolboxIsPlaying", @"AuditToken", @"ClientName", @"ClientPID", @"ClientPriority", @"AudioSessionID", @"CoreSessionID", @"CurrentInputSampleRate", @"MXSessionID", @"ReporterIDs", 0}];
    sNonSerializedSetProperties_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AuditToken", @"ClientName", @"AudioSessionID", @"ReporterIDs", 0}];
    sNonSerializedSetPropertiesWhenSessionIsInactive_1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"AudioCategory", @"AudioMode", @"ClientPID", 0}];
    sOrderedMXSessionSecureProperties = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:{@"ClientName", @"AudioSessionID", @"AudioCategory", @"AudioMode", 0}];
  }
}

- (MXSessionSecure)initWithOptions:(id)a3
{
  location[16] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MXSessionSecure;
  v4 = [(MXSessionBase *)&v9 init];
  if (v4)
  {
    if (a3 && (v5 = [[MXCoreSessionSecure alloc] initWithOptions:a3]) != 0)
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

- (int)copyPropertyForKeyInternal:(id)a3 valueOut:(id *)a4
{
  if (!a3)
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

  if (!a4)
  {
    [MXSessionSecure copyPropertyForKeyInternal:? valueOut:?];
    return v12;
  }

  if ([a3 isEqualToString:@"AudioToolboxIsPlaying"])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
LABEL_8:
    v8 = v7;
    result = 0;
    *a4 = v8;
    return result;
  }

  if ([a3 isEqualToString:@"MXSessionID"])
  {
    v7 = [(MXSessionBase *)self ID];
    goto LABEL_8;
  }

  v10 = [(MXSessionBase *)self parentCoreSession];

  return [(MXCoreSessionBase *)v10 copyPropertyForKey:a3 valueOut:a4];
}

- (int)setPropertyForKeyInternal:(id)a3 value:(id)a4 fromPropertiesBatch:(id)a5
{
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(MXSessionBase *)self parentCoreSession];

      return [(MXCoreSessionBase *)v8 setPropertyForKey:a3 value:a4];
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