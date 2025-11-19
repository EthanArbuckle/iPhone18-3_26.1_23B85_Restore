@interface BMStreamDatastore
- (BMStreamDatastore)initWithStream:(id)a3 streamPath:(id)a4 permission:(unint64_t)a5 config:(id)a6 eventDataClass:(Class)a7 useCase:(id)a8;
- (BMStreamDatastore)initWithStream:(id)a3 streamPath:(id)a4 permission:(unint64_t)a5 config:(id)a6 includeTombstones:(BOOL)a7 eventDataClass:(Class)a8 useCase:(id)a9;
- (BMStreamDatastorePruningDelegate)delegate;
- (BMStreamMetadata)metadata;
- (BOOL)deleteEventAtBookmark:(id)a3 outTombstoneBookmark:(id *)a4;
- (BOOL)saveMetadata:(id)a3;
- (BOOL)updateMetadata:(Class)a3;
- (BOOL)updateMetadata:(Class)a3 pruningPolicy:(id)a4;
- (BOOL)updatePruningPolicy:(id)a3;
- (BOOL)verifyStreamHealthFrom:(double)a3 to:(double)a4 error:(id *)a5;
- (BOOL)verifyStreamHealthFromV1:(double)a3 to:(double)a4 frameStore:(id)a5 error:(id *)a6;
- (BOOL)verifyStreamHealthFromV2:(double)a3 to:(double)a4 frameStore:(id)a5 error:(id *)a6;
- (BOOL)writeEventBytes:(const void *)a3 length:(unint64_t)a4 dataVersion:(unsigned int)a5 timestamp:(double)a6 outBookmark:(id *)a7;
- (BOOL)writeEventWithEventBody:(id)a3;
- (BOOL)writeEventWithEventBody:(id)a3 timestamp:(double)a4 outEventSize:(unint64_t *)a5 outBookmark:(id *)a6;
- (Class)eventBodyClass;
- (id)_bookmarkWithSegmentName:(id)a3 offset:(unint64_t)a4 datastoreVersion:(unsigned int)a5;
- (id)fetchEventsFrom:(double)a3 to:(double)a4 options:(unint64_t)a5;
- (id)loadMetadata;
- (id)metadataPath;
- (id)newEnumeratorFromBookmark:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newEnumeratorFromBookmarkEnumerator:(id)a3 error:(id *)a4;
- (id)newEnumeratorFromStartTime:(double)a3;
- (id)newEnumeratorFromStartTime:(double)a3 endTime:(double)a4 maxEvents:(unint64_t)a5 lastN:(unint64_t)a6 options:(unint64_t)a7;
- (id)newEnumeratorFromStartTime:(double)a3 options:(unint64_t)a4;
- (id)newTombstoneEnumeratorFromBookmark:(id)a3;
- (id)newTombstoneEnumeratorFromStartTime:(double)a3;
- (id)tombstoneStore;
- (int)frameCountInStreamDataStoreFromSegmentsContainingTime:(double)a3 to:(double)a4;
- (int)frameCountInStreamDataStoreFromTime:(double)a3 to:(double)a4;
- (int64_t)cachingOptionsForFileHandleWithAttributes:(id)a3;
- (void)_removeEventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 policyID:(id)a6 pruneFutureEvents:(BOOL)a7 shouldDeleteUsingBlock:(id)a8;
- (void)didMarkFrameAsRemovedWithSegmentName:(id)a3 frame:(id)a4 reason:(unint64_t)a5 policyID:(id)a6 outTombstoneBookmark:(id *)a7;
- (void)enumerateEventsFrom:(double)a3 to:(double)a4 options:(unint64_t)a5 usingBlock:(id)a6;
- (void)eventBodyClass;
- (void)fetchEventFromFrameStore:(id)a3 atOffset:(unint64_t)a4 withOptions:(unint64_t)a5 callback:(id)a6;
- (void)loadMetadata;
- (void)pruneStreamToMaxCount:(unint64_t)a3;
- (void)segmentManager:(id)a3 willDeleteSegmentName:(id)a4 frameStore:(id)a5 reason:(unint64_t)a6 direction:(unint64_t)a7;
- (void)syncMappedFiles;
- (void)writeTombstoneEventWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8 outTombstoneBookmark:(id *)a9;
@end

@implementation BMStreamDatastore

- (Class)eventBodyClass
{
  if ([(BMStreamDatastore *)self isTombstoneStore]|| [(BMStreamDatastore *)self isSubscriptionStore])
  {
    v3 = objc_opt_class();
  }

  else
  {
    eventDataClass = self->_eventDataClass;
    if (!eventDataClass)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamDatastore *)self eventBodyClass];
      }

      v6 = [(BMStreamDatastore *)self metadata];
      self->_eventDataClass = [v6 eventDataClass];

      eventDataClass = self->_eventDataClass;
    }

    v3 = eventDataClass;
  }

  return v3;
}

- (BMStreamMetadata)metadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BMStreamDatastore *)self loadMetadata];
  metadata = self->_metadata;
  self->_metadata = v3;

  v5 = self->_metadata;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)loadMetadata
{
  os_unfair_lock_assert_owner(&self->_lock);
  eventDataClass = self->_eventDataClass;
  if (self->_biomeLibrary)
  {
    if (!eventDataClass)
    {
      v4 = [MEMORY[0x1E698EA10] legacyClassNameForLibraryStream:self->_streamId];
      v5 = v4;
      if (v4)
      {
        v6 = NSClassFromString(v4);
        self->_eventDataClass = v6;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      else if (!self->_eventDataClass)
      {
LABEL_24:
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [(BMStreamDatastore *)&self->_streamId loadMetadata];
        }
      }

      if (!self->_pruningPolicy)
      {
        v23 = __biome_log_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          [(BMStreamDatastore *)&self->_streamId loadMetadata];
        }
      }
    }

LABEL_32:
    v24 = [BMStreamMetadata alloc];
    streamId = self->_streamId;
    v26 = self->_eventDataClass;
    v27 = [(BMStoreConfig *)self->_config account];
    v28 = [(BMStoreConfig *)self->_config remoteName];
    v19 = [(BMStreamMetadata *)v24 initWithStreamId:streamId eventType:v26 account:v27 remoteStreamName:v28 pruningPolicy:self->_pruningPolicy];

    goto LABEL_38;
  }

  if (eventDataClass && self->_pruningPolicy)
  {
    goto LABEL_32;
  }

  v7 = [(BMStreamDatastore *)self metadataPath];
  fileManager = self->_fileManager;
  v34 = 0;
  v9 = [(BMFileManager *)fileManager fileHandleForFileAtPath:v7 flags:0x20000000 protection:3 error:&v34];
  v10 = v34;
  v11 = v10;
  if (v9)
  {
    v33 = v10;
    v12 = [v9 readDataWithError:&v33];
    v13 = v33;

    if (v12)
    {
      v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
      v15 = v14;
      if (self->_eventDataClass)
      {
        v16 = [v14 setByAddingObject:?];

        v15 = v16;
      }

      v32 = v13;
      v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v12 error:&v32];
      v11 = v32;

      if (v11)
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [BMStreamDatastore loadMetadata];
        }

        v19 = 0;
      }

      else
      {
        v29 = [(BMStoreConfig *)self->_config remoteName];
        [v17 setRemoteStreamName:v29];

        v30 = [(BMStoreConfig *)self->_config account];
        [v17 setAccount:v30];

        v19 = v17;
      }
    }

    else
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(BMStreamDatastore *)v13 loadMetadata];
      }

      v19 = 0;
      v11 = v13;
    }
  }

  else
  {
    v20 = [(BMSegmentManager *)self->_segmentManager segmentNames];
    v21 = [v20 count];

    if (!v21)
    {
      v19 = 0;
      goto LABEL_37;
    }

    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMStreamDatastore *)v11 loadMetadata];
    }

    v19 = 0;
  }

LABEL_37:
LABEL_38:

  return v19;
}

- (void)eventBodyClass
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 112);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)metadataPath
{
  streamPath = self->_streamPath;
  v3 = [MEMORY[0x1E698EA08] metadata];
  v4 = [(NSString *)streamPath stringByAppendingPathComponent:v3];

  return v4;
}

- (BMStreamDatastorePruningDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)tombstoneStore
{
  tombstoneStore = self->_tombstoneStore;
  if (!tombstoneStore)
  {
    v4 = [(BMStreamDatastore *)self config];
    v5 = [v4 tombstonesConfig];

    v6 = [(BMStreamDatastore *)self permission]== 2;
    v7 = [BMStreamDatastore alloc];
    v8 = [(BMStreamDatastore *)self streamId];
    v9 = [(BMStreamDatastore *)self streamPath];
    v10 = [(BMStreamDatastore *)v7 initWithStream:v8 streamPath:v9 permission:v6 config:v5 includeTombstones:0 eventDataClass:objc_opt_class() useCase:self->_useCase];
    v11 = self->_tombstoneStore;
    self->_tombstoneStore = v10;

    tombstoneStore = self->_tombstoneStore;
  }

  return tombstoneStore;
}

