@interface _MSPSharedTripSingleCapabilityLevelFetcher
- (_MSPSharedTripSingleCapabilityLevelFetcher)initWithContact:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6;
- (void)_finishWithType:(unint64_t)a3;
- (void)_timeout;
- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4;
- (void)start;
@end

@implementation _MSPSharedTripSingleCapabilityLevelFetcher

- (_MSPSharedTripSingleCapabilityLevelFetcher)initWithContact:(id)a3 timeout:(double)a4 queue:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _MSPSharedTripSingleCapabilityLevelFetcher;
  v14 = [(_MSPSharedTripSingleCapabilityLevelFetcher *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contact, a3);
    v16 = [v13 copy];
    completion = v15->_completion;
    v15->_completion = v16;

    objc_storeStrong(&v15->_keepAliveReference, v15);
    objc_storeStrong(&v15->_callbackQueue, a5);
    v18 = 10.0;
    if (a4 > 0.0)
    {
      v18 = a4;
    }

    v15->_timeoutInterval = v18;
  }

  return v15;
}

- (void)start
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  v4 = [v3 capabilityLevelForContact:self->_contact];

  if (v4)
  {
    v5 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      contact = self->_contact;
      *buf = 138477827;
      v23 = contact;
      _os_log_impl(&dword_25813A000, v5, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact found existing capability for single destination %{private}@", buf, 0xCu);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51___MSPSharedTripSingleCapabilityLevelFetcher_start__block_invoke;
    block[3] = &unk_279867DF0;
    block[4] = self;
    block[5] = v4;
    dispatch_async(callbackQueue, block);
  }

  else
  {
    timeoutInterval = self->_timeoutInterval;
    v9 = self->_callbackQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51___MSPSharedTripSingleCapabilityLevelFetcher_start__block_invoke_2;
    v19[3] = &unk_279867680;
    v19[4] = self;
    v10 = [GCDTimer scheduledTimerWithTimeInterval:v9 queue:v19 block:timeoutInterval];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = v10;

    v12 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_contact;
      v14 = self->_timeoutInterval;
      *buf = 138478083;
      v23 = v13;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_25813A000, v12, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact enqueuing single destination %{private}@, timeout: %#.1lfs", buf, 0x16u);
    }

    v15 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v15 registerObserver:self];

    v16 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v21 = self->_contact;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [v16 requestCapabilityLevelsForContacts:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)capabilityLevelFetcher:(id)a3 didUpdateCapabilityLevelsForHandles:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  contact = self->_contact;
  v6 = a4;
  v7 = [(MSPSharedTripContact *)contact stringValue];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    v10 = [v9 capabilityLevelForContact:self->_contact];

    if (v10)
    {
      v11 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_contact;
        *buf = 138478083;
        v18 = v12;
        v19 = 2048;
        v20 = v10;
        _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact response for contact %{private}@: %lu", buf, 0x16u);
      }

      v13 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v13 unregisterObserver:self];

      callbackQueue = self->_callbackQueue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __105___MSPSharedTripSingleCapabilityLevelFetcher_capabilityLevelFetcher_didUpdateCapabilityLevelsForHandles___block_invoke;
      v16[3] = &unk_279867DF0;
      v16[4] = self;
      v16[5] = v10;
      dispatch_async(callbackQueue, v16);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_timeout
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MSPGetSharedTripCapabilityFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    contact = self->_contact;
    v8 = 138477827;
    v9 = contact;
    _os_log_impl(&dword_25813A000, v3, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact timed out waiting for contact %{private}@", &v8, 0xCu);
  }

  v5 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v5 unregisterObserver:self];

  v6 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  -[_MSPSharedTripSingleCapabilityLevelFetcher _finishWithType:](self, "_finishWithType:", [v6 capabilityLevelForContact:self->_contact]);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_finishWithType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  completion = self->_completion;
  v6 = MSPGetSharedTripCapabilityFetchingLog();
  v7 = v6;
  if (completion)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a3 > 4)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = *(&off_279867E10 + a3);
      }

      contact = self->_contact;
      v16 = 138543619;
      v17 = v8;
      v18 = 2113;
      v19 = contact;
      _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_INFO, "fetchCapabilityLevelForContact cleaning up and calling completion handler with type %{public}@ for contact %{private}@", &v16, 0x16u);
    }

    [(GCDTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    v12 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
    [v12 unregisterObserver:self];

    v7 = MEMORY[0x259C7AD60](self->_completion);
    v13 = self->_completion;
    self->_completion = 0;

    (*(v7 + 16))(v7, a3);
    keepAliveReference = self->_keepAliveReference;
    self->_keepAliveReference = 0;
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v9 = self->_contact;
    v16 = 138477827;
    v17 = v9;
    _os_log_impl(&dword_25813A000, v7, OS_LOG_TYPE_FAULT, "fetchCapabilityLevelForContact single-fetcher finish was called multiple times for contact %{private}@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end