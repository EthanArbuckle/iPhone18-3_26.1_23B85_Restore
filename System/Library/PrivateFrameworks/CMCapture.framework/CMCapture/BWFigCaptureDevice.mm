@interface BWFigCaptureDevice
+ (void)initialize;
- (BOOL)invalidated;
- (BOOL)supportsISPProcessingSessionType:(int)type error:(int *)error;
- (BWFigCaptureDevice)initWithFigCaptureDevice:(OpaqueFigCaptureDevice *)device deviceID:(id)d;
- (NSString)description;
- (_DWORD)_copyProperty:(int)property requireSupported:(int *)supported error:;
- (const)_invalidateSyncStreamGroupsAndControlledStreams:(uint64_t)streams preserveTorchState:;
- (id)_copyBWMultiCamConfigurationFromFig:(uint64_t)fig;
- (id)_copyFigMultiCamConfigurationFromBW:(uint64_t)w;
- (id)copyISPProcessingSessionWithType:(int)type error:(int *)error;
- (id)copyStreamWithPortType:(__CFString *)type error:(int *)error;
- (id)copyStreamsWithPortTypes:(id)types error:(int *)error;
- (id)copySynchronizedStreamsGroupForStreams:(id)streams error:(int *)error;
- (id)getProperty:(__CFString *)property error:(int *)error;
- (id)getPropertyIfSupported:(__CFString *)supported error:(int *)error;
- (int)relinquishControlOfStreams:(id)streams;
- (int)requestControlOfStreams:(id)streams clientPriority:(int)priority;
- (uint64_t)_bwSyncGroupArrayFromFig:(uint64_t)fig;
- (uint64_t)_removeFigCaptureDeviceListeners;
- (uint64_t)_setProperty:(uint64_t)property value:(int)value requireSupported:;
- (void)_figSyncGroupArrayFromBW:(uint64_t)w;
- (void)dealloc;
- (void)invalidateAndKeepFigCaptureDeviceAlive:(BOOL)alive streamsToRelinquishControl:(id)control preserveTorchState:(BOOL)state;
- (void)postNotificationOnBehalfOfFigCaptureDevice:(__CFString *)device payload:(id)payload;
- (void)processingSessionHasBeenInvalidated:(id)invalidated;
- (void)resetSynchronizedStreamsGroups;
- (void)resetTorchState;
@end

@implementation BWFigCaptureDevice

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[BWFigCaptureDevice debugDescription](self, "debugDescription")];
}

- (BOOL)invalidated
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return invalidated;
}

