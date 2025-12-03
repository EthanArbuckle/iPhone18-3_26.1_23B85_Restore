@interface DTKTraceSessionCreator
+ (id)getDefaultedRemotePath:(int *)path;
- (BOOL)stopWithError:(id *)error;
- (DTKTraceSessionCreator)initWithFD:(int)d configuration:(id)configuration error:(id *)error;
- (id)_providerTopErrors;
@end

@implementation DTKTraceSessionCreator

- (DTKTraceSessionCreator)initWithFD:(int)d configuration:(id)configuration error:(id *)error
{
  v68[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v58.receiver = self;
  v58.super_class = DTKTraceSessionCreator;
  v8 = [(DTKTraceSessionCreator *)&v58 init];
  if (!v8)
  {
    goto LABEL_40;
  }

  bitmap = [configurationCopy bitmap];
  if (!bitmap)
  {
    v12 = error != 0;
LABEL_9:
    v16 = ktrace_session_create();
    ktrace_session_set_event_names_enabled();
    ktrace_session_set_default_event_names_enabled();
    ktrace_set_only_do_time_sensitive_postprocess();
    if ([configurationCopy collectionInterval])
    {
      [configurationCopy collectionInterval];
    }

    ktrace_set_collection_interval();
    if (!v16)
    {
      goto LABEL_19;
    }

    bitmap2 = [configurationCopy bitmap];
    if (bitmap2)
    {
      bitmap3 = [configurationCopy bitmap];
      v19 = bitmap3;
      [bitmap3 bytes];
      v20 = ktrace_events_filter_bitmap();
    }

    else
    {
      v20 = ktrace_events_all();
    }

    if (v20)
    {
      if (v12)
      {
        v21 = MEMORY[0x277CCA9B8];
        v65 = *MEMORY[0x277CCA450];
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", v20];
        v66 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        *error = [v21 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v23];
      }

LABEL_18:
      ktrace_session_destroy();
      goto LABEL_19;
    }

    if ([configurationCopy useExisting])
    {
      v25 = ktrace_set_use_existing();
      if (v25)
      {
        if (v12)
        {
          v26 = MEMORY[0x277CCA9B8];
          v63 = *MEMORY[0x277CCA450];
          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", v25];
          v64 = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          *error = [v26 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v28];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v29 = objc_opt_new();
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = sub_247F70E14;
      v56 = sub_247F70E24;
      v57 = 0;
      providers = [configurationCopy providers];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_247F70E2C;
      v48[3] = &unk_278EF1490;
      v50 = &v52;
      v51 = v16;
      v47 = v29;
      v49 = v47;
      [providers enumerateKeysAndObjectsUsingBlock:v48];

      v31 = v53[5];
      if (v31)
      {
        v32 = MEMORY[0x277CCA9B8];
        v61 = *MEMORY[0x277CCA450];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to instantiate data providers"];
        v62 = v33;
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        providerLoggers = [v32 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v34];

        if (v12)
        {
          v36 = providerLoggers;
          *error = providerLoggers;
        }

        ktrace_session_destroy();
      }

      else
      {
        v37 = v47;
        providerLoggers = v8->_providerLoggers;
        v8->_providerLoggers = v37;
      }

      _Block_object_dispose(&v52, 8);
      if (v31)
      {
        goto LABEL_19;
      }
    }

    v38 = dispatch_semaphore_create(0);
    v39 = v38;
    ktrace_set_completion_handler();
    objc_storeStrong(&v8->_stoppingSemaphore, v38);
    started = ktrace_start_writing_fd();
    if (started)
    {
      if (v12)
      {
        v41 = MEMORY[0x277CCA9B8];
        v59 = *MEMORY[0x277CCA450];
        started = [MEMORY[0x277CCACA8] stringWithFormat:@"error: %d", started];
        v60 = started;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        *error = [v41 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v43];
      }

      goto LABEL_19;
    }

    if ([configurationCopy useExisting])
    {
      dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      if (v8->_ktraceSession)
      {
        ktrace_session_destroy();
      }

      stoppingSemaphore = v8->_stoppingSemaphore;
      v8->_ktraceSession = 0;
      v8->_stoppingSemaphore = 0;
    }

    v8->_ktraceSession = v16;

LABEL_40:
    v24 = v8;
    goto LABEL_41;
  }

  bitmap4 = [configurationCopy bitmap];
  v11 = [bitmap4 length] != 0x2000;

  v12 = error != 0;
  if (error)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CCA9B8];
  v67 = *MEMORY[0x277CCA450];
  v68[0] = @"Invalid tracing configuration bitmap";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
  *error = [v14 errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v15];

LABEL_19:
  v24 = 0;
LABEL_41:

  v45 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_providerTopErrors
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_providerLoggers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        errors = [*(*(&v13 + 1) + 8 * i) errors];
        if ([errors count])
        {
          firstObject = [errors firstObject];
          [v3 addObject:firstObject];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)stopWithError:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_ktraceSession)
  {
    goto LABEL_17;
  }

  if (!self->_stoppingSemaphore)
  {
    sub_24802C280();
  }

  ktrace_end();
  dispatch_semaphore_wait(self->_stoppingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  ktraceSession = self->_ktraceSession;
  ktrace_session_destroy();
  self->_ktraceSession = 0;
  _providerTopErrors = [(DTKTraceSessionCreator *)self _providerTopErrors];
  if (![_providerTopErrors count])
  {

LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = _providerTopErrors;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        userInfo = [*(*(&v25 + 1) + 8 * i) userInfo];
        v14 = [userInfo objectForKeyedSubscript:@"DVTKtraceSessionProviderName"];

        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }

  v15 = MEMORY[0x277CCA9B8];
  v29[0] = *MEMORY[0x277CCA450];
  v16 = MEMORY[0x277CCACA8];
  allObjects = [v7 allObjects];
  v18 = [allObjects componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"Data Providers emitted errors: %@", v18];
  v29[1] = @"DVTKtraceSessionProviderErrorsArrayKey";
  v30[0] = v19;
  v30[1] = v8;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v21 = [v15 errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:2 userInfo:v20];

  if (error)
  {
    v22 = v21;
    *error = v21;
  }

  result = 0;
LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)getDefaultedRemotePath:(int *)path
{
  if (!path)
  {
    sub_24802C2AC(a2, self);
  }

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"instrumentsXXXXXX.ktrace"];

  v6 = strdup([v5 fileSystemRepresentation]);
  *path = mkstemps(v6, 7);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v9 = [v7 fileURLWithPath:v8];

  free(v6);

  return v9;
}

@end