@interface BMStreamBase
+ (BOOL)_atLeastOneSegmentFileInDirectory:(id)directory fileManager:(id)manager;
- (BMStreamBase)initWithIdentifier:(id)identifier schema:(id)schema configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (id)DSLPublisherWithUseCase:(id)case;
- (id)_storeStreamForUseCase:(id)case;
- (id)description;
- (id)pruner;
- (id)prunerForDevice:(id)device;
- (id)publisherForAccount:(id)account device:(id)device withUseCase:(id)case;
- (id)publisherForAccount:(id)account device:(id)device withUseCase:(id)case options:(id)options;
- (id)publisherForDevice:(id)device withUseCase:(id)case;
- (id)publisherForDevice:(id)device withUseCase:(id)case options:(id)options;
- (id)publisherWithUseCase:(id)case options:(id)options;
- (id)publisherWithUser:(unsigned int)user useCase:(id)case options:(id)options;
- (id)publishersForAccounts:(id)accounts deviceTypes:(unint64_t)types includeLocal:(BOOL)local options:(id)options useCase:(id)case pipeline:(id)pipeline;
- (id)publishersForDevices:(id)devices withUseCase:(id)case startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)self0 pipeline:(id)self1;
- (id)publishersForRemoteDevices:(id)devices startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)local pipeline:(id)self0;
- (id)remoteDevices;
- (id)remoteDevicesForAccount:(id)account error:(id *)error;
- (id)remoteDevicesWithError:(id *)error;
- (id)sharedDeviceAccountsWithUseCase:(id)case;
- (id)source;
- (id)sourceWithUser:(unsigned int)user;
- (id)storeStreamWithLegacyClass:(Class)class;
- (id)subscriptionDSLPublisherWithUseCase:(id)case;
- (id)subscriptionPruner;
- (id)subscriptionPublisherWithUseCase:(id)case options:(id)options;
- (id)subscriptionSource;
- (id)subscriptionStoreStreamForUseCase:(id)case;
- (id)tombstoneDSLPublisherWithUseCase:(id)case;
- (id)tombstoneEventPublisherForAccount:(id)account device:(id)device useCase:(id)case options:(id)options;
- (id)tombstoneEventPublisherForDevice:(id)device useCase:(id)case options:(id)options;
- (id)tombstoneEventPublisherWithUseCase:(id)case options:(id)options;
- (id)tombstonePublisherWithUseCase:(id)case account:(id)account device:(id)device options:(id)options;
- (id)tombstonePublisherWithUseCase:(id)case device:(id)device options:(id)options;
- (id)tombstonePublisherWithUseCase:(id)case options:(id)options;
- (id)tombstoneStoreStreamForUseCase:(id)case;
- (void)_executePruningPolicyOnSubscriptionSubstream;
- (void)_pruneDisabledSubstreams;
- (void)_pruneEmptyRemotesNotRecentlyModified;
- (void)executePruningPolicyForAccount:(id)account;
@end

@implementation BMStreamBase

- (id)source
{
  v2 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E960]];
  source = [v2 source];

  return source;
}

- (id)pruner
{
  v2 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E950]];
  v3 = [[BMPruner alloc] initWithStoreStream:v2 remote:0];

  return v3;
}

