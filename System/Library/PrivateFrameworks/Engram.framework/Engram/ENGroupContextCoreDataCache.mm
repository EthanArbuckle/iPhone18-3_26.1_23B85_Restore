@interface ENGroupContextCoreDataCache
- (ENGroupContextCoreDataCache)initWithType:(unint64_t)type containerURL:(id)l queue:(id)queue;
- (id)initInMemoryCacheWithQueue:(id)queue;
- (void)_groupFromCypher:(id)cypher groupID:(id)d applicationData:(id)data context:(id)context completion:(id)completion;
- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion;
- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion;
- (void)groupContext:(id)context cacheGroup:(id)group completion:(id)completion;
- (void)groupContext:(id)context cachedGroupWithID:(id)d completion:(id)completion;
- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups;
- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion;
- (void)loadWithCompletion:(id)completion;
@end

@implementation ENGroupContextCoreDataCache

- (id)initInMemoryCacheWithQueue:(id)queue
{
  v4 = MEMORY[0x277CBEBC0];
  queueCopy = queue;
  v6 = NSHomeDirectory();
  v7 = [v4 fileURLWithPath:v6];
  v8 = [(ENGroupContextCoreDataCache *)self initWithType:1 containerURL:v7 queue:queueCopy];

  return v8;
}

- (ENGroupContextCoreDataCache)initWithType:(unint64_t)type containerURL:(id)l queue:(id)queue
{
  v33[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = ENGroupContextCoreDataCache;
  v10 = [(ENGroupContextCoreDataCache *)&v29 init];
  if (v10)
  {
    v27.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    v28 = _os_activity_create(&dword_24A04B000, "Create ENGroupContextCoreDataCache", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v27.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v28, &v27);
    objc_storeStrong(&v10->_queue, queue);
    v11 = MEMORY[0x277CBE450];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v14 = [v11 mergedModelFromBundles:v13];

    v15 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"ENGroupContext" managedObjectModel:v14];
    container = v10->_container;
    v10->_container = v15;

    name = [(NSPersistentContainer *)v10->_container name];
    v18 = [lCopy URLByAppendingPathComponent:name];
    v19 = [v18 URLByAppendingPathExtension:@"sqlite"];

    v20 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v19];
    v21 = +[ENLog groupContext];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v19;
      _os_log_impl(&dword_24A04B000, v21, OS_LOG_TYPE_DEFAULT, "!setState url=%@", buf, 0xCu);
    }

    if (type == 1)
    {
      v22 = +[ENLog groupContext];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = @"inMemory";
        _os_log_impl(&dword_24A04B000, v22, OS_LOG_TYPE_DEFAULT, "!setState db-type=%@", buf, 0xCu);
      }

      v23 = MEMORY[0x277CBE170];
    }

    else
    {
      if (type)
      {
LABEL_13:
        v30 = v20;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [(NSPersistentContainer *)v10->_container setPersistentStoreDescriptions:v24];

        os_activity_scope_leave(&v27);
        cut_arc_os_release();

        goto LABEL_14;
      }

      v22 = +[ENLog groupContext];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = @"SQLite";
        _os_log_impl(&dword_24A04B000, v22, OS_LOG_TYPE_DEFAULT, "!setState db-type=%@", buf, 0xCu);
      }

      v23 = MEMORY[0x277CBE2E8];
    }

    [v20 setType:*v23];
    goto LABEL_13;
  }

LABEL_14:

  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = _os_activity_create(&dword_24A04B000, "Loading Database", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v10, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_24A04C3AC;
  v7[3] = &unk_278FC3288;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  [container loadPersistentStoresWithCompletionHandler:v7];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_groupFromCypher:(id)cypher groupID:(id)d applicationData:(id)data context:(id)context completion:(id)completion
{
  cypherCopy = cypher;
  dCopy = d;
  dataCopy = data;
  contextCopy = context;
  completionCopy = completion;
  queue = [(ENGroupContextCoreDataCache *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24A04C688;
  block[3] = &unk_278FC32D8;
  v24 = contextCopy;
  v25 = cypherCopy;
  v26 = dataCopy;
  v27 = dCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = dCopy;
  v20 = dataCopy;
  v21 = cypherCopy;
  v22 = contextCopy;
  dispatch_async(queue, block);
}

- (void)groupContext:(id)context cacheGroup:(id)group completion:(id)completion
{
  contextCopy = context;
  groupCopy = group;
  completionCopy = completion;
  v19 = _os_activity_create(&dword_24A04B000, "Saving group -- Start", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v19, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24A04C9B4;
  v14[3] = &unk_278FC3328;
  v12 = groupCopy;
  v15 = v12;
  selfCopy = self;
  v13 = completionCopy;
  v17 = v13;
  [container performBackgroundTask:v14];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)groupContext:(id)context cachedGroupWithID:(id)d completion:(id)completion
{
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  v21 = _os_activity_create(&dword_24A04B000, "Fetching by groupID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v21, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A04CCEC;
  v15[3] = &unk_278FC3378;
  v12 = dCopy;
  v16 = v12;
  selfCopy = self;
  v13 = contextCopy;
  v18 = v13;
  v14 = completionCopy;
  v19 = v14;
  [container performBackgroundTask:v15];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion
{
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  v21 = _os_activity_create(&dword_24A04B000, "Fetching by Stable Group ID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v21, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A04D2D0;
  v15[3] = &unk_278FC3378;
  v12 = dCopy;
  v16 = v12;
  selfCopy = self;
  v13 = contextCopy;
  v18 = v13;
  v14 = completionCopy;
  v19 = v14;
  [container performBackgroundTask:v15];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v13 = _os_activity_create(&dword_24A04B000, "Delete all known groups", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v13, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24A04D968;
  v10[3] = &unk_278FC33A0;
  v10[4] = self;
  v9 = completionCopy;
  v11 = v9;
  [container performBackgroundTask:v10];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v21 = _os_activity_create(&dword_24A04B000, "Delete cached group", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v21, &state);
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = dCopy;
    _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_DEFAULT, "!setState groupID=%@", buf, 0xCu);
  }

  container = [(ENGroupContextCoreDataCache *)self container];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_24A04DE30;
  v16[3] = &unk_278FC3328;
  v13 = dCopy;
  v17 = v13;
  selfCopy = self;
  v14 = completionCopy;
  v19 = v14;
  [container performBackgroundTask:v16];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups
{
  contextCopy = context;
  groupsCopy = groups;
  v15 = _os_activity_create(&dword_24A04B000, "Fetch all known groups", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v15, &state);
  container = [(ENGroupContextCoreDataCache *)self container];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A04E28C;
  v11[3] = &unk_278FC33F0;
  v11[4] = self;
  v9 = groupsCopy;
  v13 = v9;
  v10 = contextCopy;
  v12 = v10;
  [container performBackgroundTask:v11];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

@end