@interface BMStoreStream
+ (id)_libraryStreamWithIdentifier:(id)identifier eventDataClass:(Class)class;
- (BMStoreStream)initWithPublicStream:(int64_t)stream;
- (BMStoreStream)initWithRestrictedStreamIdentifier:(id)identifier protectionClass:(unint64_t)class;
- (BMStoreStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config;
- (BMStoreStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config streamType:(unint64_t)type eventDataClass:(Class)class useCase:(id)case;
- (BOOL)deleteStoreEvent:(id)event;
- (BOOL)pruneEventsOfRemote:(id)remote withReason:(unint64_t)reason policyID:(id)d error:(id *)error predicateBlock:(id)block;
- (id)_computeSource;
- (id)_initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class;
- (id)_prunerForRemote:(id)remote;
- (id)pruner;
- (id)publisher;
- (id)publisherForDevice:(id)device withUseCase:(id)case;
- (id)publisherForDevice:(id)device withUseCase:(id)case options:(id)options;
- (id)publisherFromStartTime:(double)time;
- (id)publishersForDevices:(id)devices startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)local pipeline:(id)self0;
- (id)publishersForDevices:(id)devices withUseCase:(id)case startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)self0 pipeline:(id)self1;
- (id)remoteDevices;
- (id)remoteDevicesForAccount:(id)account error:(id *)error;
- (id)remoteDevicesWithError:(id *)error;
- (id)source;
- (id)tombstoneConfig;
- (id)tombstonePruner;
- (id)validator;
- (void)_pruneWithStoreConfig:(id)config expirationAge:(double)age block:(id)block;
- (void)pruneExpiredEventsWithBlock:(id)block;
- (void)pruneLocalAndRemoteEventsWithReason:(unint64_t)reason usingPredicateBlock:(id)block;
- (void)pruneStreamByPruningPolicyMaxStreamSize;
- (void)pruneStreamBySize:(unint64_t)size;
- (void)pruneStreamToMaxCount:(unint64_t)count;
- (void)pruneTombstonesByAge:(double)age;
- (void)pruneWithReason:(unint64_t)reason usingPredicateBlock:(id)block;
@end

@implementation BMStoreStream

- (id)source
{
  os_unfair_lock_lock(&self->_lock);
  source = self->_source;
  if (!source)
  {
    v4 = [(NSString *)self->_streamIdentifier componentsSeparatedByString:@":"];
    firstObject = [v4 firstObject];

    v6 = [[BMStoreSource alloc] initWithIdentifier:firstObject storeConfig:self->_storeConfig accessClient:self->_accessClient eventDataClass:self->_eventDataClass];
    v7 = self->_source;
    self->_source = v6;

    source = self->_source;
  }

  v8 = source;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)remoteDevices
{
  if (([(BMStoreConfig *)self->_storeConfig storeLocationOption]& 4) != 0)
  {
    v7 = 0;
  }

  else
  {
    datastorePath = [(BMStoreConfig *)self->_storeConfig datastorePath];
    v4 = [datastorePath stringByAppendingPathComponent:self->_streamIdentifier];
    remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
    v6 = [v4 stringByAppendingPathComponent:remoteDevices];

    v7 = [(BMFileManager *)self->_fileManager contentsOfDirectoryAtPath:v6 error:0];
  }

  return v7;
}

- (id)pruner
{
  os_unfair_lock_lock(&self->_lock);
  pruner = self->_pruner;
  if (!pruner)
  {
    v4 = [objc_alloc(MEMORY[0x1E698F148]) initWithStream:self->_streamIdentifier config:self->_storeConfig eventDataClass:self->_eventDataClass];
    v5 = self->_pruner;
    self->_pruner = v4;

    [(BMStreamDatastorePruner *)self->_pruner setDelegate:self->_pruningDelegate];
    pruner = self->_pruner;
  }

  v6 = pruner;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)tombstonePruner
{
  os_unfair_lock_lock(&self->_lock);
  tombstonePruner = self->_tombstonePruner;
  if (!tombstonePruner)
  {
    v4 = objc_alloc(MEMORY[0x1E698F148]);
    streamIdentifier = self->_streamIdentifier;
    tombstoneConfig = [(BMStoreStream *)self tombstoneConfig];
    v7 = [v4 initWithStream:streamIdentifier config:tombstoneConfig eventDataClass:objc_opt_class()];
    v8 = self->_tombstonePruner;
    self->_tombstonePruner = v7;

    tombstonePruner = self->_tombstonePruner;
  }

  v9 = tombstonePruner;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)tombstoneConfig
{
  v2 = [(BMStoreConfig *)self->_storeConfig copy];
  [v2 setStoreLocationOption:{objc_msgSend(v2, "storeLocationOption") | 2}];

  return v2;
}

