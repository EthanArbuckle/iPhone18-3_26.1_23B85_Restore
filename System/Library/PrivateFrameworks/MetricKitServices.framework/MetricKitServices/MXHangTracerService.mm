@interface MXHangTracerService
+ (id)sharedHangTracerService;
- (BOOL)_updateService;
- (BOOL)startService;
- (BOOL)stopService;
- (MXHangTracerService)init;
- (id)getDiagnosticsForClient:(id)client dateString:(id)string;
- (void)unarchiveHangTracerDataForDateString:(id)string;
@end

@implementation MXHangTracerService

+ (id)sharedHangTracerService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MXHangTracerService_sharedHangTracerService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedHangTracerService_onceToken != -1)
  {
    dispatch_once(&sharedHangTracerService_onceToken, block);
  }

  v2 = sharedHangTracerService_sharedHangTracerService;

  return v2;
}

uint64_t __46__MXHangTracerService_sharedHangTracerService__block_invoke(uint64_t a1)
{
  sharedHangTracerService_sharedHangTracerService = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXHangTracerService)init
{
  v11.receiver = self;
  v11.super_class = MXHangTracerService;
  v2 = [(MXService *)&v11 initWithSourceID:3];
  if (v2)
  {
    v3 = os_log_create("com.apple.metrickit.service.hangtracer", &unk_258D9C0BB);
    MXHangTracerServiceLogHandle = v2->_MXHangTracerServiceLogHandle;
    v2->_MXHangTracerServiceLogHandle = v3;

    if (!v2->_MXHangTracerServiceLogHandle)
    {
      objc_storeStrong(&v2->_MXHangTracerServiceLogHandle, MEMORY[0x277D86220]);
    }

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.metrickitd.service.hangtracer.requestqueue", v5);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    hangTracerDataPaths = v2->_hangTracerDataPaths;
    v2->_hangTracerDataPaths = v8;
  }

  return v2;
}

- (BOOL)startService
{
  v8.receiver = self;
  v8.super_class = MXHangTracerService;
  if (![(MXService *)&v8 startService])
  {
    return [(MXService *)self isStarted];
  }

  MXHangTracerServiceLogHandle = self->_MXHangTracerServiceLogHandle;
  if (os_log_type_enabled(MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258D95000, MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Starting hang tracer service.", buf, 2u);
  }

  if ([(MXHangTracerService *)self _updateService])
  {
    return 1;
  }

  v5 = self->_MXHangTracerServiceLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(MXHangTracerService *)v5 startService];
  }

  v6.receiver = self;
  v6.super_class = MXHangTracerService;
  [(MXService *)&v6 stopService];
  return 0;
}