- (void)resetSynchronizedStreamsGroups
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  synchronizedStreamsGroups = self->_synchronizedStreamsGroups;
  v3 = [(NSArray *)synchronizedStreamsGroups countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(synchronizedStreamsGroups);
        }

        [*(*(&v8 + 1) + 8 * i) setActiveStreams:0];
      }

      v4 = [(NSArray *)synchronizedStreamsGroups countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWFigCaptureDevice)initWithFigCaptureDevice:(OpaqueFigCaptureDevice *)device deviceID:(id)d
{
  selfCopy = self;
  v70[0] = 0;
  if (!device)
  {
    v69 = 0;
    v70[0] = -12780;
    v68 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_67;
  }

  v66.receiver = self;
  v66.super_class = BWFigCaptureDevice;
  v6 = [(BWFigCaptureDevice *)&v66 init];
  selfCopy = v6;
  if (!v6)
  {
LABEL_67:
    v13 = 0;
    goto LABEL_68;
  }

  v6->_lock._os_unfair_lock_opaque = 0;
  v7 = CFRetain(device);
  v8 = sNextUniqueID++;
  selfCopy->_device = v7;
  selfCopy->_uniqueID = v8;
  selfCopy->_deviceID = [d copy];
  selfCopy->_loggingPrefix = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%p FigCaptureDeviceRef(%p), %ld, %@>", selfCopy, device, selfCopy->_uniqueID, selfCopy->_deviceID];
  if (dword_1ED844390)
  {
    v69 = 0;
    v68 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v69;
    if (os_log_type_enabled(v9, v68))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      loggingPrefix = selfCopy->_loggingPrefix;
      v54 = 136315394;
      v55 = "[BWFigCaptureDevice initWithFigCaptureDevice:deviceID:]";
      v56 = 2114;
      v57 = loggingPrefix;
      LODWORD(v39) = 22;
      v37 = &v54;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  selfCopy->_supportedProperties = [(BWFigCaptureDevice *)selfCopy copyProperty:*off_1E798A2C8 error:v70, v37, v39];
  if (v70[0])
  {
    [BWFigCaptureDevice initWithFigCaptureDevice:deviceID:];
    goto LABEL_67;
  }

  v13 = [(BWFigCaptureDevice *)selfCopy copyProperty:*off_1E798A028 error:v70];
  if (v70[0])
  {
    [BWFigCaptureDevice initWithFigCaptureDevice:deviceID:];
    goto LABEL_68;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v68 = OS_LOG_TYPE_DEFAULT;
  v45 = 0;
  if (FigCaptureExternalCameraReplacesBuiltIn(&v68))
  {
    v45 = [(NSString *)selfCopy->_deviceID isEqualToString:@"Default"];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v17 = [v13 countByEnumeratingWithState:&v62 objects:v61 count:16];
  v48 = v13;
  if (!v17)
  {
LABEL_45:
    v69 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = v69;
    if (os_log_type_enabled(v29, type))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v32 = selfCopy->_loggingPrefix;
      v54 = 136315650;
      v55 = "[BWFigCaptureDevice initWithFigCaptureDevice:deviceID:]";
      v56 = 2114;
      v57 = v32;
      v58 = 2114;
      v59 = v14;
      LODWORD(v40) = 32;
      v38 = &v54;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_51;
  }

  v18 = v17;
  v49 = 0;
  v19 = *v63;
  v50 = *off_1E798A0E0;
  v47 = *off_1E798A0F8;
  obj = *off_1E798A0C0;
  v43 = *off_1E798A0D8;
  v42 = *off_1E798A0D0;
  v41 = *off_1E798A0C8;
  do
  {
    v20 = 0;
    do
    {
      if (*v63 != v19)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v62 + 1) + 8 * v20);
      v22 = [[BWFigCaptureStream alloc] initWithFigCaptureStream:v21 deviceID:d errOut:v70];
      if (v22)
      {
        v23 = v22;
        [v14 addObject:v22];
        [v16 addObject:v21];
        [v15 setObject:v23 forKeyedSubscript:{-[BWFigCaptureStream portType](v23, "portType")}];
        if ([(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:v50]|| [(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:v47])
        {
          if (v68 == OS_LOG_TYPE_INFO)
          {
            [v14 removeObject:v23];
            [v16 removeObject:v21];
            [v15 setObject:0 forKeyedSubscript:{-[BWFigCaptureStream portType](v23, "portType")}];

            v49 = 1;
            goto LABEL_39;
          }

          v49 = 1;
          goto LABEL_36;
        }

        if ([(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:obj]|| [(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:v43]|| [(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:v42])
        {
          if (v45)
          {
LABEL_34:
            if ((v68 & 1) == 0)
            {
              [v14 removeObject:v23];
              [v16 removeObject:v21];
              [v15 setObject:0 forKeyedSubscript:{-[BWFigCaptureStream portType](v23, "portType")}];
            }
          }
        }

        else if ([(NSString *)[(BWFigCaptureStream *)v23 portType] isEqualToString:v41]&& v45)
        {
          goto LABEL_34;
        }

LABEL_36:

        goto LABEL_39;
      }

      v69 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v69;
      if (os_log_type_enabled(v24, type))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = selfCopy->_loggingPrefix;
        v54 = 136315394;
        v55 = "[BWFigCaptureDevice initWithFigCaptureDevice:deviceID:]";
        v56 = 2114;
        v57 = v27;
        LODWORD(v40) = 22;
        v38 = &v54;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = v48;
      if (v70[0] != -12787)
      {
        goto LABEL_44;
      }

      v70[0] = 0;
LABEL_39:
      ++v20;
    }

    while (v18 != v20);
    v28 = [v13 countByEnumeratingWithState:&v62 objects:v61 count:16];
    v18 = v28;
  }

  while (v28);
LABEL_44:
  if ((v49 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_51:
  selfCopy->_streams = [v14 copy];
  selfCopy->_streamsByPortType = [v15 copy];
  selfCopy->_streamsMapper = [[BWFigCaptureStreamsMapper alloc] initWithBWFigCaptureStreams:v14 figCaptureStreams:v16];

  if (v70[0])
  {
    [BWFigCaptureDevice initWithFigCaptureDevice:deviceID:];
  }

  else
  {
    v33 = *off_1E798A038;
    if (![(NSDictionary *)selfCopy->_supportedProperties objectForKeyedSubscript:*off_1E798A038])
    {
      goto LABEL_57;
    }

    selfCopy->_figCaptureSynchronizedStreamsGroups = [(BWFigCaptureDevice *)selfCopy copyProperty:v33 error:v70];
    if (v70[0])
    {
      [BWFigCaptureDevice initWithFigCaptureDevice:deviceID:];
    }

    else
    {
      v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](selfCopy->_figCaptureSynchronizedStreamsGroups, "count")}];
      memset(v53, 0, sizeof(v53));
      if ([(NSArray *)selfCopy->_figCaptureSynchronizedStreamsGroups countByEnumeratingWithState:v53 objects:v52 count:16])
      {
        v67 = 0;
        FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
      }

      selfCopy->_synchronizedStreamsGroups = [v46 copy];

      if (v70[0])
      {
        [BWFigCaptureDevice initWithFigCaptureDevice:deviceID:];
      }

      else
      {
LABEL_57:
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (*MEMORY[0x1E695FF58])
        {
          v34 = 822152000;
        }

        else
        {
          v34 = 0;
        }

        selfCopy->_ktraceCodePrefix = v34;
      }
    }
  }

LABEL_68:

  if (v70[0])
  {

    return 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (dword_1ED844390)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  [(BWFigCaptureDevice *)self _removeFigCaptureDeviceListeners];
  v5.receiver = self;
  v5.super_class = BWFigCaptureDevice;
  [(BWFigCaptureDevice *)&v5 dealloc];
}

- (id)copyStreamsWithPortTypes:(id)types error:(int *)error
{
  typesCopy = types;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(types, "count")}];
  if (dword_1ED844390)
  {
    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!typesCopy)
  {
    typesCopy = [(NSDictionary *)self->_streamsByPortType allKeys];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSArray *)typesCopy countByEnumeratingWithState:&v24 objects:v23 count:16, v21, v22];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(typesCopy);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      v14 = [(NSDictionary *)self->_streamsByPortType objectForKeyedSubscript:v13];
      if (!v14)
      {
        break;
      }

      [v7 addObject:v14];
      if (v10 == ++v12)
      {
        v10 = [(NSArray *)typesCopy countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v35 = 0;
    v34 = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v18 = v35;
    if (os_log_type_enabled(v17, v34))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      loggingPrefix = self->_loggingPrefix;
      v28 = 136315650;
      v29 = "[BWFigCaptureDevice copyStreamsWithPortTypes:error:]";
      v30 = 2114;
      v31 = loggingPrefix;
      v32 = 2114;
      v33 = v13;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v7 = 0;
    v15 = -12780;
    if (error)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:
    v15 = 0;
    if (error)
    {
LABEL_14:
      *error = v15;
    }
  }

  return v7;
}

- (id)copyStreamWithPortType:(__CFString *)type error:(int *)error
{
  typeCopy = type;
  v4 = -[BWFigCaptureDevice copyStreamsWithPortTypes:error:](self, "copyStreamsWithPortTypes:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:&typeCopy count:1], error);
  firstObject = [v4 firstObject];

  return firstObject;
}

- (int)requestControlOfStreams:(id)streams clientPriority:(int)priority
{
  v4 = *&priority;
  v7 = [(BWFigCaptureStreamsMapper *)self->_streamsMapper figCaptureStreamsForBWFigCaptureStreams:streams];
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v9 = MEMORY[0x1E695FF58];
  v36 = v7;
  if (ktraceCodePrefix)
  {
    v10 = ktraceCodePrefix & 0xFFFFFFC0;
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
      kdebug_trace();
    }
  }

  else
  {
    v11 = 0;
  }

  if (FigCapturePlatformIdentifier() < 10)
  {
    v13 = 0;
  }

  else
  {
    v52[0] = *off_1E798A050;
    v12 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v52[1] = *off_1E798A058;
    v53[0] = v12;
    v53[1] = MEMORY[0x1E695E118];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
  }

  if (dword_1ED844390)
  {
    v51 = 0;
    v50 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v15 = -12785;
  }

  else
  {
    device = self->_device;
    v17 = *(CMBaseObjectGetVTable() + 16);
    if (*v17 >= 2uLL && (v18 = v17[2]) != 0)
    {
      v15 = v18(device, v36, v13);
    }

    else
    {
      v15 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v11 && *v9 == 1)
  {
    kdebug_trace();
  }

  if (v15 == -12782)
  {
    v15 = 0;
  }

  if (v15)
  {
    v51 = 0;
    v50 = OS_LOG_TYPE_DEFAULT;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v20 = v51;
    if (os_log_type_enabled(v19, v50))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      loggingPrefix = self->_loggingPrefix;
      v42 = 136315906;
      v43 = "[BWFigCaptureDevice requestControlOfStreams:clientPriority:]";
      v44 = 2114;
      v45 = loggingPrefix;
      v46 = 2114;
      streamsCopy2 = streams;
      v48 = 1024;
      v49 = v15;
      _os_log_send_and_compose_impl();
    }

LABEL_43:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v15;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = [streams countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    v26 = *off_1E798C090;
    v27 = MEMORY[0x1E695E118];
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(streams);
        }

        [*(*(&v38 + 1) + 8 * i) setProperty:v26 value:{v27, v34, v35}];
      }

      v24 = [streams countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v24);
  }

  if (dword_1ED844390)
  {
    v51 = 0;
    v50 = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v30 = v51;
    if (os_log_type_enabled(v29, v50))
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v32 = self->_loggingPrefix;
      v42 = 136315650;
      v43 = "[BWFigCaptureDevice requestControlOfStreams:clientPriority:]";
      v44 = 2114;
      v45 = v32;
      v46 = 2114;
      streamsCopy2 = streams;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_43;
  }

  return v15;
}

- (int)relinquishControlOfStreams:(id)streams
{
  if (dword_1ED844390)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [(BWFigCaptureStreamsMapper *)self->_streamsMapper figCaptureStreamsForBWFigCaptureStreams:streams];
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v8 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v9 = ktraceCodePrefix & 0xFFFFFFC0 | 4;
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

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v10 = -12785;
  }

  else
  {
    device = self->_device;
    v12 = *(CMBaseObjectGetVTable() + 16);
    if (*v12 >= 2uLL && (v13 = v12[3]) != 0)
    {
      v10 = v13(device, v6, 0);
    }

    else
    {
      v10 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v9 && *v8 == 1)
  {
    kdebug_trace();
  }

  if (v10 == -12782)
  {
    v10 = 0;
  }

  if (v10 || dword_1ED844390)
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

- (id)copySynchronizedStreamsGroupForStreams:(id)streams error:(int *)error
{
  firstObject = [streams firstObject];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  synchronizedStreamsGroups = self->_synchronizedStreamsGroups;
  v8 = [(NSArray *)synchronizedStreamsGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v8)
  {
LABEL_13:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = 0;
    v13 = -12784;
    if (!error)
    {
      return v12;
    }

LABEL_14:
    *error = v13;
    return v12;
  }

  v9 = v8;
  v10 = *v18;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v18 != v10)
    {
      objc_enumerationMutation(synchronizedStreamsGroups);
    }

    v12 = *(*(&v17 + 1) + 8 * v11);
    if ([objc_msgSend(v12 "streams")])
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSArray *)synchronizedStreamsGroups countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = 0;
  if (error)
  {
    goto LABEL_14;
  }

  return v12;
}

- (BOOL)supportsISPProcessingSessionType:(int)type error:(int *)error
{
  v5 = *&type;
  v10 = 0;
  v6 = [(BWFigCaptureDevice *)self getProperty:*off_1E798A030 error:&v10];
  v7 = v10;
  if (v10 == -12787)
  {
    v7 = 0;
    v10 = 0;
    v8 = &unk_1F2249990;
    if (!error)
    {
      return [v8 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5)}];
    }

    goto LABEL_5;
  }

  v8 = v6;
  if (error)
  {
LABEL_5:
    *error = v7;
  }

  return [v8 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v5)}];
}

