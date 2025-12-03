@interface BMStorePublisherManager
- (BMStorePublisherManager)initWithStreamIdentifier:(id)identifier streamConfig:(id)config accessClient:(id)client eventDataClass:(Class)class useCase:(id)case;
- (id)_createStreamReaderForRemoteName:(id)name eventDataClass:(Class)class;
- (id)_publisherForDevice:(id)device options:(id)options;
- (id)_publishersForDevices:(id)devices includeLocal:(BOOL)local options:(id)options;
- (id)_streamReaderWithRemoteName:(id)name;
@end

@implementation BMStorePublisherManager

- (BMStorePublisherManager)initWithStreamIdentifier:(id)identifier streamConfig:(id)config accessClient:(id)client eventDataClass:(Class)class useCase:(id)case
{
  identifierCopy = identifier;
  configCopy = config;
  clientCopy = client;
  caseCopy = case;
  v26.receiver = self;
  v26.super_class = BMStorePublisherManager;
  v16 = [(BMStorePublisherManager *)&v26 init];
  if (v16)
  {
    remoteName = [configCopy remoteName];

    if (remoteName)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [BMStorePublisherManager initWithStreamIdentifier:v18 streamConfig:? accessClient:? eventDataClass:? useCase:?];
      }
    }

    objc_storeStrong(&v16->_config, config);
    v19 = [identifierCopy copy];
    streamIdentifier = v16->_streamIdentifier;
    v16->_streamIdentifier = v19;

    objc_storeStrong(&v16->_accessClient, client);
    v16->_eventDataClass = class;
    objc_storeStrong(&v16->_useCase, case);
    v21 = objc_alloc(MEMORY[0x1E69C5D60]);
    v22 = objc_opt_new();
    v23 = [v21 initWithGuardedData:v22];
    protectedState = v16->_protectedState;
    v16->_protectedState = v23;
  }

  return v16;
}

- (id)_publishersForDevices:(id)devices includeLocal:(BOOL)local options:(id)options
{
  localCopy = local;
  v25 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  optionsCopy = options;
  v10 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = devicesCopy;
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

        v16 = [(BMStorePublisherManager *)self _publisherForDevice:*(*(&v20 + 1) + 8 * i) options:optionsCopy, v20];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (localCopy)
  {
    v17 = [(BMStorePublisherManager *)self _publisherForDevice:0 options:optionsCopy];
    if (v17)
    {
      [v10 addObject:v17];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_publisherForDevice:(id)device options:(id)options
{
  optionsCopy = options;
  deviceIdentifier = [device deviceIdentifier];
  v8 = [(BMStorePublisherManager *)self _streamReaderWithRemoteName:deviceIdentifier];

  v9 = [[BPSBiomeStorePublisher alloc] initWithStreamDatastoreReader:v8 streamsAccessClient:self->_accessClient];
  startDate = [optionsCopy startDate];

  if (startDate)
  {
    startDate2 = [optionsCopy startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    v12 = [(BPSBiomeStorePublisher *)v9 withStartTime:?];
  }

  endDate = [optionsCopy endDate];

  if (endDate)
  {
    endDate2 = [optionsCopy endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v15 = [(BPSBiomeStorePublisher *)v9 withEndTime:?];
  }

  indexSearch = [optionsCopy indexSearch];

  if (indexSearch)
  {
    indexSearch2 = [optionsCopy indexSearch];
    v18 = [(BPSBiomeStorePublisher *)v9 withIndexSearch:indexSearch2];
  }

  if ([optionsCopy maxEvents])
  {
    v19 = -[BPSBiomeStorePublisher withMaxEvents:](v9, "withMaxEvents:", [optionsCopy maxEvents]);
  }

  if ([optionsCopy lastN])
  {
    v20 = -[BPSBiomeStorePublisher withLastEvents:](v9, "withLastEvents:", [optionsCopy lastN]);
  }

  if ([optionsCopy reversed])
  {
    reverse = [(BPSBiomeStorePublisher *)v9 reverse];
  }

  return v9;
}

- (id)_streamReaderWithRemoteName:(id)name
{
  nameCopy = name;
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
  v6 = nameCopy;
  v10 = v6;
  selfCopy = self;
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

- (id)_createStreamReaderForRemoteName:(id)name eventDataClass:(Class)class
{
  v6 = MEMORY[0x1E698F150];
  nameCopy = name;
  v8 = [v6 alloc];
  streamIdentifier = self->_streamIdentifier;
  v10 = [(BMStoreConfig *)self->_config copyWithRemoteName:nameCopy];

  v11 = [v8 initWithStream:streamIdentifier config:v10 eventDataClass:class useCase:self->_useCase];

  return v11;
}

@end