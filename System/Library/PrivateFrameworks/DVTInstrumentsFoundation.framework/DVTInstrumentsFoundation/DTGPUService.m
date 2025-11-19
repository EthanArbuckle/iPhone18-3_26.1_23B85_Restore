@interface DTGPUService
+ (void)registerCapabilities:(id)a3;
- (BOOL)enableConsistentGPUPerformanceState:(unint64_t)a3 acceleratorID:(unint64_t)a4;
- (DTGPUService)initWithChannel:(id)a3;
- (DTGPUServiceDelegate)delegate;
- (id)currentConsistentGPUPerformanceState;
- (id)dataSourceFromGPUIndex:(unint64_t)a3;
- (id)disableConsistentGPUPerformanceState:(unint64_t)a3;
- (id)flushRemainingData;
- (id)requestDeviceGPUInfo;
- (id)stopCollectingCounters;
- (void)_addGPU:(id)a3;
- (void)_removeGPU:(unint64_t)a3;
- (void)_resetAllDataSources;
- (void)_sendError:(id)a3;
- (void)_sendErrorMessage:(id)a3 code:(unint64_t)a4;
- (void)_sendMessage:(id)a3;
- (void)_setupDataSources;
- (void)_startHeartbeatTimer;
- (void)_stopHeartbeatTimer;
- (void)_waitForProcessMetalDevice:(int)a3 counterProfile:(unsigned int)a4 interval:(unint64_t)a5 windowLimit:(unint64_t)a6;
- (void)messageReceived:(id)a3;
- (void)setAPSCounterConfig:(id)a3;
- (void)startCollectingCounters;
@end

@implementation DTGPUService

+ (void)registerCapabilities:(id)a3
{
  v6 = a3;
  [v6 publishCapability:@"com.apple.instruments.server.services.gpu" withVersion:1 forClass:a1];
  [v6 publishCapability:@"com.apple.instruments.server.services.gpu.immediate" withVersion:1 forClass:a1];
  [v6 publishCapability:@"com.apple.instruments.server.services.gpu.deferred" withVersion:1 forClass:a1];
  [v6 publishCapability:@"com.apple.instruments.server.services.gpu.counters" withVersion:4 forClass:a1];
  v4 = MTLCreateSystemDefaultDevice();
  v5 = [v4 supportsFamily:1004];

  if (v5)
  {
    [v6 publishCapability:@"com.apple.instruments.server.services.gpu.shaderprofiler" withVersion:1 forClass:a1];
    [v6 publishCapability:@"com.apple.instruments.server.services.gpu.performancestate" withVersion:2 forClass:a1];
  }

  [v6 publishCapability:@"com.apple.instruments.server.services.gpu.counters.multisources" withVersion:1 forClass:a1];
  [v6 publishCapability:@"com.apple.instruments.server.services.gpu.counters.aps" withVersion:1 forClass:a1];
}

- (DTGPUService)initWithChannel:(id)a3
{
  v9.receiver = self;
  v9.super_class = DTGPUService;
  v3 = [(DTXService *)&v9 initWithChannel:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.dt.instruments.gpu", 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v4;

    v6 = objc_opt_new();
    collectingDataSources = v3->_collectingDataSources;
    v3->_collectingDataSources = v6;

    v3->_enableShaderProfiler = 0;
  }

  return v3;
}

- (void)messageReceived:(id)a3
{
  if ([a3 errorStatus] == 2)
  {
    [(DTGPUService *)self _resetAllDataSources];

    [(DTGPUService *)self _stopHeartbeatTimer];
  }
}

- (void)_resetAllDataSources
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(DTGPUService *)self stopCollectingCounters];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v15 + 1) + 8 * v8++) reset];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v9 = objc_opt_new();
  collectingDataSources = self->_collectingDataSources;
  self->_collectingDataSources = v9;

  v11 = objc_opt_new();
  dataSourceDict = self->_dataSourceDict;
  self->_dataSourceDict = v11;

  self->_enableShaderProfiler = 0;
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 removeObserver:self];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setupDataSources
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  dataSourceDict = self->_dataSourceDict;
  self->_dataSourceDict = v3;

  if (self->_importAPSDataPath)
  {
    obj = [[DTGPUDataSource alloc] initWithImportAPSDataPath:self->_importAPSDataPath workQueue:self->_workQueue];
    [(DTGPUDataSource *)obj setDelegate:self];
    [(NSMutableDictionary *)self->_dataSourceDict setObject:obj forKeyedSubscript:&unk_285A36C78];
    importAPSDataPath = self->_importAPSDataPath;
    self->_importAPSDataPath = 0;

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = MTLCreateSystemDefaultDevice();
    v25[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obja = v8;
    v9 = [obja countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(obja);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [[DTGPUDataSource alloc] initWithMTLDevice:v13 workQueue:self->_workQueue];
          [(DTGPUDataSource *)v14 setDelegate:self];
          v15 = self->_dataSourceDict;
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "registryID")}];
          [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];
        }

        v10 = [obja countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v17 = *MEMORY[0x277D85DE8];
  }
}