- (id)copyISPProcessingSessionWithType:(int)type error:(int *)error
{
  v5 = *&type;
  v18 = *off_1E798A078;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:?];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  cf = 0;
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v9 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v10 = ktraceCodePrefix & 0xFFFFFFC0 | 8;
    }

    else
    {
      v10 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    v11 = 0;
    v12 = -12785;
  }

  else
  {
    device = self->_device;
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v12 = v14(device, *MEMORY[0x1E695E480], v7, &cf);
      if (cf)
      {
        v15 = [BWFigCaptureISPProcessingSession alloc];
        v11 = [(BWFigCaptureISPProcessingSession *)v15 initWithFigCaptureISPProcessingSession:cf type:v5];
        [(BWFigCaptureISPProcessingSession *)v11 setDelegate:self];
        if (!self->_activeProcessingSessions)
        {
          self->_activeProcessingSessions = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
        }

        [(NSMutableArray *)self->_activeProcessingSessions addObject:[FigWeakReference weakReferenceToObject:v11]];
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v12 = -12782;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v10 && *v9 == 1)
  {
    kdebug_trace();
  }

  if (error)
  {
    *error = v12;
  }

  return v11;
}

- (void)postNotificationOnBehalfOfFigCaptureDevice:(__CFString *)device payload:(id)payload
{
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}

