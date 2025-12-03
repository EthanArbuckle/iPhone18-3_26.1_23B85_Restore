@interface BWFigCaptureStream
+ (void)initialize;
- (BOOL)vibeMitigationEnabled;
- (BWFigCaptureStream)initWithFigCaptureStream:(OpaqueFigCaptureStream *)stream deviceID:(id)d errOut:(int *)out;
- (BWFigCaptureStreamStartStopDelegate)startStopDelegate;
- (_DWORD)_copyProperty:(int)property requireSupported:(int *)supported error:;
- (id)description;
- (id)getProperty:(__CFString *)property error:(int *)error;
- (id)getPropertyIfSupported:(__CFString *)supported error:(int *)error;
- (int)addAttachmentsToSampleBuffer:(opaqueCMSampleBuffer *)buffer options:(id)options;
- (int)enqueueReactionEffect:(id)effect;
- (int)registerForNotification:(__CFString *)notification listener:(const void *)listener callback:(void *)callback;
- (int)start;
- (int)stop;
- (int)unregisterForNotification:(__CFString *)notification listener:(const void *)listener;
- (uint64_t)_setProperty:(void *)property value:(int)value requireSupported:(char)supported lockHeldByCaller:;
- (void)_activateVibeMitigationIfEnabled;
- (void)_resetStreamingState;
- (void)dealloc;
- (void)flushPropertyCache;
- (void)invalidateWhilePreservingTorchState:(BOOL)state;
- (void)resetTorchState;
- (void)setStartStopDelegate:(id)delegate;
- (void)setVibeMitigationEnabled:(BOOL)enabled;
- (void)synchronizedStreamsGroupDidStop;
@end

@implementation BWFigCaptureStream

- (void)flushPropertyCache
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v4 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v5 = ktraceCodePrefix & 0xFFFFFFC0 | 0x14;
    }

    else
    {
      v5 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_cachedProperties removeObjectsForKeys:sDynamicCacheableProperties];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 && *v4 == 1)
  {

    kdebug_trace();
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[BWFigCaptureStream debugDescription](self, "debugDescription")];
}

