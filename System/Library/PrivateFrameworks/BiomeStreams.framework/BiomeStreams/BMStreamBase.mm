@interface BMStreamBase
+ (BOOL)_atLeastOneSegmentFileInDirectory:(id)a3 fileManager:(id)a4;
- (BMStreamBase)initWithIdentifier:(id)a3 schema:(id)a4 configuration:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)DSLPublisherWithUseCase:(id)a3;
- (id)_storeStreamForUseCase:(id)a3;
- (id)description;
- (id)pruner;
- (id)prunerForDevice:(id)a3;
- (id)publisherForAccount:(id)a3 device:(id)a4 withUseCase:(id)a5;
- (id)publisherForAccount:(id)a3 device:(id)a4 withUseCase:(id)a5 options:(id)a6;
- (id)publisherForDevice:(id)a3 withUseCase:(id)a4;
- (id)publisherForDevice:(id)a3 withUseCase:(id)a4 options:(id)a5;
- (id)publisherWithUseCase:(id)a3 options:(id)a4;
- (id)publisherWithUser:(unsigned int)a3 useCase:(id)a4 options:(id)a5;
- (id)publishersForAccounts:(id)a3 deviceTypes:(unint64_t)a4 includeLocal:(BOOL)a5 options:(id)a6 useCase:(id)a7 pipeline:(id)a8;
- (id)publishersForDevices:(id)a3 withUseCase:(id)a4 startTime:(id)a5 endTime:(id)a6 maxEvents:(id)a7 lastN:(id)a8 reversed:(BOOL)a9 includeLocal:(BOOL)a10 pipeline:(id)a11;
- (id)publishersForRemoteDevices:(id)a3 startTime:(id)a4 endTime:(id)a5 maxEvents:(id)a6 lastN:(id)a7 reversed:(BOOL)a8 includeLocal:(BOOL)a9 pipeline:(id)a10;
- (id)remoteDevices;
- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4;
- (id)remoteDevicesWithError:(id *)a3;
- (id)sharedDeviceAccountsWithUseCase:(id)a3;
- (id)source;
- (id)sourceWithUser:(unsigned int)a3;
- (id)storeStreamWithLegacyClass:(Class)a3;
- (id)subscriptionDSLPublisherWithUseCase:(id)a3;
- (id)subscriptionPruner;
- (id)subscriptionPublisherWithUseCase:(id)a3 options:(id)a4;
- (id)subscriptionSource;
- (id)subscriptionStoreStreamForUseCase:(id)a3;
- (id)tombstoneDSLPublisherWithUseCase:(id)a3;
- (id)tombstoneEventPublisherForAccount:(id)a3 device:(id)a4 useCase:(id)a5 options:(id)a6;
- (id)tombstoneEventPublisherForDevice:(id)a3 useCase:(id)a4 options:(id)a5;
- (id)tombstoneEventPublisherWithUseCase:(id)a3 options:(id)a4;
- (id)tombstonePublisherWithUseCase:(id)a3 account:(id)a4 device:(id)a5 options:(id)a6;
- (id)tombstonePublisherWithUseCase:(id)a3 device:(id)a4 options:(id)a5;
- (id)tombstonePublisherWithUseCase:(id)a3 options:(id)a4;
- (id)tombstoneStoreStreamForUseCase:(id)a3;
- (void)_executePruningPolicyOnSubscriptionSubstream;
- (void)_pruneDisabledSubstreams;
- (void)_pruneEmptyRemotesNotRecentlyModified;
- (void)executePruningPolicyForAccount:(id)a3;
@end

@implementation BMStreamBase

- (id)source
{
  v2 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E960]];
  v3 = [v2 source];

  return v3;
}

- (id)pruner
{
  v2 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E950]];
  v3 = [[BMPruner alloc] initWithStoreStream:v2 remote:0];

  return v3;
}

