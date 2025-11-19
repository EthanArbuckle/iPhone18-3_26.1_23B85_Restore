@interface MXSpaceAttributionService
+ (id)sharedSpaceAttributionService;
- (BOOL)_updateService;
- (BOOL)startService;
- (BOOL)stopService;
- (MXSpaceAttributionService)init;
- (id)getMetricsForClient:(id)a3;
- (void)_updateService;
- (void)unarchiveSpaceAttributionData;
@end

@implementation MXSpaceAttributionService

+ (id)sharedSpaceAttributionService
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MXSpaceAttributionService_sharedSpaceAttributionService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSpaceAttributionService_onceToken != -1)
  {
    dispatch_once(&sharedSpaceAttributionService_onceToken, block);
  }

  v2 = sharedSpaceAttributionService_sharedSpaceAttributionService;

  return v2;
}

uint64_t __58__MXSpaceAttributionService_sharedSpaceAttributionService__block_invoke(uint64_t a1)
{
  sharedSpaceAttributionService_sharedSpaceAttributionService = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXSpaceAttributionService)init
{
  v11.receiver = self;
  v11.super_class = MXSpaceAttributionService;
  v2 = [(MXService *)&v11 initWithSourceID:6];
  if (v2)
  {
    v3 = os_log_create("com.apple.metrickit.service.spaceattribution", &unk_258D9C0BB);
    MXSpaceAttributionServiceLogHandle = v2->_MXSpaceAttributionServiceLogHandle;
    v2->_MXSpaceAttributionServiceLogHandle = v3;

    if (!v2->_MXSpaceAttributionServiceLogHandle)
    {
      objc_storeStrong(&v2->_MXSpaceAttributionServiceLogHandle, MEMORY[0x277D86220]);
    }

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.metrickitd.service.spaceattribution.requestqueue", v5);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    spaceAttributionDataPaths = v2->_spaceAttributionDataPaths;
    v2->_spaceAttributionDataPaths = v8;
  }

  return v2;
}

- (BOOL)startService
{
  v8.receiver = self;
  v8.super_class = MXSpaceAttributionService;
  if (![(MXService *)&v8 startService])
  {
    return [(MXService *)self isStarted];
  }

  MXSpaceAttributionServiceLogHandle = self->_MXSpaceAttributionServiceLogHandle;
  if (os_log_type_enabled(MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258D95000, MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Starting space attribution service.", buf, 2u);
  }

  if ([(MXSpaceAttributionService *)self _updateService])
  {
    return 1;
  }

  v5 = self->_MXSpaceAttributionServiceLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(MXSpaceAttributionService *)v5 startService];
  }

  v6.receiver = self;
  v6.super_class = MXSpaceAttributionService;
  [(MXService *)&v6 stopService];
  return 0;
}

- (BOOL)stopService
{
  unarchivedSpaceAttributionData = self->_unarchivedSpaceAttributionData;
  self->_unarchivedSpaceAttributionData = 0;

  [(MXService *)self setCurrentClient:0];
  v7.receiver = self;
  v7.super_class = MXSpaceAttributionService;
  if ([(MXService *)&v7 stopService])
  {
    MXSpaceAttributionServiceLogHandle = self->_MXSpaceAttributionServiceLogHandle;
    if (os_log_type_enabled(MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_258D95000, MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Stopping space attribution service.", v6, 2u);
    }
  }

  return ![(MXService *)self isStarted];
}

- (BOOL)_updateService
{
  v23 = *MEMORY[0x277D85DE8];
  [(NSMutableArray *)self->_spaceAttributionDataPaths removeAllObjects];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = +[MXUtilities containerPath];
  v5 = [&unk_286A1CA88 objectAtIndexedSubscript:6];
  v6 = [v4 stringByAppendingPathComponent:v5];
  v7 = [(MXService *)self currentClient];
  v8 = [v6 stringByAppendingPathComponent:v7];
  v20 = 0;
  v9 = [v3 contentsOfDirectoryAtPath:v8 error:&v20];
  v10 = v20;

  if (v10)
  {
    MXSpaceAttributionServiceLogHandle = self->_MXSpaceAttributionServiceLogHandle;
    if (os_log_type_enabled(MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXSpaceAttributionService *)v10 _updateService];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF BEGINSWITH[cd] 'log-'"];
    v13 = [v9 filteredArrayUsingPredicate:v12];
    v14 = [v13 mutableCopy];
    spaceAttributionDataPaths = self->_spaceAttributionDataPaths;
    self->_spaceAttributionDataPaths = v14;

    v16 = self->_MXSpaceAttributionServiceLogHandle;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_spaceAttributionDataPaths;
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_258D95000, v16, OS_LOG_TYPE_DEFAULT, "Found log files: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (void)unarchiveSpaceAttributionData
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_258D95000, log, OS_LOG_TYPE_DEBUG, "Log file consistent, assigning client data.", buf, 2u);
}

- (id)getMetricsForClient:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = self;
  unarchivedSpaceAttributionData = self->_unarchivedSpaceAttributionData;
  if (!unarchivedSpaceAttributionData)
  {
    MXSpaceAttributionServiceLogHandle = self->_MXSpaceAttributionServiceLogHandle;
    if (os_log_type_enabled(v27->_MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_258D95000, MXSpaceAttributionServiceLogHandle, OS_LOG_TYPE_DEFAULT, "Unarchived powerlog data not yet set, running unarchive.", buf, 2u);
    }

    [(MXSpaceAttributionService *)v27 unarchiveSpaceAttributionData];
    unarchivedSpaceAttributionData = v27->_unarchivedSpaceAttributionData;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = unarchivedSpaceAttributionData;
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
    v24 = v27->_MXSpaceAttributionServiceLogHandle;
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

- (void)_updateService
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258D95000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain log paths with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end