- (BOOL)stopService
{
  unarchivedHangTracerData = self->_unarchivedHangTracerData;
  self->_unarchivedHangTracerData = 0;

  [(MXService *)self setCurrentClient:0];
  v7.receiver = self;
  v7.super_class = MXHangTracerService;
  if ([(MXService *)&v7 stopService])
  {
    MXHangTracerServiceLogHandle = self->_MXHangTracerServiceLogHandle;
    if (os_log_type_enabled(MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D95000, MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Stopping hang tracer service.", v6, 2u);
    }
  }

  return ![(MXService *)self isStarted];
}

- (BOOL)_updateService
{
  v23 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_hangTracerDataPaths removeAllObjects];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[MXUtilities containerPath];
  v5 = [&unk_286A1CB00 objectAtIndexedSubscript:3];
  v6 = [v4 stringByAppendingPathComponent:v5];
  currentClient = [(MXService *)self currentClient];
  v8 = [v6 stringByAppendingPathComponent:currentClient];
  v20 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:v8 error:&v20];
  v10 = v20;

  if (v10)
  {
    MXHangTracerServiceLogHandle = self->_MXHangTracerServiceLogHandle;
    if (os_log_type_enabled(MXHangTracerServiceLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXSpaceAttributionService *)v10 _updateService];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[cd] 'diag-log-'"];
    v13 = [v9 filteredArrayUsingPredicate:v12];
    v14 = [v13 mutableCopy];
    hangTracerDataPaths = self->_hangTracerDataPaths;
    self->_hangTracerDataPaths = v14;

    v16 = self->_MXHangTracerServiceLogHandle;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_hangTracerDataPaths;
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_258D95000, v16, OS_LOG_TYPE_DEFAULT, "Found log files: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (void)unarchiveHangTracerDataForDateString:(id)string
{
  v55 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  stringCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF CONTAINS %@", stringCopy];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  unarchivedHangTracerData = self->_unarchivedHangTracerData;
  self->_unarchivedHangTracerData = v5;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = stringCopy;
  obj = [(NSMutableArray *)self->_hangTracerDataPaths filteredArrayUsingPredicate:stringCopy];
  v39 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v39)
  {
    v38 = *v43;
    do
    {
      v7 = 0;
      do
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * v7);
        v40 = v7;
        MXHangTracerServiceLogHandle = self->_MXHangTracerServiceLogHandle;
        if (os_log_type_enabled(MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v47 = v8;
          v48 = 2112;
          v49 = stringCopy;
          _os_log_impl(&dword_258D95000, MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Found log file: %@ for date: %@", buf, 0x16u);
        }

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v11 = +[MXUtilities containerPath];
        v12 = [&unk_286A1CB18 objectAtIndexedSubscript:3];
        v13 = [v11 stringByAppendingPathComponent:v12];
        currentClient = [(MXService *)self currentClient];
        v15 = [v13 stringByAppendingPathComponent:currentClient];
        v16 = [v15 stringByAppendingPathComponent:v8];
        v17 = [defaultManager contentsAtPath:v16];

        v18 = v17;
        if (v17)
        {
          v19 = MEMORY[0x277CCAAC8];
          v20 = objc_opt_class();
          v41 = 0;
          v21 = [v19 unarchivedObjectOfClass:v20 fromData:v17 error:&v41];
          v22 = v41;
          if (v22)
          {
            v23 = self->_MXHangTracerServiceLogHandle;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v22;
              _os_log_error_impl(&dword_258D95000, v23, OS_LOG_TYPE_ERROR, "Failed to unarchive hang data: %@", buf, 0xCu);
            }
          }

          else
          {
            v25 = +[MXUtilities getServicesDateFormatter];
            datestamp = [v21 datestamp];
            v27 = [v25 stringFromDate:datestamp];

            if ([stringCopy isEqualToString:v27] && (v28 = objc_msgSend(v21, "sourceID"), v28 == -[MXService sourceID](self, "sourceID")))
            {
              v29 = self->_MXHangTracerServiceLogHandle;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_258D95000, v29, OS_LOG_TYPE_DEFAULT, "Log file consistent, adding client data.", buf, 2u);
              }

              [(NSMutableArray *)self->_unarchivedHangTracerData addObject:v21];
            }

            else
            {
              v30 = self->_MXHangTracerServiceLogHandle;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = v30;
                sourceID = [v21 sourceID];
                sourceID2 = [(MXService *)self sourceID];
                *buf = 134218754;
                v47 = sourceID;
                v48 = 2048;
                v49 = sourceID2;
                v50 = 2112;
                v51 = v27;
                v52 = 2112;
                v53 = stringCopy;
                _os_log_error_impl(&dword_258D95000, v31, OS_LOG_TYPE_ERROR, "Bad source type: (%ld, expected %ld) or date string: (%@, expected %@)", buf, 0x2Au);
              }
            }
          }
        }

        else
        {
          v24 = self->_MXHangTracerServiceLogHandle;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v47 = v8;
            _os_log_debug_impl(&dword_258D95000, v24, OS_LOG_TYPE_DEBUG, "Failed to read hang tracer data contents: %@", buf, 0xCu);
          }
        }

        v7 = v40 + 1;
      }

      while (v39 != v40 + 1);
      v39 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v39);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)getDiagnosticsForClient:(id)client dateString:(id)string
{
  v44 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  stringCopy = string;
  if (!self->_unarchivedHangTracerData)
  {
    MXHangTracerServiceLogHandle = self->_MXHangTracerServiceLogHandle;
    if (os_log_type_enabled(MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D95000, MXHangTracerServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Unarchived hang tracer data not yet set, running unarchive.", buf, 2u);
    }

    [(MXHangTracerService *)self unarchiveHangTracerDataForDateString:stringCopy];
  }

  v31 = stringCopy;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = self->_unarchivedHangTracerData;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        metrics = [v15 metrics];
        v17 = [metrics objectForKey:clientCopy];

        if (v17)
        {
          metrics2 = [v15 metrics];
          v19 = [metrics2 objectForKey:clientCopy];
          [v9 addObject:v19];
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v20 = self->_MXHangTracerServiceLogHandle;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = clientCopy;
      _os_log_impl(&dword_258D95000, v20, OS_LOG_TYPE_DEFAULT, "Found hang diagnostics for client: %@", buf, 0xCu);
    }

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [(MXService *)self pruneSourceData:*(*(&v32 + 1) + 8 * j)];
          if (v27)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    v28 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v21];
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

@end