- (id)tombstoneStoreStreamForUseCase:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamBase *)self configuration];
  v6 = [v5 enableTombstoneSubstream];

  if (v6)
  {
    v7 = [(BMStreamBase *)self identifier];
    v8 = [v7 stringByAppendingString:@":tombstones"];

    v9 = [BMStoreStream alloc];
    v10 = [(BMStreamBase *)self configuration];
    v11 = [v10 storeConfig];
    v12 = [v11 tombstonesConfig];
    v13 = [(BMStoreStream *)v9 initWithStreamIdentifier:v8 storeConfig:v12 streamType:2 eventDataClass:objc_opt_class() useCase:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tombstonePublisherWithUseCase:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMStreamBase *)self configuration];
  v9 = [v8 enableTombstoneSubstream];

  if (v9)
  {
    v10 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v6];
    v11 = [v10 _publisherWithOptions:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tombstonePublisherWithUseCase:(id)a3 device:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BMStreamBase *)self configuration];
  v12 = [v11 enableTombstoneSubstream];

  if (v12)
  {
    v13 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v8];
    v14 = [v13 _publisherForDevice:v9 options:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)tombstonePublisherWithUseCase:(id)a3 account:(id)a4 device:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BMStreamBase *)self configuration];
  v15 = [v14 enableTombstoneSubstream];

  if (v15)
  {
    v16 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v10 account:v11];
    v17 = [v16 _publisherForDevice:v12 options:v13];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)tombstoneDSLPublisherWithUseCase:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamBase *)self configuration];
  v6 = [v5 enableTombstoneSubstream];

  if (v6)
  {
    v7 = [(BMStreamBase *)self identifier];
    v8 = [v7 stringByAppendingString:@":tombstones"];

    v9 = [[BMDSLStreamPublisher alloc] initWithIdentifier:v8 streamType:2 useCase:v4 eventDataClass:objc_opt_class()];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tombstoneEventPublisherWithUseCase:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMStreamBase *)self configuration];
  v9 = [v8 enableTombstoneSubstream];

  if (v9)
  {
    v10 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v6];
    v11 = [v10 _publisherWithOptions:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tombstoneEventPublisherForDevice:(id)a3 useCase:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BMStreamBase *)self configuration];
  v12 = [v11 enableTombstoneSubstream];

  if (v12)
  {
    v13 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v9];
    v14 = [v13 _publisherForDevice:v8 options:v10];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)tombstoneEventPublisherForAccount:(id)a3 device:(id)a4 useCase:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BMStreamBase *)self configuration];
  v15 = [v14 enableTombstoneSubstream];

  if (v15)
  {
    v16 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:v12 account:v10];
    v17 = v16;
    if (v11)
    {
      [v16 _publisherForDevice:v11 options:v13];
    }

    else
    {
      [v16 _publisherWithOptions:v13];
    }
    v18 = ;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BMStreamBase)initWithIdentifier:(id)a3 schema:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = BMStreamBase;
  v11 = [(BMStreamBase *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [v8 copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_schema, a4);
    objc_storeStrong(&v12->_configuration, a5);
  }

  return v12;
}

- (id)_storeStreamForUseCase:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  storeStream = self->_storeStream;
  if (!storeStream)
  {
LABEL_4:
    v9 = [BMStoreStream alloc];
    v6 = [(BMStreamConfiguration *)self->_configuration streamIdentifier];
    v10 = [(BMStreamConfiguration *)self->_configuration storeConfig];
    v11 = [(BMStoreStream *)v9 initWithStreamIdentifier:v6 storeConfig:v10 streamType:2 eventDataClass:[(BMStreamConfiguration *)self->_configuration eventClass] useCase:v4];
    v12 = self->_storeStream;
    self->_storeStream = v11;

    goto LABEL_5;
  }

  v6 = [(BMStoreStream *)storeStream useCase];
  if (v6 != v4)
  {
    v7 = [(BMStoreStream *)self->_storeStream useCase];
    v8 = [v7 isEqualToString:v4];

    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_5:

LABEL_6:
  v13 = self->_storeStream;
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (id)storeStreamWithLegacyClass:(Class)a3
{
  v5 = [BMStoreStream alloc];
  v6 = [(BMStreamConfiguration *)self->_configuration streamIdentifier];
  v7 = [(BMStreamConfiguration *)self->_configuration storeConfig];
  v8 = [(BMStoreStream *)v5 initWithStreamIdentifier:v6 storeConfig:v7 streamType:2 eventDataClass:a3 useCase:*MEMORY[0x1E698E928]];

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<BMStream identifier:%@>", self->_identifier];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMStreamBase *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)publisherWithUseCase:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = [(BMStreamBase *)self _storeStreamForUseCase:a3];
  v8 = [v7 _publisherWithOptions:v6];

  return v8;
}

- (id)DSLPublisherWithUseCase:(id)a3
{
  v4 = a3;
  v5 = [BMDSLStreamPublisher alloc];
  v6 = [(BMStreamBase *)self identifier];
  v7 = [(BMDSLStreamPublisher *)v5 initWithIdentifier:v6 streamType:2 useCase:v4 eventDataClass:[(BMStreamConfiguration *)self->_configuration eventClass]];

  return v7;
}

- (id)sourceWithUser:(unsigned int)a3
{
  v5 = [(BMStreamConfiguration *)self->_configuration storeConfig];
  v6 = [v5 domain];

  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_8;
    }

    if (a3 != 501)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(BMStreamBase *)a3 sourceWithUser:v8];
      }
    }
  }

  v7 = [(BMStreamBase *)self source];
