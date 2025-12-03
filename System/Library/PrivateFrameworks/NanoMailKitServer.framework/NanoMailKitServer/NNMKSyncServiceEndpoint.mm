@interface NNMKSyncServiceEndpoint
- (BOOL)_willIdRepeat:(id)repeat;
- (NNMKSyncServiceEndpoint)initWithIDSServiceName:(id)name queue:(id)queue;
- (void)_initializeServiceTransport;
- (void)_removeExpiredRepeatPreventionRecords;
- (void)_storeRepeatPreventionId:(id)id priority:(unint64_t)priority;
- (void)dealloc;
- (void)syncServiceTransport:(id)transport didReadProtobufData:(id)data type:(unint64_t)type;
- (void)syncServiceTransport:(id)transport didRecieveDataAtURL:(id)l metadata:(id)metadata;
@end

@implementation NNMKSyncServiceEndpoint

- (NNMKSyncServiceEndpoint)initWithIDSServiceName:(id)name queue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = NNMKSyncServiceEndpoint;
  v9 = [(NNMKSyncServiceEndpoint *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceQueue, queue);
    objc_storeStrong(&v10->_idsServiceName, name);
    [(NNMKSyncServiceEndpoint *)v10 _initializeServiceTransport];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    repeatPreventionRecords = v10->_repeatPreventionRecords;
    v10->_repeatPreventionRecords = v11;

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10->_serviceQueue);
    repeatPreventionCleanupTimer = v10->_repeatPreventionCleanupTimer;
    v10->_repeatPreventionCleanupTimer = v13;

    objc_initWeak(&location, v10);
    v15 = v10->_repeatPreventionCleanupTimer;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__NNMKSyncServiceEndpoint_initWithIDSServiceName_queue___block_invoke;
    v17[3] = &unk_279936160;
    objc_copyWeak(&v18, &location);
    dispatch_source_set_event_handler(v15, v17);
    dispatch_resume(v10->_repeatPreventionCleanupTimer);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __56__NNMKSyncServiceEndpoint_initWithIDSServiceName_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeExpiredRepeatPreventionRecords];
}

- (void)dealloc
{
  dispatch_source_cancel(self->_repeatPreventionCleanupTimer);
  v3.receiver = self;
  v3.super_class = NNMKSyncServiceEndpoint;
  [(NNMKSyncServiceEndpoint *)&v3 dealloc];
}

- (void)_initializeServiceTransport
{
  v3 = [[NNMKSyncServiceIDSTransport alloc] initWithServiceName:self->_idsServiceName queue:self->_serviceQueue delegate:self];
  serviceTransport = self->_serviceTransport;
  self->_serviceTransport = v3;

  MEMORY[0x2821F96F8]();
}

- (void)syncServiceTransport:(id)transport didReadProtobufData:(id)data type:(unint64_t)type
{
  transportCopy = transport;
  dataCopy = data;
  v9 = objc_autoreleasePoolPush();
  [(NNMKSyncServiceEndpoint *)self readProtobufData:dataCopy type:type];
  objc_autoreleasePoolPop(v9);
}

- (void)syncServiceTransport:(id)transport didRecieveDataAtURL:(id)l metadata:(id)metadata
{
  transportCopy = transport;
  lCopy = l;
  metadataCopy = metadata;
  v10 = objc_autoreleasePoolPush();
  [(NNMKSyncServiceEndpoint *)self readResourceAtURL:lCopy metadata:metadataCopy];
  objc_autoreleasePoolPop(v10);
}

- (BOOL)_willIdRepeat:(id)repeat
{
  v3 = [(NSMutableDictionary *)self->_repeatPreventionRecords objectForKeyedSubscript:repeat];
  v4 = v3;
  if (v3)
  {
    [v3 timeIntervalSinceNow];
    v6 = v5 > 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_storeRepeatPreventionId:(id)id priority:(unint64_t)priority
{
  if (priority == 300)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 15.0;
  }

  v6 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v10 = [v6 dateWithTimeIntervalSinceNow:v5];
  [(NSMutableDictionary *)self->_repeatPreventionRecords setObject:v10 forKeyedSubscript:idCopy];

  repeatPreventionCleanupTimer = self->_repeatPreventionCleanupTimer;
  v9 = dispatch_time(0, (v5 * 1000000000.0));
  dispatch_source_set_timer(repeatPreventionCleanupTimer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_removeExpiredRepeatPreventionRecords
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allKeys = [(NSMutableDictionary *)self->_repeatPreventionRecords allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (![(NNMKSyncServiceEndpoint *)self _willIdRepeat:v8])
        {
          [(NSMutableDictionary *)self->_repeatPreventionRecords removeObjectForKey:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end