- (void)invalidateAndKeepFigCaptureDeviceAlive:(BOOL)alive streamsToRelinquishControl:(id)control preserveTorchState:(BOOL)state
{
  stateCopy = state;
  aliveCopy = alive;
  selfCopy = self;
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v10 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    if (*MEMORY[0x1E695FF58])
    {
      v11 = ktraceCodePrefix & 0xFFFFFFC0 | 0x14;
    }

    else
    {
      v11 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  if (!selfCopy->_invalidated)
  {
    v40 = stateCopy;
    v41 = aliveCopy;
    controlCopy = control;
    v42 = v11;
    if (dword_1ED844390)
    {
      v63 = 0;
      v62 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v43 = selfCopy;
    obj = selfCopy->_streams;
    v13 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v57 count:16, v35, v37];
    if (v13)
    {
      v14 = v13;
      v15 = *v59;
      v16 = *off_1E798C270;
      v44 = *off_1E798C270;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          if ([objc_msgSend(v18 supportedProperties])
          {
            v19 = [v18 setProperty:v16 value:MEMORY[0x1E695E110]];
            if (v19)
            {
              v20 = v19;
              v63 = 0;
              v62 = OS_LOG_TYPE_DEFAULT;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v63;
              if (os_log_type_enabled(v21, v62))
              {
                v23 = v22;
              }

              else
              {
                v23 = v22 & 0xFFFFFFFE;
              }

              if (v23)
              {
                portType = [v18 portType];
                v51 = 136315650;
                v52 = "[BWFigCaptureDevice invalidateAndKeepFigCaptureDeviceAlive:streamsToRelinquishControl:preserveTorchState:]";
                v53 = 2112;
                v54 = portType;
                v55 = 1024;
                v56 = v20;
                LODWORD(v38) = 28;
                v36 = &v51;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v16 = v44;
            }

            else if (dword_1ED844390)
            {
              v63 = 0;
              v62 = OS_LOG_TYPE_DEFAULT;
              v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v26 = v63;
              if (os_log_type_enabled(v25, v62))
              {
                v27 = v26;
              }

              else
              {
                v27 = v26 & 0xFFFFFFFE;
              }

              if (v27)
              {
                portType2 = [v18 portType];
                v51 = 136315394;
                v52 = "[BWFigCaptureDevice invalidateAndKeepFigCaptureDeviceAlive:streamsToRelinquishControl:preserveTorchState:]";
                v53 = 2112;
                v54 = portType2;
                LODWORD(v38) = 22;
                v36 = &v51;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }

        v14 = [(NSArray *)obj countByEnumeratingWithState:&v58 objects:v57 count:16];
      }

      while (v14);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    selfCopy = v43;
    v29 = *(v43 + 80);
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v46 count:{16, v36, v38}];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          referencedObject = [*(*(&v47 + 1) + 8 * j) referencedObject];
          [referencedObject setDelegate:0];
          [referencedObject invalidate];
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v46 count:16];
      }

      while (v31);
    }

    *(v43 + 80) = 0;
    [(BWFigCaptureDevice *)v43 _removeFigCaptureDeviceListeners];
    v10 = MEMORY[0x1E695FF58];
    v11 = v42;
    if (!v41)
    {
      FigCaptureDeviceGetFigBaseObject();
    }

    [(BWFigCaptureDevice *)v43 _invalidateSyncStreamGroupsAndControlledStreams:controlCopy preserveTorchState:v40];
    *(v43 + 88) = 1;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (v11)
  {
    if (*v10 == 1)
    {
      kdebug_trace();
    }
  }
}

- (void)resetTorchState
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    if (dword_1ED844390)
    {
      v17 = 0;
      v16 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    streams = self->_streams;
    v5 = [(NSArray *)streams countByEnumeratingWithState:&v12 objects:v11 count:16, v9, v10];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(streams);
          }

          [*(*(&v12 + 1) + 8 * i) resetTorchState];
        }

        v6 = [(NSArray *)streams countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)processingSessionHasBeenInvalidated:(id)invalidated
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
      kdebug_trace();
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeProcessingSessions = self->_activeProcessingSessions;
  v9 = [(NSMutableArray *)activeProcessingSessions countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(activeProcessingSessions);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 referencedObject] == invalidated)
        {
          if (v13)
          {
            [(NSMutableArray *)self->_activeProcessingSessions removeObject:v13];
            if (![(NSMutableArray *)self->_activeProcessingSessions count])
            {

              self->_activeProcessingSessions = 0;
            }
          }

          goto LABEL_20;
        }
      }

      v10 = [(NSMutableArray *)activeProcessingSessions countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:
  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    if (*v6 == 1)
    {
      kdebug_trace();
    }
  }
}