- (id)tombstoneStoreStreamForUseCase:(id)case
{
  caseCopy = case;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    identifier = [(BMStreamBase *)self identifier];
    v8 = [identifier stringByAppendingString:@":tombstones"];

    v9 = [BMStoreStream alloc];
    configuration2 = [(BMStreamBase *)self configuration];
    storeConfig = [configuration2 storeConfig];
    tombstonesConfig = [storeConfig tombstonesConfig];
    v13 = [(BMStoreStream *)v9 initWithStreamIdentifier:v8 storeConfig:tombstonesConfig streamType:2 eventDataClass:objc_opt_class() useCase:caseCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)tombstonePublisherWithUseCase:(id)case options:(id)options
{
  caseCopy = case;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v10 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy];
    v11 = [v10 _publisherWithOptions:optionsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tombstonePublisherWithUseCase:(id)case device:(id)device options:(id)options
{
  caseCopy = case;
  deviceCopy = device;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v13 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy];
    v14 = [v13 _publisherForDevice:deviceCopy options:optionsCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)tombstonePublisherWithUseCase:(id)case account:(id)account device:(id)device options:(id)options
{
  caseCopy = case;
  accountCopy = account;
  deviceCopy = device;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v16 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy account:accountCopy];
    v17 = [v16 _publisherForDevice:deviceCopy options:optionsCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)tombstoneDSLPublisherWithUseCase:(id)case
{
  caseCopy = case;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    identifier = [(BMStreamBase *)self identifier];
    v8 = [identifier stringByAppendingString:@":tombstones"];

    v9 = [[BMDSLStreamPublisher alloc] initWithIdentifier:v8 streamType:2 useCase:caseCopy eventDataClass:objc_opt_class()];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)tombstoneEventPublisherWithUseCase:(id)case options:(id)options
{
  caseCopy = case;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v10 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy];
    v11 = [v10 _publisherWithOptions:optionsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)tombstoneEventPublisherForDevice:(id)device useCase:(id)case options:(id)options
{
  deviceCopy = device;
  caseCopy = case;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v13 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy];
    v14 = [v13 _publisherForDevice:deviceCopy options:optionsCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)tombstoneEventPublisherForAccount:(id)account device:(id)device useCase:(id)case options:(id)options
{
  accountCopy = account;
  deviceCopy = device;
  caseCopy = case;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration enableTombstoneSubstream];

  if (enableTombstoneSubstream)
  {
    v16 = [(BMStreamBase *)self tombstoneStoreStreamForUseCase:caseCopy account:accountCopy];
    v17 = v16;
    if (deviceCopy)
    {
      [v16 _publisherForDevice:deviceCopy options:optionsCopy];
    }

    else
    {
      [v16 _publisherWithOptions:optionsCopy];
    }
    v18 = ;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BMStreamBase)initWithIdentifier:(id)identifier schema:(id)schema configuration:(id)configuration
{
  identifierCopy = identifier;
  schemaCopy = schema;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = BMStreamBase;
  v11 = [(BMStreamBase *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_schema, schema);
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v12;
}

- (id)_storeStreamForUseCase:(id)case
{
  caseCopy = case;
  os_unfair_lock_lock(&self->_lock);
  storeStream = self->_storeStream;
  if (!storeStream)
  {
LABEL_4:
    v9 = [BMStoreStream alloc];
    streamIdentifier = [(BMStreamConfiguration *)self->_configuration streamIdentifier];
    storeConfig = [(BMStreamConfiguration *)self->_configuration storeConfig];
    v11 = [(BMStoreStream *)v9 initWithStreamIdentifier:streamIdentifier storeConfig:storeConfig streamType:2 eventDataClass:[(BMStreamConfiguration *)self->_configuration eventClass] useCase:caseCopy];
    v12 = self->_storeStream;
    self->_storeStream = v11;

    goto LABEL_5;
  }

  streamIdentifier = [(BMStoreStream *)storeStream useCase];
  if (streamIdentifier != caseCopy)
  {
    useCase = [(BMStoreStream *)self->_storeStream useCase];
    v8 = [useCase isEqualToString:caseCopy];

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

- (id)storeStreamWithLegacyClass:(Class)class
{
  v5 = [BMStoreStream alloc];
  streamIdentifier = [(BMStreamConfiguration *)self->_configuration streamIdentifier];
  storeConfig = [(BMStreamConfiguration *)self->_configuration storeConfig];
  v8 = [(BMStoreStream *)v5 initWithStreamIdentifier:streamIdentifier storeConfig:storeConfig streamType:2 eventDataClass:class useCase:*MEMORY[0x1E698E928]];

  return v8;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<BMStream identifier:%@>", self->_identifier];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMStreamBase *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)publisherWithUseCase:(id)case options:(id)options
{
  optionsCopy = options;
  v7 = [(BMStreamBase *)self _storeStreamForUseCase:case];
  v8 = [v7 _publisherWithOptions:optionsCopy];

  return v8;
}

- (id)DSLPublisherWithUseCase:(id)case
{
  caseCopy = case;
  v5 = [BMDSLStreamPublisher alloc];
  identifier = [(BMStreamBase *)self identifier];
  v7 = [(BMDSLStreamPublisher *)v5 initWithIdentifier:identifier streamType:2 useCase:caseCopy eventDataClass:[(BMStreamConfiguration *)self->_configuration eventClass]];

  return v7;
}

- (id)sourceWithUser:(unsigned int)user
{
  storeConfig = [(BMStreamConfiguration *)self->_configuration storeConfig];
  domain = [storeConfig domain];

  if (domain != 1)
  {
    if (domain)
    {
      goto LABEL_8;
    }

    if (user != 501)
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(BMStreamBase *)user sourceWithUser:v8];
      }
    }
  }

  source = [(BMStreamBase *)self source];
LABEL_8:

  return source;
}

- (id)publisherWithUser:(unsigned int)user useCase:(id)case options:(id)options
{
  caseCopy = case;
  optionsCopy = options;
  storeConfig = [(BMStreamConfiguration *)self->_configuration storeConfig];
  domain = [storeConfig domain];

  if (domain != 1)
  {
    if (domain)
    {
      goto LABEL_8;
    }

    if (user != 501)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [BMStreamBase publisherWithUser:user useCase:v12 options:?];
      }
    }
  }

  storeConfig = [(BMStreamBase *)self publisherWithUseCase:caseCopy options:optionsCopy];
LABEL_8:

  return storeConfig;
}

- (id)prunerForDevice:(id)device
{
  v4 = *MEMORY[0x1E698E950];
  deviceCopy = device;
  v6 = [(BMStreamBase *)self _storeStreamForUseCase:v4];
  v7 = [BMPruner alloc];
  deviceIdentifier = [deviceCopy deviceIdentifier];

  v9 = [(BMPruner *)v7 initWithStoreStream:v6 remote:deviceIdentifier];

  return v9;
}

- (id)publishersForDevices:(id)devices withUseCase:(id)case startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)self0 pipeline:(id)self1
{
  pipelineCopy = pipeline;
  nCopy = n;
  eventsCopy = events;
  endTimeCopy = endTime;
  timeCopy = time;
  devicesCopy = devices;
  v24 = [(BMStreamBase *)self _storeStreamForUseCase:case];
  LOBYTE(v27) = local;
  v25 = [v24 publishersForDevices:devicesCopy startTime:timeCopy endTime:endTimeCopy maxEvents:eventsCopy lastN:nCopy reversed:reversed includeLocal:v27 pipeline:pipelineCopy];

  return v25;
}

