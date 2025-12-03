@interface NviSignalProvidersController
+ (void)initialize;
- (BOOL)_setupSignalProviders:(id)providers;
- (NviSignalProvidersController)initWithAssetsProvider:(id)provider dataSourceMap:(id)map signalProviderToDataSourceMap:(id)sourceMap;
- (void)_iterateSignalMask:(unint64_t)mask withHandler:(id)handler;
- (void)_startDataSourcesWithContext:(id)context;
- (void)_startSignalProvidersWithContext:(id)context;
- (void)_stopCurrentlyRunningSignalProviders;
- (void)_stopDataSources;
- (void)dealloc;
- (void)registerSignalProviderDelegate:(id)delegate forSignalTypes:(unint64_t)types;
- (void)registerSignalProviderDelegateForAllSignalTypes:(id)types;
- (void)reset;
- (void)startWithNviContext:(id)context;
- (void)stop;
- (void)unregisterSignalProviderDelegate:(id)delegate forSignalType:(unint64_t)type;
- (void)unregisterSignalProviderDelegateForAllSignalTypes:(id)types;
@end

@implementation NviSignalProvidersController

- (void)unregisterSignalProviderDelegateForAllSignalTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sigProvidersMap;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9), v12];
        [v10 removeDelegate:typesCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerSignalProviderDelegateForAllSignalTypes:(id)types
{
  v17 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sigProvidersMap;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9), v12];
        [v10 addDelegate:typesCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterSignalProviderDelegate:(id)delegate forSignalType:(unint64_t)type
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NviSignalProvidersController_unregisterSignalProviderDelegate_forSignalType___block_invoke;
  v8[3] = &unk_2784C4150;
  v9 = delegateCopy;
  v7 = delegateCopy;
  [(NviSignalProvidersController *)self _iterateSignalMask:type withHandler:v8];
}

- (void)registerSignalProviderDelegate:(id)delegate forSignalTypes:(unint64_t)types
{
  delegateCopy = delegate;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__NviSignalProvidersController_registerSignalProviderDelegate_forSignalTypes___block_invoke;
  v8[3] = &unk_2784C4150;
  v9 = delegateCopy;
  v7 = delegateCopy;
  [(NviSignalProvidersController *)self _iterateSignalMask:types withHandler:v8];
}

- (void)_iterateSignalMask:(unint64_t)mask withHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = 0;
  *&v8 = 136315394;
  v17 = v8;
  do
  {
    v9 = (1 << v7);
    sigProvidersMap = self->_sigProvidersMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9 & mask, v17}];
    v12 = [(NSMapTable *)sigProvidersMap objectForKeyedSubscript:v11];

    if (v12)
    {
      handlerCopy[2](handlerCopy, v12);
    }

    else
    {
      v13 = NviLogContextFacility;
      if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        mask = [NviUtils strRepForNviSignalType:v9 & mask];
        *buf = v17;
        v19 = "[NviSignalProvidersController _iterateSignalMask:withHandler:]";
        v20 = 2112;
        v21 = mask;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: Cannot find SignalProvider for %@. Skipping", buf, 0x16u);
      }
    }

    ++v7;
  }

  while (v7 != 5);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  [(NviSignalProvidersController *)self _stopDataSources];

  [(NviSignalProvidersController *)self _stopCurrentlyRunningSignalProviders];
}