- (uint64_t)_removeFigCaptureDeviceListeners
{
  if (result && *(result + 8))
  {
    if (dword_1ED844390)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_20_28();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_20_28();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_20_28();
    CMNotificationCenterGetDefaultLocalCenter();
    return OUTLINED_FUNCTION_20_28();
  }

  return result;
}

- (uint64_t)_setProperty:(uint64_t)property value:(int)value requireSupported:
{
  if (!self)
  {
    return 0;
  }

  v7 = *(self + 96);
  v8 = MEMORY[0x1E695FF58];
  if (v7)
  {
    v9 = v7 & 0xFFFFFFC0 | 0xC;
    if (*MEMORY[0x1E695FF58])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      CFHash(cf);
      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_lock((self + 92));
  if (*(self + 88))
  {
    v11 = 4294954511;
  }

  else
  {
    v12 = *(self + 32);
    if (!v12 || [v12 objectForKeyedSubscript:cf])
    {
      if ([cf isEqualToString:*off_1E798A018] && -[BWFigCaptureDevice _copyFigMultiCamConfigurationFromBW:](self) && dword_1ED844390)
      {
        OUTLINED_FUNCTION_8_56();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v20))
        {
          v18 = v21;
        }

        else
        {
          v18 = v21 & 0xFFFFFFFE;
        }

        if (v18)
        {
          OUTLINED_FUNCTION_3_97();
          OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigCaptureDeviceGetFigBaseObject();
    }

    if (value)
    {
      v11 = 4294954509;
    }

    else
    {
      v11 = 0;
    }
  }

  os_unfair_lock_unlock((self + 92));
  if (v10 && *v8 == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  if (v11)
  {
    OUTLINED_FUNCTION_8_56();
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_38_14(v13))
    {
      v14 = v8;
    }

    else
    {
      v14 = v8 & 0xFFFFFFFE;
    }

    if (!v14)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (dword_1ED844390)
  {
    OUTLINED_FUNCTION_8_56();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_38_14(v15))
    {
      v16 = v8;
    }

    else
    {
      v16 = v8 & 0xFFFFFFFE;
    }

    if (!v16)
    {
      goto LABEL_33;
    }

LABEL_32:
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
LABEL_33:
    OUTLINED_FUNCTION_10_52();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v11;
}

- (id)_copyFigMultiCamConfigurationFromBW:(uint64_t)w
{
  if (!w)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  v6 = OUTLINED_FUNCTION_29_19(*off_1E7989F60);
  v7 = OUTLINED_FUNCTION_36_18(*off_1E7989F48);
  if (!v1)
  {
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = OUTLINED_FUNCTION_13_40(v9, v10, v11, v12, v13, v14, v15, v16, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v78, v80, v82, v84, v86, v88, v90, v92);
  if (v17)
  {
    v3 = v17;
    v18 = MEMORY[0];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (MEMORY[0] != v18)
        {
          objc_enumerationMutation(v6);
        }

        v20 = OUTLINED_FUNCTION_28_15();
        v21 = [v9 setObject:-[BWFigCaptureStreamsMapper figCaptureStreamsForBWFigCaptureStreams:](v5 forKeyedSubscript:{v20), v4}];
      }

      v3 = OUTLINED_FUNCTION_13_40(v21, v22, v23, v24, v25, v26, v27, v28, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v79, v81, v83, v85, v87, v89, v91, v93);
    }

    while (v3);
  }

  v77 = 0u;
  OUTLINED_FUNCTION_43();
  v29 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v29)
  {
    v30 = v29;
    v31 = MEMORY[0];
    do
    {
      for (j = 0; j != v30; ++j)
      {
        OUTLINED_FUNCTION_4_10();
        if (v41 != v31)
        {
          objc_enumerationMutation(v8);
        }

        OUTLINED_FUNCTION_39_18(v33, v34, v35, v36, v37, v38, v39, v40, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v77, *(&v77 + 1));
        [v9 setObject:-[BWFigCaptureDevice _figSyncGroupArrayFromBW:](v2) forKeyedSubscript:v3];
      }

      OUTLINED_FUNCTION_43();
      v30 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v30);
  }

  return v9;
}