- (id)publisherForDevice:(id)device withUseCase:(id)case
{
  caseCopy = case;
  deviceCopy = device;
  v8 = [(BMStreamBase *)self _storeStreamForUseCase:caseCopy];
  v9 = [v8 publisherForDevice:deviceCopy withUseCase:caseCopy];

  return v9;
}

- (id)publisherForDevice:(id)device withUseCase:(id)case options:(id)options
{
  optionsCopy = options;
  caseCopy = case;
  deviceCopy = device;
  v11 = [(BMStreamBase *)self _storeStreamForUseCase:caseCopy];
  v12 = [v11 publisherForDevice:deviceCopy withUseCase:caseCopy options:optionsCopy];

  return v12;
}

- (id)remoteDevicesWithError:(id *)error
{
  v4 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E928]];
  v5 = [v4 remoteDevicesWithError:error];

  return v5;
}

- (id)remoteDevicesForAccount:(id)account error:(id *)error
{
  v6 = *MEMORY[0x1E698E928];
  accountCopy = account;
  v8 = [(BMStreamBase *)self _storeStreamForUseCase:v6];
  v9 = [v8 remoteDevicesForAccount:accountCopy error:error];

  return v9;
}

- (id)publishersForRemoteDevices:(id)devices startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)local pipeline:(id)self0
{
  pipelineCopy = pipeline;
  nCopy = n;
  eventsCopy = events;
  endTimeCopy = endTime;
  timeCopy = time;
  v22 = [devices _pas_mappedArrayWithTransform:&__block_literal_global_5];
  BYTE1(v25) = local;
  LOBYTE(v25) = reversed;
  v23 = [(BMStreamBase *)self publishersForDevices:v22 withUseCase:*MEMORY[0x1E698E928] startTime:timeCopy endTime:endTimeCopy maxEvents:eventsCopy lastN:nCopy reversed:v25 includeLocal:pipelineCopy pipeline:?];

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

- (id)sharedDeviceAccountsWithUseCase:(id)case
{
  v3 = MEMORY[0x1E698E980];
  caseCopy = case;
  v5 = [[v3 alloc] initWithUseCase:caseCopy];

  if (v5)
  {
    accounts = [v5 accounts];
  }

  else
  {
    accounts = 0;
  }

  return accounts;
}

- (id)publishersForAccounts:(id)accounts deviceTypes:(unint64_t)types includeLocal:(BOOL)local options:(id)options useCase:(id)case pipeline:(id)pipeline
{
  localCopy = local;
  v50 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  optionsCopy = options;
  caseCopy = case;
  pipelineCopy = pipeline;
  v34 = caseCopy;
  v33 = [objc_alloc(MEMORY[0x1E698E980]) initWithUseCase:caseCopy];
  if (v33)
  {
    v14 = objc_opt_new();
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = accountsCopy;
    obj = accountsCopy;
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
          v18 = [v37 _publishersForDevices:v17 includeLocal:localCopy options:optionsCopy];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          publishers = [v18 publishers];
          v20 = [publishers countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                  objc_enumerationMutation(publishers);
                }

                v24 = pipelineCopy[2](pipelineCopy, *(*(&v40 + 1) + 8 * j));
                [v14 addObject:v24];
              }

              v21 = [publishers countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v21);
          }
        }

        v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v36);
    }

    v25 = [[BMSharedPublishers alloc] initWithPublishers:v14];
    accountsCopy = v28;
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

