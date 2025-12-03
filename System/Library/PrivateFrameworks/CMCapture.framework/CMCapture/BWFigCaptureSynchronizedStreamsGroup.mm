@interface BWFigCaptureSynchronizedStreamsGroup
- (BWFigCaptureSynchronizedStreamsGroup)initWithFigCaptureSynchronizedStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)group bwFigCaptureStreams:(id)streams figCaptureStreams:(id)captureStreams;
- (id)copyProperty:(__CFString *)property error:(int *)error;
- (id)getProperty:(__CFString *)property error:(int *)error;
- (int)setActiveStreams:(id)streams;
- (int)setCameraControlsMasterStream:(id)stream;
- (int)setMasterStream:(id)stream slaveConfigurationsByPortType:(id)type;
- (int)setProperty:(__CFString *)property value:(id)value;
- (int)stop;
- (uint64_t)_setProperty:(uint64_t)property value:(CFTypeRef)cf;
- (void)dealloc;
- (void)invalidate;
- (void)setSynchronizationMaster:(id)master;
@end

@implementation BWFigCaptureSynchronizedStreamsGroup

- (BWFigCaptureSynchronizedStreamsGroup)initWithFigCaptureSynchronizedStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)group bwFigCaptureStreams:(id)streams figCaptureStreams:(id)captureStreams
{
  v23 = 0;
  if (!group)
  {
    goto LABEL_20;
  }

  v22.receiver = self;
  v22.super_class = BWFigCaptureSynchronizedStreamsGroup;
  v8 = [(BWFigCaptureSynchronizedStreamsGroup *)&v22 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  v8->_lock._os_unfair_lock_opaque = 0;
  v8->_syncGroup = CFRetain(group);
  *(v9 + 16) = [v9 copyProperty:*off_1E798A2C8 error:&v23];
  *(v9 + 48) = [streams copy];
  *(v9 + 56) = [[BWFigCaptureStreamsMapper alloc] initWithBWFigCaptureStreams:streams figCaptureStreams:captureStreams];
  v10 = *off_1E798CD08;
  [objc_msgSend(*(v9 + 16) objectForKeyedSubscript:{*off_1E798CD08), "objectForKeyedSubscript:", *off_1E798A140}];
  *(v9 + 84) = 0;
  v11 = [v9 copyProperty:v10 error:&v23];
  if (v23)
  {
    [(BWFigCaptureSynchronizedStreamsGroup *)v23 initWithFigCaptureSynchronizedStreamsGroup:v11 bwFigCaptureStreams:v9 figCaptureStreams:v19];
    self = v19[0];
LABEL_20:

    return 0;
  }

  if (!v11)
  {
    v21 = 0;
    v20 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(v9 + 24) = [(BWFigCaptureStreamsMapper *)*(v9 + 56) bwFigCaptureStreamForFigCaptureStream:v11];
  *(v9 + 76) = **(CMBaseObjectGetVTable() + 16) > 1uLL;
  portType = [*(v9 + 24) portType];
  if (!*MEMORY[0x1E695FF58])
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v14 = portType;
  v15 = 822151936;
  if (([portType isEqualToString:*off_1E798A0D8] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", *off_1E798A0C0) & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", *off_1E798A0D0) & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", *off_1E798A0C8) & 1) == 0)
  {
    if (([v14 isEqualToString:*off_1E798A0E0] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", *off_1E798A0E8) & 1) != 0 || objc_msgSend(v14, "isEqualToString:", *off_1E798A0F8))
    {
      v15 = 822151872;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:
  *(v9 + 80) = v15;
  if (v11)
  {
    CFRelease(v11);
  }

  return v9;
}

- (void)dealloc
{
  syncGroup = self->_syncGroup;
  if (syncGroup)
  {
    CFRelease(syncGroup);
  }

  v4.receiver = self;
  v4.super_class = BWFigCaptureSynchronizedStreamsGroup;
  [(BWFigCaptureSynchronizedStreamsGroup *)&v4 dealloc];
}

- (void)setSynchronizationMaster:(id)master
{
  if (!self->_synchronizationMasterIsConfigurable)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot set sync primary - not supported on this device", 0}]);
  }

  defaultSynchronizationMaster = master;
  if (self->_synchronizationMaster != master)
  {
    if (!master)
    {
      defaultSynchronizationMaster = self->_defaultSynchronizationMaster;
    }

    [(BWFigCaptureStreamsMapper *)self->_streamsMapper figCaptureStreamForBWFigCaptureStream:?];
    if (![BWFigCaptureSynchronizedStreamsGroup _setProperty:*off_1E798CD08 value:?])
    {

      self->_synchronizationMaster = defaultSynchronizationMaster;
    }
  }
}

- (int)setProperty:(__CFString *)property value:(id)value
{
  specific = dispatch_get_specific(@"BWFigCaptureStreamSetPropertySetPropertyAsyncQueue");
  if (specific)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__BWFigCaptureSynchronizedStreamsGroup_setProperty_value___block_invoke;
    block[3] = &unk_1E798FE50;
    block[5] = value;
    block[6] = property;
    block[4] = self;
    dispatch_async(specific, block);
    return 0;
  }

  else
  {

    return [BWFigCaptureSynchronizedStreamsGroup _setProperty:property value:?];
  }
}

- (int)setActiveStreams:(id)streams
{
  v19 = 0;
  if ([streams count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(streams, "count")}];
  }

  else
  {
    v5 = 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [streams countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(streams);
        }

        [v5 addObject:{-[BWFigCaptureStreamsMapper figCaptureStreamForBWFigCaptureStream:](self->_streamsMapper, *(*(&v15 + 1) + 8 * v9++))}];
      }

      while (v7 != v9);
      v7 = [streams countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v11 = *off_1E798CC88;
  v12 = [(BWFigCaptureSynchronizedStreamsGroup *)self getProperty:*off_1E798CC88 error:&v19];
  if (([objc_msgSend(MEMORY[0x1E695DFD8] setWithArray:{v12), "isEqualToSet:", v10}] & 1) == 0)
  {
    v19 = [(BWFigCaptureSynchronizedStreamsGroup *)self setProperty:v11 value:v5];
    if (!v19)
    {

      self->_activeStreams = [streams copy];
    }
  }

  return v19;
}

- (id)copyProperty:(__CFString *)property error:(int *)error
{
  v13 = 0;
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v8 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    v9 = ktraceCodePrefix & 0xFFFFFFC0 | 4;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      CFHash(property);
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
    supportedProperties = self->_supportedProperties;
    if (!supportedProperties || [(NSDictionary *)supportedProperties objectForKeyedSubscript:property])
    {
      FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
    }

    v10 = -12787;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v9 && *v8 == 1)
  {
    kdebug_trace();
  }

  if (error)
  {
    *error = v10;
  }

  return v13;
}

- (id)getProperty:(__CFString *)property error:(int *)error
{
  v4 = [(BWFigCaptureSynchronizedStreamsGroup *)self copyProperty:property error:error];

  return v4;
}

- (int)setMasterStream:(id)stream slaveConfigurationsByPortType:(id)type
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v7 setObject:-[BWFigCaptureStreamsMapper figCaptureStreamForBWFigCaptureStream:](self->_streamsMapper forKeyedSubscript:{stream), *off_1E798CC50}];
  [v7 setObject:type forKeyedSubscript:*off_1E798CC58];
  LODWORD(type) = [(BWFigCaptureSynchronizedStreamsGroup *)self setProperty:*off_1E798CCA0 value:v7];

  return type;
}

- (int)setCameraControlsMasterStream:(id)stream
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(BWFigCaptureStreamsMapper *)self->_streamsMapper figCaptureStreamForBWFigCaptureStream:stream];
  v7 = *MEMORY[0x1E695E738];
  if (v6)
  {
    v7 = v6;
  }

  v8 = *off_1E798CC38;
  v11[0] = *off_1E798CC40;
  v11[1] = v8;
  v12[0] = v7;
  v12[1] = v7;
  v11[2] = *off_1E798CC48;
  v12[2] = v7;
  v9 = -[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self, "setProperty:value:", *off_1E798CCA0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3]);
  objc_autoreleasePoolPop(v5);
  return v9;
}