- (BMStoreStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config
{
  identifierCopy = identifier;
  configCopy = config;
  v8 = [MEMORY[0x1E698E9E0] streamForStreamIdentifier:identifierCopy];
  if (v8)
  {
    v9 = [(BMStoreStream *)self initWithPublicStream:v8];
  }

  else
  {
    streamType = [configCopy streamType];
    v9 = [(BMStoreStream *)self initWithStreamIdentifier:identifierCopy storeConfig:configCopy streamType:streamType eventDataClass:0 useCase:*MEMORY[0x1E698E928]];
  }

  v11 = v9;

  return v11;
}

- (BMStoreStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config streamType:(unint64_t)type eventDataClass:(Class)class useCase:(id)case
{
  identifierCopy = identifier;
  configCopy = config;
  caseCopy = case;
  v38.receiver = self;
  v38.super_class = BMStoreStream;
  v16 = [(BMStoreStream *)&v38 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v16->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v16->_streamIdentifier, identifier);
  objc_storeStrong(&v17->_storeConfig, config);
  objc_storeStrong(&v17->_useCase, case);
  if ([identifierCopy hasSuffix:@":subscriptions"])
  {
    subscriptionsConfig = [(BMStoreConfig *)v17->_storeConfig subscriptionsConfig];
  }

  else
  {
    if (![identifierCopy hasSuffix:@":tombstones"])
    {
      goto LABEL_7;
    }

    subscriptionsConfig = [(BMStoreConfig *)v17->_storeConfig tombstonesConfig];
  }

  storeConfig = v17->_storeConfig;
  v17->_storeConfig = subscriptionsConfig;

LABEL_7:
  datastorePath = [configCopy datastorePath];
  v21 = [identifierCopy componentsSeparatedByString:@":"];
  firstObject = [v21 firstObject];
  v23 = [datastorePath stringByAppendingPathComponent:firstObject];

  if ([configCopy isManaged] && (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "reliesOnDirectAccessForDomain:", -[BMStoreConfig domain](v17->_storeConfig, "domain")), v24, (v25 & 1) == 0))
  {
    v26 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v23 useCase:caseCopy domain:objc_msgSend(configCopy user:{"domain"), objc_msgSend(configCopy, "uid")}];
  }

  else
  {
    v26 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v23 cachingOptions:3];
  }

  fileManager = v17->_fileManager;
  v17->_fileManager = v26;

  if (configCopy)
  {
    pruningPolicy = [configCopy pruningPolicy];

    if (!pruningPolicy)
    {
      v29 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:2419200.0];
      [configCopy setPruningPolicy:v29];
    }
  }

  v17->_streamType = type;
  v30 = [BMStorePublisherManager alloc];
  v31 = [identifierCopy componentsSeparatedByString:@":"];
  firstObject2 = [v31 firstObject];
  v33 = [(BMStorePublisherManager *)v30 initWithStreamIdentifier:firstObject2 streamConfig:v17->_storeConfig accessClient:v17->_accessClient eventDataClass:class useCase:caseCopy];
  publisherManager = v17->_publisherManager;
  v17->_publisherManager = v33;

  v17->_eventDataClass = class;
  if ([(BMStoreConfig *)v17->_storeConfig isManaged])
  {
    v35 = [[BMStoreStreamPruningBridge alloc] initWithStreamIdentifier:v17->_streamIdentifier domain:[(BMStoreConfig *)v17->_storeConfig domain] user:[(BMStoreConfig *)v17->_storeConfig uid]];
    pruningDelegate = v17->_pruningDelegate;
    v17->_pruningDelegate = v35;
  }