- (BMStreamDatastore)initWithStream:(id)a3 streamPath:(id)a4 permission:(unint64_t)a5 config:(id)a6 eventDataClass:(Class)a7 useCase:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v45.receiver = self;
  v45.super_class = BMStreamDatastore;
  v18 = [(BMStreamDatastore *)&v45 init];
  v19 = v18;
  if (v18)
  {
    v18->_lock._os_unfair_lock_opaque = 0;
    if ([v14 hasSuffix:@":tombstones"])
    {
      v20 = [v14 componentsSeparatedByString:@":"];
      v21 = [v20 firstObject];

      v22 = [v16 tombstonesConfig];
    }

    else
    {
      if (![v14 hasSuffix:@":subscriptions"])
      {
        if (!v16)
        {
          goto LABEL_10;
        }

        goto LABEL_6;
      }

      v23 = [v14 componentsSeparatedByString:@":"];
      v21 = [v23 firstObject];

      v22 = [v16 subscriptionsConfig];
    }

    v24 = v22;
    v14 = v21;

    v16 = v24;
    if (!v24)
    {
LABEL_10:
      v16 = [BMStoreConfig newStreamDefaultConfigurationForPublicStream:0];
      if (!v15)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_6:
    if (!v15)
    {
LABEL_11:
      v25 = [v16 datastorePath];
      v15 = [v25 stringByAppendingPathComponent:v14];

      if (!v15)
      {
        v43 = 0;
        goto LABEL_24;
      }
    }

LABEL_12:
    if ([v16 isManaged] && (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "reliesOnDirectAccessForDomain:", objc_msgSend(v16, "domain")), v26, (v27 & 1) == 0))
    {
      v28 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v15 useCase:v17 domain:objc_msgSend(v16 user:{"domain"), objc_msgSend(v16, "uid")}];
    }

    else
    {
      v28 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v15 cachingOptions:3];
    }

    fileManager = v19->_fileManager;
    v19->_fileManager = v28;

    [(BMFileManager *)v19->_fileManager setDelegate:v19];
    v30 = [v16 resolvedPathWithStreamIdentifier:v14];
    segmentDirectory = v19->_segmentDirectory;
    v19->_segmentDirectory = v30;

    objc_storeStrong(&v19->_config, v16);
    v19->_biomeLibrary = 0;
    if ([(BMStoreConfig *)v19->_config isManaged])
    {
      v32 = __softlink__BiomeLibraryAndInternalLibraryNode();
      v33 = [v32 streamWithIdentifier:v14 error:0];

      if (v33)
      {
        v19->_biomeLibrary = 1;
      }
    }

    v34 = [[BMSegmentManager alloc] initWithDirectory:v19->_segmentDirectory fileManager:v19->_fileManager permission:a5 config:v16];
    segmentManager = v19->_segmentManager;
    v19->_segmentManager = v34;

    [(BMSegmentManager *)v19->_segmentManager setDelegate:v19];
    v36 = [v14 copy];
    streamId = v19->_streamId;
    v19->_streamId = v36;

    objc_storeStrong(&v19->_streamPath, v15);
    v19->_permission = a5;
    v38 = [v16 segmentSize];
    v39 = NSPageSize();
    if (v39 > v38)
    {
      v40 = 1;
    }

    else
    {
      v40 = v38 / v39;
    }

    v19->_maxFileSize = NSPageSize() * v40;
    v41 = [v16 pruningPolicy];
    pruningPolicy = v19->_pruningPolicy;
    v19->_pruningPolicy = v41;

    v19->_eventDataClass = a7;
    objc_storeStrong(&v19->_useCase, a8);
  }

  v43 = v19;

LABEL_24:
  return v43;
}

- (BOOL)writeEventWithEventBody:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(BMStreamDatastore *)self writeEventWithEventBody:v4 timestamp:0 outEventSize:0 outBookmark:CFAbsoluteTimeGetCurrent()];

  return self;
}

- (BOOL)writeEventWithEventBody:(id)a3 timestamp:(double)a4 outEventSize:(unint64_t *)a5 outBookmark:(id *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v13 = "Attempt to write nil event";
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_26;
  }

  if ([(BMStreamDatastore *)self isTombstoneStore])
  {
    v11 = objc_opt_class();
    if (v11 != objc_opt_class())
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        v13 = "Attempt to write non-tombstone to tombstone store";
LABEL_12:
        _os_log_impl(&dword_1C928A000, v12, OS_LOG_TYPE_INFO, v13, &v22, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = [(BMStreamDatastore *)self isSubscriptionStore];
    v15 = objc_opt_class();
    if (v14)
    {
      if (v15 != objc_opt_class())
      {
        v12 = __biome_log_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v22) = 0;
          v13 = "Attempt to write non-subscription to subscription store";
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v12 = NSStringFromClass(v15);
      if ([(BMStreamDatastore *)self eventBodyClass])
      {
        if (([(objc_class *)[(BMStreamDatastore *)self eventBodyClass] isEqual:objc_opt_class()]& 1) == 0)
        {
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            [BMStreamDatastore writeEventWithEventBody:v12 timestamp:self outEventSize:v17 outBookmark:?];
          }

          goto LABEL_13;
        }
      }

      else
      {
        v18 = __biome_log_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = 138543362;
          v23 = v12;
          _os_log_impl(&dword_1C928A000, v18, OS_LOG_TYPE_INFO, "Data type will be set to %{public}@", &v22, 0xCu);
        }
      }

      [(BMStreamDatastore *)self updateMetadata:objc_opt_class()];
    }
  }

  v19 = [v10 serialize];
  v12 = v19;
  if (a5)
  {
    *a5 = [v19 length];
  }

  v16 = -[BMStreamDatastore writeEventData:dataVersion:timestamp:outBookmark:](self, "writeEventData:dataVersion:timestamp:outBookmark:", v12, [v10 dataVersion], a6, a4);
LABEL_26:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)fetchEventsFrom:(double)a3 to:(double)a4 options:(unint64_t)a5
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__BMStreamDatastore_fetchEventsFrom_to_options___block_invoke;
  v11[3] = &unk_1E8338CC8;
  v11[4] = &v12;
  [(BMStreamDatastore *)self enumerateEventsFrom:a5 to:v11 options:a3 usingBlock:a4];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __48__BMStreamDatastore_fetchEventsFrom_to_options___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:a2];
  }

  return 1;
}

uint64_t __77__BMStreamDatastore_removeEventsFrom_to_reason_pruneFutureEvents_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  [a2 timestamp];
  (*(v4 + 16))(v4, a3);
  return 1;
}

