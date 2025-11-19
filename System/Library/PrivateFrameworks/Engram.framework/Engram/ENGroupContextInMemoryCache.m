@interface ENGroupContextInMemoryCache
- (ENGroupContextInMemoryCache)initWithQueue:(id)a3;
- (void)deleteAllKnownGroupsForGroupContext:(id)a3 completion:(id)a4;
- (void)deleteCachedValueForForGroupContext:(id)a3 withGroupID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 cacheGroup:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 cachedGroupWithID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 fetchAllKnownGroups:(id)a4;
- (void)groupContext:(id)a3 latestCachedGroupWithStableID:(id)a4 completion:(id)a5;
@end

@implementation ENGroupContextInMemoryCache

- (ENGroupContextInMemoryCache)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ENGroupContextInMemoryCache;
  v6 = [(ENGroupContextInMemoryCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groupIDtoGroup = v7->_groupIDtoGroup;
    v7->_groupIDtoGroup = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestStableGroupIDToGroup = v7->_latestStableGroupIDToGroup;
    v7->_latestStableGroupIDToGroup = v10;
  }

  return v7;
}

- (void)groupContext:(id)a3 cacheGroup:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v35 = v7;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "CacheGroup - BEGIN {group: %{private}@}", buf, 0xCu);
  }

  v10 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  v11 = [v7 groupID];
  v12 = [v11 stableGroupID];
  v13 = [v10 objectForKeyedSubscript:v12];

  v14 = +[ENLog groupContext];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_INFO, "CacheGroup - group not found - caching", buf, 2u);
    }

    v19 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
    v21 = [v7 groupID];
    v22 = [v21 stableGroupID];
    [v19 setObject:v7 forKeyedSubscript:v22];
    goto LABEL_23;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_INFO, "CacheGroup - have existing stableGroupID - Testing order", buf, 2u);
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v16 = [v13 groupID];
  v17 = [v7 groupID];
  v32 = 0;
  v18 = [v16 compare:v17 withResult:&v33 error:&v32];
  v19 = v32;

  if (v18)
  {
    if (v33 == 1)
    {
      v21 = +[ENLog groupContext];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v21, OS_LOG_TYPE_DEFAULT, "CacheGroup - group is older - Ignoring", buf, 2u);
      }

      goto LABEL_24;
    }

    if (v33)
    {
      if (v33 != -1)
      {
        goto LABEL_25;
      }

      v20 = +[ENLog groupContext];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v20, OS_LOG_TYPE_INFO, "CacheGroup - group is newer - Caching", buf, 2u);
      }

      v21 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
      v22 = [v7 groupID];
      v23 = [v22 stableGroupID];
      v24 = v21;
      v25 = v7;
    }

    else
    {
      v27 = +[ENLog groupContext];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v27, OS_LOG_TYPE_DEFAULT, "CacheGroup - group is same - Clearing", buf, 2u);
      }

      v21 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
      v22 = [v7 groupID];
      v23 = [v22 stableGroupID];
      v24 = v21;
      v25 = 0;
    }

    [v24 setObject:v25 forKeyedSubscript:v23];

LABEL_23:
LABEL_24:

    goto LABEL_25;
  }

  v26 = +[ENLog groupContext];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
  {
    *buf = 138478339;
    v35 = v13;
    v36 = 2113;
    v37 = v7;
    v38 = 2113;
    v39 = v19;
    _os_log_fault_impl(&dword_24A04B000, v26, OS_LOG_TYPE_FAULT, "CacheGroup - could not compare groups - Fail {existingLatestGroup: %{private}@, group: %{private}@, error: %{private}@}", buf, 0x20u);
  }

  v8[2](v8);
LABEL_25:

  v28 = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  v29 = [v7 groupID];
  [v28 setObject:v7 forKeyedSubscript:v29];

  v30 = +[ENLog groupContext];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v30, OS_LOG_TYPE_INFO, "CacheGroup  - END", buf, 2u);
  }

  v8[2](v8);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllKnownGroupsForGroupContext:(id)a3 completion:(id)a4
{
  v8 = a4;
  v5 = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  [v6 removeAllObjects];

  v7 = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  [v7 removeAllObjects];

  v8[2]();
}

- (void)deleteCachedValueForForGroupContext:(id)a3 withGroupID:(id)a4 completion:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  v10 = [v7 stableGroupID];
  [v9 setObject:0 forKeyedSubscript:v10];

  v11 = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  [v11 setObject:0 forKeyedSubscript:v7];

  v12[2]();
}

- (void)groupContext:(id)a3 cachedGroupWithID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(v9);

  v11 = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  v10 = [v11 objectForKeyedSubscript:v8];

  v7[2](v7, v10);
}

- (void)groupContext:(id)a3 latestCachedGroupWithStableID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(v9);

  v11 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  v10 = [v11 objectForKeyedSubscript:v8];

  v7[2](v7, v10);
}

- (void)groupContext:(id)a3 fetchAllKnownGroups:(id)a4
{
  v5 = a4;
  v6 = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(v6);

  v8 = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  v7 = [v8 allValues];
  v5[2](v5, v7);
}

@end