- (_DWORD)_copyProperty:(int)property requireSupported:(int *)supported error:
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v22 = 0;
  v8 = result[24];
  v9 = MEMORY[0x1E695FF58];
  if (v8)
  {
    v10 = v8 & 0xFFFFFFC0 | 0x10;
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

  os_unfair_lock_lock((v7 + 92));
  if (*(v7 + 88))
  {
    v12 = -12785;
  }

  else
  {
    v13 = *(v7 + 32);
    if (!v13 || [v13 objectForKeyedSubscript:cf])
    {
      FigCaptureDeviceGetFigBaseObject();
    }

    if (property)
    {
      v12 = -12787;
    }

    else
    {
      v12 = 0;
    }
  }

  os_unfair_lock_unlock((v7 + 92));
  if (v11 && *v9 == 1)
  {
    OUTLINED_FUNCTION_5_7();
  }

  if (v12)
  {
    OUTLINED_FUNCTION_9_60();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = OUTLINED_FUNCTION_12_47(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_31(v15))
    {
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_40_17();
      OUTLINED_FUNCTION_31_20();
    }
  }

  else
  {
    if (([cf isEqualToString:*off_1E798A048] & 1) != 0 || !dword_1ED844390)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_9_60();
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v17 = OUTLINED_FUNCTION_12_47(v16);
    if (OUTLINED_FUNCTION_31(v17))
    {
      OUTLINED_FUNCTION_21_32();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_40_17();
      OUTLINED_FUNCTION_31_20();
    }
  }

  OUTLINED_FUNCTION_10_52();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_28:
  if ([cf isEqualToString:*off_1E798A018])
  {
    v18 = [BWFigCaptureDevice _copyBWMultiCamConfigurationFromFig:v7];
    if (v18)
    {
      v19 = v18;
      if (dword_1ED844390)
      {
        OUTLINED_FUNCTION_9_60();
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v21 = OUTLINED_FUNCTION_12_47(v20);
        if (OUTLINED_FUNCTION_31(v21))
        {
          OUTLINED_FUNCTION_21_32();
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          OUTLINED_FUNCTION_40_17();
          OUTLINED_FUNCTION_31_20();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = v19;
    }
  }

  else if (([cf isEqualToString:*off_1E798A028] & 1) == 0)
  {
    [cf isEqualToString:*off_1E798A038];
  }

  if (supported)
  {
    *supported = v12;
  }

  return v22;
}

- (id)_copyBWMultiCamConfigurationFromFig:(uint64_t)fig
{
  if (!fig)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_29_19(*off_1E7989F60);
  v4 = OUTLINED_FUNCTION_36_18(*off_1E7989F48);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = OUTLINED_FUNCTION_13_40(v5, v6, v7, v8, v9, v10, v11, v12, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v75, v77, v79, v81, v83, v85, v87, v89);
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v3);
        }

        v17 = OUTLINED_FUNCTION_28_15();
        [(BWFigCaptureStreamsMapper *)v2 bwFigCaptureStreamsForFigCaptureStreams:v17];
        v18 = [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
      }

      v14 = OUTLINED_FUNCTION_13_40(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v76, v78, v80, v82, v84, v86, v88, v90);
    }

    while (v14);
  }

  v74 = 0u;
  OUTLINED_FUNCTION_43();
  v26 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (v26)
  {
    v27 = v26;
    v28 = MEMORY[0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        OUTLINED_FUNCTION_4_10();
        if (v38 != v28)
        {
          objc_enumerationMutation(v4);
        }

        OUTLINED_FUNCTION_39_18(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v74, *(&v74 + 1));
        [BWFigCaptureDevice _bwSyncGroupArrayFromFig:v1];
        [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
      }

      OUTLINED_FUNCTION_43();
      v27 = [v4 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v27);
  }

  return v5;
}