- (void)_removeEventsFrom:(double)a3 to:(double)a4 reason:(unint64_t)a5 policyID:(id)a6 pruneFutureEvents:(BOOL)a7 shouldDeleteUsingBlock:(id)a8
{
  v9 = a7;
  v59 = *MEMORY[0x1E69E9840];
  v14 = a6;
  v15 = a8;
  if ([(BMStreamDatastore *)self isDataAccessible])
  {
    v16 = [(BMStreamDatastore *)self delegate];
    v17 = objc_opt_new();
    [v17 timeIntervalSince1970];
    if (v9 && v18 < 604800.0)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastore _removeEventsFrom:to:reason:policyID:pruneFutureEvents:shouldDeleteUsingBlock:];
      }

      v9 = 0;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__0;
    v57 = __Block_byref_object_dispose__0;
    v58 = objc_opt_new();
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    Current = CFAbsoluteTimeGetCurrent();
    if (v9)
    {
      v21 = -1.0;
    }

    else
    {
      v21 = a4;
    }

    [(BMSegmentManager *)self->_segmentManager refreshSegmentsList];
    if ([(BMStreamDatastore *)self isTombstoneStore]|| [(BMStreamDatastore *)self isSubscriptionStore])
    {
      v22 = 0;
    }

    else
    {
      v22 = [(BMStreamDatastore *)self metadata];
    }

    segmentManager = self->_segmentManager;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __99__BMStreamDatastore__removeEventsFrom_to_reason_policyID_pruneFutureEvents_shouldDeleteUsingBlock___block_invoke;
    v37[3] = &unk_1E8338D40;
    v44 = a3;
    v37[4] = self;
    p_buf = &buf;
    v26 = v22;
    v38 = v26;
    v48 = v9;
    v45 = Current;
    v41 = v15;
    v23 = v16;
    v39 = v23;
    v46 = a5;
    v40 = v14;
    v43 = &v49;
    v47 = a4;
    [(BMSegmentManager *)segmentManager enumerateSegmentsFrom:v37 to:a3 withBlock:v21];
    if (*(v50 + 24) == 1)
    {
      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastore _removeEventsFrom:to:reason:policyID:pruneFutureEvents:shouldDeleteUsingBlock:];
      }
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v28 = *(*(&buf + 1) + 40);
    v29 = [v28 countByEnumeratingWithState:&v33 objects:v53 count:16];
    if (v29)
    {
      v30 = *v34;
      do
      {
        v31 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [(BMSegmentManager *)self->_segmentManager removeSegmentNamed:*(*(&v33 + 1) + 8 * v31++), v33];
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v33 objects:v53 count:16];
      }

      while (v29);
    }

    [(BMSegmentManager *)self->_segmentManager refreshSegmentsList];
    if (objc_opt_respondsToSelector())
    {
      [v23 didPruneEvents];
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [(BMStreamDatastore *)self streamId];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_1C928A000, v23, OS_LOG_TYPE_INFO, "Pruner does not have access to stream due to lock state for stream %{public}@", &buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __99__BMStreamDatastore__removeEventsFrom_to_reason_policyID_pruneFutureEvents_shouldDeleteUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__BMStreamDatastore__removeEventsFrom_to_reason_policyID_pruneFutureEvents_shouldDeleteUsingBlock___block_invoke_2;
    v22[3] = &unk_1E8338D18;
    v22[4] = *(a1 + 32);
    v33 = a4;
    v9 = v7;
    v23 = v9;
    v24 = *(a1 + 40);
    v29 = &v49;
    v38 = *(a1 + 120);
    v34 = *(a1 + 96);
    v28 = *(a1 + 64);
    v25 = *(a1 + 48);
    v30 = &v45;
    v31 = &v39;
    v10 = v8;
    v11 = *(a1 + 104);
    v26 = v10;
    v35 = v11;
    v12 = *(a1 + 56);
    v13 = *(a1 + 80);
    v27 = v12;
    v32 = v13;
    v14 = *(a1 + 112);
    v36 = *(a1 + 88);
    v37 = v14;
    [v9 enumerateFromOffset:0 withCallback:v22];
    if (*(v50 + 6) == *(v46 + 6) && ([*(*(a1 + 32) + 136) lastSegmentName], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", v10), v15, (v16 & 1) == 0))
    {
      v20 = *(*(*(a1 + 72) + 8) + 40);
      v21 = [v9 segmentName];
      [v20 addObject:v21];
    }

    else if (v40[5] && [v9 datastoreVersion] == 10)
    {
      [v9 updateHighestDeletedFrameV2:v40[5] addToDeletedFrameCount:*(v46 + 6)];
    }

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    [BMSegmentManager timestampFromSegmentName:v8];
    if (v17 >= *(a1 + 88))
    {
      v18 = [*(*(a1 + 32) + 136) lastSegmentName];
      v19 = [v18 isEqual:v8];

      if ((v19 & 1) == 0)
      {
        [*(*(*(a1 + 72) + 8) + 40) addObject:v8];
      }
    }
  }
}

void __99__BMStreamDatastore__removeEventsFrom_to_reason_policyID_pruneFutureEvents_shouldDeleteUsingBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([*(a1 + 32) isDataAccessible])
  {
    v7 = [BMStoreEvent alloc];
    v8 = [*(a1 + 40) segmentName];
    v9 = [(BMStoreEvent *)v7 initWithFrame:v6 segmentName:v8 error:1 eventCategory:0 metadata:*(a1 + 48) dataType:0];

    [v6 creationTimestamp];
    v11 = v10;
    ++*(*(*(a1 + 88) + 8) + 24);
    if (*(a1 + 160) == 1 && v10 > *(a1 + 128) && (*(*(a1 + 80) + 16))())
    {
      v12 = *(a1 + 56);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 56) willPruneEvent:v9];
      }

      ++*(*(*(a1 + 96) + 8) + 24);
      [*(a1 + 40) markFrameAsRemoved:v6];
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), a2);
      if (([*(a1 + 32) isTombstoneStore] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isSubscriptionStore") & 1) == 0)
      {
        [*(a1 + 32) didMarkFrameAsRemovedWithSegmentName:*(a1 + 64) frame:v6 reason:*(a1 + 136) policyID:*(a1 + 72) outTombstoneBookmark:0];
      }

      *(*(*(a1 + 112) + 8) + 24) = 1;
    }

    else if (v11 >= *(a1 + 144) && v11 <= *(a1 + 152) && (*(*(a1 + 80) + 16))())
    {
      v15 = *(a1 + 56);
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 56) willPruneEvent:v9];
      }

      ++*(*(*(a1 + 96) + 8) + 24);
      [*(a1 + 40) markFrameAsRemoved:v6];
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), a2);
      if (([*(a1 + 32) isTombstoneStore] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isSubscriptionStore") & 1) == 0)
      {
        [*(a1 + 32) didMarkFrameAsRemovedWithSegmentName:*(a1 + 64) frame:v6 reason:*(a1 + 136) policyID:*(a1 + 72) outTombstoneBookmark:0];
      }
    }

    else if (v11 > *(a1 + 152) && (*(a1 + 160) & 1) == 0)
    {
      *a3 = 1;
    }

    if (*a3 == 1)
    {
      **(a1 + 120) = 1;
    }
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [*(a1 + 32) streamId];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_1C928A000, v13, OS_LOG_TYPE_INFO, "Pruner does not have access to stream due to lock state for stream %{public}@", &v17, 0xCu);
    }

    *a3 = 1;
    **(a1 + 120) = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)syncMappedFiles
{
  v2 = [(BMStreamDatastore *)self currentFrameStore];
  [v2 sync];
}

- (id)newEnumeratorFromStartTime:(double)a3
{
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  [v5 timeIntervalSinceReferenceDate];
  v7 = [(BMStreamDatastore *)self newEnumeratorFromStartTime:-1 endTime:-1 maxEvents:0 lastN:a3 options:v6];

  return v7;
}

- (id)newEnumeratorFromStartTime:(double)a3 options:(unint64_t)a4
{
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  [v7 timeIntervalSinceReferenceDate];
  v9 = [(BMStreamDatastore *)self newEnumeratorFromStartTime:-1 endTime:-1 maxEvents:a4 lastN:a3 options:v8];

  return v9;
}

- (id)newEnumeratorFromStartTime:(double)a3 endTime:(double)a4 maxEvents:(unint64_t)a5 lastN:(unint64_t)a6 options:(unint64_t)a7
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = [BMStoreEnumerator alloc];
  if (!self->_permission)
  {
    if ([(BMPruningPolicy *)self->_pruningPolicy pruneOnAccess])
    {
      if ([(BMPruningPolicy *)self->_pruningPolicy filterByAgeOnRead])
      {
        [(BMPruningPolicy *)self->_pruningPolicy maxAge];
        if (v14 > 0.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          [(BMPruningPolicy *)self->_pruningPolicy maxAge];
          v17 = Current - v16;
          v18 = 0.0;
          if ((a7 & 8) == 0)
          {
            v18 = v17;
          }

          if (v17 > a3)
          {
            a3 = v18;
          }
        }
      }
    }
  }

  if (!a6)
  {
    a5 = 0;
  }

  v19 = v13;
  v20 = [(BMStoreEnumerator *)v19 initWithStreamDatastore:self startTime:a5 endTime:a6 maxEvents:a7 lastN:[(BMStreamDatastore *)self eventBodyClass] options:a3 dataType:a4];

  if (!v20)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      streamId = self->_streamId;
      v25 = 138413058;
      v26 = streamId;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = a4;
      v31 = 2048;
      v32 = a7;
      _os_log_error_impl(&dword_1C928A000, v21, OS_LOG_TYPE_ERROR, "Failed to create enumerator for stream: %@ startTime: %f endTime: %f, options: %lu", &v25, 0x2Au);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)newEnumeratorFromBookmark:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v17 = 0;
  v9 = [[BMStoreEnumerator alloc] initWithStreamDatastore:self bookmark:v8 options:a4 error:&v17];
  v10 = v17;
  v11 = v10;
  if (a5 && v10)
  {
    v12 = v10;
    *a5 = v11;
  }

  if (!v9)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      streamId = self->_streamId;
      *buf = 138412802;
      v19 = streamId;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_1C928A000, v13, OS_LOG_TYPE_ERROR, "Failed to create enumerator with bookmark for stream: %@ %@ error: %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)newEnumeratorFromBookmarkEnumerator:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0;
  v7 = [[BMStoreEnumerator alloc] initWithStreamDatastore:self bookmarkEnumerator:v6 error:&v14];
  v8 = v14;
  if (!v7)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      streamId = self->_streamId;
      *buf = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = streamId;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1C928A000, v9, OS_LOG_TYPE_ERROR, "Failed to create enumerator with bookmarkEnumerator: %@ for stream: %@ error: %@", buf, 0x20u);
    }
  }

  if (a4)
  {
    v10 = v8;
    *a4 = v8;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deleteEventAtBookmark:(id)a3 outTombstoneBookmark:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(BMStreamDatastore *)self isDataAccessible])
  {
    v27 = 0;
    v7 = [[BMStoreEnumerator alloc] initWithStreamDatastore:self bookmark:v6 options:3 error:&v27];
    v8 = v27;
    if (v8)
    {
      v9 = BMStorageErrorGetErrno() == 2;
      v10 = __biome_log_for_category();
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          streamId = self->_streamId;
          *buf = 138412546;
          *&buf[4] = streamId;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&dword_1C928A000, v11, OS_LOG_TYPE_INFO, "Unable to delete event at bookmark because segment has already been deleted: %@ %@", buf, 0x16u);
        }

        if (a4)
        {
          *a4 = 0;
        }

        v13 = 1;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_streamId;
          *buf = 138412802;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          *&buf[22] = 2112;
          v29 = v8;
          _os_log_error_impl(&dword_1C928A000, v11, OS_LOG_TYPE_ERROR, "Failed to create enumerator for deleting event: %@ %@ error: %@", buf, 0x20u);
        }

        v13 = 0;
        if (a4)
        {
          *a4 = 0;
        }
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = __Block_byref_object_copy__0;
      v30 = __Block_byref_object_dispose__0;
      v31 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__BMStreamDatastore_deleteEventAtBookmark_outTombstoneBookmark___block_invoke;
      v18[3] = &unk_1E8338D68;
      v19 = v6;
      v20 = self;
      v21 = &v23;
      v22 = buf;
      [(BMStoreEnumerator *)v7 nextEventWithContext:v18];
      if (a4)
      {
        *a4 = *(*&buf[8] + 40);
      }

      v13 = *(v24 + 24);

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = [(BMStreamDatastore *)self streamId];
      *buf = 138543362;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C928A000, v8, OS_LOG_TYPE_INFO, "Pruner does not have access to stream due to lock state for stream %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