- (void)_stopCurrentlyRunningSignalProviders
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_currActiveSigProvTypes;
  v4 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:v8];
        dispatch_group_enter(v3);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __68__NviSignalProvidersController__stopCurrentlyRunningSignalProviders__block_invoke;
        v20[3] = &unk_2784C4100;
        v20[4] = v8;
        v21 = v3;
        [v9 stopWithDidStopHandler:v20];
      }

      v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  v10 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_group_wait(v3, v10);
  date2 = [MEMORY[0x277CBEAA8] date];
  v14 = NviLogContextFacility;
  v15 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      *buf = 136315138;
      v27 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]";
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: SignalProviders timedout didStop. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v15)
  {
    v16 = v14;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v27 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]";
    v28 = 2048;
    v29 = v17 * 1000.0;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s >>> All SignalProviders didStop within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __68__NviSignalProvidersController__stopCurrentlyRunningSignalProviders__block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v7 unsignedIntegerValue]);
      v11 = 136315650;
      v12 = "[NviSignalProvidersController _stopCurrentlyRunningSignalProviders]_block_invoke";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to stop %@: Err=%@", &v11, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopDataSources
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_currActiveDataSourceTypes;
  v4 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_dataSrcMap objectForKeyedSubscript:v8];
        dispatch_group_enter(v3);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __48__NviSignalProvidersController__stopDataSources__block_invoke;
        v20[3] = &unk_2784C4100;
        v20[4] = v8;
        v21 = v3;
        [v9 stopWithDidStopHandler:v20];
      }

      v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  v10 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v12 = dispatch_group_wait(v3, v10);
  date2 = [MEMORY[0x277CBEAA8] date];
  v14 = NviLogContextFacility;
  v15 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v15)
    {
      *buf = 136315138;
      v27 = "[NviSignalProvidersController _stopDataSources]";
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s WARN: DataSources timedout stopping. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v15)
  {
    v16 = v14;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v27 = "[NviSignalProvidersController _stopDataSources]";
    v28 = 2048;
    v29 = v17 * 1000.0;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s >>> All DataSources Stopped within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __48__NviSignalProvidersController__stopDataSources__block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviDataSourceType:](NviUtils, "strRepForNviDataSourceType:", [v7 unsignedIntegerValue]);
      v11 = 136315650;
      v12 = "[NviSignalProvidersController _stopDataSources]_block_invoke";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@. Err=%@", &v11, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reset
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_sigProvidersMap;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
        [v8 reset];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startWithNviContext:(id)context
{
  contextCopy = context;
  [(NviSignalProvidersController *)self _startSignalProvidersWithContext:contextCopy];
  [(NviSignalProvidersController *)self _startDataSourcesWithContext:contextCopy];
}

- (void)_startSignalProvidersWithContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = [(NviAssetsProvider *)self->_assetsProvider signalProvidersMapForContext:?];
  v5 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
  currActiveSigProvTypes = self->_currActiveSigProvTypes;
  self->_currActiveSigProvTypes = v5;

  v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
  currActiveDataSourceTypes = self->_currActiveDataSourceTypes;
  self->_currActiveDataSourceTypes = v7;

  v9 = dispatch_group_create();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v35;
    *&v12 = 136315394;
    v29 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [(NSMapTable *)self->_sigProvidersMap objectForKeyedSubscript:v16, v29];
        v18 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          v39 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
          v40 = 2112;
          v41 = *&v17;
          _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s Starting signal provider: %@", buf, 0x16u);
        }

        dispatch_group_enter(v9);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __65__NviSignalProvidersController__startSignalProvidersWithContext___block_invoke;
        v31[3] = &unk_2784C4128;
        v31[4] = v16;
        v31[5] = self;
        v19 = v10;
        v32 = v19;
        v33 = v9;
        [v17 startWithNviContext:contextCopy didStartHandler:v31];
      }

      v13 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v13);
  }

  v20 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v22 = dispatch_group_wait(v9, v20);
  date2 = [MEMORY[0x277CBEAA8] date];
  v24 = NviLogContextFacility;
  v25 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v25)
    {
      *buf = 136315138;
      v39 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
      _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s WARN: SignalProviders timedout didStart. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v25)
  {
    v26 = v24;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v39 = "[NviSignalProvidersController _startSignalProvidersWithContext:]";
    v40 = 2048;
    v41 = v27 * 1000.0;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s >>> All SignalProviders didStart within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __65__NviSignalProvidersController__startSignalProvidersWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v9 unsignedIntegerValue]);
      v13 = 136315650;
      v14 = "[NviSignalProvidersController _startSignalProvidersWithContext:]_block_invoke";
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@: Err=%@", &v13, 0x20u);
    }
  }

  else
  {
    [*(*(a1 + 40) + 32) addObject:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 40);
    v7 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
    [v6 addObject:v7];
  }

  dispatch_group_leave(*(a1 + 56));

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_startDataSourcesWithContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = dispatch_group_create();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_currActiveDataSourceTypes;
  v5 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    *&v6 = 136315394;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_dataSrcMap objectForKeyedSubscript:v10, v22];
        v12 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v22;
          v32 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
          v33 = 2112;
          v34 = *&v11;
          _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_DEFAULT, "%s Starting datasrc: %@", buf, 0x16u);
        }

        dispatch_group_enter(v4);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __61__NviSignalProvidersController__startDataSourcesWithContext___block_invoke;
        v25[3] = &unk_2784C4100;
        v25[4] = v10;
        v26 = v4;
        [v11 startWithNviContext:contextCopy didStartHandler:v25];
      }

      v7 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v13 = dispatch_time(0, 2000000000);
  date = [MEMORY[0x277CBEAA8] date];
  v15 = dispatch_group_wait(v4, v13);
  date2 = [MEMORY[0x277CBEAA8] date];
  v17 = NviLogContextFacility;
  v18 = os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v18)
    {
      *buf = 136315138;
      v32 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s WARN: DataSources Start timedout. timeout=2secs", buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = v17;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v32 = "[NviSignalProvidersController _startDataSourcesWithContext:]";
    v33 = 2048;
    v34 = v20 * 1000.0;
    _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEFAULT, "%s >>> All DataSources Started within timeout of 2secs: timeTaken=%f ms", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __61__NviSignalProvidersController__startDataSourcesWithContext___block_invoke(uint64_t a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = +[NviUtils strRepForNviDataSourceType:](NviUtils, "strRepForNviDataSourceType:", [v7 unsignedIntegerValue]);
      v11 = 136315650;
      v12 = "[NviSignalProvidersController _startDataSourcesWithContext:]_block_invoke";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Failed to start %@. Err=%@", &v11, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setupSignalProviders:(id)providers
{
  v41 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v5 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:0];
  sigProvidersMap = self->_sigProvidersMap;
  self->_sigProvidersMap = v5;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = providersCopy;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        dataSrcMap = self->_dataSrcMap;
        v14 = [v7 objectForKeyedSubscript:v12];
        v15 = [(NSDictionary *)dataSrcMap objectForKeyedSubscript:v14];

        if (!v15)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v19 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
          [currentHandler handleFailureInMethod:a2 object:self file:@"NviSignalProvidersController.m" lineNumber:72 description:{@"No DataSource found for SignalType: %@", v19}];
        }

        if ([v12 unsignedIntegerValue] != 4)
        {
          v23 = NviLogContextFacility;
          if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
            v25 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
            *buf = 136315394;
            v37 = "[NviSignalProvidersController _setupSignalProviders:]";
            v38 = 2112;
            v39 = v25;
            _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_DEFAULT, "%s %@ not supported yet.", buf, 0x16u);
          }