LABEL_17:
  return v17;
}

- (BMStoreStream)initWithPublicStream:(int64_t)stream
{
  streamCopy = stream;
  v5 = [MEMORY[0x1E698E9E0] streamIdentifierForStream:?];
  if (!v5)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BMStoreStream *)streamCopy initWithPublicStream:v10];
    }

    goto LABEL_10;
  }

  v6 = [MEMORY[0x1E698EA10] legacyClassForLibraryStream:v5];
  if (!v6)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BMStoreStream *)v5 initWithPublicStream:v10];
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = BiomeLibraryNodeBridge();
  v13 = 0;
  v9 = [v8 streamWithIdentifier:v5 error:&v13];
  v10 = v13;

  v11 = 0;
  if (!v10)
  {
    v11 = [objc_opt_class() _libraryStreamWithIdentifier:v5 eventDataClass:v7];
  }

LABEL_11:
  return v11;
}

- (BMStoreStream)initWithRestrictedStreamIdentifier:(id)identifier protectionClass:(unint64_t)class
{
  v6 = MEMORY[0x1E698F130];
  identifierCopy = identifier;
  v8 = [v6 newRestrictedStreamDefaultConfigurationWithProtectionClass:class];
  v9 = [(BMStoreStream *)self _initWithRestrictedStreamIdentifier:identifierCopy storeConfig:v8 eventDataClass:0];

  return v9;
}

- (id)_initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class
{
  identifierCopy = identifier;
  configCopy = config;
  if (([MEMORY[0x1E698E9C8] isTestPathOverridden] & 1) != 0 || (objc_msgSend(configCopy, "isManaged") & 1) == 0)
  {
    if (!configCopy)
    {
      configCopy = [MEMORY[0x1E698F130] newRestrictedStreamDefaultConfiguration];
    }

    v11 = [BMStoreStream alloc];
    v10 = [(BMStoreStream *)v11 initWithStreamIdentifier:identifierCopy storeConfig:configCopy streamType:2 eventDataClass:class useCase:*MEMORY[0x1E698E928]];
  }

  else
  {
    v10 = [objc_opt_class() _libraryStreamWithIdentifier:identifierCopy eventDataClass:class];
  }

  v12 = v10;

  return v12;
}

+ (id)_libraryStreamWithIdentifier:(id)identifier eventDataClass:(Class)class
{
  v5 = MEMORY[0x1E698EA10];
  identifierCopy = identifier;
  v7 = [v5 libraryPathForStreamIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = [MEMORY[0x1E698EA10] legacyClassForLibraryStream:v10];
  v12 = BiomeLibraryNodeBridge();
  v18 = 0;
  v13 = [v12 streamWithIdentifier:v10 error:&v18];

  v14 = v18;
  v15 = 0;
  if (!v14)
  {
    if (v11)
    {
      classCopy = v11;
    }

    else
    {
      classCopy = class;
    }

    v15 = [v13 storeStreamWithLegacyClass:classCopy];
  }

  return v15;
}

- (id)publisherFromStartTime:(double)time
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
  v5 = [[BMPublisherOptions alloc] initWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v6 = [(BMStorePublisherManager *)self->_publisherManager publisherWithOptions:v5];

  return v6;
}

- (id)publisher
{
  v3 = objc_opt_new();
  v4 = [(BMStorePublisherManager *)self->_publisherManager publisherWithOptions:v3];

  return v4;
}

- (id)remoteDevicesWithError:(id *)error
{
  v4 = objc_opt_new();
  v5 = [v4 remoteDevicesWithError:error];

  return v5;
}

- (id)remoteDevicesForAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = objc_opt_new();
  v7 = [v6 remoteDevicesForAccount:accountCopy error:error];

  return v7;
}