void __64__BMStreamDatastore_deleteEventAtBookmark_outTombstoneBookmark___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 frame];
    v8 = [v6 datastoreVersion];
    v9 = [v7 framePtr];
    if (v8 == 9)
    {
      v10 = bm_frame_header_statusV1(v9) >> 32;
    }

    else
    {
      LODWORD(v10) = *(v9 + 4);
    }

    if ((v10 & 0xFFFFFFFE) == 2)
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412546;
        v27 = v14;
        v28 = 1024;
        v29 = v10;
        _os_log_impl(&dword_1C928A000, v13, OS_LOG_TYPE_DEFAULT, "deleteEventAtBookmark: event at bookmark %@ already in deleted state %u", buf, 0x12u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      v15 = [v5 frame];
      [v6 markFrameAsRemoved:v15];

      if ([v6 datastoreVersion] == 10)
      {
        v16 = [v5 frame];
        [v6 updateHighestDeletedFrameV2:v16 addToDeletedFrameCount:1];
      }

      if ([*(a1 + 40) isTombstoneStore] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isSubscriptionStore"))
      {
        v17 = 0;
      }

      else
      {
        v18 = *(a1 + 40);
        v19 = [v6 segmentName];
        v20 = [v5 frame];
        v25 = 0;
        [v18 didMarkFrameAsRemovedWithSegmentName:v19 frame:v20 reason:2 policyID:0 outTombstoneBookmark:&v25];
        v17 = v25;
      }

      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v17;
      v23 = v17;

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1C928A000, v11, OS_LOG_TYPE_DEFAULT, "deleteEventAtBookmark: couldn't find event with bookmark %@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)enumerateEventsFrom:(double)a3 to:(double)a4 options:(unint64_t)a5 usingBlock:(id)a6
{
  v18 = a6;
  if (a3 <= a4)
  {
    if ((a5 & 8) != 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = a4;
    }

    if ((a5 & 8) != 0)
    {
      v12 = a4;
    }

    else
    {
      v12 = a3;
    }

    v13 = [(BMStreamDatastore *)self newEnumeratorFromStartTime:a5 endTime:v12 options:v11];
    v14 = [v13 nextEvent];
    if (v14)
    {
      v15 = v14;
      do
      {
        [v15 timestamp];
        if ((a5 & 8) != 0)
        {
          if (v16 < a3)
          {
            break;
          }
        }

        else if (v16 > a4)
        {
          break;
        }

        if (!v18[2](v18, v15))
        {
          break;
        }

        v17 = [v13 nextEvent];

        v15 = v17;
      }

      while (v17);
    }
  }

  else
  {
    [BMStreamDatastore enumerateEventsFrom:a2 to:self options:? usingBlock:?];
  }
}

- (id)_bookmarkWithSegmentName:(id)a3 offset:(unint64_t)a4 datastoreVersion:(unsigned int)a5
{
  if (a5 == 9)
  {
    v6 = a4 - 56;
  }

  else
  {
    v6 = a4;
  }

  v7 = a3;
  v8 = [[BMStoreBookmark alloc] initWithStream:self->_streamId segment:v7 iterationStartTime:v6 offset:CFAbsoluteTimeGetCurrent()];

  return v8;
}

- (BOOL)writeEventBytes:(const void *)a3 length:(unint64_t)a4 dataVersion:(unsigned int)a5 timestamp:(double)a6 outBookmark:(id *)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = [(BMStreamDatastore *)self currentFrameStore];
  if ([v12 start])
  {
    [(BMStreamDatastore *)self currentFrameStore];
  }

  else
  {
    [(BMSegmentManager *)self->_segmentManager lastFrameStoreOrCreateWithTimestamp:a6];
  }
  v13 = ;

  if (v13)
  {
    v47 = 0;
    v14 = [v13 segmentName];
    if ([(BMStreamDatastore *)self isDataAccessible])
    {
      v44 = a7;
      v15 = [v13 writeFrameForBytes:a3 length:a4 dataVersion:a5 timestamp:&v47 outOffset:a6];
      if (v15 != 2)
      {
        v21 = v15;
        v20 = v14;
LABEL_23:
        if (v21)
        {
          v25 = __biome_log_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v42 = [(BMStreamDatastore *)self streamPath];
            v43 = NSStringFromBMFrameWriteStatus(v21);
            *buf = 138413058;
            *&buf[4] = v42;
            *&buf[12] = 2048;
            *&buf[14] = a4;
            *&buf[22] = 1024;
            *v49 = a5;
            *&v49[4] = 2114;
            *&v49[6] = v43;
            _os_log_error_impl(&dword_1C928A000, v25, OS_LOG_TYPE_ERROR, "Failed to write frame for: %@, length: %zu dataVersion: %u writeStatus: %{public}@", buf, 0x26u);
          }

          v23 = 0;
        }

        else
        {
          streamId = self->_streamId;
          if (!streamId)
          {
            goto LABEL_31;
          }

          if (![(NSString *)streamId length])
          {
            goto LABEL_31;
          }

          v27 = [v13 segmentName];
          if (!v27 || (v28 = v27, -[NSObject segmentName](v13, "segmentName"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v29 length], v29, v28, !v30))
          {
LABEL_31:
            v31 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v49[0] = 16;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __78__BMStreamDatastore_writeEventBytes_length_dataVersion_timestamp_outBookmark___block_invoke;
            block[3] = &unk_1E8338B28;
            block[4] = buf;
            if (writeEventBytes_length_dataVersion_timestamp_outBookmark__onceToken != -1)
            {
              dispatch_once(&writeEventBytes_length_dataVersion_timestamp_outBookmark__onceToken, block);
            }

            v32 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v31, v32))
            {
              v33 = self->_streamId;
              v34 = [(NSString *)v33 length];
              v35 = [v13 segmentName];
              v36 = [v13 segmentName];
              v37 = [v36 length];
              *buf = 138413570;
              *&buf[4] = v33;
              *&buf[12] = 2048;
              *&buf[14] = v34;
              *&buf[22] = 2112;
              *v49 = v35;
              *&v49[8] = 2048;
              *&v49[10] = v37;
              v50 = 2112;
              v51 = v13;
              v52 = 2112;
              v53 = v20;
              _os_log_impl(&dword_1C928A000, v31, v32, "Calling _bookmarkWithSegmentName(streamId=%@ (len=%lu), segmentName=%@ (len=%lu)) frameStore=%@, segment before write=%@", buf, 0x3Eu);
            }
          }

          if (v44)
          {
            v38 = [v13 segmentName];
            *v44 = [(BMStreamDatastore *)self _bookmarkWithSegmentName:v38 offset:v47 datastoreVersion:[v13 datastoreVersion]];
          }

          v23 = 1;
        }

        v14 = v20;
        goto LABEL_46;
      }

      v16 = 0;
      v17 = v13;
      while (1)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = __biome_log_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = a4;
          _os_log_impl(&dword_1C928A000, v19, OS_LOG_TYPE_INFO, "Not enough free space to write event of size %zu. Attempting to create new segment", buf, 0xCu);
        }

        v13 = [(BMSegmentManager *)self->_segmentManager segmentAfterFrameStore:v17 orCreateSegmentWithTimestamp:a6];

        if (!v13)
        {
          break;
        }

        if (![(BMStreamDatastore *)self isDataAccessible])
        {
          v39 = __biome_log_for_category();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [BMStreamDatastore writeEventBytes:? length:? dataVersion:? timestamp:? outBookmark:?];
          }

          goto LABEL_44;
        }

        v20 = [v13 segmentName];

        v21 = [v13 writeFrameForBytes:a3 length:a4 dataVersion:a5 timestamp:&v47 outOffset:a6];
        objc_autoreleasePoolPop(v18);
        if (v21 == 2)
        {
          v17 = v13;
          v14 = v20;
          if (v16++ < 9)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastore writeEventBytes:? length:? dataVersion:? timestamp:? outBookmark:?];
      }

LABEL_44:

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastore writeEventBytes:? length:? dataVersion:? timestamp:? outBookmark:?];
      }
    }

    v23 = 0;
LABEL_46:

    goto LABEL_47;
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BMStreamDatastore writeEventBytes:? length:? dataVersion:? timestamp:? outBookmark:?];
  }

  v23 = 0;