- (int)stop
{
  if (self->_stopSupported)
  {
    ktraceCodePrefix = self->_ktraceCodePrefix;
    v4 = MEMORY[0x1E695FF58];
    if (ktraceCodePrefix)
    {
      v5 = ktraceCodePrefix & 0xFFFFFFC0 | 8;
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
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    activeStreams = self->_activeStreams;
    v7 = [(NSArray *)activeStreams countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v49;
LABEL_8:
      v10 = 0;
      while (1)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(activeStreams);
        }

        if ([*(*(&v48 + 1) + 8 * v10) streaming])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSArray *)activeStreams countByEnumeratingWithState:&v48 objects:v47 count:16];
          if (v8)
          {
            goto LABEL_8;
          }

          goto LABEL_38;
        }
      }

      if (**(CMBaseObjectGetVTable() + 16) >= 2uLL)
      {
        v45 = 0uLL;
        v46 = 0uLL;
        v43 = 0uLL;
        v44 = 0uLL;
        v11 = self->_activeStreams;
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v44;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v43 + 1) + 8 * i) synchronizedStreamsGroupWillStop];
            }

            v13 = [(NSArray *)v11 countByEnumeratingWithState:&v43 objects:v42 count:16];
          }

          while (v13);
        }

        syncGroup = self->_syncGroup;
        v17 = *(CMBaseObjectGetVTable() + 16);
        if (*v17 >= 2uLL && (v18 = v17[1]) != 0)
        {
          v19 = v18(syncGroup);
        }

        else
        {
          v19 = -12782;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v26 = self->_activeStreams;
        v27 = [(NSArray *)v26 countByEnumeratingWithState:&v38 objects:v37 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v39;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v39 != v29)
              {
                objc_enumerationMutation(v26);
              }

              [*(*(&v38 + 1) + 8 * j) synchronizedStreamsGroupDidStop];
            }

            v28 = [(NSArray *)v26 countByEnumeratingWithState:&v38 objects:v37 count:16];
          }

          while (v28);
        }

        goto LABEL_47;
      }

      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v20 = self->_activeStreams;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * k);
            if ([(BWFigCaptureStream *)v25 streaming]&& v25 != self->_synchronizationMaster)
            {
              [(BWFigCaptureStream *)v25 stop];
            }
          }

          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v33 objects:v32 count:16];
        }

        while (v22);
      }

      if ([(BWFigCaptureStream *)self->_synchronizationMaster streaming])
      {
        [(BWFigCaptureStream *)self->_synchronizationMaster stop];
      }
    }