LABEL_19:
          v26 = NviLogContextFacility;
          if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            v28 = +[NviUtils strRepForNviSignalType:](NviUtils, "strRepForNviSignalType:", [v12 unsignedIntegerValue]);
            *buf = 136315394;
            v37 = "[NviSignalProvidersController _setupSignalProviders:]";
            v38 = 2112;
            v39 = v28;
            _os_log_impl(&dword_222E4D000, v27, OS_LOG_TYPE_DEFAULT, "%s Failed to create: %@", buf, 0x16u);
          }

          v22 = 0;
          goto LABEL_22;
        }

        v16 = [[NviDirectionalitySignalProvider alloc] initWithDataSource:v15 assetsProvider:self->_assetsProvider];
        v17 = NviLogContextFacility;
        if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v37 = "[NviSignalProvidersController _setupSignalProviders:]";
          v38 = 2048;
          v39 = v16;
          _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s sp=%p", buf, 0x16u);
        }

        if (!v16)
        {
          goto LABEL_19;
        }

        [(NSMapTable *)self->_sigProvidersMap setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v20 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_sigProvidersMap;
    *buf = 136315394;
    v37 = "[NviSignalProvidersController _setupSignalProviders:]";
    v38 = 2112;
    v39 = v21;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s SigPrvdrs: %@", buf, 0x16u);
  }

  v22 = 1;
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = NviLogContextFacility;
  if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[NviSignalProvidersController dealloc]";
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s %p dealloced", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = NviSignalProvidersController;
  [(NviSignalProvidersController *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NviSignalProvidersController)initWithAssetsProvider:(id)provider dataSourceMap:(id)map signalProviderToDataSourceMap:(id)sourceMap
{
  v23 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  mapCopy = map;
  sourceMapCopy = sourceMap;
  v18.receiver = self;
  v18.super_class = NviSignalProvidersController;
  v12 = [(NviSignalProvidersController *)&v18 init];
  p_isa = &v12->super.isa;
  if (v12 && (objc_storeStrong(&v12->_assetsProvider, provider), objc_storeStrong(p_isa + 2, map), ![p_isa _setupSignalProviders:sourceMapCopy]))
  {
    v15 = 0;
  }

  else
  {
    v14 = NviLogContextFacility;
    if (os_log_type_enabled(NviLogContextFacility, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v20 = "[NviSignalProvidersController initWithAssetsProvider:dataSourceMap:signalProviderToDataSourceMap:]";
      v21 = 2048;
      v22 = p_isa;
      _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s %p created", buf, 0x16u);
    }

    v15 = p_isa;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)initialize
{
  if (objc_opt_class() == self && InitNviLogging_once != -1)
  {

    dispatch_once(&InitNviLogging_once, &__block_literal_global_17108);
  }
}

@end