LABEL_47:

  v40 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)fetchEventFromFrameStore:(id)a3 atOffset:(unint64_t)a4 withOptions:(unint64_t)a5 callback:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!v12)
  {
    [BMStreamDatastore fetchEventFromFrameStore:a2 atOffset:self withOptions:? callback:?];
  }

  if (!v11)
  {
    v11 = [(BMSegmentManager *)self->_segmentManager segmentAfterFrameStore:0 direction:(a5 >> 3) & 1];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  if (v11)
  {
    if (!v20[5])
    {
      while (1)
      {
        pruningPolicy = self->_pruningPolicy;
        if (pruningPolicy)
        {
          [v11 setFilterByAgeOnRead:{-[BMPruningPolicy filterByAgeOnRead](pruningPolicy, "filterByAgeOnRead")}];
          [v11 setPruneOnAccess:{-[BMPruningPolicy pruneOnAccess](self->_pruningPolicy, "pruneOnAccess")}];
          [(BMPruningPolicy *)self->_pruningPolicy maxAge];
          [v11 setMaxAge:?];
        }

        if (![(BMSegmentManager *)self->_segmentManager isDataAccessible])
        {
          break;
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __76__BMStreamDatastore_fetchEventFromFrameStore_atOffset_withOptions_callback___block_invoke;
        v18[3] = &unk_1E8338C10;
        v18[4] = &v19;
        [v11 enumerateWithOptions:a5 fromOffset:a4 usingBlock:v18];
        if (v20[5])
        {
          v14 = v11;
        }

        else
        {
          v14 = [(BMSegmentManager *)self->_segmentManager segmentAfterFrameStore:v11 direction:(a5 >> 3) & 1];
          if (!v14)
          {
            v15 = __biome_log_for_category();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [BMStreamDatastore fetchEventFromFrameStore:atOffset:withOptions:callback:];
            }

            goto LABEL_21;
          }

          a4 = 0xFFFFFFFFLL;
          v11 = v14;
        }

        if (v20[5])
        {
          goto LABEL_23;
        }
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        streamPath = self->_streamPath;
        *buf = 138543362;
        v26 = streamPath;
        _os_log_impl(&dword_1C928A000, v15, OS_LOG_TYPE_INFO, "Segment is no longer accessible: %{public}@", buf, 0xCu);
      }

LABEL_21:
    }

    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
  v12[2](v12, v20[5], v14);
  _Block_object_dispose(&v19, 8);

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateMetadata:(Class)a3
{
  if (self->_biomeLibrary || [(BMStreamDatastore *)self isTombstoneStore]|| [(BMStreamDatastore *)self isSubscriptionStore])
  {
    return 1;
  }

  return [(BMStreamDatastore *)self updateMetadata:a3 pruningPolicy:0];
}

- (BOOL)updateMetadata:(Class)a3 pruningPolicy:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_biomeLibrary && ![(BMStreamDatastore *)self isTombstoneStore]&& ![(BMStreamDatastore *)self isSubscriptionStore])
  {
    p_metadata = &self->_metadata;
    metadata = self->_metadata;
    if (!metadata)
    {
      v12 = [(BMStreamDatastore *)self loadMetadata];
      v13 = *p_metadata;
      *p_metadata = v12;

      metadata = *p_metadata;
    }

    if (-[BMStreamMetadata eventDataClass](metadata, "eventDataClass") && (-[objc_class isEqual:](a3, "isEqual:", [*p_metadata eventDataClass]) & 1) == 0)
    {
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        -[BMStreamDatastore updateMetadata:pruningPolicy:].cold.1(a3, [*p_metadata eventDataClass], v22, v19);
      }
    }

    else
    {
      v14 = [BMStreamMetadata alloc];
      streamId = self->_streamId;
      v16 = [(BMStoreConfig *)self->_config account];
      v17 = [(BMStoreConfig *)self->_config remoteName];
      pruningPolicy = v6;
      if (!v6)
      {
        pruningPolicy = self->_pruningPolicy;
      }

      v19 = [(BMStreamMetadata *)v14 initWithStreamId:streamId eventType:a3 account:v16 remoteStreamName:v17 pruningPolicy:pruningPolicy];

      if (([*p_metadata isEqual:v19] & 1) != 0 || (objc_storeStrong(&self->_metadata, v19), -[BMStreamDatastore saveMetadata:](self, "saveMetadata:", self->_metadata)))
      {
        v7 = 1;
LABEL_21:

        goto LABEL_5;
      }

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v21 = [(BMStreamDatastore *)self streamId];
        [(BMStreamDatastore *)v21 updateMetadata:v22 pruningPolicy:v20];
      }
    }

    v7 = 0;
    goto LABEL_21;
  }

  v7 = 1;
LABEL_5:
  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)saveMetadata:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_biomeLibrary)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      streamId = self->_streamId;
      *buf = 138543362;
      v21 = streamId;
      _os_log_impl(&dword_1C928A000, v6, OS_LOG_TYPE_DEFAULT, "[BMStreamDatastore saveMetadata:] called for stream %{public}@", buf, 0xCu);
    }

    if ([(BMStreamDatastore *)self isTombstoneStore])
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMStreamDatastore saveMetadata:];
      }

      goto LABEL_11;
    }

    if ([(BMStreamDatastore *)self isSubscriptionStore])
    {
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BMStreamDatastore saveMetadata:];
      }

      goto LABEL_11;
    }

    v19 = 0;
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v19];
    v9 = v19;
    if (v9)
    {
      v10 = v9;
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BMStreamDatastore saveMetadata:];
      }
    }

    else if (v8)
    {
      fileManager = self->_fileManager;
      v15 = [(BMStreamDatastore *)self metadataPath];
      v18 = 0;
      v16 = [(BMFileManager *)fileManager replaceFileAtPath:v15 withData:v8 protection:4 flags:0 error:&v18];
      v10 = v18;

      if (v16 && !v10)
      {
LABEL_11:
        v5 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [(BMStreamDatastore *)self saveMetadata:v10, v17];
      }
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BMStreamDatastore saveMetadata:];
      }
    }

    v5 = 0;
    goto LABEL_17;
  }

  v5 = 1;
LABEL_18:

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (int64_t)cachingOptionsForFileHandleWithAttributes:(id)a3
{
  v3 = a3;
  v4 = [v3 filename];
  v5 = [MEMORY[0x1E698EA08] localDevice];
  if ([v4 isEqual:v5])
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E698EA08] remoteDevices];
  if ([v4 isEqual:v6])
  {
LABEL_5:

LABEL_6:
    v8 = 1;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E698EA08] lock];
  if ([v4 isEqual:v7])
  {

    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E698EA08] tmp];
  v11 = [v4 isEqual:v10];

  if (v11)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E698EA08] metadata];
  v13 = [v4 isEqual:v12];

  if (v13)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v14 = [v3 path];
  v5 = [v14 componentsSeparatedByString:@"/"];

  if ([v5 count] < 2)
  {
    v8 = 2;
  }

  else
  {
    v15 = [v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 2}];
    v16 = [MEMORY[0x1E698EA08] remoteDevices];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

LABEL_7:

LABEL_8:
  return v8;
}

- (void)pruneStreamToMaxCount:(unint64_t)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_permission != 2)
  {
    [(BMStreamDatastore *)a2 pruneStreamToMaxCount:?];
  }

  v5 = [(BMStreamDatastore *)self eventBodyClass];
  v6 = [(BMStreamDatastore *)self metadata];
  v7 = [(BMStreamDatastore *)self delegate];
  v8 = objc_opt_respondsToSelector() & 1;
  v9 = [(BMStreamDatastore *)self isTombstoneStore]|| [(BMStreamDatastore *)self isSubscriptionStore];
  v10 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  segmentManager = self->_segmentManager;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __43__BMStreamDatastore_pruneStreamToMaxCount___block_invoke;
  v24[3] = &unk_1E8338DB8;
  v29 = v35;
  v30 = v36;
  v31 = a3;
  v12 = v10;
  v25 = v12;
  v13 = v6;
  v26 = v13;
  v32 = v5;
  v33 = v8;
  v14 = v7;
  v34 = v9;
  v27 = v14;
  v28 = self;
  [(BMSegmentManager *)segmentManager reverseEnumerateSegmentsFrom:v24 to:0.0 withBlock:-1.0];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (v16)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [(BMSegmentManager *)self->_segmentManager removeSegmentNamed:*(*(&v20 + 1) + 8 * i) reason:4 direction:1, v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v20 objects:v37 count:16];
    }

    while (v16);
  }

  if (v14)
  {
    [v14 didPruneEvents];
  }

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);

  v19 = *MEMORY[0x1E69E9840];
}

