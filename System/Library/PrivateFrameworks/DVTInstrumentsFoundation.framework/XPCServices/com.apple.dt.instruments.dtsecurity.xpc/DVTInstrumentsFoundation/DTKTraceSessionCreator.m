@interface DTKTraceSessionCreator
+ (id)getDefaultedRemotePath:(int *)a3;
- (BOOL)stopWithError:(id *)a3;
- (DTKTraceSessionCreator)initWithFD:(int)a3 configuration:(id)a4 error:(id *)a5;
- (id)_providerTopErrors;
@end

@implementation DTKTraceSessionCreator

- (DTKTraceSessionCreator)initWithFD:(int)a3 configuration:(id)a4 error:(id *)a5
{
  v7 = a4;
  v52.receiver = self;
  v52.super_class = DTKTraceSessionCreator;
  v8 = [(DTKTraceSessionCreator *)&v52 init];
  if (!v8)
  {
    goto LABEL_40;
  }

  v9 = [v7 bitmap];
  if (!v9)
  {
    v12 = a5 != 0;
LABEL_9:
    v15 = ktrace_session_create();
    ktrace_session_set_event_names_enabled();
    ktrace_session_set_default_event_names_enabled();
    ktrace_set_only_do_time_sensitive_postprocess();
    if ([v7 collectionInterval])
    {
      [v7 collectionInterval];
    }

    ktrace_set_collection_interval();
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = [v7 bitmap];
    if (v16)
    {
      v17 = [v7 bitmap];
      v18 = v17;
      [v17 bytes];
      v19 = ktrace_events_filter_bitmap();
    }

    else
    {
      v19 = ktrace_events_all();
    }

    if (v19)
    {
      if (v12)
      {
        v59 = NSLocalizedDescriptionKey;
        v20 = [NSString stringWithFormat:@"error: %d", v19];
        v60 = v20;
        v21 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        *a5 = [NSError errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v21];
      }

LABEL_18:
      ktrace_session_destroy();
      goto LABEL_19;
    }

    if ([v7 useExisting])
    {
      v23 = ktrace_set_use_existing();
      if (v23)
      {
        if (v12)
        {
          v57 = NSLocalizedDescriptionKey;
          v24 = [NSString stringWithFormat:@"error: %d", v23];
          v58 = v24;
          v25 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *a5 = [NSError errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v25];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v26 = objc_opt_new();
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100004074;
      v50 = sub_100004084;
      v51 = 0;
      v27 = [v7 providers];
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10000408C;
      v42[3] = &unk_10001D010;
      v44 = &v46;
      v45 = v15;
      v41 = v26;
      v43 = v41;
      [v27 enumerateKeysAndObjectsUsingBlock:v42];

      v28 = v47[5];
      if (v28)
      {
        v55 = NSLocalizedDescriptionKey;
        v29 = [NSString stringWithFormat:@"Failed to instantiate data providers"];
        v56 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        providerLoggers = [NSError errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:1 userInfo:v30];

        if (v12)
        {
          v32 = providerLoggers;
          *a5 = providerLoggers;
        }

        ktrace_session_destroy();
      }

      else
      {
        v33 = v41;
        providerLoggers = v8->_providerLoggers;
        v8->_providerLoggers = v33;
      }

      _Block_object_dispose(&v46, 8);
      if (v28)
      {
        goto LABEL_19;
      }
    }

    v34 = dispatch_semaphore_create(0);
    v35 = v34;
    ktrace_set_completion_handler();
    objc_storeStrong(&v8->_stoppingSemaphore, v34);
    started = ktrace_start_writing_fd();
    if (started)
    {
      if (v12)
      {
        v53 = NSLocalizedDescriptionKey;
        v37 = [NSString stringWithFormat:@"error: %d", started];
        v54 = v37;
        v38 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        *a5 = [NSError errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v38];
      }

      goto LABEL_19;
    }

    if ([v7 useExisting])
    {
      dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
      if (v8->_ktraceSession)
      {
        ktrace_session_destroy();
      }

      stoppingSemaphore = v8->_stoppingSemaphore;
      v8->_ktraceSession = 0;
      v8->_stoppingSemaphore = 0;
    }

    v8->_ktraceSession = v15;

LABEL_40:
    v22 = v8;
    goto LABEL_41;
  }

  v10 = [v7 bitmap];
  v11 = [v10 length] != 0x2000;

  v12 = a5 != 0;
  if (a5)
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

  v61 = NSLocalizedDescriptionKey;
  v62 = @"Invalid tracing configuration bitmap";
  v14 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  *a5 = [NSError errorWithDomain:@"DTKTraceSessionCreator" code:-1 userInfo:v14];

LABEL_19:
  v22 = 0;
LABEL_41:

  return v22;
}

- (id)_providerTopErrors
{
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_providerLoggers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) errors];
        if ([v9 count])
        {
          v10 = [v9 firstObject];
          [v3 addObject:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)stopWithError:(id *)a3
{
  if (!self->_ktraceSession)
  {
    return 1;
  }

  if (!self->_stoppingSemaphore)
  {
    sub_100012DD8();
  }

  ktrace_end();
  dispatch_semaphore_wait(self->_stoppingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  ktraceSession = self->_ktraceSession;
  ktrace_session_destroy();
  self->_ktraceSession = 0;
  v6 = [(DTKTraceSessionCreator *)self _providerTopErrors];
  if (![v6 count])
  {

    return 1;
  }

  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * i) userInfo];
        v14 = [v13 objectForKeyedSubscript:@"DVTKtraceSessionProviderName"];

        if (v14)
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v26[0] = NSLocalizedDescriptionKey;
  v15 = [v7 allObjects];
  v16 = [v15 componentsJoinedByString:{@", "}];
  v17 = [NSString stringWithFormat:@"Data Providers emitted errors: %@", v16];
  v26[1] = @"DVTKtraceSessionProviderErrorsArrayKey";
  v27[0] = v17;
  v27[1] = v8;
  v18 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v19 = [NSError errorWithDomain:@"com.apple.dt.ktrace_recording.provider" code:2 userInfo:v18];

  if (a3)
  {
    v20 = v19;
    *a3 = v19;
  }

  return 0;
}

+ (id)getDefaultedRemotePath:(int *)a3
{
  if (!a3)
  {
    sub_100012E04(a2, a1);
  }

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"instrumentsXXXXXX.ktrace"];

  v6 = strdup([v5 fileSystemRepresentation]);
  *a3 = mkstemps(v6, 7);
  v7 = [NSString stringWithUTF8String:v6];
  v8 = [NSURL fileURLWithPath:v7];

  free(v6);

  return v8;
}

@end