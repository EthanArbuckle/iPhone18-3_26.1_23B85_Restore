@interface MXPowerlogService
+ (id)sharedPowerlogService;
- (BOOL)_updateService;
- (BOOL)startService;
- (BOOL)stopService;
- (MXPowerlogService)init;
- (id)getMetricsForClient:(id)a3;
- (void)unarchivePowerlogData;
@end

@implementation MXPowerlogService

+ (id)sharedPowerlogService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MXPowerlogService_sharedPowerlogService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedPowerlogService_onceToken != -1)
  {
    dispatch_once(&sharedPowerlogService_onceToken, block);
  }

  v2 = sharedPowerlogService_sharedPowerlogService;

  return v2;
}

uint64_t __42__MXPowerlogService_sharedPowerlogService__block_invoke(uint64_t a1)
{
  sharedPowerlogService_sharedPowerlogService = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXPowerlogService)init
{
  v11.receiver = self;
  v11.super_class = MXPowerlogService;
  v2 = [(MXService *)&v11 initWithSourceID:2];
  if (v2)
  {
    v3 = os_log_create("com.apple.metrickit.service.powerlog", &unk_258D9C0BB);
    MXPowerLogServiceLogHandle = v2->_MXPowerLogServiceLogHandle;
    v2->_MXPowerLogServiceLogHandle = v3;

    if (!v2->_MXPowerLogServiceLogHandle)
    {
      objc_storeStrong(&v2->_MXPowerLogServiceLogHandle, MEMORY[0x277D86220]);
    }

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.metrickitd.service.powerlog.requestqueue", v5);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    powerlogDataPaths = v2->_powerlogDataPaths;
    v2->_powerlogDataPaths = v8;
  }

  return v2;
}

- (BOOL)startService
{
  v8.receiver = self;
  v8.super_class = MXPowerlogService;
  if (![(MXService *)&v8 startService])
  {
    return [(MXService *)self isStarted];
  }

  MXPowerLogServiceLogHandle = self->_MXPowerLogServiceLogHandle;
  if (os_log_type_enabled(MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258D95000, MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Starting powerlog service.", buf, 2u);
  }

  if ([(MXPowerlogService *)self _updateService])
  {
    return 1;
  }

  v5 = self->_MXPowerLogServiceLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(MXPowerlogService *)v5 startService];
  }

  v6.receiver = self;
  v6.super_class = MXPowerlogService;
  [(MXService *)&v6 stopService];
  return 0;
}