- (int)start
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v4 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    v5 = ktraceCodePrefix & 0xFFFFFFC0;
    if (*MEMORY[0x1E695FF58])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    retainReferencedObject = 0;
    v8 = 0;
    v9 = -12785;
  }

  else if (self->_streaming)
  {
    retainReferencedObject = 0;
    v8 = 0;
    v9 = -12780;
  }

  else
  {
    if (dword_1ED844370)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    stream = self->_stream;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v12)
    {
      v9 = v12(stream);
      if (v9)
      {
        retainReferencedObject = 0;
        v8 = 0;
      }

      else
      {
        v8 = 1;
        self->_streaming = 1;
        retainReferencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference retainReferencedObject];
      }
    }

    else
    {
      retainReferencedObject = 0;
      v8 = 0;
      v9 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v6 && *v4 == 1)
  {
    kdebug_trace();
  }

  if (v9)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    os_unfair_lock_lock(&self->_lock);
    [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
LABEL_25:
      if (retainReferencedObject)
      {
        [retainReferencedObject captureStreamDidStart];
      }

      else
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    if (dword_1ED844370)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v8)
    {
      goto LABEL_25;
    }
  }

  if (self->_workaroundToTurnTorchOnWhenStreamStartsIfNecessary)
  {
    if (self->_workaroundShouldTurnOnTorchWhenNextStreamStarts)
    {
      FigCaptureStreamGetFigBaseObject();
    }

    self->_workaroundToTurnTorchOnWhenStreamStartsIfNecessary = 0;
  }

  return v9;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    v2 = *off_1E798BE60;
    v41[0] = *off_1E798C078;
    v41[1] = v2;
    v3 = *off_1E798C0D8;
    v41[2] = *off_1E798BF60;
    v41[3] = v3;
    v4 = *off_1E798BED0;
    v41[4] = *off_1E798BEA0;
    v41[5] = v4;
    v5 = *off_1E798C1B0;
    v41[6] = *off_1E798C1B8;
    v41[7] = v5;
    v6 = *off_1E798C278;
    v41[8] = *off_1E798C158;
    v41[9] = v6;
    v7 = *off_1E798C118;
    v41[10] = *off_1E798BEB8;
    v41[11] = v7;
    v8 = *off_1E798BDE8;
    v41[12] = *off_1E798C120;
    v41[13] = v8;
    v9 = *off_1E798BD40;
    v41[14] = *off_1E798BEA8;
    v41[15] = v9;
    v10 = *off_1E798BD20;
    v41[16] = *off_1E798BD28;
    v41[17] = v10;
    v11 = *off_1E798BC60;
    v41[18] = *off_1E798BE30;
    v41[19] = v11;
    v12 = *off_1E798BF30;
    v41[20] = *off_1E798BF28;
    v41[21] = v12;
    v13 = *off_1E798BDA8;
    v41[22] = *off_1E798BE80;
    v41[23] = v13;
    v14 = *off_1E798C1E0;
    v41[24] = *off_1E798BDB0;
    v41[25] = v14;
    v15 = *off_1E798C0B8;
    v41[26] = *off_1E798C1C0;
    v41[27] = v15;
    sStaticCacheableProperties = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:28];
    v16 = *off_1E798BE58;
    v40[0] = *off_1E798C010;
    v40[1] = v16;
    v17 = *off_1E798BED8;
    v40[2] = *off_1E798C230;
    v40[3] = v17;
    v18 = *off_1E798BEE0;
    v40[4] = *off_1E798BD70;
    v40[5] = v18;
    v19 = *off_1E798BF08;
    v40[6] = *off_1E798C080;
    v40[7] = v19;
    v20 = *off_1E798BF00;
    v40[8] = *off_1E798BEF8;
    v40[9] = v20;
    v21 = *off_1E798C1E8;
    v40[10] = *off_1E798BD48;
    v40[11] = v21;
    v22 = *off_1E798C170;
    v40[12] = *off_1E798BD50;
    v40[13] = v22;
    v23 = *off_1E798C0E8;
    v40[14] = *off_1E798C178;
    v40[15] = v23;
    v24 = *off_1E798C188;
    v40[16] = *off_1E798C110;
    v40[17] = v24;
    v25 = *off_1E798BF20;
    v40[18] = *off_1E798BF18;
    v40[19] = v25;
    v26 = *off_1E798C0F0;
    v40[20] = *off_1E798BDF8;
    v40[21] = v26;
    v27 = *off_1E798BC20;
    v40[22] = *off_1E798BBF8;
    v40[23] = v27;
    v28 = *off_1E798BE48;
    v40[24] = *off_1E798C098;
    v40[25] = v28;
    v29 = *off_1E798BFC0;
    v40[26] = *off_1E798BE68;
    v40[27] = v29;
    v30 = *off_1E798BF78;
    v40[28] = *off_1E798BF80;
    v40[29] = v30;
    v31 = *off_1E798BDB8;
    v40[30] = *off_1E798BE10;
    v40[31] = v31;
    v32 = *off_1E798BCC8;
    v40[32] = *off_1E798BD68;
    v40[33] = v32;
    v33 = *off_1E798C2D8;
    v40[34] = *off_1E798BCC0;
    v40[35] = v33;
    v34 = *off_1E798BDC0;
    v40[36] = *off_1E798BF40;
    v40[37] = v34;
    v35 = *off_1E798BDC8;
    v40[38] = *off_1E798BF50;
    v40[39] = v35;
    v36 = *off_1E798BDA0;
    v40[40] = *off_1E798BD98;
    v40[41] = v36;
    v37 = *off_1E798BEB0;
    v40[42] = *off_1E798BFD0;
    v40[43] = v37;
    v38 = *off_1E798BE40;
    v40[44] = *off_1E798C0E0;
    v40[45] = v38;
    v39 = *off_1E798C0B0;
    v40[46] = *off_1E798BE38;
    v40[47] = v39;
    v40[48] = *off_1E798BD38;
    sDynamicCacheableProperties = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:49];
    sCacheableProperties = [sDynamicCacheableProperties arrayByAddingObjectsFromArray:sStaticCacheableProperties];
    sStaticCachedPropertiesByPortTypeLock = 0;
    sStaticCachedPropertiesByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
  }
}