- (void)_sendMessage:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277D03668] messageWithObject:?];
  v5 = [(DTXService *)self channel];
  [v5 sendMessage:v4 replyHandler:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 receiveMessage:v8];
  }
}

- (void)_sendError:(id)a3
{
  v8 = a3;
  v4 = [MEMORY[0x277D03668] messageWithError:?];
  v5 = [(DTXService *)self channel];
  [v5 sendMessage:v4 replyHandler:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 receiveError:v8];
  }
}

- (void)_addGPU:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableDictionary *)self->_dataSourceDict count])
  {
    v5 = [[DTGPUDataSource alloc] initWithMTLDevice:v4 workQueue:self->_workQueue];
    [(DTGPUDataSource *)v5 setDelegate:self];
    dataSourceDict = self->_dataSourceDict;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "registryID")}];
    [(NSMutableDictionary *)dataSourceDict setObject:v5 forKeyedSubscript:v7];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_absolute_time(), &unk_285A36C90}];
    v12[1] = v8;
    v9 = [(DTGPUDataSource *)v5 deviceInfoDict];
    v12[2] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

    [(DTGPUService *)self _sendMessage:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_removeGPU:(unint64_t)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [(NSMutableDictionary *)self->_collectingDataSources objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    [v6 stop];
    [v7 reset];
    [(NSMutableDictionary *)self->_collectingDataSources removeObjectForKey:v5];
  }

  v8 = [(NSMutableDictionary *)self->_dataSourceDict objectForKeyedSubscript:v5];

  if (v8)
  {
    [(NSMutableDictionary *)self->_dataSourceDict removeObjectForKey:v5];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{mach_absolute_time(), &unk_285A36CA8}];
    v13[1] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    v13[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

    [(DTGPUService *)self _sendMessage:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)requestDeviceGPUInfo
{
  v17 = *MEMORY[0x277D85DE8];
  [(DTGPUService *)self _setupDataSources];
  [(DTGPUService *)self _startHeartbeatTimer];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) deviceInfoDict];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)dataSourceFromGPUIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 device];
          v12 = [v11 registryID];

          if (v12 == a3)
          {
            v13 = v10;
            goto LABEL_15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  if ([(NSMutableDictionary *)self->_dataSourceDict count]== 1)
  {
    v5 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
    v13 = [v5 objectAtIndexedSubscript:0];
LABEL_15:
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)startCollectingCounters
{
  v2 = self;
  v71 = *MEMORY[0x277D85DE8];
  collectingDataSources = self->_collectingDataSources;
  if (collectingDataSources && [(NSMutableDictionary *)collectingDataSources count])
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v4 = [(NSMutableDictionary *)v2->_collectingDataSources allValues];
    v5 = [v4 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v5)
    {
      v6 = v5;
      LOBYTE(v7) = 0;
      v8 = *v63;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v63 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v62 + 1) + 8 * i);
          [v10 enableShaderProfiler:v2->_enableShaderProfiler];
          if (v7)
          {
            v7 = 1;
          }

          else
          {
            v7 = [v10 run] ^ 1;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v6);

      if (v7)
      {
        [(DTGPUService *)v2 _sendErrorMessage:@"Failed to start counter collection" code:5];
LABEL_36:
        v49 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = [(NSMutableDictionary *)v2->_collectingDataSources allValues];
    v57 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v57)
    {
      v12 = *v59;
      v56 = v2;
      v54 = *v59;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v59 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v58 + 1) + 8 * j);
          v15 = [v14 collectingProfile];
          v16 = [v15 isAPS];

          if (v16)
          {
            v68[0] = &unk_285A36CC0;
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
            v68[1] = v17;
            v18 = MEMORY[0x277CCABB0];
            v19 = [v14 device];
            v20 = [v18 numberWithUnsignedLongLong:{objc_msgSend(v19, "registryID")}];
            v68[2] = v20;
            v21 = MEMORY[0x277CCABB0];
            v22 = [v14 collectingProfile];
            v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "profile")}];
            v68[3] = v23;
            v24 = [v14 collectingProfile];
            v25 = [v24 counterProfileForHost];
            v68[4] = v25;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];

            v2 = v56;
            [(DTGPUService *)v56 _sendMessage:v26];
          }

          else
          {
            if (v2->_enableMultiSourceCounters)
            {
              v67[0] = &unk_285A36CD8;
              v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
              v67[1] = v52;
              v27 = MEMORY[0x277CCABB0];
              v51 = [v14 device];
              v50 = [v27 numberWithUnsignedLongLong:{objc_msgSend(v51, "registryID")}];
              v67[2] = v50;
              v28 = MEMORY[0x277CCABB0];
              v29 = [v14 collectingProfile];
              v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "profile")}];
              v67[3] = v30;
              v31 = [v14 collectingProfile];
              v32 = [v31 counterProfileForHost];
              v67[4] = v32;
              v33 = [v14 collectingProfile];
              v34 = [v33 sampleSizes];
              v67[5] = v34;
              v35 = [v14 collectingProfile];
              v36 = [v35 ringBufferCounts];
              v67[6] = v36;
              v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:7];

              v2 = v56;
              [(DTGPUService *)v56 _sendMessage:v26];
            }

            else
            {
              v37 = [v14 collectingProfile];
              v26 = [v37 counterProfileForHost];

              v38 = [v14 collectingProfile];
              v39 = [v38 ringBufferCounts];

              if ([v26 count])
              {
                if ([v39 count])
                {
                  v66[0] = &unk_285A36CF0;
                  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_absolute_time()];
                  v66[1] = v53;
                  v40 = MEMORY[0x277CCABB0];
                  v41 = [v14 device];
                  v42 = [v40 numberWithUnsignedLongLong:{objc_msgSend(v41, "registryID")}];
                  v66[2] = v42;
                  v43 = MEMORY[0x277CCABB0];
                  v44 = [v14 collectingProfile];
                  v45 = [v43 numberWithUnsignedInteger:{objc_msgSend(v44, "profile")}];
                  v66[3] = v45;
                  v46 = [v26 objectAtIndexedSubscript:0];
                  v66[4] = v46;
                  v47 = [v39 objectAtIndexedSubscript:0];
                  v66[5] = v47;
                  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:6];

                  v2 = v56;
                  [(DTGPUService *)v56 _sendMessage:v48];
                }
              }
            }

            v12 = v54;
          }
        }

        v57 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v57);
    }

    goto LABEL_36;
  }

  v11 = *MEMORY[0x277D85DE8];

  [(DTGPUService *)v2 _sendErrorMessage:@"No configured data sources" code:2];
}