void __43__BMStreamDatastore_pruneStreamToMaxCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (++*(*(*(a1 + 64) + 8) + 24) < 2uLL || (*(*(*(a1 + 72) + 8) + 24) + 1) <= *(a1 + 80))
  {
    v9 = [v5 frameCount];
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = *(v10 + 8);
    v13 = *(v12 + 24) + v9;
    if (v13 <= v11)
    {
      *(v12 + 24) = v13;
    }

    else
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__0;
      v40 = __Block_byref_object_dispose__0;
      v41 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43__BMStreamDatastore_pruneStreamToMaxCount___block_invoke_2;
      v19[3] = &unk_1E8338D90;
      v25 = v10;
      v26 = &v32;
      v27 = &v36;
      v28 = v11;
      v14 = v5;
      v20 = v14;
      v15 = *(a1 + 40);
      v16 = *(a1 + 88);
      v21 = v15;
      v29 = v16;
      v30 = *(a1 + 96);
      v17 = *(a1 + 48);
      v31 = *(a1 + 97);
      v18 = *(a1 + 56);
      v22 = v17;
      v23 = v18;
      v24 = v6;
      [v14 enumerateWithOptions:8 fromOffset:0xFFFFFFFFLL usingBlock:v19];
      if ([v37[5] datastoreVersion] == 10)
      {
        [v14 updateHighestDeletedFrameV2:v37[5] addToDeletedFrameCount:*(v33 + 6)];
      }

      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v36, 8);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v5 segmentName];
    [v7 addObject:v8];
  }
}

void __43__BMStreamDatastore_pruneStreamToMaxCount___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 24) + 1;
  *(v4 + 24) = v5;
  if (v5 > *(a1 + 96))
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    v6 = *(*(a1 + 88) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      objc_storeStrong(v7, a2);
    }

    v9 = [BMStoreEvent alloc];
    v10 = [*(a1 + 32) segmentName];
    v11 = [(BMStoreEvent *)v9 initWithFrame:v12 segmentName:v10 error:1 eventCategory:0 metadata:*(a1 + 40) dataType:*(a1 + 104)];

    if (*(a1 + 112) == 1)
    {
      [*(a1 + 48) willPruneEvent:v11];
    }

    [*(a1 + 32) markFrameAsRemoved:v12];
    if ((*(a1 + 113) & 1) == 0)
    {
      [*(a1 + 56) didMarkFrameAsRemovedWithSegmentName:*(a1 + 64) frame:v12 reason:4 policyID:0 outTombstoneBookmark:0];
    }
  }
}

- (void)segmentManager:(id)a3 willDeleteSegmentName:(id)a4 frameStore:(id)a5 reason:(unint64_t)a6 direction:(unint64_t)a7
{
  v10 = a5;
  v11 = [(BMStreamDatastore *)self delegate];
  if (v11 && ![(BMStreamDatastore *)self isTombstoneStore]&& ![(BMStreamDatastore *)self isSubscriptionStore])
  {
    v12 = objc_opt_respondsToSelector() & 1;
    v13 = [(BMStreamDatastore *)self metadata];
    v14 = [(BMStreamDatastore *)self eventBodyClass];
    v15 = 8 * (a7 != 0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __86__BMStreamDatastore_segmentManager_willDeleteSegmentName_frameStore_reason_direction___block_invoke;
    v18[3] = &unk_1E8338DE0;
    v19 = v10;
    v16 = v13;
    v20 = v16;
    v23 = v14;
    v25 = v12;
    v17 = v11;
    v21 = v17;
    v22 = self;
    v24 = a6;
    [v19 enumerateWithOptions:v15 fromOffset:0xFFFFFFFFLL usingBlock:v18];
    if (objc_opt_respondsToSelector())
    {
      [v17 didPruneEvents];
    }
  }
}

void __86__BMStreamDatastore_segmentManager_willDeleteSegmentName_frameStore_reason_direction___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [BMStoreEvent alloc];
  v4 = [*(a1 + 32) segmentName];
  v5 = [(BMStoreEvent *)v3 initWithFrame:v11 segmentName:v4 error:1 eventCategory:0 metadata:*(a1 + 40) dataType:*(a1 + 64)];

  if (*(a1 + 80) == 1)
  {
    [*(a1 + 48) willPruneEvent:v5];
  }

  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) segmentName];
  v8 = [v11 offset];
  v9 = [v11 data];
  v10 = [v9 length];
  [v11 creationTimestamp];
  [v6 writeTombstoneEventWithSegmentName:v7 offset:v8 length:v10 eventTimestamp:*(a1 + 72) reason:0 policyID:?];
}

- (BMStreamDatastore)initWithStream:(id)a3 streamPath:(id)a4 permission:(unint64_t)a5 config:(id)a6 includeTombstones:(BOOL)a7 eventDataClass:(Class)a8 useCase:(id)a9
{
  v10 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  if (v10)
  {
    if (-[objc_class isEqual:](a8, "isEqual:", objc_opt_class()) & 1) != 0 || ([v15 hasPrefix:@"_DKEvent."])
    {
      LOBYTE(v10) = 0;
    }

    else if (a5 == 2 && ([v17 streamType] == 1 || objc_msgSend(v17, "streamType") == 2 || objc_msgSend(v17, "streamType") == 4))
    {
      v22 = __softlink__BiomeLibraryAndInternalLibraryNode();
      v23 = [v22 streamWithIdentifier:v15 error:0];

      if (v23)
      {
        v24 = [v23 valueForKeyPath:@"configuration.enableTombstoneSubstream"];
        LOBYTE(v10) = [v24 BOOLValue];
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  v19 = [(BMStreamDatastore *)self initWithStream:v15 streamPath:v16 permission:a5 config:v17 eventDataClass:a8 useCase:v18];
  v20 = v19;
  if (v19)
  {
    v19->_includeTombstones = v10;
  }

  return v20;
}

- (void)didMarkFrameAsRemovedWithSegmentName:(id)a3 frame:(id)a4 reason:(unint64_t)a5 policyID:(id)a6 outTombstoneBookmark:(id *)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v13 offset];
  v19 = [v13 data];
  v16 = [v19 length];
  [v13 creationTimestamp];
  v18 = v17;

  [(BMStreamDatastore *)self writeTombstoneEventWithSegmentName:v14 offset:v15 length:v16 eventTimestamp:a5 reason:v12 policyID:a7 outTombstoneBookmark:v18];
}

- (BOOL)updatePruningPolicy:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(BMStreamDatastore *)self updateMetadata:[(BMStreamDatastore *)self eventBodyClass] pruningPolicy:v4];

  return self;
}

- (id)newTombstoneEnumeratorFromStartTime:(double)a3
{
  v4 = [(BMStreamDatastore *)self tombstoneStore];
  v5 = [v4 newEnumeratorFromStartTime:a3];

  return v5;
}

- (id)newTombstoneEnumeratorFromBookmark:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamDatastore *)self tombstoneStore];
  v6 = [v5 newEnumeratorFromBookmark:v4];

  return v6;
}

- (void)writeTombstoneEventWithSegmentName:(id)a3 offset:(unint64_t)a4 length:(unint64_t)a5 eventTimestamp:(double)a6 reason:(unint64_t)a7 policyID:(id)a8 outTombstoneBookmark:(id *)a9
{
  if (self->_includeTombstones)
  {
    v16 = a8;
    v17 = a3;
    Current = CFAbsoluteTimeGetCurrent();
    v19 = [[BMTombstoneEvent alloc] initWithSegmentName:v17 offset:a4 length:a5 eventTimestamp:a7 reason:v16 policyID:a6];

    v20 = [(BMStreamDatastore *)self tombstoneStore];
    LODWORD(a9) = [v20 writeEventWithEventBody:v19 timestamp:0 outEventSize:a9 outBookmark:Current];

    if (a9)
    {
      v21 = [(BMStreamDatastore *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v22 = [(BMStoreConfig *)self->_config account];
        v23 = [(BMStoreConfig *)self->_config remoteName];
        [v21 didWriteTombstone:v19 timestamp:v22 account:v23 remoteName:Current];
      }
    }

    else
    {
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [BMStreamDatastore writeTombstoneEventWithSegmentName:offset:length:eventTimestamp:reason:policyID:outTombstoneBookmark:];
      }
    }
  }
}

- (int)frameCountInStreamDataStoreFromSegmentsContainingTime:(double)a3 to:(double)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [(BMStreamDatastore *)self segmentManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__BMStreamDatastore_frameCountInStreamDataStoreFromSegmentsContainingTime_to___block_invoke;
  v8[3] = &unk_1E8338E08;
  v8[4] = &v9;
  [v6 enumerateSegmentsFrom:v8 to:a3 withBlock:a4];

  LODWORD(v6) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __78__BMStreamDatastore_frameCountInStreamDataStoreFromSegmentsContainingTime_to___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 frameCount];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (int)frameCountInStreamDataStoreFromTime:(double)a3 to:(double)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6 = [(BMStreamDatastore *)self segmentManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__BMStreamDatastore_frameCountInStreamDataStoreFromTime_to___block_invoke;
  v8[3] = &unk_1E8338E30;
  v8[4] = &v9;
  *&v8[5] = a3;
  *&v8[6] = a4;
  [v6 enumerateSegmentsFrom:v8 to:a3 withBlock:a4];

  LODWORD(v6) = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __60__BMStreamDatastore_frameCountInStreamDataStoreFromTime_to___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 frameCountFromStartTime:*(a1 + 40) endTime:*(a1 + 48)];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)verifyStreamHealthFrom:(double)a3 to:(double)a4 error:(id *)a5
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__1;
  v20[4] = __Block_byref_object_dispose__1;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v9 = [(BMStreamDatastore *)self segmentManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__BMStreamDatastore_HealthCheck__verifyStreamHealthFrom_to_error___block_invoke;
  v13[3] = &unk_1E8338E98;
  v13[4] = self;
  v13[5] = &v22;
  *&v13[8] = a3;
  *&v13[9] = a4;
  v13[6] = &v14;
  v13[7] = v20;
  [v9 enumerateSegmentsFrom:v13 to:a3 withBlock:a4];

  if (a5)
  {
    v10 = v15[5];
    if (v10)
    {
      *a5 = v10;
    }
  }

  v11 = *(v23 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);
  return v11;
}

