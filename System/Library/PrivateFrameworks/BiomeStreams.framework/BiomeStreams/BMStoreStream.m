@interface BMStoreStream
+ (id)_libraryStreamWithIdentifier:(id)a3 eventDataClass:(Class)a4;
- (BMStoreStream)initWithPublicStream:(int64_t)a3;
- (BMStoreStream)initWithRestrictedStreamIdentifier:(id)a3 protectionClass:(unint64_t)a4;
- (BMStoreStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4;
- (BMStoreStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4 streamType:(unint64_t)a5 eventDataClass:(Class)a6 useCase:(id)a7;
- (BOOL)deleteStoreEvent:(id)a3;
- (BOOL)pruneEventsOfRemote:(id)a3 withReason:(unint64_t)a4 policyID:(id)a5 error:(id *)a6 predicateBlock:(id)a7;
- (id)_computeSource;
- (id)_initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5;
- (id)_prunerForRemote:(id)a3;
- (id)pruner;
- (id)publisher;
- (id)publisherForDevice:(id)a3 withUseCase:(id)a4;
- (id)publisherForDevice:(id)a3 withUseCase:(id)a4 options:(id)a5;
- (id)publisherFromStartTime:(double)a3;
- (id)publishersForDevices:(id)a3 startTime:(id)a4 endTime:(id)a5 maxEvents:(id)a6 lastN:(id)a7 reversed:(BOOL)a8 includeLocal:(BOOL)a9 pipeline:(id)a10;
- (id)publishersForDevices:(id)a3 withUseCase:(id)a4 startTime:(id)a5 endTime:(id)a6 maxEvents:(id)a7 lastN:(id)a8 reversed:(BOOL)a9 includeLocal:(BOOL)a10 pipeline:(id)a11;
- (id)remoteDevices;
- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4;
- (id)remoteDevicesWithError:(id *)a3;
- (id)source;
- (id)tombstoneConfig;
- (id)tombstonePruner;
- (id)validator;
- (void)_pruneWithStoreConfig:(id)a3 expirationAge:(double)a4 block:(id)a5;
- (void)pruneExpiredEventsWithBlock:(id)a3;
- (void)pruneLocalAndRemoteEventsWithReason:(unint64_t)a3 usingPredicateBlock:(id)a4;
- (void)pruneStreamByPruningPolicyMaxStreamSize;
- (void)pruneStreamBySize:(unint64_t)a3;
- (void)pruneStreamToMaxCount:(unint64_t)a3;
- (void)pruneTombstonesByAge:(double)a3;
- (void)pruneWithReason:(unint64_t)a3 usingPredicateBlock:(id)a4;
@end

@implementation BMStoreStream

- (id)source
{
  os_unfair_lock_lock(&self->_lock);
  source = self->_source;
  if (!source)
  {
    v4 = [(NSString *)self->_streamIdentifier componentsSeparatedByString:@":"];
    v5 = [v4 firstObject];

    v6 = [[BMStoreSource alloc] initWithIdentifier:v5 storeConfig:self->_storeConfig accessClient:self->_accessClient eventDataClass:self->_eventDataClass];
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
    v3 = [(BMStoreConfig *)self->_storeConfig datastorePath];
    v4 = [v3 stringByAppendingPathComponent:self->_streamIdentifier];
    v5 = [MEMORY[0x1E698EA08] remoteDevices];
    v6 = [v4 stringByAppendingPathComponent:v5];

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
    v6 = [(BMStoreStream *)self tombstoneConfig];
    v7 = [v4 initWithStream:streamIdentifier config:v6 eventDataClass:objc_opt_class()];
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

- (BMStoreStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E698E9E0] streamForStreamIdentifier:v6];
  if (v8)
  {
    v9 = [(BMStoreStream *)self initWithPublicStream:v8];
  }

  else
  {
    v10 = [v7 streamType];
    v9 = [(BMStoreStream *)self initWithStreamIdentifier:v6 storeConfig:v7 streamType:v10 eventDataClass:0 useCase:*MEMORY[0x1E698E928]];
  }

  v11 = v9;

  return v11;
}

- (BMStoreStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4 streamType:(unint64_t)a5 eventDataClass:(Class)a6 useCase:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v38.receiver = self;
  v38.super_class = BMStoreStream;
  v16 = [(BMStoreStream *)&v38 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v16->_lock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v16->_streamIdentifier, a3);
  objc_storeStrong(&v17->_storeConfig, a4);
  objc_storeStrong(&v17->_useCase, a7);
  if ([v13 hasSuffix:@":subscriptions"])
  {
    v18 = [(BMStoreConfig *)v17->_storeConfig subscriptionsConfig];
  }

  else
  {
    if (![v13 hasSuffix:@":tombstones"])
    {
      goto LABEL_7;
    }

    v18 = [(BMStoreConfig *)v17->_storeConfig tombstonesConfig];
  }

  storeConfig = v17->_storeConfig;
  v17->_storeConfig = v18;

LABEL_7:
  v20 = [v14 datastorePath];
  v21 = [v13 componentsSeparatedByString:@":"];
  v22 = [v21 firstObject];
  v23 = [v20 stringByAppendingPathComponent:v22];

  if ([v14 isManaged] && (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "reliesOnDirectAccessForDomain:", -[BMStoreConfig domain](v17->_storeConfig, "domain")), v24, (v25 & 1) == 0))
  {
    v26 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v23 useCase:v15 domain:objc_msgSend(v14 user:{"domain"), objc_msgSend(v14, "uid")}];
  }

  else
  {
    v26 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v23 cachingOptions:3];
  }

  fileManager = v17->_fileManager;
  v17->_fileManager = v26;

  if (v14)
  {
    v28 = [v14 pruningPolicy];

    if (!v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:52428800 maxStreamSize:2419200.0];
      [v14 setPruningPolicy:v29];
    }
  }

  v17->_streamType = a5;
  v30 = [BMStorePublisherManager alloc];
  v31 = [v13 componentsSeparatedByString:@":"];
  v32 = [v31 firstObject];
  v33 = [(BMStorePublisherManager *)v30 initWithStreamIdentifier:v32 streamConfig:v17->_storeConfig accessClient:v17->_accessClient eventDataClass:a6 useCase:v15];
  publisherManager = v17->_publisherManager;
  v17->_publisherManager = v33;

  v17->_eventDataClass = a6;
  if ([(BMStoreConfig *)v17->_storeConfig isManaged])
  {
    v35 = [[BMStoreStreamPruningBridge alloc] initWithStreamIdentifier:v17->_streamIdentifier domain:[(BMStoreConfig *)v17->_storeConfig domain] user:[(BMStoreConfig *)v17->_storeConfig uid]];
    pruningDelegate = v17->_pruningDelegate;
    v17->_pruningDelegate = v35;
  }