- (BOOL)stopService
{
  unarchivedPowerlogData = self->_unarchivedPowerlogData;
  self->_unarchivedPowerlogData = 0;

  v7.receiver = self;
  v7.super_class = MXPowerlogService;
  if ([(MXService *)&v7 stopService])
  {
    MXPowerLogServiceLogHandle = self->_MXPowerLogServiceLogHandle;
    if (os_log_type_enabled(MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D95000, MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Stopping powerlog service.", v6, 2u);
    }
  }

  return ![(MXService *)self isStarted];
}

- (BOOL)_updateService
{
  v21 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_powerlogDataPaths removeAllObjects];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[MXUtilities containerPath];
  v5 = [&unk_286A1CB30 objectAtIndexedSubscript:2];
  v6 = [v4 stringByAppendingPathComponent:v5];
  v18 = 0;
  v7 = [v3 contentsOfDirectoryAtPath:v6 error:&v18];
  v8 = v18;

  if (v8)
  {
    MXPowerLogServiceLogHandle = self->_MXPowerLogServiceLogHandle;
    if (os_log_type_enabled(MXPowerLogServiceLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXSpaceAttributionService *)v8 _updateService];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[cd] 'log-'"];
    v11 = [v7 filteredArrayUsingPredicate:v10];
    v12 = [v11 mutableCopy];
    powerlogDataPaths = self->_powerlogDataPaths;
    self->_powerlogDataPaths = v12;

    v14 = self->_MXPowerLogServiceLogHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_powerlogDataPaths;
      *buf = 138412290;
      v20 = v15;
      _os_log_impl(&dword_258D95000, v14, OS_LOG_TYPE_DEFAULT, "Found log files: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

- (id)getMetricsForClient:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = self;
  unarchivedPowerlogData = self->_unarchivedPowerlogData;
  if (!unarchivedPowerlogData)
  {
    MXPowerLogServiceLogHandle = self->_MXPowerLogServiceLogHandle;
    if (os_log_type_enabled(v27->_MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D95000, MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Unarchived powerlog data not yet set, running unarchive.", buf, 2u);
    }

    [(MXPowerlogService *)v27 unarchivePowerlogData];
    unarchivedPowerlogData = v27->_unarchivedPowerlogData;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = unarchivedPowerlogData;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 metrics];
        v15 = [v14 objectForKey:v4];

        if (v15)
        {
          v16 = +[MXUtilities getServicesDateFormatter];
          v17 = [v13 datestamp];
          v18 = [v16 stringFromDate:v17];

          v19 = [v13 metrics];
          v20 = [v19 objectForKey:v4];
          v21 = [(MXService *)v27 pruneSourceData:v20];
          [v5 setObject:v21 forKeyedSubscript:v18];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  v22 = v5;
  if ([v5 count])
  {
    v23 = v5;
  }

  else
  {
    v24 = v27->_MXPowerLogServiceLogHandle;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_258D95000, v24, OS_LOG_TYPE_DEFAULT, "No data for client: %@", buf, 0xCu);
    }

    v23 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)unarchivePowerlogData
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  unarchivedPowerlogData = self->_unarchivedPowerlogData;
  self->_unarchivedPowerlogData = v3;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_powerlogDataPaths;
  v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v31)
  {
    v30 = *v36;
    *&v5 = 134218240;
    v28 = v5;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        MXPowerLogServiceLogHandle = self->_MXPowerLogServiceLogHandle;
        if (os_log_type_enabled(MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v7;
          _os_log_impl(&dword_258D95000, MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Found log file: %@", buf, 0xCu);
        }

        v9 = [MEMORY[0x277CCAA00] defaultManager];
        v10 = +[MXUtilities containerPath];
        v11 = [&unk_286A1CB48 objectAtIndexedSubscript:2];
        v12 = [v10 stringByAppendingPathComponent:v11];
        v13 = [v12 stringByAppendingPathComponent:v7];
        v14 = [v9 contentsAtPath:v13];

        if (v14)
        {
          v15 = MEMORY[0x277CCAAC8];
          v16 = objc_opt_class();
          v34 = 0;
          v17 = [v15 unarchivedObjectOfClass:v16 fromData:v14 error:&v34];
          v18 = v34;
          if (v18)
          {
            v19 = self->_MXPowerLogServiceLogHandle;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v40 = v18;
              _os_log_error_impl(&dword_258D95000, v19, OS_LOG_TYPE_ERROR, "Failed to unarchive powerlog data: %@", buf, 0xCu);
            }
          }

          else
          {
            v21 = [v17 sourceID];
            v22 = [(MXService *)self sourceID];
            v23 = self->_MXPowerLogServiceLogHandle;
            if (v21 == v22)
            {
              if (os_log_type_enabled(self->_MXPowerLogServiceLogHandle, OS_LOG_TYPE_DEBUG))
              {
                [(MXSpaceAttributionService *)&v32 unarchiveSpaceAttributionData];
              }

              [(NSMutableArray *)self->_unarchivedPowerlogData addObject:v17];
            }

            else if (os_log_type_enabled(self->_MXPowerLogServiceLogHandle, OS_LOG_TYPE_ERROR))
            {
              v24 = v23;
              v25 = [v17 sourceID];
              v26 = [(MXService *)self sourceID];
              *buf = v28;
              v40 = v25;
              v41 = 2048;
              v42 = v26;
              _os_log_error_impl(&dword_258D95000, v24, OS_LOG_TYPE_ERROR, "Bad source type: (%ld, expected %ld)", buf, 0x16u);
            }
          }
        }

        else
        {
          v20 = self->_MXPowerLogServiceLogHandle;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v7;
            _os_log_debug_impl(&dword_258D95000, v20, OS_LOG_TYPE_DEBUG, "Failed to read powerlog data contents: %@", buf, 0xCu);
          }
        }
      }

      v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v31);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end