LABEL_38:
    v19 = 0;
LABEL_47:
    os_unfair_lock_unlock(&self->_lock);
    if (v5 && *v4 == 1)
    {
      kdebug_trace();
    }
  }

  else
  {
    [BWFigCaptureSynchronizedStreamsGroup stop];
    return -12782;
  }

  return v19;
}

- (void)invalidate
{
  ktraceCodePrefix = self->_ktraceCodePrefix;
  v4 = MEMORY[0x1E695FF58];
  if (ktraceCodePrefix)
  {
    v5 = ktraceCodePrefix & 0xFFFFFFC0 | 0xC;
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
  if (!self->_invalidated)
  {
    syncGroup = self->_syncGroup;
    if (syncGroup)
    {
      CFRelease(syncGroup);
      self->_syncGroup = 0;
    }

    self->_invalidated = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v5 && *v4 == 1)
  {

    kdebug_trace();
  }
}

- (uint64_t)_setProperty:(uint64_t)property value:(CFTypeRef)cf
{
  if (!property)
  {
    return 0;
  }

  v4 = *(property + 80);
  v5 = MEMORY[0x1E695FF58];
  if (v4)
  {
    v6 = v4 & 0xFFFFFFC0;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      CFHash(cf);
      kdebug_trace();
    }
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_lock((property + 72));
  if (*(property + 40))
  {
    v7 = 4294954511;
  }

  else
  {
    v8 = *(property + 16);
    if (!v8 || [v8 objectForKeyedSubscript:cf])
    {
      FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
    }

    v7 = 4294954509;
  }

  os_unfair_lock_unlock((property + 72));
  if (v6 && *v5 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (void)initWithFigCaptureSynchronizedStreamsGroup:(uint64_t)a3 bwFigCaptureStreams:(void *)a4 figCaptureStreams:.cold.1(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  if (a2)
  {
    CFRelease(a2);
  }

  *a4 = a3;
}

@end