- (id)publisherForAccount:(id)account device:(id)device withUseCase:(id)case
{
  deviceCopy = device;
  v9 = [(BMStreamBase *)self _storeStreamForAccount:account useCase:case];
  v10 = objc_opt_new();
  v11 = [v9 _publisherForDevice:deviceCopy options:v10];

  return v11;
}

- (id)publisherForAccount:(id)account device:(id)device withUseCase:(id)case options:(id)options
{
  optionsCopy = options;
  deviceCopy = device;
  v12 = [(BMStreamBase *)self _storeStreamForAccount:account useCase:case];
  v13 = [v12 _publisherForDevice:deviceCopy options:optionsCopy];

  return v13;
}

- (void)executePruningPolicyForAccount:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(BMStreamBase *)self _storeStreamForUseCase:*MEMORY[0x1E698E948]];
  storeConfig = [v5 storeConfig];
  pruningPolicy = [storeConfig pruningPolicy];

  if (!pruningPolicy)
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
      identifier = [(BMStreamBase *)self identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifier;
      _os_log_impl(&dword_1848EE000, v8, v9, "Tried to prune stream with no pruning policy: %@", &buf, 0xCu);
    }

    pruningPolicy = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:2419200.0];
  }

  maxStreamSize = [pruningPolicy maxStreamSize];
  if (maxStreamSize != *MEMORY[0x1E698F110])
  {
    [v5 pruneStreamBySize:{objc_msgSend(pruningPolicy, "maxStreamSize")}];
  }

  [pruningPolicy maxAge];
  if (v12 != *MEMORY[0x1E698F100])
  {
    [v5 pruneExpiredEventsWithBlock:&__block_literal_global_8];
  }

  maxEventCount = [pruningPolicy maxEventCount];
  if (maxEventCount != *MEMORY[0x1E698F108])
  {
    [v5 pruneStreamToMaxCount:{objc_msgSend(pruningPolicy, "maxEventCount")}];
  }

  if (!account)
  {
    [(BMStreamBase *)self _executePruningPolicyOnSubscriptionSubstream];
  }

  [(BMStreamBase *)self _pruneEmptyRemotesNotRecentlyModified];
  [(BMStreamBase *)self _pruneDisabledSubstreams];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_executePruningPolicyOnSubscriptionSubstream
{
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
  {
    configuration2 = [(BMStreamBase *)self configuration];
    storeConfig = [configuration2 storeConfig];
    subscriptionsConfig = [storeConfig subscriptionsConfig];
    pruningPolicy = [subscriptionsConfig pruningPolicy];

    v9 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:*MEMORY[0x1E698E950]];
    [v9 pruneStreamBySize:{objc_msgSend(pruningPolicy, "maxStreamSize")}];
    Current = CFAbsoluteTimeGetCurrent();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81__BMStreamBase_PeriodicMaintenance___executePruningPolicyOnSubscriptionSubstream__block_invoke;
    aBlock[3] = &unk_1E6E53188;
    v27 = Current;
    v26 = pruningPolicy;
    v11 = pruningPolicy;
    v12 = _Block_copy(aBlock);
    v13 = *MEMORY[0x1E698E948];
    v14 = objc_opt_new();
    v15 = [(BMStreamBase *)self subscriptionPublisherWithUseCase:v13 options:v14];

    v16 = [BMPairedEventSession sessionPublisherWithStreamPublisher:v15 startingBlock:&__block_literal_global_12 sessionKeyBlock:&__block_literal_global_15 options:4];
    subscriptionPruner = [(BMStreamBase *)self subscriptionPruner];
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
    v22 = subscriptionPruner;
    v18 = subscriptionPruner;
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

+ (BOOL)_atLeastOneSegmentFileInDirectory:(id)directory fileManager:(id)manager
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v4 = [manager contentsOfDirectoryAtPath:directory error:&v17];
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
  configuration = [(BMStreamBase *)self configuration];
  storeConfig = [configuration storeConfig];
  datastorePath = [storeConfig datastorePath];
  identifier = [(BMStreamBase *)self identifier];
  v7 = [datastorePath stringByAppendingPathComponent:identifier];

  v28 = v7;
  v8 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v7 cachingOptions:0];
  remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
  v36 = 0;
  v10 = [v8 contentsOfDirectoryAtPath:remoteDevices error:&v36];
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
        remoteDevices2 = [MEMORY[0x1E698EA08] remoteDevices];
        v39[0] = remoteDevices2;
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
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if ((enableSubscriptionSubstream & 1) == 0)
  {
    subscriptions = [MEMORY[0x1E698EA08] subscriptions];
    [v3 addObject:subscriptions];
  }

  configuration2 = [(BMStreamBase *)self configuration];
  enableTombstoneSubstream = [configuration2 enableTombstoneSubstream];

  if ((enableTombstoneSubstream & 1) == 0)
  {
    localDevice = [MEMORY[0x1E698EA08] localDevice];
    tombstones = [MEMORY[0x1E698EA08] tombstones];
    v11 = [localDevice stringByAppendingPathComponent:tombstones];
    [v3 addObject:v11];
  }

  if ([v3 count])
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(BMStreamBase(PeriodicMaintenance) *)v12 _pruneDisabledSubstreams];
    }

    configuration3 = [(BMStreamBase *)self configuration];
    storeConfig = [configuration3 storeConfig];
    datastorePath = [storeConfig datastorePath];
    identifier = [(BMStreamBase *)self identifier];
    v17 = [datastorePath stringByAppendingPathComponent:identifier];

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

