@interface DTKPKTraceFileAggregator
- (BOOL)stopKtraceSessionWithError:(id *)a3;
- (DTKPKTraceFileAggregator)initWithConfig:(id)a3;
- (id)start;
- (id)stop;
- (id)swapOutCurrentDatastream:(id *)a3;
@end

@implementation DTKPKTraceFileAggregator

- (DTKPKTraceFileAggregator)initWithConfig:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DTKPKTraceFileAggregator;
  v6 = [(DTKPKTraceFileAggregator *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v7->_kperfSample = 0;
    fileStream = v7->_fileStream;
    v7->_fileStream = 0;

    v9 = os_log_create("com.apple.DTServiceHub", "Ktrace File Recording");
    logHandle = v7->_logHandle;
    v7->_logHandle = v9;
  }

  return v7;
}

- (BOOL)stopKtraceSessionWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  logHandle = self->_logHandle;
  if (os_signpost_enabled(logHandle))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_247F67000, logHandle, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Recording Lifetime", "", buf, 2u);
  }

  v6 = self->_logHandle;
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_247F67000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "End Operation", "", buf, 2u);
  }

  ktraceSession = self->_ktraceSession;
  v19 = 0;
  v8 = [(DTKTraceSessionCreator *)ktraceSession stopWithError:&v19];
  v9 = v19;
  v10 = self->_ktraceSession;
  self->_ktraceSession = 0;

  if (a3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
    if (v8)
    {
LABEL_10:
      ktraceURL = v12;
      v12 = @"Success";
      goto LABEL_16;
    }
  }

  else
  {
    if (!v9)
    {
      v9 = sub_247FC5D88(@"Failed stoping ktrace session.", -11);
    }

    v14 = v9;
    *a3 = v9;
    v12 = [v9 localizedDescription];
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (!self->_ktraceURL)
  {
    goto LABEL_17;
  }

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  [v15 removeItemAtURL:self->_ktraceURL error:0];

  ktraceURL = self->_ktraceURL;
  self->_ktraceURL = 0;
LABEL_16:

LABEL_17:
  v16 = self->_logHandle;
  if (os_signpost_enabled(v16))
  {
    *buf = 138412290;
    v21 = v12;
    _os_signpost_emit_with_name_impl(&dword_247F67000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "End Operation", "Result: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)start
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = self;
  v21 = &v21;
  v22 = &v21;
  v2 = [(DTKPConfiguration *)self->_config triggers];
  v3 = [v2 count];

  if ([(DTKPConfiguration *)v24->_config hasEnabledCountingWithManualConfiguration])
  {
    [(DTKPConfiguration *)v24->_config enabledKPCClasses];
    if (kpc_set_counting())
    {
      v4 = *__error();
      for (i = v22; i != &v21; i = i[1])
      {
        sub_247FC6A28(v25, (i + 2));
        if (!v26)
        {
          sub_247F93BE0();
        }

        (*(*v26 + 48))(v26);
        sub_247FC6B34(v25);
      }

      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"kpc_set_counting failed (%s).", strerror(v4)];
      v7 = sub_247FC5D88(v6, -6);
      goto LABEL_34;
    }
  }

  if (v3)
  {
    kperf_sample_on();
    v25[0] = &unk_285A189C0;
    v25[1] = &v24;
    v26 = v25;
    operator new();
  }

  config = v24->_config;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DTKPConfiguration *)v24->_config queryCodeSet];
    [v6 addClass:37];
    if ([(DTKPConfiguration *)v24->_config collectionMode]== 3)
    {
      if (![(DTKPConfiguration *)v24->_config hasEnabledCountingWithManualConfiguration]|| ([(DTKPConfiguration *)v24->_config enabledKPCClasses], !kpc_set_counting()))
      {
        kperf_logging_start();
        v25[0] = &unk_285A18AD0;
        v26 = v25;
        operator new();
      }

      v9 = *__error();
      for (j = v22; j != &v21; j = j[1])
      {
        sub_247FC6A28(v25, (j + 2));
        if (!v26)
        {
          sub_247F93BE0();
        }

        (*(*v26 + 48))(v26);
        sub_247FC6B34(v25);
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"kpc_set_counting failed (%s).", strerror(v9)];
      v17 = sub_247FC5D88(v15, -6);
    }

    else
    {
      v12 = [v6 createFilterMask:0];
      v20 = 0;
      v13 = [(DTKPKTraceFileAggregator *)v24 startKtraceSession:v12 useExisting:0 outputFileURL:&v20];
      v14 = v20;
      v15 = v20;
      objc_storeStrong(&v24->_ktraceURL, v14);
      [DTKPKDebugCodeSet releaseFilterMask:v12];
      if (!v13)
      {
        v7 = 0;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }

      for (k = v22; k != &v21; k = k[1])
      {
        sub_247FC6A28(v25, (k + 2));
        if (!v26)
        {
          sub_247F93BE0();
        }

        (*(*v26 + 48))(v26);
        sub_247FC6B34(v25);
      }

      v17 = sub_247FC5D88(@"Failed starting ktrace session.", -11);
    }

    v7 = v17;
    goto LABEL_33;
  }

  for (m = v22; m != &v21; m = m[1])
  {
    sub_247FC6A28(v25, (m + 2));
    if (!v26)
    {
      sub_247F93BE0();
    }

    (*(*v26 + 48))(v26);
    sub_247FC6B34(v25);
  }

  v7 = sub_247FC5D88(@"DTKPKTraceFileAggregator can only work with DTKPKperfConfiguration.", -11);
LABEL_35:
  sub_247FC6AC0(&v21);
  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)stop
{
  if ([(DTKPConfiguration *)self->_config collectionMode]== 3)
  {
    v3 = [(DTKPConfiguration *)self->_config queryCodeSet];
    [v3 addClass:37];
    v4 = [v3 createFilterMask:0];
    v14 = 0;
    [(DTKPKTraceFileAggregator *)self startKtraceSession:v4 useExisting:1 outputFileURL:&v14];
    v5 = v14;
    v6 = v14;
    objc_storeStrong(&self->_ktraceURL, v5);
    [DTKPKDebugCodeSet releaseFilterMask:v4];

    v7 = 0;
  }

  else
  {
    v13 = 0;
    [(DTKPKTraceFileAggregator *)self stopKtraceSessionWithError:&v13];
    v7 = v13;
  }

  if (self->_kperfSample)
  {
    kperf_sample_off();
  }

  if ([(DTKPConfiguration *)self->_config hasEnabledCounting])
  {
    kpc_set_counting();
    config_count = kpc_get_config_count();
    v9 = malloc_type_calloc(8uLL, config_count, 0x100004000313F17uLL);
    if (v9)
    {
      kpc_set_config();
      kpc_set_period();
      free(v9);
    }

    v10 = malloc_type_calloc(4uLL, config_count, 0x100004052888210uLL);
    if (v10)
    {
      kpc_set_actionid();
      free(v10);
    }
  }

  if ([(DTKPConfiguration *)self->_config collectionMode]== 3)
  {
    v11 = kperf_logging_stop();
    MEMORY[0x24C1C3750](v11);
  }

  kperf_reset();

  return v7;
}

- (id)swapOutCurrentDatastream:(id *)a3
{
  if (self->_ktraceURL)
  {
    fileStream = self->_fileStream;
    if (!fileStream)
    {
      v6 = [[DVTFileStream alloc] initWithURL:self->_ktraceURL];
      v7 = self->_fileStream;
      self->_fileStream = v6;

      fileStream = self->_fileStream;
    }

    v8 = fileStream;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end