LABEL_17:
  return v17;
}

- (BMStoreStream)initWithPublicStream:(int64_t)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E698E9E0] streamIdentifierForStream:?];
  if (!v5)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(BMStoreStream *)v3 initWithPublicStream:v10];
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

- (BMStoreStream)initWithRestrictedStreamIdentifier:(id)a3 protectionClass:(unint64_t)a4
{
  v6 = MEMORY[0x1E698F130];
  v7 = a3;
  v8 = [v6 newRestrictedStreamDefaultConfigurationWithProtectionClass:a4];
  v9 = [(BMStoreStream *)self _initWithRestrictedStreamIdentifier:v7 storeConfig:v8 eventDataClass:0];

  return v9;
}

- (id)_initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  if (([MEMORY[0x1E698E9C8] isTestPathOverridden] & 1) != 0 || (objc_msgSend(v9, "isManaged") & 1) == 0)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E698F130] newRestrictedStreamDefaultConfiguration];
    }

    v11 = [BMStoreStream alloc];
    v10 = [(BMStoreStream *)v11 initWithStreamIdentifier:v8 storeConfig:v9 streamType:2 eventDataClass:a5 useCase:*MEMORY[0x1E698E928]];
  }

  else
  {
    v10 = [objc_opt_class() _libraryStreamWithIdentifier:v8 eventDataClass:a5];
  }

  v12 = v10;

  return v12;
}

+ (id)_libraryStreamWithIdentifier:(id)a3 eventDataClass:(Class)a4
{
  v5 = MEMORY[0x1E698EA10];
  v6 = a3;
  v7 = [v5 libraryPathForStreamIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
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
      v16 = v11;
    }

    else
    {
      v16 = a4;
    }

    v15 = [v13 storeStreamWithLegacyClass:v16];
  }

  return v15;
}

