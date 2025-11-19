@interface BMStorePublisherManager
- (BMStorePublisherManager)initWithStreamIdentifier:(id)a3 streamConfig:(id)a4 accessClient:(id)a5 eventDataClass:(Class)a6 useCase:(id)a7;
- (id)_createStreamReaderForRemoteName:(id)a3 eventDataClass:(Class)a4;
- (id)_publisherForDevice:(id)a3 options:(id)a4;
- (id)_publishersForDevices:(id)a3 includeLocal:(BOOL)a4 options:(id)a5;
- (id)_streamReaderWithRemoteName:(id)a3;
@end

@implementation BMStorePublisherManager

- (BMStorePublisherManager)initWithStreamIdentifier:(id)a3 streamConfig:(id)a4 accessClient:(id)a5 eventDataClass:(Class)a6 useCase:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = BMStorePublisherManager;
  v16 = [(BMStorePublisherManager *)&v26 init];
  if (v16)
  {
    v17 = [v13 remoteName];

    if (v17)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [BMStorePublisherManager initWithStreamIdentifier:v18 streamConfig:? accessClient:? eventDataClass:? useCase:?];
      }
    }

    objc_storeStrong(&v16->_config, a4);
    v19 = [v12 copy];
    streamIdentifier = v16->_streamIdentifier;
    v16->_streamIdentifier = v19;

    objc_storeStrong(&v16->_accessClient, a5);
    v16->_eventDataClass = a6;
    objc_storeStrong(&v16->_useCase, a7);
    v21 = objc_alloc(MEMORY[0x1E69C5D60]);
    v22 = objc_opt_new();
    v23 = [v21 initWithGuardedData:v22];
    protectedState = v16->_protectedState;
    v16->_protectedState = v23;
  }

  return v16;
}

- (id)_publishersForDevices:(id)a3 includeLocal:(BOOL)a4 options:(id)a5
{
  v6 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(BMStorePublisherManager *)self _publisherForDevice:*(*(&v20 + 1) + 8 * i) options:v9, v20];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (v6)
  {
    v17 = [(BMStorePublisherManager *)self _publisherForDevice:0 options:v9];
    if (v17)
    {
      [v10 addObject:v17];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_publisherForDevice:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [a3 deviceIdentifier];
  v8 = [(BMStorePublisherManager *)self _streamReaderWithRemoteName:v7];

  v9 = [[BPSBiomeStorePublisher alloc] initWithStreamDatastoreReader:v8 streamsAccessClient:self->_accessClient];
  v10 = [v6 startDate];

  if (v10)
  {
    v11 = [v6 startDate];
    [v11 timeIntervalSinceReferenceDate];
    v12 = [(BPSBiomeStorePublisher *)v9 withStartTime:?];
  }

  v13 = [v6 endDate];

  if (v13)
  {
    v14 = [v6 endDate];
    [v14 timeIntervalSinceReferenceDate];
    v15 = [(BPSBiomeStorePublisher *)v9 withEndTime:?];
  }

  v16 = [v6 indexSearch];

  if (v16)
  {
    v17 = [v6 indexSearch];
    v18 = [(BPSBiomeStorePublisher *)v9 withIndexSearch:v17];
  }

  if ([v6 maxEvents])
  {
    v19 = -[BPSBiomeStorePublisher withMaxEvents:](v9, "withMaxEvents:", [v6 maxEvents]);
  }

  if ([v6 lastN])
  {
    v20 = -[BPSBiomeStorePublisher withLastEvents:](v9, "withLastEvents:", [v6 lastN]);
  }

  if ([v6 reversed])
  {
    v21 = [(BPSBiomeStorePublisher *)v9 reverse];
  }

  return v9;
}

- (id)_streamReaderWithRemoteName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = 0;
  protectedState = self->_protectedState;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__BMStorePublisherManager__streamReaderWithRemoteName___block_invoke;
  v9[3] = &unk_1E6E52A78;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [(_PASLock *)protectedState runWithLockAcquired:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __55__BMStorePublisherManager__streamReaderWithRemoteName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 remoteDatastores];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

    if (!v6)
    {
      v7 = [*(a1 + 40) _createStreamReaderForRemoteName:*(a1 + 32) eventDataClass:*(*(a1 + 40) + 32)];
      v8 = [v4 remoteDatastores];
      [v8 setObject:v7 forKeyedSubscript:*(a1 + 32)];
    }

    v9 = [v4 remoteDatastores];
    v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = [v3 localDatastore];

    if (!v13)
    {
      v14 = [*(a1 + 40) _createStreamReaderForRemoteName:0 eventDataClass:*(*(a1 + 40) + 32)];
      [v4 setLocalDatastore:v14];
    }

    v15 = [v4 localDatastore];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [v4 localDatastore];
    v19 = [v18 currentFrameStore];

    if (!v19)
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __55__BMStorePublisherManager__streamReaderWithRemoteName___block_invoke_cold_1(v20);
      }

      [v4 setLocalDatastore:0];
    }
  }
}

- (id)_createStreamReaderForRemoteName:(id)a3 eventDataClass:(Class)a4
{
  v6 = MEMORY[0x1E698F150];
  v7 = a3;
  v8 = [v6 alloc];
  streamIdentifier = self->_streamIdentifier;
  v10 = [(BMStoreConfig *)self->_config copyWithRemoteName:v7];

  v11 = [v8 initWithStream:streamIdentifier config:v10 eventDataClass:a4 useCase:self->_useCase];

  return v11;
}

@end