- (id)publishersForDevices:(id)devices startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)local pipeline:(id)self0
{
  reversedCopy = reversed;
  selfCopy = self;
  devicesCopy = devices;
  timeCopy = time;
  endTimeCopy = endTime;
  eventsCopy = events;
  nCopy = n;
  pipelineCopy = pipeline;
  if (timeCopy)
  {
    v20 = MEMORY[0x1E695DF00];
    [timeCopy doubleValue];
    v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    if (endTimeCopy)
    {
LABEL_3:
      v22 = MEMORY[0x1E695DF00];
      [endTimeCopy doubleValue];
      v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
    if (endTimeCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = -[BMPublisherOptions initWithStartDate:endDate:maxEvents:lastN:reversed:]([BMPublisherOptions alloc], "initWithStartDate:endDate:maxEvents:lastN:reversed:", v21, v23, [eventsCopy unsignedLongLongValue], objc_msgSend(nCopy, "unsignedLongLongValue"), reversedCopy);
  v25 = [(BMStorePublisherManager *)selfCopy->_publisherManager publishersForDevices:devicesCopy includeLocal:local options:v24 pipeline:pipelineCopy];

  return v25;
}

id __76__BMStoreStream_publishersForRemoteDevices_startTime_includeLocal_pipeline___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F358];
  v3 = a2;
  v4 = [[v2 alloc] initWithDeviceIdentifier:v3 idsDeviceIdentifier:0 name:0 model:0 platform:0];

  return v4;
}

id __109__BMStoreStream_publishersForRemoteDevices_startTime_endTime_maxEvents_lastN_reversed_includeLocal_pipeline___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698F358];
  v3 = a2;
  v4 = [[v2 alloc] initWithDeviceIdentifier:v3 idsDeviceIdentifier:0 name:0 model:0 platform:0];

  return v4;
}

- (id)publisherForDevice:(id)device withUseCase:(id)case
{
  useCase = self->_useCase;
  deviceCopy = device;
  if (([(NSString *)useCase isEqual:case]& 1) == 0)
  {
    [BMStoreStream publisherForDevice:withUseCase:];
  }

  v8 = objc_opt_new();
  v9 = [(BMStorePublisherManager *)self->_publisherManager publisherForDevice:deviceCopy options:v8];

  return v9;
}

- (id)publisherForDevice:(id)device withUseCase:(id)case options:(id)options
{
  deviceCopy = device;
  optionsCopy = options;
  if (([(NSString *)self->_useCase isEqual:case]& 1) == 0)
  {
    [BMStoreStream publisherForDevice:withUseCase:options:];
  }

  v10 = [(BMStorePublisherManager *)self->_publisherManager publisherForDevice:deviceCopy options:optionsCopy];

  return v10;
}