- (id)publisherFromStartTime:(double)a3
{
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
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

- (id)remoteDevicesWithError:(id *)a3
{
  v4 = objc_opt_new();
  v5 = [v4 remoteDevicesWithError:a3];

  return v5;
}

- (id)remoteDevicesForAccount:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v6 remoteDevicesForAccount:v5 error:a4];

  return v7;
}

- (id)publishersForDevices:(id)a3 startTime:(id)a4 endTime:(id)a5 maxEvents:(id)a6 lastN:(id)a7 reversed:(BOOL)a8 includeLocal:(BOOL)a9 pipeline:(id)a10
{
  v28 = a8;
  v27 = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  if (v15)
  {
    v20 = MEMORY[0x1E695DF00];
    [v15 doubleValue];
    v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
    if (v16)
    {
LABEL_3:
      v22 = MEMORY[0x1E695DF00];
      [v16 doubleValue];
      v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = -[BMPublisherOptions initWithStartDate:endDate:maxEvents:lastN:reversed:]([BMPublisherOptions alloc], "initWithStartDate:endDate:maxEvents:lastN:reversed:", v21, v23, [v17 unsignedLongLongValue], objc_msgSend(v18, "unsignedLongLongValue"), v28);
  v25 = [(BMStorePublisherManager *)v27->_publisherManager publishersForDevices:v14 includeLocal:a9 options:v24 pipeline:v19];

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

- (id)publisherForDevice:(id)a3 withUseCase:(id)a4
{
  useCase = self->_useCase;
  v7 = a3;
  if (([(NSString *)useCase isEqual:a4]& 1) == 0)
  {
    [BMStoreStream publisherForDevice:withUseCase:];
  }

  v8 = objc_opt_new();
  v9 = [(BMStorePublisherManager *)self->_publisherManager publisherForDevice:v7 options:v8];

  return v9;
}

- (id)publisherForDevice:(id)a3 withUseCase:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (([(NSString *)self->_useCase isEqual:a4]& 1) == 0)
  {
    [BMStoreStream publisherForDevice:withUseCase:options:];
  }

  v10 = [(BMStorePublisherManager *)self->_publisherManager publisherForDevice:v8 options:v9];

  return v10;
}

- (id)publishersForDevices:(id)a3 withUseCase:(id)a4 startTime:(id)a5 endTime:(id)a6 maxEvents:(id)a7 lastN:(id)a8 reversed:(BOOL)a9 includeLocal:(BOOL)a10 pipeline:(id)a11
{
  v17 = a5;
  v18 = a6;
  v34 = self;
  useCase = self->_useCase;
  v20 = a11;
  v21 = a8;
  v22 = a7;
  v23 = a3;
  if (([(NSString *)useCase isEqual:a4]& 1) == 0)
  {
    [BMStoreStream publishersForDevices:withUseCase:startTime:endTime:maxEvents:lastN:reversed:includeLocal:pipeline:];
  }

  if (v17)
  {
    v24 = MEMORY[0x1E695DF00];
    [v17 doubleValue];
    v25 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
    if (v18)
    {
LABEL_5:
      v26 = MEMORY[0x1E695DF00];
      [v18 doubleValue];
      v27 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  v27 = 0;
LABEL_8:
  v28 = [BMPublisherOptions alloc];
  v29 = [v22 unsignedLongLongValue];

  v30 = [v21 unsignedLongLongValue];
  v31 = [(BMPublisherOptions *)v28 initWithStartDate:v25 endDate:v27 maxEvents:v29 lastN:v30 reversed:a9];
  v32 = [(BMStorePublisherManager *)v34->_publisherManager publishersForDevices:v23 includeLocal:a10 options:v31 pipeline:v20];

  return v32;
}

- (id)_computeSource
{
  v2 = [(BMStoreStream *)self source];
  v3 = [v2 computeSource];

  return v3;
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

- (id)_prunerForRemote:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BMStoreStream _prunerForRemote:];
  }

  v5 = [(BMStoreConfig *)self->_storeConfig copyWithRemoteName:v4];
  v6 = [objc_alloc(MEMORY[0x1E698F148]) initWithStream:self->_streamIdentifier config:v5 eventDataClass:self->_eventDataClass];
  [v6 setDelegate:self->_pruningDelegate];

  return v6;
}

- (void)pruneTombstonesByAge:(double)a3
{
  v4 = CFAbsoluteTimeGetCurrent() - a3;
  v5 = [(BMStoreStream *)self tombstonePruner];
  [v5 removeEventsFrom:1 to:&__block_literal_global_49 reason:0.0 usingBlock:v4];
}

- (void)pruneWithReason:(unint64_t)a3 usingPredicateBlock:(id)a4
{
  [(BMStoreStream *)self pruneEventsOfRemote:0 withReason:a3 policyID:0 error:0 predicateBlock:a4];

  [(BMStoreStream *)self pruneTombstonesByAge:691200.0];
}

- (BOOL)pruneEventsOfRemote:(id)a3 withReason:(unint64_t)a4 policyID:(id)a5 error:(id *)a6 predicateBlock:(id)a7
{
  v29[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  if (v12)
  {
    [(BMStoreStream *)self _prunerForRemote:v12];
  }

  else
  {
    [(BMStoreStream *)self pruner];
  }
  v15 = ;
  v16 = [v15 isDataAccessible];
  if (v16)
  {
    [v15 eventsFrom:a4 to:v13 reason:v14 policyID:0.0 shouldDeleteUsingBlock:CFAbsoluteTimeGetCurrent()];
    if (([(BMStoreConfig *)self->_storeConfig isManaged]& 1) != 0)
    {
      v27 = a4;
      v17 = [BMComputeSourceClient alloc];
      streamIdentifier = self->_streamIdentifier;
      v19 = [(BMStoreConfig *)self->_storeConfig domain];
      v20 = [(BMComputeSourceClient *)v17 initWithStreamIdentifier:streamIdentifier domain:v19 useCase:*MEMORY[0x1E698E950] user:[(BMStoreConfig *)self->_storeConfig uid]];
      v21 = [(BMStoreConfig *)self->_storeConfig account];
      if (v12)
      {
        [(BMComputeSourceClient *)v20 eventsPrunedForAccount:v21 remoteName:v12 reason:a4];
      }

      else
      {
        v24 = [(BMStoreConfig *)self->_storeConfig remoteName];
        [(BMComputeSourceClient *)v20 eventsPrunedForAccount:v21 remoteName:v24 reason:v27];
      }
    }
  }

  else if (a6)
  {
    v22 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"Pruner does not have access to data due to lock state";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    *a6 = [v22 errorWithDomain:@"com.apple.biome.BiomeStreams" code:2 userInfo:v23];
  }

  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)_pruneWithStoreConfig:(id)a3 expirationAge:(double)a4 block:(id)a5
{
  v14 = a3;
  v8 = a5;
  Current = CFAbsoluteTimeGetCurrent();
  if ([v14 isEqual:self->_storeConfig])
  {
    v10 = [(BMStoreStream *)self pruner];
LABEL_5:
    v13 = v10;
    goto LABEL_7;
  }

  v11 = [(BMStoreStream *)self tombstoneConfig];
  v12 = [v14 isEqual:v11];

  if (v12)
  {
    v10 = [(BMStoreStream *)self tombstonePruner];
    goto LABEL_5;
  }

  v13 = [objc_alloc(MEMORY[0x1E698F148]) initWithStream:self->_streamIdentifier config:v14 eventDataClass:self->_eventDataClass];
  [v13 setDelegate:self->_pruningDelegate];
LABEL_7:
  [v13 removeEventsFrom:1 to:v8 reason:0.0 usingBlock:Current - a4];

  [(BMStoreStream *)self pruneTombstonesByAge:691200.0];
}

- (void)pruneExpiredEventsWithBlock:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
  [v5 maxAge];
  if (v6 == 0.0)
  {

    v9 = 2419200.0;
  }

  else
  {
    v7 = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
    [v7 maxAge];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(BMStoreStream *)self pruneExpiredEventsWithBlock:v10, v9];
      }

      goto LABEL_26;
    }
  }

  if (([(NSString *)self->_streamIdentifier isEqual:@"GenerativeExperiences.TransparencyLog"]& 1) != 0 || ([(NSString *)self->_streamIdentifier isEqual:@"PrivateCloudCompute.RequestLog"]& 1) != 0 || [(NSString *)self->_streamIdentifier hasPrefix:@"AppleIntelligenceReport."])
  {
    v11 = [MEMORY[0x1E698EA38] shared];
    v12 = [v11 allowAppleIntelligenceReport];

    v13 = 0.0;
    if (v12)
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
  [(BMStoreStream *)self _pruneWithStoreConfig:self->_storeConfig expirationAge:v4 block:v13];
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
        [(BMStoreStream *)self _pruneWithStoreConfig:v30 expirationAge:v4 block:v13];

        objc_autoreleasePoolPop(v29);
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(v22);
  v10 = [(BMStoreStream *)self _computeSource];
  v31 = [(BMStoreConfig *)self->_storeConfig account];
  v32 = [(BMStoreConfig *)self->_storeConfig remoteName];
  [v10 eventsPrunedForAccount:v31 remoteName:v32 reason:1];

LABEL_26:
  v33 = *MEMORY[0x1E69E9840];
}