LABEL_8:

  return v7;
}

- (id)publisherWithUser:(unsigned int)a3 useCase:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(BMStreamConfiguration *)self->_configuration storeConfig];
  v11 = [v10 domain];

  if (v11 != 1)
  {
    if (v11)
    {
      goto LABEL_8;
    }

    if (a3 != 501)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMStreamBase publisherWithUser:a3 useCase:v12 options:?];
      }
    }
  }

  v10 = [(BMStreamBase *)self publisherWithUseCase:v8 options:v9];
LABEL_8:

  return v10;
}

- (id)prunerForDevice:(id)a3
{
  v4 = *MEMORY[0x1E698E950];
  v5 = a3;
  v6 = [(BMStreamBase *)self _storeStreamForUseCase:v4];
  v7 = [BMPruner alloc];
  v8 = [v5 deviceIdentifier];

  v9 = [(BMPruner *)v7 initWithStoreStream:v6 remote:v8];

  return v9;
}

- (id)publishersForDevices:(id)a3 withUseCase:(id)a4 startTime:(id)a5 endTime:(id)a6 maxEvents:(id)a7 lastN:(id)a8 reversed:(BOOL)a9 includeLocal:(BOOL)a10 pipeline:(id)a11
{
  v18 = a11;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a3;
  v24 = [(BMStreamBase *)self _storeStreamForUseCase:a4];
  LOBYTE(v27) = a10;
  v25 = [v24 publishersForDevices:v23 startTime:v22 endTime:v21 maxEvents:v20 lastN:v19 reversed:a9 includeLocal:v27 pipeline:v18];

  return v25;
}

- (id)publisherForDevice:(id)a3 withUseCase:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BMStreamBase *)self _storeStreamForUseCase:v6];
  v9 = [v8 publisherForDevice:v7 withUseCase:v6];

  return v9;
}

- (id)publisherForDevice:(id)a3 withUseCase:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BMStreamBase *)self _storeStreamForUseCase:v9];
  v12 = [v11 publisherForDevice:v10 withUseCase:v9 options:v8];

  return v12;
}

- (id)remoteDevicesWithError:(id *)a3
{
  v4 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E928]];
  v5 = [v4 remoteDevicesWithError:a3];

  return v5;
}

- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4
{
  v6 = *MEMORY[0x1E698E928];
  v7 = a3;
  v8 = [(BMStreamBase *)self _storeStreamForUseCase:v6];
  v9 = [v8 remoteDevicesForAccount:v7 error:a4];

  return v9;
}

- (id)publishersForRemoteDevices:(id)a3 startTime:(id)a4 endTime:(id)a5 maxEvents:(id)a6 lastN:(id)a7 reversed:(BOOL)a8 includeLocal:(BOOL)a9 pipeline:(id)a10
{
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_5];
  BYTE1(v25) = a9;
  LOBYTE(v25) = a8;
  v23 = [(BMStreamBase *)self publishersForDevices:v22 withUseCase:*MEMORY[0x1E698E928] startTime:v21 endTime:v20 maxEvents:v19 lastN:v18 reversed:v25 includeLocal:v17 pipeline:?];

  return v23;
}