- (id)publishersForDevices:(id)devices withUseCase:(id)case startTime:(id)time endTime:(id)endTime maxEvents:(id)events lastN:(id)n reversed:(BOOL)reversed includeLocal:(BOOL)self0 pipeline:(id)self1
{
  timeCopy = time;
  endTimeCopy = endTime;
  selfCopy = self;
  useCase = self->_useCase;
  pipelineCopy = pipeline;
  nCopy = n;
  eventsCopy = events;
  devicesCopy = devices;
  if (([(NSString *)useCase isEqual:case]& 1) == 0)
  {
    [BMStoreStream publishersForDevices:withUseCase:startTime:endTime:maxEvents:lastN:reversed:includeLocal:pipeline:];
  }

  if (timeCopy)
  {
    v24 = MEMORY[0x1E695DF00];
    [timeCopy doubleValue];
    v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
    if (endTimeCopy)
    {
LABEL_5:
      v26 = MEMORY[0x1E695DF00];
      [endTimeCopy doubleValue];
      v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
    if (endTimeCopy)
    {
      goto LABEL_5;
    }
  }

  v27 = 0;
LABEL_8:
  v28 = [BMPublisherOptions alloc];
  unsignedLongLongValue = [eventsCopy unsignedLongLongValue];

  unsignedLongLongValue2 = [nCopy unsignedLongLongValue];
  v31 = [(BMPublisherOptions *)v28 initWithStartDate:v25 endDate:v27 maxEvents:unsignedLongLongValue lastN:unsignedLongLongValue2 reversed:reversed];
  v32 = [(BMStorePublisherManager *)selfCopy->_publisherManager publishersForDevices:devicesCopy includeLocal:local options:v31 pipeline:pipelineCopy];

  return v32;
}

- (id)_computeSource
{
  source = [(BMStoreStream *)self source];
  computeSource = [source computeSource];

  return computeSource;
}

- (id)validator
{
  os_unfair_lock_lock(&self->_lock);
  validator = self->_validator;
  if (!validator)
  {
    v4 = [[BMStoreValidator alloc] initWithIdentifier:self->_streamIdentifier storeConfig:self->_storeConfig];
    v5 = self->_validator;
    self->_validator = v4;

    validator = self->_validator;
  }

  v6 = validator;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_prunerForRemote:(id)remote
{
  remoteCopy = remote;
  if (!remoteCopy)
  {
    [BMStoreStream _prunerForRemote:];
  }

  v5 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:remoteCopy];
  v6 = [objc_alloc(MEMORY[0x1E698F148]) initWithStream:self->_streamIdentifier config:v5 eventDataClass:self->_eventDataClass];
  [v6 setDelegate:self->_pruningDelegate];

  return v6;
}

- (void)pruneTombstonesByAge:(double)age
{
  v4 = CFAbsoluteTimeGetCurrent() - age;
  tombstonePruner = [(BMStoreStream *)self tombstonePruner];
  [tombstonePruner removeEventsFrom:1 to:&__block_literal_global_49 reason:0.0 usingBlock:v4];
}

- (void)pruneWithReason:(unint64_t)reason usingPredicateBlock:(id)block
{
  [(BMStoreStream *)self pruneEventsOfRemote:0 withReason:reason policyID:0 error:0 predicateBlock:block];

  [(BMStoreStream *)self pruneTombstonesByAge:691200.0];
}

- (BOOL)pruneEventsOfRemote:(id)remote withReason:(unint64_t)reason policyID:(id)d error:(id *)error predicateBlock:(id)block
{
  v29[1] = *MEMORY[0x1E69E9840];
  remoteCopy = remote;
  dCopy = d;
  blockCopy = block;
  if (remoteCopy)
  {
    [(BMStoreStream *)self _prunerForRemote:remoteCopy];
  }

  else
  {
    [(BMStoreStream *)self pruner];
  }
  v15 = ;
  isDataAccessible = [v15 isDataAccessible];
  if (isDataAccessible)
  {
    [v15 eventsFrom:reason to:dCopy reason:blockCopy policyID:0.0 shouldDeleteUsingBlock:CFAbsoluteTimeGetCurrent()];
    if (([(BMStoreConfig *)self->_storeConfig isManaged]& 1) != 0)
    {
      reasonCopy = reason;
      v17 = [BMComputeSourceClient alloc];
      streamIdentifier = self->_streamIdentifier;
      domain = [(BMStoreConfig *)self->_storeConfig domain];
      v20 = [(BMComputeSourceClient *)v17 initWithStreamIdentifier:streamIdentifier domain:domain useCase:*MEMORY[0x1E698E950] user:[(BMStoreConfig *)self->_storeConfig uid]];
      account = [(BMStoreConfig *)self->_storeConfig account];
      if (remoteCopy)
      {
        [(BMComputeSourceClient *)v20 eventsPrunedForAccount:account remoteName:remoteCopy reason:reason];
      }

      else
      {
        remoteName = [(BMStoreConfig *)self->_storeConfig remoteName];
        [(BMComputeSourceClient *)v20 eventsPrunedForAccount:account remoteName:remoteName reason:reasonCopy];
      }
    }
  }

  else if (error)
  {
    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Pruner does not have access to data due to lock state";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *error = [v22 errorWithDomain:@"com.apple.biome.BiomeStreams" code:2 userInfo:v23];
  }

  v25 = *MEMORY[0x1E69E9840];
  return isDataAccessible;
}

- (void)_pruneWithStoreConfig:(id)config expirationAge:(double)age block:(id)block
{
  configCopy = config;
  blockCopy = block;
  Current = CFAbsoluteTimeGetCurrent();
  if ([configCopy isEqual:self->_storeConfig])
  {
    pruner = [(BMStoreStream *)self pruner];
LABEL_5:
    v13 = pruner;
    goto LABEL_7;
  }

  tombstoneConfig = [(BMStoreStream *)self tombstoneConfig];
  v12 = [configCopy isEqual:tombstoneConfig];

  if (v12)
  {
    pruner = [(BMStoreStream *)self tombstonePruner];
    goto LABEL_5;
  }

  v13 = [objc_alloc(MEMORY[0x1E698F148]) initWithStream:self->_streamIdentifier config:configCopy eventDataClass:self->_eventDataClass];
  [v13 setDelegate:self->_pruningDelegate];
LABEL_7:
  [v13 removeEventsFrom:1 to:blockCopy reason:0.0 usingBlock:Current - age];

  [(BMStoreStream *)self pruneTombstonesByAge:691200.0];
}

- (void)pruneExpiredEventsWithBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  pruningPolicy = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
  [pruningPolicy maxAge];
  if (v6 == 0.0)
  {

    v9 = 2419200.0;
  }

  else
  {
    pruningPolicy2 = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
    [pruningPolicy2 maxAge];
    v9 = v8;

    if (v9 <= 0.0)
    {
      _computeSource = __biome_log_for_category();
      if (os_log_type_enabled(_computeSource, OS_LOG_TYPE_DEBUG))
      {
        [(BMStoreStream *)self pruneExpiredEventsWithBlock:_computeSource, v9];
      }

      goto LABEL_26;
    }
  }

  if (([(NSString *)self->_streamIdentifier isEqual:@"GenerativeExperiences.TransparencyLog"]& 1) != 0 || ([(NSString *)self->_streamIdentifier isEqual:@"PrivateCloudCompute.RequestLog"]& 1) != 0 || [(NSString *)self->_streamIdentifier hasPrefix:@"AppleIntelligenceReport."])
  {
    mEMORY[0x1E698EA38] = [MEMORY[0x1E698EA38] shared];
    allowAppleIntelligenceReport = [mEMORY[0x1E698EA38] allowAppleIntelligenceReport];

    v13 = 0.0;
    if (allowAppleIntelligenceReport)
    {
      v14 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AppleIntelligenceReport"];
      v15 = [v14 valueForKey:@"reportDuration"];
      v16 = v15;
      v17 = &unk_1EF309200;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v20 = 0.0;
      if (isKindOfClass)
      {
        [v18 doubleValue];
      }

      if (v20 >= v9)
      {
        v20 = v9;
      }

      v13 = fmax(v20, 0.0);
    }
  }

  else
  {
    v13 = v9;
  }

  v21 = objc_autoreleasePoolPush();
  [(BMStoreStream *)self _pruneWithStoreConfig:self->_storeConfig expirationAge:blockCopy block:v13];
  objc_autoreleasePoolPop(v21);
  v22 = objc_autoreleasePoolPush();
  [(BMStoreStream *)self remoteDevices];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v37 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v34 + 1) + 8 * i);
        v29 = objc_autoreleasePoolPush();
        v30 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:v28, v34];
        [(BMStoreStream *)self _pruneWithStoreConfig:v30 expirationAge:blockCopy block:v13];

        objc_autoreleasePoolPop(v29);
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(v22);
  _computeSource = [(BMStoreStream *)self _computeSource];
  account = [(BMStoreConfig *)self->_storeConfig account];
  remoteName = [(BMStoreConfig *)self->_storeConfig remoteName];
  [_computeSource eventsPrunedForAccount:account remoteName:remoteName reason:1];