- (void)pruneStreamByPruningPolicyMaxStreamSize
{
  v3 = [(BMStoreConfig *)self->_storeConfig pruningPolicy];
  v4 = [v3 maxStreamSize];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 52428800;
  }

  [(BMStoreStream *)self pruneStreamBySize:v5];
}

- (void)pruneStreamBySize:(unint64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 52428800;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:self->_storeConfig includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
  [v6 setDelegate:self->_pruningDelegate];
  [v6 pruneStreamToMaxStreamSizeInBytes:v4];
  v7 = objc_alloc(MEMORY[0x1E698F140]);
  streamIdentifier = self->_streamIdentifier;
  v9 = [(BMStoreStream *)self tombstoneConfig];
  v10 = [v7 initWithStream:streamIdentifier permission:2 config:v9 includeTombstones:0];

  [v10 pruneStreamToMaxStreamSizeInBytes:v4];
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
        [v18 pruneStreamToMaxStreamSizeInBytes:v4];
        v19 = [v17 copy];
        [v19 setStoreLocationOption:{objc_msgSend(v19, "storeLocationOption") | 2}];
        v20 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:v19 includeTombstones:0];

        [v20 pruneStreamToMaxStreamSizeInBytes:v4];
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v21 = [(BMStoreStream *)self _computeSource];
  v22 = [(BMStoreConfig *)self->_storeConfig account];
  v23 = [(BMStoreConfig *)self->_storeConfig remoteName];
  [v21 eventsPrunedForAccount:v22 remoteName:v23 reason:1];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)pruneStreamToMaxCount:(unint64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E698F108] != a3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:self->_streamIdentifier permission:2 config:self->_storeConfig includeTombstones:{-[BMStoreConfig isManaged](self->_storeConfig, "isManaged")}];
    [v6 setDelegate:self->_pruningDelegate];
    [v6 pruneStreamToMaxCount:a3];

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
          [v15 pruneStreamToMaxCount:a3];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    v16 = [(BMStoreStream *)self _computeSource];
    v17 = [(BMStoreConfig *)self->_storeConfig account];
    v18 = [(BMStoreConfig *)self->_storeConfig remoteName];
    [v16 eventsPrunedForAccount:v17 remoteName:v18 reason:4];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)pruneLocalAndRemoteEventsWithReason:(unint64_t)a3 usingPredicateBlock:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  [(BMStoreStream *)self pruneWithReason:a3 usingPredicateBlock:v6];
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
        [(BMStoreStream *)v15 pruneWithReason:a3 usingPredicateBlock:v6];

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

- (BOOL)deleteStoreEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 bookmark];
  if (v5)
  {
    v6 = [v4 metadata];
    v7 = [v6 remoteStreamName];

    if (v7)
    {
      v8 = [v4 metadata];
      v9 = [v8 remoteStreamName];
      v10 = [(BMStoreStream *)self _prunerForRemote:v9];
    }

    else
    {
      v10 = [(BMStoreStream *)self pruner];
    }

    v12 = [v10 deleteEventAtBookmark:v5 outTombstoneBookmark:0];
    if (v12)
    {
      v13 = [(BMStoreStream *)self _computeSource];
      v14 = [(BMStoreConfig *)self->_storeConfig account];
      v15 = [(BMStoreConfig *)self->_storeConfig remoteName];
      [v13 eventsPrunedForAccount:v14 remoteName:v15 reason:2];
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(BMStoreStream *)self deleteStoreEvent:v4, v11];
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

@end