id __108__BMStreamBase_publishersForRemoteDevices_startTime_endTime_maxEvents_lastN_reversed_includeLocal_pipeline___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F358];
  v3 = a2;
  v4 = [[v2 alloc] initWithDeviceIdentifier:v3 idsDeviceIdentifier:0 name:0 model:0 platform:0];

  return v4;
}

id __75__BMStreamBase_publishersForRemoteDevices_startTime_includeLocal_pipeline___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F358];
  v3 = a2;
  v4 = [[v2 alloc] initWithDeviceIdentifier:v3 idsDeviceIdentifier:0 name:0 model:0 platform:0];

  return v4;
}

- (id)remoteDevices
{
  v2 = [(BMStreamBase *)self remoteDevicesWithError:0];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_72];

  return v3;
}

- (id)sharedDeviceAccountsWithUseCase:(id)a3
{
  v3 = MEMORY[0x1E698E980];
  v4 = a3;
  v5 = [[v3 alloc] initWithUseCase:v4];

  if (v5)
  {
    v6 = [v5 accounts];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)publishersForAccounts:(id)a3 deviceTypes:(unint64_t)a4 includeLocal:(BOOL)a5 options:(id)a6 useCase:(id)a7 pipeline:(id)a8
{
  v32 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v35 = a6;
  v12 = a7;
  v13 = a8;
  v34 = v12;
  v33 = [objc_alloc(MEMORY[0x1E698E980]) initWithUseCase:v12];
  if (v33)
  {
    v14 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = v11;
    obj = v11;
    v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v36)
    {
      v30 = *v45;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v45 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          v39 = [v33 deviceIdentifiersForAccount:{v16, v28}];
          v17 = [v39 _pas_mappedArrayWithTransform:&__block_literal_global_76];
          v37 = [(BMStreamBase *)self _storeStreamForAccount:v16 useCase:v34];
          v38 = v17;
          v18 = [v37 _publishersForDevices:v17 includeLocal:v32 options:v35];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = [v18 publishers];
          v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v41;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v41 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = v13[2](v13, *(*(&v40 + 1) + 8 * j));
                [v14 addObject:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v21);
          }
        }

        v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v36);
    }

    v25 = [[BMSharedPublishers alloc] initWithPublishers:v14];
    v11 = v28;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

id __88__BMStreamBase_publishersForAccounts_deviceTypes_includeLocal_options_useCase_pipeline___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F358];
  v3 = a2;
  v4 = [[v2 alloc] initWithDeviceIdentifier:v3 idsDeviceIdentifier:0 name:0 model:0 platform:0];

  return v4;
}

- (id)publisherForAccount:(id)a3 device:(id)a4 withUseCase:(id)a5
{
  v8 = a4;
  v9 = [(BMStreamBase *)self _storeStreamForAccount:a3 useCase:a5];
  v10 = objc_opt_new();
  v11 = [v9 _publisherForDevice:v8 options:v10];

  return v11;
}

- (id)publisherForAccount:(id)a3 device:(id)a4 withUseCase:(id)a5 options:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(BMStreamBase *)self _storeStreamForAccount:a3 useCase:a5];
  v13 = [v12 _publisherForDevice:v11 options:v10];

  return v13;
}