void __66__BMStreamDatastore_HealthCheck__verifyStreamHealthFrom_to_error___block_invoke(double *a1, void *a2, void *a3, _BYTE *a4)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!v7)
  {
    goto LABEL_10;
  }

  if ([v7 datastoreVersion] == 9)
  {
    v9 = *(a1 + 4);
    v10 = a1[8];
    v11 = a1[9];
    v12 = *(*(a1 + 6) + 8);
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    v32 = v14;
    v15 = [v9 verifyStreamHealthFromV1:v7 to:&v32 frameStore:v10 error:v11];
    v16 = v32;
LABEL_6:
    objc_storeStrong(v13, v16);
    *(*(*(a1 + 5) + 8) + 24) = v15;
    goto LABEL_8;
  }

  if ([v7 datastoreVersion] == 10)
  {
    v17 = *(a1 + 4);
    v18 = a1[8];
    v19 = a1[9];
    v20 = *(*(a1 + 6) + 8);
    v21 = *(v20 + 40);
    v13 = (v20 + 40);
    obj = v21;
    v15 = [v17 verifyStreamHealthFromV2:v7 to:&obj frameStore:v18 error:v19];
    v16 = obj;
    goto LABEL_6;
  }

  v22 = objc_alloc(MEMORY[0x1E696ABC0]);
  v33 = *MEMORY[0x1E696A578];
  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [MEMORY[0x1E698E9C8] privacyPathname:*(*(*(a1 + 7) + 8) + 40)];
  v25 = [v23 initWithFormat:@"streamHealth failed: %@ for segment: %@, Framestore version not recognized: %d", @"BMStreamHealthErrorUnrecognizedDatastoreVersion", v24, objc_msgSend(v7, "datastoreVersion")];
  v34[0] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v27 = [v22 initWithDomain:@"BiomeStreamHealth" code:10 userInfo:v26];
  v28 = *(*(a1 + 6) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  *(*(*(a1 + 5) + 8) + 24) = 0;
LABEL_8:
  if ((*(*(*(a1 + 5) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

LABEL_10:

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)verifyStreamHealthFromV1:(double)a3 to:(double)a4 frameStore:(id)a5 error:(id *)a6
{
  v90[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [v7 segmentPath];
  v9 = [v7 bytesUsed];
  if ([v7 frameStoreSize] < v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v89 = *MEMORY[0x1E696A578];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v11 initWithFormat:@"streamHealth failed: %@ for segment: %@, bytesUsed: %d, frameStoreSize:%zu", @"BMStreamHealthErrorBytesUsedBeyondFrameStoreSize", v12, objc_msgSend(v7, "bytesUsed"), objc_msgSend(v7, "frameStoreSize")];
    v90[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
    v15 = v10;
    v16 = 5;
LABEL_31:
    v22 = [v15 initWithDomain:@"BiomeStreamHealth" code:v16 userInfo:v14];
    goto LABEL_32;
  }

  v17 = [v7 start];
  if (*(v17 - 4) != *"SEGB")
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *MEMORY[0x1E696A578];
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v19 initWithFormat:@"streamHealth failed: %@ for segment: %@", @"BMStreamHealthErrorSegmentMagicMismatch", v12];
    v88 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
    v15 = v18;
    v16 = 7;
    goto LABEL_31;
  }

  v20 = *(v17 - 40);
  if (v20 != [v7 datastoreVersion])
  {
    v42 = objc_alloc(MEMORY[0x1E696ABC0]);
    v85 = *MEMORY[0x1E696A578];
    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v43 initWithFormat:@"streamHealth failed: %@ for segment: %@", @"BMStreamHealthErrorDatastoreVersionMismatch", v12];
    v86 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    v15 = v42;
    v16 = 8;
    goto LABEL_31;
  }

  v21 = [v7 bytesUsed];
  v22 = 0;
  v23 = 0;
  v24 = (v21 - 56);
  v25 = v21 - 64;
  v69 = *MEMORY[0x1E696A578];
  v70 = a6;
  while (1)
  {
    if ((v23 & 7) != 0)
    {
      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v83 = v69;
      v48 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
      v13 = [v48 initWithFormat:@"streamHealth failed: %@ for segment: %@, offset: %d", @"BMStreamHealthErrorNotAligned", v12, v23];
      v84 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v49 = v47;
      v50 = 1;
LABEL_41:
      v58 = [v49 initWithDomain:@"BiomeStreamHealth" code:v50 userInfo:v14];

      v22 = v58;
      goto LABEL_32;
    }

    v26 = v8;
    v27 = ([v7 start] + v23);
    v28 = bm_frame_header_statusV1(v27);
    v29 = v23 + v28 + 31;
    if ([v7 frameStoreSize] <= v29)
    {
      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v81 = v69;
      v52 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = v26;
      v12 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
      v13 = [v52 initWithFormat:@"streamHealth failed: %@ for segment: %@, offset: %d frameStoreSize: %zu", @"BMStreamHealthErrorLengthBeyondFrameSize", v12, v23, objc_msgSend(v7, "frameStoreSize")];
      v82 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v49 = v51;
      v50 = 2;
      goto LABEL_41;
    }

    if (v29 >= v24)
    {
      v53 = objc_alloc(MEMORY[0x1E696ABC0]);
      v79 = v69;
      v54 = objc_alloc(MEMORY[0x1E696AEC0]);
      v8 = v26;
      v12 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
      v13 = [v54 initWithFormat:@"streamHealth failed: %@ for segment: %@, offset: %d frameSize: %u, bytesUsedByFrames: %d", @"BMStreamHealthErrorLengthBeyondBytesUsed", v12, v23, v28, v24];
      v80 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      v49 = v53;
      v50 = 3;
      goto LABEL_41;
    }

    if (HIDWORD(v28) != 3)
    {
      if (HIDWORD(v28) != 1)
      {
LABEL_19:
        v37 = 1;
        goto LABEL_21;
      }

      v30 = bm_frame_bytesV1(v27);
      Checksum = bm_generateChecksum(v30, v28);
      v32 = *(bm_frame_header_infoV1(v27) + 16);
      if (Checksum != v32)
      {
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v77 = v69;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = v26;
        v12 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
        v13 = [v60 initWithFormat:@"streamHealth failed: %@ for segment: %@, calculated crc: %d frame crc: %d offset: %d", @"BMStreamHealthErrorCheckSumMismatch", v12, Checksum, v32, v23];
        v78 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v61 = v59;
        v62 = 4;
        goto LABEL_43;
      }

LABEL_20:
      v37 = 1;
      a6 = v70;
      goto LABEL_21;
    }

    v33 = *(bm_frame_header_infoV1(v27) + 16);
    if (v33)
    {
      break;
    }

    v34 = bm_frame_bytesV1(v27);
    if (v28 < 1)
    {
      goto LABEL_20;
    }

    v35 = v28 & 0x7FFFFFFF;
    a6 = v70;
    while (!*v34++)
    {
      if (!--v35)
      {
        goto LABEL_19;
      }
    }

    v66 = objc_alloc(MEMORY[0x1E696ABC0]);
    v73 = v69;
    v39 = objc_alloc(MEMORY[0x1E696AEC0]);
    v68 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
    v40 = [v39 initWithFormat:@"streamHealth failed: %@ for segment: %@, deleted frame data is not zero, offset: %d", @"BMStreamHealthErrorDeletedFrameDataNotZero", v68, v23];
    v74 = v40;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v67 = [v66 initWithDomain:@"BiomeStreamHealth" code:12 userInfo:v41];

    a6 = v70;
    v37 = 0;
    v22 = v67;
LABEL_21:
    if (HIDWORD(v28) >= 5)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v71 = v69;
      v56 = objc_alloc(MEMORY[0x1E696AEC0]);
      v57 = v26;
      v12 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
      v8 = v57;
      v13 = [v56 initWithFormat:@"streamHealth failed: %@ for segment: %@, frame state:%d", @"BMStreamHealthErrorUnrecognizedState", v12, HIDWORD(v28)];
      v72 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v49 = v55;
      v50 = 6;
      goto LABEL_41;
    }

    v23 = v23 + ((v28 + 7) & 0xFFFFFFF8) + 32;
    if (v23 > v25)
    {
      v24 = [v7 bytesUsed] - 56;
    }

    v25 = v24 - 8;
    v38 = v23 <= v24 - 8 && v37;
    v8 = v26;
    if (!v38)
    {
      goto LABEL_33;
    }
  }

  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
  v75 = v69;
  v64 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = v26;
  v12 = [MEMORY[0x1E698E9C8] privacyPathname:v26];
  v13 = [v64 initWithFormat:@"streamHealth failed: %@ for segment: %@, crc for deleted frame not zero: %#010X offset: %d", @"BMStreamHealthErrorDeletedFrameCheckSumNotZero", v12, v33, v23];
  v76 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v61 = v63;
  v62 = 11;
LABEL_43:
  v65 = [v61 initWithDomain:@"BiomeStreamHealth" code:v62 userInfo:v14];

  v22 = v65;
  a6 = v70;
LABEL_32:

  v37 = 0;
LABEL_33:
  if (a6 && v22)
  {
    v44 = v22;
    *a6 = v22;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)verifyStreamHealthFromV2:(double)a3 to:(double)a4 frameStore:(id)a5 error:(id *)a6
{
  v82[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = [v7 segmentPath];
  v9 = [v7 bytesUsed];
  if ([v7 frameStoreSize] < v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v81 = *MEMORY[0x1E696A578];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v11 initWithFormat:@"streamHealth failed: %@ for segment: %@, bytesUsed: %d, frameStoreSize:%zu", @"BMStreamHealthErrorBytesUsedBeyondFrameStoreSize", v12, objc_msgSend(v7, "bytesUsed"), objc_msgSend(v7, "frameStoreSize")];
    v82[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    v15 = v10;
    v16 = 5;
LABEL_25:
    v24 = [v15 initWithDomain:@"BiomeStreamHealth" code:v16 userInfo:v14];
    goto LABEL_26;
  }

  v17 = [v7 start];
  if (*(v17 - 32) != *"SEGB")
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v79 = *MEMORY[0x1E696A578];
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v19 initWithFormat:@"streamHealth failed: %@ for segment: %@", @"BMStreamHealthErrorSegmentMagicMismatch", v12];
    v80 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v15 = v18;
    v16 = 7;
    goto LABEL_25;
  }

  v20 = *(v17 - 16);
  if (v20 != [v7 datastoreVersion])
  {
    v44 = objc_alloc(MEMORY[0x1E696ABC0]);
    v77 = *MEMORY[0x1E696A578];
    v45 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
    v13 = [v45 initWithFormat:@"streamHealth failed: %@ for segment: %@", @"BMStreamHealthErrorDatastoreVersionMismatch", v12];
    v78 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v15 = v44;
    v16 = 8;
    goto LABEL_25;
  }

  v21 = [v7 bytesUsed];
  v22 = [v7 atomicReadTotalFramesV2];
  if (v22 < 1)
  {
    v24 = 0;
    v27 = 1;
    goto LABEL_30;
  }

  v23 = v22;
  v24 = 0;
  v25 = 0;
  v26 = (v21 - 16 * v22 - 32);
  v64 = *MEMORY[0x1E696A578];
  v27 = 1;
  while (1)
  {
    v28 = [v7 offsetTablePtrFromFrameNumberV2:v25];
    if (!v28)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v75 = v64;
      v50 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
      v13 = [v50 initWithFormat:@"streamHealth failed: %@ for segment: %@ frame: %d", @"BMStreamHealthErrorBadFrameNumber", v12, v25];
      v76 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      v60 = v49;
      v61 = 13;
      goto LABEL_36;
    }

    v29 = v28;
    if (v27)
    {
      if (v26 < ((*v28 + 3) & 0xFFFFFFFC))
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v73 = v64;
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
        v13 = [v52 initWithFormat:@"streamHealth failed: %@ for segment: %@ frame: %d", @"BMStreamHealthErrorBadOffsetToByteAfterFrame", v12, v25];
        v74 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v60 = v51;
        v61 = 9;
        goto LABEL_36;
      }

      if (v28[1] >= 5u)
      {
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = v64;
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
        v13 = [v54 initWithFormat:@"streamHealth failed: %@ for segment: %@, frame state:%d frame: %d", @"BMStreamHealthErrorUnrecognizedState", v12, v29[1], v25];
        v72 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v60 = v53;
        v61 = 6;
        goto LABEL_36;
      }
    }

    v30 = [v7 start];
    v31 = (v30 + [v7 frameOffsetFromOffsetTableV2:v29]);
    v32 = v29[1];
    if (v32 == 3)
    {
      break;
    }

    if (v32 == 1)
    {
      v33 = bm_frame_bytesV2(v31);
      Checksum = bm_generateChecksum(v33, [v7 sizeOfFrameV2:v25] - 8);
      if (Checksum != *v31)
      {
        v57 = Checksum;
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = v64;
        v59 = objc_alloc(MEMORY[0x1E696AEC0]);
        v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
        v13 = [v59 initWithFormat:@"streamHealth failed: %@ for segment: %@, calculated crc: %d frame crc: %d frame: %d", @"BMStreamHealthErrorCheckSumMismatch", v12, v57, *v31, v25];
        v70 = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v60 = v58;
        v61 = 4;
        goto LABEL_36;
      }
    }

LABEL_22:
    v25 = (v25 + 1);
    if (v25 == v23)
    {
      goto LABEL_27;
    }
  }

  if (!*v31)
  {
    v35 = bm_frame_bytesV2(v31);
    v36 = ([v7 sizeOfFrameV2:v25] - 5) & 0xFFFFFFFFFFFFFFFCLL;
    if (v36)
    {
      while (!*v35++)
      {
        if (!--v36)
        {
          goto LABEL_22;
        }
      }

      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v65 = v64;
      v39 = objc_alloc(MEMORY[0x1E696AEC0]);
      v63 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
      v40 = [v39 initWithFormat:@"streamHealth failed: %@ for segment: %@, deleted frame data is not zero, frame: %d", @"BMStreamHealthErrorDeletedFrameDataNotZero", v63, v25];
      v66 = v40;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v42 = v41 = v26;
      v43 = [v38 initWithDomain:@"BiomeStreamHealth" code:12 userInfo:v42];

      v26 = v41;
      v27 = 0;
      v24 = v43;
    }

    goto LABEL_22;
  }

  v55 = objc_alloc(MEMORY[0x1E696ABC0]);
  v67 = v64;
  v56 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E698E9C8] privacyPathname:v8];
  v13 = [v56 initWithFormat:@"streamHealth failed: %@ for segment: %@, crc for deleted frame not zero: %#010X frame: %d", @"BMStreamHealthErrorDeletedFrameCheckSumNotZero", v12, *v31, v25];
  v68 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v60 = v55;
  v61 = 11;