- (id)subscriptionStoreStreamForUseCase:(id)case
{
  caseCopy = case;
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
  {
    identifier = [(BMStreamBase *)self identifier];
    v8 = [identifier stringByAppendingString:@":subscriptions"];

    v9 = [BMStoreStream alloc];
    configuration2 = [(BMStreamBase *)self configuration];
    storeConfig = [configuration2 storeConfig];
    subscriptionsConfig = [storeConfig subscriptionsConfig];
    v13 = [(BMStoreStream *)v9 initWithStreamIdentifier:v8 storeConfig:subscriptionsConfig streamType:2 eventDataClass:objc_opt_class() useCase:caseCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)subscriptionSource
{
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
  {
    v5 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:*MEMORY[0x1E698E960]];
    source = [v5 source];
  }

  else
  {
    source = 0;
  }

  return source;
}

- (id)subscriptionPruner
{
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
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

- (id)subscriptionPublisherWithUseCase:(id)case options:(id)options
{
  caseCopy = case;
  optionsCopy = options;
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
  {
    v10 = [(BMStreamBase *)self subscriptionStoreStreamForUseCase:caseCopy];
    v11 = [v10 _publisherWithOptions:optionsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)subscriptionDSLPublisherWithUseCase:(id)case
{
  caseCopy = case;
  configuration = [(BMStreamBase *)self configuration];
  enableSubscriptionSubstream = [configuration enableSubscriptionSubstream];

  if (enableSubscriptionSubstream)
  {
    identifier = [(BMStreamBase *)self identifier];
    v8 = [identifier stringByAppendingString:@":subscriptions"];

    v9 = [[BMDSLStreamPublisher alloc] initWithIdentifier:v8 streamType:2 useCase:caseCopy eventDataClass:objc_opt_class()];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end