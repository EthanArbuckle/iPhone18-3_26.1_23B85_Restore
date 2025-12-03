@interface ENGroupContextInMemoryCache
- (ENGroupContextInMemoryCache)initWithQueue:(id)queue;
- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion;
- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion;
- (void)groupContext:(id)context cacheGroup:(id)group completion:(id)completion;
- (void)groupContext:(id)context cachedGroupWithID:(id)d completion:(id)completion;
- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups;
- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion;
@end

@implementation ENGroupContextInMemoryCache

- (ENGroupContextInMemoryCache)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ENGroupContextInMemoryCache;
  v6 = [(ENGroupContextInMemoryCache *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groupIDtoGroup = v7->_groupIDtoGroup;
    v7->_groupIDtoGroup = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestStableGroupIDToGroup = v7->_latestStableGroupIDToGroup;
    v7->_latestStableGroupIDToGroup = v10;
  }

  return v7;
}

- (void)groupContext:(id)context cacheGroup:(id)group completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  completionCopy = completion;
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v35 = groupCopy;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "CacheGroup - BEGIN {group: %{private}@}", buf, 0xCu);
  }

  latestStableGroupIDToGroup = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  groupID = [groupCopy groupID];
  stableGroupID = [groupID stableGroupID];
  v13 = [latestStableGroupIDToGroup objectForKeyedSubscript:stableGroupID];

  v14 = +[ENLog groupContext];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_INFO, "CacheGroup - group not found - caching", buf, 2u);
    }

    latestStableGroupIDToGroup2 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
    groupID2 = [groupCopy groupID];
    stableGroupID2 = [groupID2 stableGroupID];
    [latestStableGroupIDToGroup2 setObject:groupCopy forKeyedSubscript:stableGroupID2];
    goto LABEL_23;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_INFO, "CacheGroup - have existing stableGroupID - Testing order", buf, 2u);
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  groupID3 = [v13 groupID];
  groupID4 = [groupCopy groupID];
  v32 = 0;
  v18 = [groupID3 compare:groupID4 withResult:&v33 error:&v32];
  latestStableGroupIDToGroup2 = v32;

  if (v18)
  {
    if (v33 == 1)
    {
      groupID2 = +[ENLog groupContext];
      if (os_log_type_enabled(groupID2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, groupID2, OS_LOG_TYPE_DEFAULT, "CacheGroup - group is older - Ignoring", buf, 2u);
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

      groupID2 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
      stableGroupID2 = [groupCopy groupID];
      v22StableGroupID = [stableGroupID2 stableGroupID];
      v24 = groupID2;
      v25 = groupCopy;
    }

    else
    {
      v27 = +[ENLog groupContext];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A04B000, v27, OS_LOG_TYPE_DEFAULT, "CacheGroup - group is same - Clearing", buf, 2u);
      }

      groupID2 = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
      stableGroupID2 = [groupCopy groupID];
      v22StableGroupID = [stableGroupID2 stableGroupID];
      v24 = groupID2;
      v25 = 0;
    }

    [v24 setObject:v25 forKeyedSubscript:v22StableGroupID];

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
    v37 = groupCopy;
    v38 = 2113;
    v39 = latestStableGroupIDToGroup2;
    _os_log_fault_impl(&dword_24A04B000, v26, OS_LOG_TYPE_FAULT, "CacheGroup - could not compare groups - Fail {existingLatestGroup: %{private}@, group: %{private}@, error: %{private}@}", buf, 0x20u);
  }

  completionCopy[2](completionCopy);
LABEL_25:

  groupIDtoGroup = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  groupID5 = [groupCopy groupID];
  [groupIDtoGroup setObject:groupCopy forKeyedSubscript:groupID5];

  v30 = +[ENLog groupContext];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v30, OS_LOG_TYPE_INFO, "CacheGroup  - END", buf, 2u);
  }

  completionCopy[2](completionCopy);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  queue = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(queue);

  latestStableGroupIDToGroup = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  [latestStableGroupIDToGroup removeAllObjects];

  groupIDtoGroup = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  [groupIDtoGroup removeAllObjects];

  completionCopy[2]();
}

- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(queue);

  latestStableGroupIDToGroup = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  stableGroupID = [dCopy stableGroupID];
  [latestStableGroupIDToGroup setObject:0 forKeyedSubscript:stableGroupID];

  groupIDtoGroup = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  [groupIDtoGroup setObject:0 forKeyedSubscript:dCopy];

  completionCopy[2]();
}

- (void)groupContext:(id)context cachedGroupWithID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(queue);

  groupIDtoGroup = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  v10 = [groupIDtoGroup objectForKeyedSubscript:dCopy];

  completionCopy[2](completionCopy, v10);
}

- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  queue = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(queue);

  latestStableGroupIDToGroup = [(ENGroupContextInMemoryCache *)self latestStableGroupIDToGroup];
  v10 = [latestStableGroupIDToGroup objectForKeyedSubscript:dCopy];

  completionCopy[2](completionCopy, v10);
}

- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups
{
  groupsCopy = groups;
  queue = [(ENGroupContextInMemoryCache *)self queue];
  dispatch_assert_queue_V2(queue);

  groupIDtoGroup = [(ENGroupContextInMemoryCache *)self groupIDtoGroup];
  allValues = [groupIDtoGroup allValues];
  groupsCopy[2](groupsCopy, allValues);
}

@end