LABEL_36:
  v62 = [v60 initWithDomain:@"BiomeStreamHealth" code:v61 userInfo:v14];

  v24 = v62;
LABEL_26:

  v27 = 0;
LABEL_27:
  if (a6 && v24)
  {
    v46 = v24;
    *a6 = v24;
  }

LABEL_30:

  v47 = *MEMORY[0x1E69E9840];
  return v27 & 1;
}

- (void)writeEventWithEventBody:(NSObject *)a3 timestamp:outEventSize:outBookmark:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a2 streamId];
  v8 = 138412802;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  v12 = 2112;
  v13 = [a2 eventBodyClass];
  _os_log_fault_impl(&dword_1C928A000, a3, OS_LOG_TYPE_FAULT, "Incoming event is of type: %@, while stream - %@ only accepts events of type: %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_removeEventsFrom:to:reason:policyID:pruneFutureEvents:shouldDeleteUsingBlock:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_removeEventsFrom:to:reason:policyID:pruneFutureEvents:shouldDeleteUsingBlock:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)enumerateEventsFrom:(uint64_t)a1 to:(uint64_t)a2 options:usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMStreamDatastore.m" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"start <= end"}];
}

- (void)writeEventData:dataVersion:timestamp:outBookmark:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeEventBytes:(void *)a1 length:dataVersion:timestamp:outBookmark:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 streamPath];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)writeEventBytes:(void *)a1 length:dataVersion:timestamp:outBookmark:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 streamPath];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)writeEventBytes:(void *)a1 length:dataVersion:timestamp:outBookmark:.cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 streamPath];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchEventFromFrameStore:(uint64_t)a1 atOffset:(uint64_t)a2 withOptions:callback:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMStreamDatastore.m" lineNumber:884 description:{@"Invalid parameter not satisfying: %@", @"callback"}];
}

- (void)updateMetadata:(uint8_t *)buf pruningPolicy:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C928A000, log, OS_LOG_TYPE_FAULT, "updateMetadata: eventBodyClass (%@) does not match existing class metadata (%@)", buf, 0x16u);
}

- (void)updateMetadata:(os_log_t)log pruningPolicy:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1C928A000, log, OS_LOG_TYPE_FAULT, "updateMetadata: unable to update metadata file for %@", buf, 0xCu);
}

- (void)loadMetadata
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)saveMetadata:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)saveMetadata:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 metadataPath];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_4_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  v9 = 2112;
  v10 = a2;
  _os_log_fault_impl(&dword_1C928A000, a3, OS_LOG_TYPE_FAULT, "unable to write metadata to file: %{public}@ Err: %@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)saveMetadata:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveMetadata:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveMetadata:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_2();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)pruneStreamToMaxCount:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMStreamDatastore.m" lineNumber:1155 description:@"BMStreamDatastore not configured for pruning"];
}

- (void)writeTombstoneEventWithSegmentName:offset:length:eventTimestamp:reason:policyID:outTombstoneBookmark:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end