- (void)executePruningPolicyForAccount:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E948]];
  v6 = [v5 storeConfig];
  v7 = [v6 pruningPolicy];

  if (!v7)
  {
    v8 = __biome_log_for_category();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__BMStreamBase_PeriodicMaintenance__executePruningPolicyForAccount___block_invoke;
    block[3] = &unk_1E6E52EB0;
    block[4] = &buf;
    if (executePruningPolicyForAccount__onceToken != -1)
    {
      dispatch_once(&executePruningPolicyForAccount__onceToken, block);
    }

    v9 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(BMStreamBase *)self identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1848EE000, v8, v9, "Tried to prune stream with no pruning policy: %@", &buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:2419200.0];
  }

  v11 = [v7 maxStreamSize];
  if (v11 != *MEMORY[0x1E698F110])
  {
    [v5 pruneStreamBySize:{objc_msgSend(v7, "maxStreamSize")}];
  }

  [v7 maxAge];
  if (v12 != *MEMORY[0x1E698F100])
  {
    [v5 pruneExpiredEventsWithBlock:&__block_literal_global_8];
  }

  v13 = [v7 maxEventCount];
  if (v13 != *MEMORY[0x1E698F108])
  {
    [v5 pruneStreamToMaxCount:{objc_msgSend(v7, "maxEventCount")}];
  }

  if (!a3)
  {
    [(BMStreamBase *)self _executePruningPolicyOnSubscriptionSubstream];
  }

  [(BMStreamBase *)self _pruneEmptyRemotesNotRecentlyModified];
  [(BMStreamBase *)self _pruneDisabledSubstreams];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_executePruningPolicyOnSubscriptionSubstream
{
  v3 = [(BMStreamBase *)self configuration];
  v4 = [v3 enableSubscriptionSubstream];

  if (v4)
  {
    v5 = [(BMStreamBase *)self configuration];
    v6 = [v5 storeConfig];
    v7 = [v6 subscriptionsConfig];
    v8 = [v7 pruningPolicy];

    v9 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:*MEMORY[0x1E698E950]];
    [v9 pruneStreamBySize:{objc_msgSend(v8, "maxStreamSize")}];
    Current = CFAbsoluteTimeGetCurrent();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke;
    aBlock[3] = &unk_1E6E53188;
    v27 = Current;
    v26 = v8;
    v11 = v8;
    v12 = _Block_copy(aBlock);
    v13 = *MEMORY[0x1E698E948];
    v14 = objc_opt_new();
    v15 = [(BMStreamBase *)self subscriptionPublisherWithUseCase:v13 options:v14];

    v16 = [BMPairedEventSession sessionPublisherWithStreamPublisher:v15 startingBlock:&__block_literal_global_12 sessionKeyBlock:&__block_literal_global_15 options:4];
    v17 = [(BMStreamBase *)self subscriptionPruner];
    v23 = v12;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_4;
    v24[3] = &unk_1E6E531F0;
    v24[4] = self;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_18;
    v21[3] = &unk_1E6E53218;
    v22 = v17;
    v18 = v17;
    v19 = v12;
    v20 = [v16 sinkWithCompletion:v24 receiveInput:v21];
  }
}

BOOL __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  [a2 timestamp];
  v5 = v3 - v4;
  [*(a1 + 32) maxAge];
  return v5 > v6;
}

uint64_t __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

id __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_3(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 eventBody];
  v4 = [v3 client];
  v10[0] = v4;
  v5 = [v2 eventBody];

  v6 = [v5 identifier];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  if (v3)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_4_cold_1(a1, v3, v4);
    }
  }
}

void __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke_18(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 endEvent];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [v15 endEvent];
    LODWORD(v4) = (*(v4 + 16))(v4, v5);

    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = [v15 startEvent];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v15 startEvent];
      [v7 deleteStoreEvent:v8];
    }

    v9 = *(a1 + 32);
    v10 = [v15 endEvent];
    goto LABEL_9;
  }

  v11 = [v15 startEvent];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [v15 startEvent];
    LODWORD(v12) = (*(v12 + 16))(v12, v13);

    if (v12)
    {
      v9 = *(a1 + 32);
      v10 = [v15 startEvent];
LABEL_9:
      v14 = v10;
      [v9 deleteStoreEvent:v10];
    }
  }

LABEL_10:
}

+ (BOOL)_atLeastOneSegmentFileInDirectory:(id)a3 fileManager:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = [a4 contentsOfDirectoryAtPath:a3 error:&v17];
  v5 = v17;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (_PASIsAllDigits())
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_pruneEmptyRemotesNotRecentlyModified
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(BMStreamBase *)self configuration];
  v4 = [v3 storeConfig];
  v5 = [v4 datastorePath];
  v6 = [(BMStreamBase *)self identifier];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v28 = v7;
  v8 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v7 cachingOptions:0];
  v9 = [MEMORY[0x1E698EA08] remoteDevices];
  v36 = 0;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:&v36];
  v11 = v36;

  v12 = objc_opt_new();
  [v12 timeIntervalSince1970];
  v14 = v13;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = MEMORY[0x1E696AEC0];
        v21 = [MEMORY[0x1E698EA08] remoteDevices];
        v39[0] = v21;
        v39[1] = v19;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
        v23 = [v20 pathWithComponents:v22];

        if (([objc_opt_class() _atLeastOneSegmentFileInDirectory:v23 fileManager:v8] & 1) == 0)
        {
          v31 = v11;
          v24 = [v8 modificationTimeOfFileAtPath:v23 error:&v31];
          v25 = v31;

          if (v25)
          {
            v11 = v25;
LABEL_9:
            v26 = __biome_log_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [(BMStreamBase(PeriodicMaintenance) *)&v37 _pruneEmptyRemotesNotRecentlyModified];
            }

            goto LABEL_16;
          }

          if (v24 >= (v14 + -259200.0))
          {
            v11 = 0;
            goto LABEL_16;
          }

          v30 = 0;
          [v8 removeDirectoryAtPath:v23 error:&v30];
          v11 = v30;
          if (v11)
          {
            goto LABEL_9;
          }
        }