- (id)stopCollectingCounters
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v23 + 1) + 8 * i) stop];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = -1;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v19 + 1) + 8 * j) timestampOfFirstSample];
        if (v12 >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        if (v14)
        {
          v12 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = -1;
  }

  self->_enableShaderProfiler = 0;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)flushRemainingData
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NSMutableDictionary *)self->_collectingDataSources allValues];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = sub_247FDE43C;
        v14[3] = &unk_278EF3A10;
        v14[4] = self;
        v14[5] = v9;
        v15 = v3;
        [v9 getRemainingData:v14];
        [v9 reset];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = objc_opt_new();
  collectingDataSources = self->_collectingDataSources;
  self->_collectingDataSources = v10;

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_waitForProcessMetalDevice:(int)a3 counterProfile:(unsigned int)a4 interval:(unint64_t)a5 windowLimit:(unint64_t)a6
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDEA84;
  block[3] = &unk_278EF3A38;
  objc_copyWeak(v13, &location);
  v14 = a3;
  v15 = a4;
  v13[1] = a5;
  v13[2] = a6;
  dispatch_async(workQueue, block);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)_startHeartbeatTimer
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDED24;
  block[3] = &unk_278EF3A60;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_sync(workQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopHeartbeatTimer
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FDEF9C;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

- (void)_sendErrorMessage:(id)a3 code:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = a3;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = [v7 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v6 errorWithDomain:@"com.apple.DTGPUService" code:a4 userInfo:v9];

  [(DTGPUService *)self _sendError:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)currentConsistentGPUPerformanceState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_dataSourceDict allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) currentConsistentGPUPerformanceState];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)enableConsistentGPUPerformanceState:(unint64_t)a3 acceleratorID:(unint64_t)a4
{
  if (a3)
  {
    v4 = a3;
    self->_targetPerfState = a3;
    self->_enableConsistentPerfState = 1;
    v5 = [(DTGPUService *)self dataSourceFromGPUIndex:a4];
    LOBYTE(v4) = [v5 enableConsistentGPUPerformanceState:v4];

    return v4;
  }

  else
  {
    v7 = [(DTGPUService *)self disableConsistentGPUPerformanceState:a4];
    return 1;
  }
}

- (id)disableConsistentGPUPerformanceState:(unint64_t)a3
{
  self->_enableConsistentPerfState = 0;
  v3 = [(DTGPUService *)self dataSourceFromGPUIndex:a3];
  v4 = [v3 disableConsistentGPUPerformanceState];

  return v4;
}

- (void)setAPSCounterConfig:(id)a3
{
  v4 = a3;
  dataSourceDict = self->_dataSourceDict;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FDF3D0;
  v7[3] = &unk_278EF3A88;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)dataSourceDict enumerateKeysAndObjectsUsingBlock:v7];
}

- (DTGPUServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end