LABEL_26:
  v33 = *MEMORY[0x1E69E9840];
}

- (void)pruneStreamByPruningPolicyMaxStreamSize
{
  pruningPolicy = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
  maxStreamSize = [pruningPolicy maxStreamSize];

  if (maxStreamSize)
  {
    v5 = maxStreamSize;
  }

  else
  {
    v5 = 52428800;
  }

  [(BMStoreStream *)self pruneStreamBySize:v5];
}

- (void)pruneStreamBySize:(unint64_t)size
{
  v32 = *MEMORY[0x1E69E9840];
  if (size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 52428800;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:self->_storeConfig includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
  [v6 setDelegate:self->_pruningDelegate];
  [v6 pruneStreamToMaxStreamSizeInBytes:sizeCopy];
  v7 = objc_alloc(MEMORY[0x1E698F140]);
  streamIdentifier = self->_streamIdentifier;
  tombstoneConfig = [(BMStoreStream *)self tombstoneConfig];
  v10 = [v7 initWithStream:streamIdentifier permission:2 config:tombstoneConfig includeTombstones:0];

  [v10 pruneStreamToMaxStreamSizeInBytes:sizeCopy];
  objc_autoreleasePoolPop(v5);
  context = objc_autoreleasePoolPush();
  [(BMStoreStream *)self remoteDevices];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        v17 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:v15];
        v18 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:v17 includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
        [v18 pruneStreamToMaxStreamSizeInBytes:sizeCopy];
        v19 = [v17 copy];
        [v19 setStoreLocationOption:{objc_msgSend(v19, "storeLocationOption") | 2}];
        v20 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:v19 includeTombstones:0];

        [v20 pruneStreamToMaxStreamSizeInBytes:sizeCopy];
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  _computeSource = [(BMStoreStream *)self _computeSource];
  account = [(BMStoreConfig *)self->_storeConfig account];
  remoteName = [(BMStoreConfig *)self->_storeConfig remoteName];
  [_computeSource eventsPrunedForAccount:account remoteName:remoteName reason:1];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)pruneStreamToMaxCount:(unint64_t)count
{
  v26 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E698F108] != count)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:self->_storeConfig includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
    [v6 setDelegate:self->_pruningDelegate];
    [v6 pruneStreamToMaxCount:count];

    objc_autoreleasePoolPop(v5);
    context = objc_autoreleasePoolPush();
    [(BMStoreStream *)self remoteDevices];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v24 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:v12];
          v15 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:v14 includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
          [v15 pruneStreamToMaxCount:count];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    _computeSource = [(BMStoreStream *)self _computeSource];
    account = [(BMStoreConfig *)self->_storeConfig account];
    remoteName = [(BMStoreConfig *)self->_storeConfig remoteName];
    [_computeSource eventsPrunedForAccount:account remoteName:remoteName reason:4];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)pruneLocalAndRemoteEventsWithReason:(unint64_t)reason usingPredicateBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  [(BMStoreStream *)self pruneWithReason:reason usingPredicateBlock:blockCopy];
  objc_autoreleasePoolPop(v7);
  context = objc_autoreleasePoolPush();
  [(BMStoreStream *)self remoteDevices];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:v12];
        v15 = [[BMStoreStream alloc] initWithStreamIdentifier:self->_streamIdentifier storeConfig:v14 streamType:[(BMStoreConfig *)self->_storeConfig streamType]];
        [(BMStoreStream *)v15 pruneWithReason:reason usingPredicateBlock:blockCopy];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteStoreEvent:(id)event
{
  eventCopy = event;
  bookmark = [eventCopy bookmark];
  if (bookmark)
  {
    metadata = [eventCopy metadata];
    remoteStreamName = [metadata remoteStreamName];

    if (remoteStreamName)
    {
      metadata2 = [eventCopy metadata];
      remoteStreamName2 = [metadata2 remoteStreamName];
      pruner = [(BMStoreStream *)self _prunerForRemote:remoteStreamName2];
    }

    else
    {
      pruner = [(BMStoreStream *)self pruner];
    }

    v12 = [pruner deleteEventAtBookmark:bookmark outTombstoneBookmark:0];
    if (v12)
    {
      _computeSource = [(BMStoreStream *)self _computeSource];
      account = [(BMStoreConfig *)self->_storeConfig account];
      remoteName = [(BMStoreConfig *)self->_storeConfig remoteName];
      [_computeSource eventsPrunedForAccount:account remoteName:remoteName reason:2];
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BMStoreStream *)self deleteStoreEvent:eventCopy, v11];
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

@end