- (BWFigCaptureStream)initWithFigCaptureStream:(OpaqueFigCaptureStream *)stream deviceID:(id)d errOut:(int *)out
{
  selfCopy = self;
  v50 = 0;
  if (stream)
  {
    v49.receiver = self;
    v49.super_class = BWFigCaptureStream;
    v9 = [(BWFigCaptureStream *)&v49 init];
    selfCopy = v9;
    if (v9)
    {
      v9->_lock._os_unfair_lock_opaque = 0;
      v9->_cachedProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
      selfCopy->_stream = CFRetain(stream);
      v10 = [(BWFigCaptureStream *)selfCopy copyProperty:*off_1E798C0E0 error:&v50];
      selfCopy->_portType = v10;
      if (v50)
      {
        [BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:];
      }

      else
      {
        selfCopy->_portTypeShortString = BWPortTypeToDisplayString(v10, v11);
        selfCopy->_loggingPrefix = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%p FigCaptureStreamRef(%p), %@>", selfCopy, selfCopy->_stream, selfCopy->_portTypeShortString];
        if (dword_1ED844370)
        {
          v48 = 0;
          v47 = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        selfCopy->_supportedProperties = [(BWFigCaptureStream *)selfCopy copyProperty:*off_1E798A2C8 error:&v50, v35, v36];
        if (v50)
        {
          [BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:];
        }

        else
        {
          if ((BWCaptureIsRunningInMacCatalystEnvironment() & 1) == 0 && (BWCaptureIsRunningInIOSAppOnMacEnvironment() & 1) == 0)
          {
            selfCopy->_staticPropertiesCacheEnabled = [d isEqualToString:0x1F21702D0];
          }

          if (selfCopy->_staticPropertiesCacheEnabled)
          {
            os_unfair_lock_lock(&sStaticCachedPropertiesByPortTypeLock);
            -[NSMutableDictionary addEntriesFromDictionary:](selfCopy->_cachedProperties, "addEntriesFromDictionary:", [sStaticCachedPropertiesByPortType objectForKeyedSubscript:selfCopy->_portType]);
            os_unfair_lock_unlock(&sStaticCachedPropertiesByPortTypeLock);
          }

          v13 = *off_1E798A0E8;
          if ([(NSString *)selfCopy->_portType isEqualToString:*off_1E798A0E8])
          {
            v14 = [(NSDictionary *)selfCopy->_supportedProperties mutableCopy];
            [v14 setObject:0 forKeyedSubscript:*off_1E798C1E8];
            [v14 setObject:0 forKeyedSubscript:*off_1E798C1E0];
            [v14 setObject:0 forKeyedSubscript:*off_1E798C1D8];

            selfCopy->_supportedProperties = [v14 copy];
          }

          selfCopy->_uniqueID = [(BWFigCaptureStream *)selfCopy copyPropertyIfSupported:*off_1E798C240 error:&v50];
          if (v50)
          {
            [BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:];
          }

          else
          {
            if (*MEMORY[0x1E695FF58])
            {
              portType = selfCopy->_portType;
              v16 = 822151424;
              if ([(NSString *)portType isEqualToString:*off_1E798A0D8])
              {
                v16 = 822151552;
              }

              else if ([(NSString *)portType isEqualToString:*off_1E798A0C0])
              {
                v16 = 822151488;
              }

              else if (![(NSString *)portType isEqualToString:*off_1E798A0D0])
              {
                if ([(NSString *)portType isEqualToString:*off_1E798A0E0])
                {
                  v16 = 822151680;
                }

                else if ([(NSString *)portType isEqualToString:*off_1E798A0C8])
                {
                  v16 = 822151616;
                }

                else if ([(NSString *)portType isEqualToString:v13])
                {
                  v16 = 822151744;
                }

                else if ([(NSString *)portType isEqualToString:*off_1E798A0F8])
                {
                  v16 = 822152064;
                }

                else
                {
                  v16 = 0;
                }
              }
            }

            else
            {
              v16 = 0;
            }

            selfCopy->_ktraceCodePrefix = v16;
            [(BWFigCaptureStream *)selfCopy registerForNotification:*off_1E798B8B8 listener:selfCopy callback:fcs_handleStreamControlTakenByAnotherClientNotification];
            [(BWFigCaptureStream *)selfCopy registerForNotification:*off_1E798B8B0 listener:selfCopy callback:fcs_handleStreamControlRelinquishedByAnotherClientNotification];
            [(BWFigCaptureStream *)selfCopy registerForNotification:*off_1E798B890 listener:selfCopy callback:fcs_handleFrameReceiveTimeout];
            [(BWFigCaptureStream *)selfCopy registerForNotification:*off_1E798B8A0 listener:selfCopy callback:fcs_reactionsInProgressChanged];
            [(BWFigCaptureStream *)selfCopy registerForNotification:*off_1E798B8D0 listener:selfCopy callback:fcs_suppressedGesture];
            selfCopy->_vibeMitigationWhileCameraStreamingSupported = 0;
            v17 = *off_1E798C270;
            if ([(NSDictionary *)selfCopy->_supportedProperties objectForKeyedSubscript:*off_1E798C270])
            {
              v50 = [(BWFigCaptureStream *)selfCopy setProperty:v17 value:MEMORY[0x1E695E110]];
              if (v50)
              {
                v48 = 0;
                v47 = OS_LOG_TYPE_DEFAULT;
                v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v19 = v48;
                if (os_log_type_enabled(v18, v47))
                {
                  v20 = v19;
                }

                else
                {
                  v20 = v19 & 0xFFFFFFFE;
                }

                if (v20)
                {
                  loggingPrefix = selfCopy->_loggingPrefix;
                  v37 = 136315650;
                  v38 = "[BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:]";
                  v39 = 2114;
                  v40 = loggingPrefix;
                  v41 = 1024;
                  LODWORD(streamCopy2) = v50;
                  _os_log_send_and_compose_impl();
                }
              }

              else
              {
                if (!dword_1ED844370)
                {
                  *out = 0;
                  return selfCopy;
                }

                v48 = 0;
                v47 = OS_LOG_TYPE_DEFAULT;
                v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v23 = v48;
                if (os_log_type_enabled(v22, v47))
                {
                  v24 = v23;
                }

                else
                {
                  v24 = v23 & 0xFFFFFFFE;
                }

                if (v24)
                {
                  v25 = selfCopy->_loggingPrefix;
                  v37 = 136315394;
                  v38 = "[BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:]";
                  v39 = 2114;
                  v40 = v25;
                  _os_log_send_and_compose_impl();
                }
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

  else
  {
    [BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:];
  }

  v26 = v50;
  *out = v50;
  if (v26)
  {
    if (selfCopy->_loggingPrefix)
    {
      v48 = 0;
      v47 = OS_LOG_TYPE_DEFAULT;
      v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v28 = v48;
      if (os_log_type_enabled(v27, v47))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (!v29)
      {
        goto LABEL_60;
      }

      v30 = selfCopy->_loggingPrefix;
      v37 = 136316162;
      v38 = "[BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:]";
      v39 = 2114;
      v40 = v30;
      v41 = 2048;
      streamCopy2 = stream;
      v43 = 2114;
      dCopy2 = d;
      v45 = 1024;
      v46 = v50;
    }

    else
    {
      v48 = 0;
      v47 = OS_LOG_TYPE_DEFAULT;
      v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v32 = v48;
      if (os_log_type_enabled(v31, v47))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (!v33)
      {
        goto LABEL_60;
      }

      v37 = 136316162;
      v38 = "[BWFigCaptureStream initWithFigCaptureStream:deviceID:errOut:]";
      v39 = 2048;
      v40 = selfCopy;
      v41 = 2048;
      streamCopy2 = stream;
      v43 = 2114;
      dCopy2 = d;
      v45 = 1024;
      v46 = v50;
    }

    _os_log_send_and_compose_impl();
LABEL_60:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    return 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (dword_1ED844370)
  {
    v21 = 0;
    v20 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWFigCaptureStream *)self unregisterForNotification:*off_1E798B8B8 listener:self, v12, v13];
  [(BWFigCaptureStream *)self unregisterForNotification:*off_1E798B8B0 listener:self];
  [(BWFigCaptureStream *)self unregisterForNotification:*off_1E798B890 listener:self];
  [(BWFigCaptureStream *)self unregisterForNotification:*off_1E798B8A0 listener:self];
  [(BWFigCaptureStream *)self unregisterForNotification:*off_1E798B8D0 listener:self];

  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  if (self->_staticPropertiesCacheEnabled)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(sStaticCacheableProperties, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = sStaticCacheableProperties;
    v7 = [sStaticCacheableProperties countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setObject:-[NSMutableDictionary objectForKeyedSubscript:](self->_cachedProperties forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v16 + 1) + 8 * i)), *(*(&v16 + 1) + 8 * i)}];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock(&sStaticCachedPropertiesByPortTypeLock);
    v11 = [v5 copy];
    [sStaticCachedPropertiesByPortType setObject:v11 forKeyedSubscript:self->_portType];
    os_unfair_lock_unlock(&sStaticCachedPropertiesByPortTypeLock);
  }

  _Block_release(self->_reactionsInProgressChangedHandler);
  _Block_release(self->_suppressedGestureHandler);
  v14.receiver = self;
  v14.super_class = BWFigCaptureStream;
  [(BWFigCaptureStream *)&v14 dealloc];
}

- (BWFigCaptureStreamStartStopDelegate)startStopDelegate
{
  os_unfair_lock_lock(&self->_lock);
  referencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference referencedObject];
  os_unfair_lock_unlock(&self->_lock);
  return referencedObject;
}

- (void)setStartStopDelegate:(id)delegate
{
  os_unfair_lock_lock(&self->_lock);
  referencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference referencedObject];
  if (!delegate || (referencedObject ? (v6 = referencedObject == delegate) : (v6 = 1), v6))
  {
    if (referencedObject != delegate)
    {

      if (delegate)
      {
        v8 = [[FigWeakReference alloc] initWithReferencedObject:delegate];
      }

      else
      {
        v8 = 0;
      }

      self->_startStopDelegateWeakReference = v8;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"setting delegate to %@ while one is already set %@", delegate, referencedObject];
    os_unfair_lock_unlock(&self->_lock);
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (int)registerForNotification:(__CFString *)notification listener:(const void *)listener callback:(void *)callback
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListener();
}

- (int)unregisterForNotification:(__CFString *)notification listener:(const void *)listener
{
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

- (int)enqueueReactionEffect:(id)effect
{
  stream = self->_stream;
  v5 = *(CMBaseObjectGetVTable() + 16);
  if (*v5 < 3uLL)
  {
    return -12782;
  }

  v6 = v5[4];
  if (!v6)
  {
    return -12782;
  }

  return v6(stream, effect);
}

- (int)addAttachmentsToSampleBuffer:(opaqueCMSampleBuffer *)buffer options:(id)options
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v8 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v9 = ktraceCodePrefix & 0xFFFFFFC0 | 0x10;
    }

    else
    {
      v9 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v9 = 0;
  }

  if (self->_invalidated)
  {
    v10 = -12785;
  }

  else
  {
    stream = self->_stream;
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (*v12 >= 2uLL && (v13 = v12[3]) != 0)
    {
      v10 = v13(stream, buffer, options);
    }

    else
    {
      v10 = -12782;
    }
  }

  if (v9 && *v8 == 1)
  {
    kdebug_trace();
  }

  return v10;
}

- (void)setVibeMitigationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  if (self->_vibeMitigationEnabled != enabledCopy)
  {
    self->_vibeMitigationEnabled = enabledCopy;
    [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)vibeMitigationEnabled
{
  os_unfair_lock_lock(&self->_lock);
  vibeMitigationEnabled = self->_vibeMitigationEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return vibeMitigationEnabled;
}

- (void)resetTorchState
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated && [(NSString *)self->_portType isEqual:*off_1E798A0C0])
  {
    if (dword_1ED844370)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(BWFigCaptureStream *)self _setProperty:&unk_1F224A870 value:0 requireSupported:1 lockHeldByCaller:?];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_activateVibeMitigationIfEnabled
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 68));
    if (*(self + 105) == 1)
    {
      if (*(self + 104) == 1 && *(self + 72) == 1)
      {
        if (!dword_1ED844370)
        {
          return;
        }

        v6 = OUTLINED_FUNCTION_15_22();
        v7 = OUTLINED_FUNCTION_29_4(v6);
        if (!OUTLINED_FUNCTION_6(v7))
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_0_66();
      }

      else
      {
        if (-[BWFigCaptureStream _setProperty:value:requireSupported:lockHeldByCaller:](self, *off_1E798C270, [MEMORY[0x1E696AD98] numberWithBool:?], 0, 1))
        {
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v5 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          if (OUTLINED_FUNCTION_12(v5))
          {
            OUTLINED_FUNCTION_13_28();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            OUTLINED_FUNCTION_27_13();
          }

          OUTLINED_FUNCTION_1_4();
          goto LABEL_15;
        }

        if (!dword_1ED844370)
        {
          return;
        }

        v2 = OUTLINED_FUNCTION_15_22();
        v3 = OUTLINED_FUNCTION_29_4(v2);
        if (!OUTLINED_FUNCTION_6(v3))
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_13_28();
        OUTLINED_FUNCTION_5();
      }

      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
LABEL_15:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (int)stop
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v4 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v5 = ktraceCodePrefix & 0xFFFFFFC0 | 4;
    }

    else
    {
      v5 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    retainReferencedObject = 0;
    v7 = 0;
    v8 = -12785;
  }

  else if (self->_streaming)
  {
    if (dword_1ED844370)
    {
      OUTLINED_FUNCTION_4_54();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v20);
      if (OUTLINED_FUNCTION_6(v10))
      {
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_6_47();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_5_54();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    stream = self->_stream;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      v8 = v12(stream);
    }

    else
    {
      v8 = -12782;
    }

    self->_streaming = 0;
    retainReferencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference retainReferencedObject];
    v7 = 1;
  }

  else
  {
    retainReferencedObject = 0;
    v7 = 0;
    v8 = -12780;
  }

  [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
  os_unfair_lock_unlock(&self->_lock);
  if (v5 && *v4 == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_4_54();
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = OUTLINED_FUNCTION_14_24(v13);
    if (OUTLINED_FUNCTION_12(v14))
    {
      OUTLINED_FUNCTION_3_62();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_6_47();
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (!dword_1ED844370)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_4_54();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = OUTLINED_FUNCTION_14_24(v15);
    if (OUTLINED_FUNCTION_12(v16))
    {
      OUTLINED_FUNCTION_0_66();
      OUTLINED_FUNCTION_6_47();
      _os_log_send_and_compose_impl();
    }
  }

  OUTLINED_FUNCTION_5_54();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_31:
  if (v7)
  {
    if (retainReferencedObject)
    {
      [retainReferencedObject captureStreamDidStop];
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = OUTLINED_FUNCTION_14_24(v17);
      if (OUTLINED_FUNCTION_12(v18))
      {
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_6_47();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v8;
}

- (void)_resetStreamingState
{
  if (self)
  {
    os_unfair_lock_lock((self + 68));
    v2 = *(self + 72);
    if (v2 == 1)
    {
      retainReferencedObject = [*(self + 88) retainReferencedObject];
    }

    else
    {
      retainReferencedObject = 0;
    }

    *(self + 72) = 0;
    [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
    os_unfair_lock_unlock((self + 68));
    if (v2)
    {
      if (retainReferencedObject)
      {
        [retainReferencedObject captureStreamDidStop];
      }

      else
      {
        v4 = OUTLINED_FUNCTION_16_25();
        v5 = OUTLINED_FUNCTION_24_15(v4);
        if (OUTLINED_FUNCTION_5_24(v5))
        {
          OUTLINED_FUNCTION_0_66();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_27_13();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0();
      }
    }
  }
}

- (uint64_t)_setProperty:(void *)property value:(int)value requireSupported:(char)supported lockHeldByCaller:
{
  if (!self)
  {
    return 0;
  }

  if (CFEqual(cf1, *off_1E798C230))
  {
    [property floatValue];
    *(self + 107) = v10 == 1.0;
  }

  specific = dispatch_get_specific(@"BWFigCaptureStreamSetPropertySetPropertyAsyncQueue");
  if (specific)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__BWFigCaptureStream__setProperty_value_requireSupported_lockHeldByCaller___block_invoke;
    block[3] = &unk_1E79988E0;
    block[5] = property;
    block[6] = cf1;
    block[4] = self;
    valueCopy = value;
    supportedCopy = supported;
    dispatch_async(specific, block);
    return 0;
  }

  v13 = *(self + 76);
  v14 = MEMORY[0x1E695FF58];
  if (v13)
  {
    v15 = v13 & 0xFFFFFFC0 | 8;
    if (*MEMORY[0x1E695FF58])
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      CFHash(cf1);
      OUTLINED_FUNCTION_5_7();
    }

    if ((supported & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    if ((supported & 1) == 0)
    {
LABEL_14:
      os_unfair_lock_lock((self + 68));
    }
  }

  if (*(self + 65))
  {
    v12 = 4294954511;
    if ((supported & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_26:
    if (v16)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v17 = *(self + 48);
  if (v17 && ![v17 objectForKeyedSubscript:cf1])
  {
    if (value)
    {
      v12 = 4294954509;
    }

    else
    {
      v12 = 0;
    }

    if (supported)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (([objc_msgSend(*(self + 56) objectForKeyedSubscript:{cf1), "isEqual:", property}] & 1) == 0)
    {
      FigCaptureStreamGetFigBaseObject();
    }

    v12 = 0;
    if (supported)
    {
      goto LABEL_26;
    }
  }

LABEL_32:
  os_unfair_lock_unlock((self + 68));
  if (v16)
  {
LABEL_33:
    if (*v14 == 1)
    {
      OUTLINED_FUNCTION_5_7();
    }
  }

LABEL_35:
  if (v12)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v12;
}

- (_DWORD)_copyProperty:(int)property requireSupported:(int *)supported error:
{
  if (result)
  {
    v7 = result;
    v16 = 0;
    v8 = result[19];
    v9 = MEMORY[0x1E695FF58];
    if (v8)
    {
      v10 = v8 & 0xFFFFFFC0 | 0xC;
      if (*MEMORY[0x1E695FF58])
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        CFHash(cf);
        OUTLINED_FUNCTION_5_7();
      }
    }

    else
    {
      v11 = 0;
    }

    os_unfair_lock_lock((v7 + 68));
    if (*(v7 + 65))
    {
      v12 = -12785;
    }

    else
    {
      v13 = *(v7 + 48);
      if (v13 && ![v13 objectForKeyedSubscript:cf])
      {
        if (property)
        {
          v12 = -12787;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v16 = [*(v7 + 56) objectForKeyedSubscript:cf];
        if (!v16)
        {
          FigCaptureStreamGetFigBaseObject();
        }

        v12 = 0;
      }
    }

    os_unfair_lock_unlock((v7 + 68));
    if (v11 && *v9 == 1)
    {
      OUTLINED_FUNCTION_5_7();
    }

    v14 = 0;
    if (v12)
    {
      OUTLINED_FUNCTION_17_21();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v14 = v12;
    }

    if (supported)
    {
      *supported = v14;
    }

    return v16;
  }

  return result;
}

- (id)getProperty:(__CFString *)property error:(int *)error
{
  v4 = [(BWFigCaptureStream *)self _copyProperty:property requireSupported:1 error:error];

  return v4;
}

- (id)getPropertyIfSupported:(__CFString *)supported error:(int *)error
{
  v4 = [(BWFigCaptureStream *)self _copyProperty:supported requireSupported:0 error:error];

  return v4;
}

- (void)invalidateWhilePreservingTorchState:(BOOL)state
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v6 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v7 = ktraceCodePrefix & 0xFFFFFFC0 | 0x18;
    }

    else
    {
      v7 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    retainReferencedObject = 0;
    streaming = 0;
    goto LABEL_25;
  }

  if (dword_1ED844370)
  {
    OUTLINED_FUNCTION_17_21();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_5_24(v11))
    {
      OUTLINED_FUNCTION_0_66();
      OUTLINED_FUNCTION_6_47();
      OUTLINED_FUNCTION_27_13();
    }

    OUTLINED_FUNCTION_5_54();
    OUTLINED_FUNCTION_13_0();
  }

  streaming = self->_streaming;
  if (streaming)
  {
    stream = self->_stream;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      v13(stream);
    }

    self->_streaming = 0;
    retainReferencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference retainReferencedObject];
    if (state)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  retainReferencedObject = 0;
  if (!state)
  {
LABEL_20:
    if ([(NSString *)self->_portType isEqual:*off_1E798A0C0])
    {
      [(BWFigCaptureStream *)self _setProperty:&unk_1F224A870 value:0 requireSupported:1 lockHeldByCaller:?];
    }
  }

LABEL_22:
  v14 = self->_stream;
  if (v14)
  {
    CFRelease(v14);
    self->_stream = 0;
  }

  self->_invalidated = 1;
LABEL_25:
  [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
  os_unfair_lock_unlock(&self->_lock);
  if (streaming)
  {
    if (retainReferencedObject)
    {
      [retainReferencedObject captureStreamDidStop];
    }

    else
    {
      OUTLINED_FUNCTION_17_21();
      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_24(v16))
      {
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_6_47();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0();
    }
  }

  if (v7)
  {
    if (*v6 == 1)
    {
      OUTLINED_FUNCTION_5_7();
    }
  }
}

- (void)synchronizedStreamsGroupDidStop
{
  streaming = self->_streaming;
  if (streaming)
  {
    retainReferencedObject = [(FigWeakReference *)self->_startStopDelegateWeakReference retainReferencedObject];
  }

  else
  {
    retainReferencedObject = 0;
  }

  self->_streaming = 0;
  [(BWFigCaptureStream *)self _activateVibeMitigationIfEnabled];
  os_unfair_lock_unlock(&self->_lock);
  if (streaming)
  {
    if (retainReferencedObject)
    {
      [retainReferencedObject captureStreamDidStop];
    }

    else
    {
      v5 = OUTLINED_FUNCTION_16_25();
      v6 = OUTLINED_FUNCTION_24_15(v5);
      if (OUTLINED_FUNCTION_5_24(v6))
      {
        OUTLINED_FUNCTION_0_66();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_27_13();
      }

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_13_0();
    }
  }
}

- (uint64_t)initWithFigCaptureStream:deviceID:errOut:.cold.4()
{
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_1_4();
  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

@end