- (id)getProperty:(__CFString *)property error:(int *)error
{
  v4 = [(BWFigCaptureDevice *)self _copyProperty:property requireSupported:1 error:error];

  return v4;
}

- (id)getPropertyIfSupported:(__CFString *)supported error:(int *)error
{
  v4 = [(BWFigCaptureDevice *)self _copyProperty:supported requireSupported:0 error:error];

  return v4;
}

- (uint64_t)_bwSyncGroupArrayFromFig:(uint64_t)fig
{
  if (!fig)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  [v6 count];
  v7 = [OUTLINED_FUNCTION_8() arrayWithCapacity:?];
  if (OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, 0))
  {
    OUTLINED_FUNCTION_32_14();
    do
    {
      v15 = 0;
      do
      {
        OUTLINED_FUNCTION_4_10();
        if (v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v17 = [*(v2 + 72) indexOfObject:*(8 * v15)];
        if (v17 != v5)
        {
          v17 = [*(v2 + 64) objectAtIndexedSubscript:v17];
          if (v17)
          {
            v17 = [OUTLINED_FUNCTION_8() addObject:?];
          }
        }

        ++v15;
      }

      while (v3 != v15);
      v3 = OUTLINED_FUNCTION_2_0(v17, v18, v19, v20, v21, v22, v23, v24, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v58);
    }

    while (v3);
  }

  return v7;
}

- (void)_figSyncGroupArrayFromBW:(uint64_t)w
{
  if (!w)
  {
    return 0;
  }

  OUTLINED_FUNCTION_80();
  [v6 count];
  v7 = [OUTLINED_FUNCTION_8() arrayWithCapacity:?];
  if (OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, 0))
  {
    OUTLINED_FUNCTION_32_14();
    do
    {
      v15 = 0;
      do
      {
        OUTLINED_FUNCTION_4_10();
        if (v16 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v17 = [*(v2 + 64) indexOfObject:*(8 * v15)];
        if (v17 == v5)
        {
          v18 = 0;
        }

        else
        {
          v18 = [*(v2 + 72) objectAtIndexedSubscript:v17];
        }

        v19 = [v7 addObject:v18];
        ++v15;
      }

      while (v3 != v15);
      v3 = OUTLINED_FUNCTION_2_0(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v60);
    }

    while (v3);
  }

  return v7;
}