LABEL_16:
      }

      v16 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_pruneDisabledSubstreams
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMStreamBase *)self configuration];
  v5 = [v4 enableSubscriptionSubstream];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x1E698EA08] subscriptions];
    [v3 addObject:v6];
  }

  v7 = [(BMStreamBase *)self configuration];
  v8 = [v7 enableTombstoneSubstream];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E698EA08] localDevice];
    v10 = [MEMORY[0x1E698EA08] tombstones];
    v11 = [v9 stringByAppendingPathComponent:v10];
    [v3 addObject:v11];
  }

  if ([v3 count])
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(BMStreamBase(PeriodicMaintenance) *)v12 _pruneDisabledSubstreams];
    }

    v13 = [(BMStreamBase *)self configuration];
    v14 = [v13 storeConfig];
    v15 = [v14 datastorePath];
    v16 = [(BMStreamBase *)self identifier];
    v17 = [v15 stringByAppendingPathComponent:v16];

    v18 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v17 cachingOptions:0];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v17;
    v19 = [v17 stringsByAppendingPaths:v3];
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        v23 = 0;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * v23);
          v30 = 0;
          v25 = [v18 removeDirectoryAtPath:v24 error:&v30];
          v26 = v30;
          if ((v25 & 1) == 0)
          {
            v27 = __biome_log_for_category();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [(BMStreamBase(PeriodicMaintenance) *)&v35 _pruneDisabledSubstreams];
            }
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v21);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)subscriptionStoreStreamForUseCase:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamBase *)self configuration];
  v6 = [v5 enableSubscriptionSubstream];

  if (v6)
  {
    v7 = [(BMStreamBase *)self identifier];
    v8 = [v7 stringByAppendingString:@":subscriptions"];

    v9 = [BMStoreStream alloc];
    v10 = [(BMStreamBase *)self configuration];
    v11 = [v10 storeConfig];
    v12 = [v11 subscriptionsConfig];
    v13 = [(BMStoreStream *)v9 initWithStreamIdentifier:v8 storeConfig:v12 streamType:2 eventDataClass:objc_opt_class() useCase:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)subscriptionSource
{
  v3 = [(BMStreamBase *)self configuration];
  v4 = [v3 enableSubscriptionSubstream];

  if (v4)
  {
    v5 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:*MEMORY[0x1E698E960]];
    v6 = [v5 source];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)subscriptionPruner
{
  v3 = [(BMStreamBase *)self configuration];
  v4 = [v3 enableSubscriptionSubstream];

  if (v4)
  {
    v5 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:*MEMORY[0x1E698E950]];
    v6 = [[BMPruner alloc] initWithStoreStream:v5 remote:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)subscriptionPublisherWithUseCase:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMStreamBase *)self configuration];
  v9 = [v8 enableSubscriptionSubstream];

  if (v9)
  {
    v10 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:v6];
    v11 = [v10 _publisherWithOptions:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)subscriptionDSLPublisherWithUseCase:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamBase *)self configuration];
  v6 = [v5 enableSubscriptionSubstream];

  if (v6)
  {
    v7 = [(BMStreamBase *)self identifier];
    v8 = [v7 stringByAppendingString:@":subscriptions"];

    v9 = [[BMDSLStreamPublisher alloc] initWithIdentifier:v8 streamType:2 useCase:v4 eventDataClass:objc_opt_class()];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end