- (const)_invalidateSyncStreamGroupsAndControlledStreams:(uint64_t)streams preserveTorchState:
{
  if (result)
  {
    v5 = result;
    os_unfair_lock_assert_owner(result + 23);
    if (dword_1ED844390)
    {
      OUTLINED_FUNCTION_81_2();
      OUTLINED_FUNCTION_7_69();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v7 = OUTLINED_FUNCTION_8_30(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_12(v7))
      {
        OUTLINED_FUNCTION_30_15(4.8151e-34);
        *(v8 + 4) = "[BWFigCaptureDevice _invalidateSyncStreamGroupsAndControlledStreams:preserveTorchState:]";
        v217 = 2112;
        *(v8 + 14) = v9;
        OUTLINED_FUNCTION_2_112();
        OUTLINED_FUNCTION_4_86();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ((v5[22]._os_unfair_lock_opaque & 1) == 0)
    {
      v14 = *&v5[8]._os_unfair_lock_opaque;
      if (!v14 || [v14 objectForKeyedSubscript:*off_1E798A040])
      {
        FigCaptureDeviceGetFigBaseObject();
      }
    }

    if (dword_1ED844390)
    {
      OUTLINED_FUNCTION_81_2();
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = OUTLINED_FUNCTION_8_30(v10);
      if (OUTLINED_FUNCTION_12(v11))
      {
        v12 = *&v5[26]._os_unfair_lock_opaque;
        v13 = *off_1E798A040;
        v215 = 136315906;
        v216 = "[BWFigCaptureDevice _invalidateSyncStreamGroupsAndControlledStreams:preserveTorchState:]";
        v217 = 2114;
        v218 = v12;
        v219 = 2114;
        v220 = v13;
        v221 = 1026;
        v222 = 0;
        OUTLINED_FUNCTION_2_112();
        OUTLINED_FUNCTION_4_86();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v96 = [(BWFigCaptureStreamsMapper *)*&v5[14]._os_unfair_lock_opaque figCaptureStreamsForBWFigCaptureStreams:a2];
    array = [MEMORY[0x1E695DF70] array];
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v99 = v5;
    v16 = *&v5[16]._os_unfair_lock_opaque;
    v18 = OUTLINED_FUNCTION_1_0(array, v17, &v211, v210);
    if (v18)
    {
      v21 = v18;
      v22 = *v212;
      *&v20 = 136315394;
      v102 = v20;
      do
      {
        v23 = 0;
        do
        {
          if (*v212 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = *(*(&v211 + 1) + 8 * v23);
          if ([v24 synchronizationMaster])
          {
            v25 = [array addObject:{objc_msgSend(v24, "synchronizationMaster")}];
          }

          else
          {
            OUTLINED_FUNCTION_81_2();
            OUTLINED_FUNCTION_7_69();
            v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v28 = v224;
            if (os_log_type_enabled(v27, v223))
            {
              v29 = v28;
            }

            else
            {
              v29 = v28 & 0xFFFFFFFE;
            }

            if (v29)
            {
              v215 = v102;
              v216 = "[BWFigCaptureDevice _invalidateSyncStreamGroupsAndControlledStreams:preserveTorchState:]";
              v217 = 2112;
              v218 = v24;
              OUTLINED_FUNCTION_2_112();
              OUTLINED_FUNCTION_4_86();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_1_120();
            v25 = fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          ++v23;
        }

        while (v21 != v23);
        v18 = OUTLINED_FUNCTION_1_0(v25, v26, &v211, v210);
        v21 = v18;
      }

      while (v18);
    }

    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v30 = v99;
    v31 = *(v99 + 48);
    v32 = OUTLINED_FUNCTION_1_0(v18, v19, &v206, v205);
    if (v32)
    {
      v40 = v32;
      v41 = *v207;
      do
      {
        v42 = 0;
        do
        {
          if (*v207 != v41)
          {
            objc_enumerationMutation(v31);
          }

          v43 = *(*(&v206 + 1) + 8 * v42);
          v44 = [array containsObject:v43];
          if ((v44 & 1) == 0)
          {
            v44 = [v43 invalidateWhilePreservingTorchState:streams];
          }

          ++v42;
        }

        while (v40 != v42);
        v32 = OUTLINED_FUNCTION_1_0(v44, v45, &v206, v205);
        v40 = v32;
      }

      while (v32);
    }

    v46 = OUTLINED_FUNCTION_37_14(v32, v33, v34, v35, v36, v37, v38, v39, v90, v93, v96, v99, v102, *(&v102 + 1), v107, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, 0);
    if (v46)
    {
      v54 = v46;
      v55 = MEMORY[0];
      do
      {
        v56 = 0;
        do
        {
          if (MEMORY[0] != v55)
          {
            objc_enumerationMutation(array);
          }

          v57 = [*(8 * v56++) invalidateWhilePreservingTorchState:streams];
        }

        while (v54 != v56);
        v46 = OUTLINED_FUNCTION_37_14(v57, v58, v59, v60, v61, v62, v63, v64, v91, v94, v97, v100, v103, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v204);
        v54 = v46;
      }

      while (v46);
    }

    v65 = *(v30 + 64);
    v66 = OUTLINED_FUNCTION_35_17(v46, v47, v48, v49, v50, v51, v52, v53, v91, v94, v97, v100, v103, v105, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, 0);
    if (v66)
    {
      v67 = v66;
      v68 = MEMORY[0];
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (MEMORY[0] != v68)
          {
            objc_enumerationMutation(v65);
          }

          invalidate = [*(8 * i) invalidate];
        }

        v67 = OUTLINED_FUNCTION_35_17(invalidate, v71, v72, v73, v74, v75, v76, v77, v92, v95, v98, v101, v104, v106, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157);
      }

      while (v67);
    }

    v78 = *(v30 + 8);
    v79 = *(CMBaseObjectGetVTable() + 16);
    if (*v79 >= 2uLL && (v80 = v79[3]) != 0)
    {
      result = v80(v78, v98, 0);
      v81 = result;
      if (!result)
      {
        if (!dword_1ED844390)
        {
          return result;
        }

        OUTLINED_FUNCTION_81_2();
        OUTLINED_FUNCTION_7_69();
        v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v83 = v224;
        if (os_log_type_enabled(v82, v223))
        {
          v84 = v83;
        }

        else
        {
          v84 = v83 & 0xFFFFFFFE;
        }

        if (v84)
        {
          OUTLINED_FUNCTION_30_15(4.8152e-34);
          OUTLINED_FUNCTION_5_81(v85);
          v220 = v98;
          OUTLINED_FUNCTION_2_112();
          OUTLINED_FUNCTION_4_86();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v81 = -12782;
    }

    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_7_69();
    v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v87 = OUTLINED_FUNCTION_8_30(v86);
    if (OUTLINED_FUNCTION_12(v87))
    {
      OUTLINED_FUNCTION_30_15(4.8153e-34);
      OUTLINED_FUNCTION_5_81(v88);
      v220 = v98;
      v221 = 1024;
      *(v89 + 34) = v81;
      OUTLINED_FUNCTION_2_112();
      OUTLINED_FUNCTION_4_86();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_120();
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

@end