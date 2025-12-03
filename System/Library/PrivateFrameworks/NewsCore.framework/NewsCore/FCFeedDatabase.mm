@interface FCFeedDatabase
+ (id)temporaryFeedDatabaseWithEndpoint:(int64_t)endpoint;
- (FCFeedDatabase)initWithParentDirectoryURL:(id)l usage:(int64_t)usage endpoint:(int64_t)endpoint;
- (FCFeedDatabaseLookupResult)_shortCircuitLookup:(void *)lookup withFeed:;
- (id)_feedsForLookups:(uint64_t)lookups;
- (id)_serviceLookup:(void *)lookup withFeed:(void *)feed feedItems:;
- (id)performDatabaseLookups:(id)lookups;
- (id)performDatabaseLookups:(id)lookups boundedByCount:(unint64_t)count;
- (id)t_lookupFeedID:(id)d range:(id)range maxCount:(unint64_t)count;
- (void)_performWithStorageAndWait:(uint64_t)wait;
- (void)_synchronizedInit;
- (void)enumerateRangesMissingFromLookups:(id)lookups visitor:(id)visitor;
- (void)lookupFeedItemsForFeedID:(id)d feedRange:(id)range completion:(id)completion;
- (void)saveFeedItems:(id)items feedID:(id)d feedRange:(id)range;
- (void)saveFeedItems:(id)items feedIDs:(id)ds extentByFeedID:(id)d requestRangeByFeedID:(id)iD;
- (void)saveFeedItems:(id)items forFeedID:(id)d insertionToken:(id)token requestDate:(id)date reachedToOrder:(BOOL)order extent:(unint64_t)extent reachedEnd:(BOOL)end;
- (void)saveWithCompletionHandler:(id)handler;
- (void)t_insertSegmentForFeedID:(id)d range:(id)range items:(id)items;
@end

@implementation FCFeedDatabase

+ (id)temporaryFeedDatabaseWithEndpoint:(int64_t)endpoint
{
  v3 = [[FCFeedDatabase alloc] initWithParentDirectoryURL:0 usage:2 endpoint:endpoint];

  return v3;
}

- (FCFeedDatabase)initWithParentDirectoryURL:(id)l usage:(int64_t)usage endpoint:(int64_t)endpoint
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v21.receiver = self;
  v21.super_class = FCFeedDatabase;
  v9 = [(FCFeedDatabase *)&v21 init];
  if (v9)
  {
    v10 = [lCopy copy];
    parentDirectoryURL = v9->_parentDirectoryURL;
    v9->_parentDirectoryURL = v10;

    if (usage == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed database should not be created if it's not intended for use"];
      *buf = 136315906;
      v23 = "[FCFeedDatabase initWithParentDirectoryURL:usage:endpoint:]";
      v24 = 2080;
      v25 = "FCFeedDatabase.m";
      v26 = 1024;
      v27 = 88;
      v28 = 2114;
      v29 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v9->_usage = usage;
    v9->_endpoint = endpoint;
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.news.feeddb.init", v12);
    initQueue = v9->_initQueue;
    v9->_initQueue = v13;

    if (endpoint == 1)
    {
      v17 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "feed database will use the OrderFeed endpoint", buf, 2u);
      }

      v16 = 1029;
    }

    else if (endpoint)
    {
      v16 = 24;
    }

    else
    {
      v15 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "feed database will use the MultiFeed endpoint", buf, 2u);
      }

      v16 = 26;
    }

    v9->_version = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_synchronizedInit
{
  if (self)
  {
    v1 = *(self + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__FCFeedDatabase__synchronizedInit__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = self;
    dispatch_sync(v1, block);
  }
}

- (id)performDatabaseLookups:(id)lookups
{
  lookupsCopy = lookups;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__FCFeedDatabase_performDatabaseLookups___block_invoke;
  v11[3] = &unk_1E7C376A0;
  v11[4] = self;
  v12 = lookupsCopy;
  v6 = dictionary;
  v13 = v6;
  v7 = lookupsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __41__FCFeedDatabase_performDatabaseLookups___block_invoke(uint64_t a1)
{
  v1 = a1;
  v97 = *MEMORY[0x1E69E9840];
  v2 = [(FCFeedDatabase *)*(a1 + 32) _feedsForLookups:?];
  v3 = [MEMORY[0x1E695DF70] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v4 = *(v1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v77 objects:v92 count:16];
  v72 = v1;
  if (v5)
  {
    v6 = v5;
    v7 = *v78;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v78 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v77 + 1) + 8 * i);
        v10 = [v9 feedID];
        v11 = [v2 objectForKeyedSubscript:v10];

        v12 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v9 withFeed:v11];
        if (v12)
        {
          v13 = *(v72 + 48);
          v14 = [v9 feedID];
          v15 = v13;
          v1 = v72;
          [v15 setObject:v12 forKey:v14];
        }

        else
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v77 objects:v92 count:16];
    }

    while (v6);
  }

  v16 = *(v1 + 32);
  v17 = v3;
  v18 = v2;
  v64 = v16;
  if (v16)
  {
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v65 = v17;
    v20 = v17;
    v70 = [v20 countByEnumeratingWithState:&v87 objects:v96 count:16];
    v21 = 0;
    if (v70)
    {
      v67 = 0;
      obj = *v88;
      v66 = v20;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v88 != obj)
          {
            objc_enumerationMutation(v20);
          }

          v23 = *(*(&v87 + 1) + 8 * j);
          v24 = [v23 feedID];
          v25 = [v18 objectForKeyedSubscript:v24];

          if (v25)
          {
            v26 = [v25 feedID];
            v27 = [v23 feedRange];
            v28 = [v19 objectForKeyedSubscript:v27];

            if (v28)
            {
              v29 = [v19 objectForKeyedSubscript:v27];
              [v29 addObject:v26];
            }

            else
            {
              v29 = [MEMORY[0x1E695DFA8] setWithObject:v26];
              [v19 setObject:v29 forKeyedSubscript:v27];
            }

            if ([v23 hasMaxCount])
            {
              v30 = v21;
              v31 = v19;
              v32 = v18;
              v33 = v67;
              if (!v67)
              {
                v33 = [MEMORY[0x1E695DF90] dictionary];
              }

              v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "maxCount") + 1}];
              v67 = v33;
              [v33 setObject:v34 forKeyedSubscript:v26];

              v18 = v32;
              v19 = v31;
              v21 = v30;
              v20 = v66;
            }

            if (!v21)
            {
              v21 = [v23 requiredFeature];
            }
          }
        }

        v70 = [v20 countByEnumeratingWithState:&v87 objects:v96 count:16];
      }

      while (v70);
    }

    else
    {
      v67 = 0;
    }

    if ([v19 count])
    {
      [MEMORY[0x1E695DF00] date];
      v36 = v35 = v20;
      v37 = [MEMORY[0x1E695DF70] array];
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke;
      v81[3] = &unk_1E7C41500;
      v38 = v35;
      v82 = v38;
      v39 = v37;
      v83 = v39;
      v84 = v64;
      v85 = v21;
      v86 = v67;
      [v19 enumerateKeysAndObjectsUsingBlock:v81];
      v40 = FCFeedDatabaseLog;
      if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        v42 = [v36 fc_millisecondTimeIntervalUntilNow];
        v43 = [v39 count];
        v44 = [v38 count];
        *buf = 134218496;
        *&buf[4] = v42;
        *&buf[12] = 2048;
        *&buf[14] = v43;
        *&buf[22] = 2048;
        v94 = v44;
        _os_log_impl(&dword_1B63EF000, v41, OS_LOG_TYPE_DEFAULT, "feed database took %llums to lookup %lu feed items across %lu feeds", buf, 0x20u);
      }

      v1 = v72;
      v17 = v65;
      if ([v19 count] >= 2)
      {
        [v39 sortUsingSelector:sel_compareOrderDescending_];
      }

      v45 = MEMORY[0x1E695DF20];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke_65;
      v94 = &unk_1E7C36EC8;
      v95 = v39;
      v46 = v39;
      v47 = [v45 fc_dictionary:buf];
    }

    else
    {
      v47 = 0;
      v1 = v72;
      v17 = v65;
    }

    v48 = v47;

    v71 = v48;
  }

  else
  {
    v71 = 0;
  }

  v49 = v18;

  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obja = v17;
  v50 = [obja countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v74;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v74 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v73 + 1) + 8 * k);
        v55 = *(v1 + 32);
        v56 = [v54 feedID];
        v57 = [v49 objectForKeyedSubscript:v56];
        v58 = [v54 feedID];
        v59 = [v71 objectForKeyedSubscript:v58];
        v60 = [(FCFeedDatabase *)v55 _serviceLookup:v54 withFeed:v57 feedItems:v59];

        v1 = v72;
        v61 = *(v72 + 48);
        v62 = [v54 feedID];
        [v61 setObject:v60 forKey:v62];
      }

      v51 = [obja countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v51);
  }

  v63 = *MEMORY[0x1E69E9840];
}

- (id)_feedsForLookups:(uint64_t)lookups
{
  if (lookups)
  {
    v3 = *(lookups + 48);
    v4 = [a2 fc_arrayByTransformingWithBlock:&__block_literal_global_61_4];
    v5 = [v3 feedsForFeedIDs:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (FCFeedDatabaseLookupResult)_shortCircuitLookup:(void *)lookup withFeed:
{
  v5 = a2;
  lookupCopy = lookup;
  if (self)
  {
    feedRange = [v5 feedRange];
    if ([feedRange isEmpty])
    {
      v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
      [(FCFeedDatabaseLookupResult *)v8 setFeedItems:0];
      [(FCFeedDatabaseLookupResult *)v8 setFeedRange:feedRange];
      [(FCFeedDatabaseLookupResult *)v8 setExhaustedRange:1];
LABEL_21:

      goto LABEL_22;
    }

    if ([v5 cachedOnly])
    {
      v8 = 0;
      goto LABEL_21;
    }

    refreshRegion = [lookupCopy refreshRegion];
    v10 = refreshRegion;
    if (refreshRegion && [refreshRegion containsFeedRange:feedRange])
    {
      v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
      [(FCFeedDatabaseLookupResult *)v8 setFeedItems:0];
      v11 = [feedRange top];
      bottom = [v10 bottom];
      v13 = [FCFeedRange feedRangeWithTop:v11 bottom:bottom];
      [(FCFeedDatabaseLookupResult *)v8 setFeedRange:v13];

      [(FCFeedDatabaseLookupResult *)v8 setExhaustedRange:1];
LABEL_20:

      goto LABEL_21;
    }

    fetchedRanges = [lookupCopy fetchedRanges];
    firstObject = [fetchedRanges firstObject];

    v16 = off_1E7C34000;
    if ([lookupCopy refreshedFromOrder] && (objc_msgSend(feedRange, "top"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "top"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compareToCursor:", v18), v18, v17, v19 != 1))
    {
      if (firstObject)
      {
        firstObject2 = [feedRange top];
        order = [firstObject2 order];
        v33 = [firstObject top];
        if (order <= [(FCFeedInsertionToken *)v33 order])
        {
          v8 = 0;
LABEL_18:

LABEL_19:
          goto LABEL_20;
        }

        bottom2 = [v10 bottom];
        order2 = [bottom2 order];
        v39 = [firstObject top];
        order3 = [v39 order];

        v41 = order2 > order3;
        v16 = off_1E7C34000;
        if (!v41)
        {
          v8 = 0;
          goto LABEL_19;
        }
      }

      v43 = firstObject;
      v20 = v16;
      bottom3 = [v10 bottom];
    }

    else
    {
      v43 = firstObject;
      v20 = off_1E7C34000;
      bottom3 = +[FCFeedCursor cursorForCurrentDate];
    }

    v22 = bottom3;
    order4 = [bottom3 order];

    v8 = objc_alloc_init(FCFeedDatabaseLookupResult);
    v24 = [feedRange top];
    v25 = [feedRange top];
    v26 = [FCFeedRange feedRangeWithTop:v24 bottom:v25];
    [(FCFeedDatabaseLookupResult *)v8 setFeedRange:v26];

    [(FCFeedDatabaseLookupResult *)v8 setCkFromOrder:order4];
    fetchedRanges2 = [lookupCopy fetchedRanges];
    firstObject2 = [fetchedRanges2 firstObject];

    bottom4 = [feedRange bottom];
    v30 = bottom4;
    if (firstObject2)
    {
      v31 = [firstObject2 top];
      v32 = [v30 topmostCursor:v31];
      -[FCFeedDatabaseLookupResult setCkToOrder:](v8, "setCkToOrder:", [v32 order] + 1);
    }

    else
    {
      -[FCFeedDatabaseLookupResult setCkToOrder:](v8, "setCkToOrder:", [bottom4 order] + 1);
    }

    v33 = objc_alloc_init(FCFeedInsertionToken);
    cursorForTopOfFeed = [(__objc2_class *)v20[133] cursorForTopOfFeed];
    order5 = [cursorForTopOfFeed order];
    if (v33)
    {
      v33->_fromOrder = order5;

      v33->_toOrder = [(FCFeedDatabaseLookupResult *)v8 ckToOrder]- 1;
    }

    else
    {

      [(FCFeedDatabaseLookupResult *)v8 ckToOrder];
    }

    firstObject = v43;
    [(FCFeedDatabaseLookupResult *)v8 setInsertionToken:v33];
    goto LABEL_18;
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (id)_serviceLookup:(void *)lookup withFeed:(void *)feed feedItems:
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  lookupCopy = lookup;
  feedCopy = feed;
  if (self)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__43;
    v54 = __Block_byref_object_dispose__43;
    v55 = objc_alloc_init(FCFeedDatabaseLookupResult);
    feedRange = [v7 feedRange];
    if ([v7 hasMaxCount])
    {
      maxCount = [v7 maxCount];
    }

    else
    {
      maxCount = -1;
    }

    cachedOnly = [v7 cachedOnly];
    if ([feedRange isEmpty])
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"empty feed ranges aren't handled yet"];
        *buf = 136315906;
        v57 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
        v58 = 2080;
        v59 = "FCFeedDatabase.m";
        v60 = 1024;
        v61 = 872;
        v62 = 2114;
        v63 = v37;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }

    if (cachedOnly)
    {
      v15 = [feedCopy fc_subarrayWithMaxCount:maxCount];
      [v51[5] setFeedItems:v15];

      feedItems = [v51[5] feedItems];
      v17 = FCFeedRangeCoveredByFeedItems(feedItems);
      [v51[5] setFeedRange:v17];

      feedItems2 = [v51[5] feedItems];
      v19 = [feedItems2 count];
      v20 = v19 != [feedCopy count];
      [v51[5] setExhaustedRange:v20];
LABEL_18:

      v29 = v51[5];
      _Block_object_dispose(&v50, 8);

      goto LABEL_19;
    }

    refreshRegion = [lookupCopy refreshRegion];
    feedItems2 = refreshRegion;
    if (refreshRegion)
    {
      if ([refreshRegion containsFeedRange:feedRange])
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
          *buf = 136315906;
          v57 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
          v58 = 2080;
          v59 = "FCFeedDatabase.m";
          v60 = 1024;
          v61 = 885;
          v62 = 2114;
          v63 = v24;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

LABEL_33:
          v22 = MEMORY[0x1E69E9C10];
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      v25 = [feedRange top];
      v26 = [feedItems2 top];
      v27 = [v25 compareToCursor:v26] == 1;

      if (!v27)
      {
        fetchedRanges = [lookupCopy fetchedRanges];
        v33 = [fetchedRanges count] == 0;

        if (!v33)
        {
          v22 = [lookupCopy contiguousFetchedRangeInRange:feedRange];
          v34 = [feedCopy fc_subarrayWithMaxCount:maxCount];
          v45 = [v34 count];
          v35 = [feedCopy count];
          if (v22)
          {
            v36 = [v22 containsFeedRange:feedRange];
          }

          else
          {
            v36 = 0;
          }

          if (([feedCopy count] >= maxCount) | v36 & 1)
          {
            [v51[5] setFeedItems:v34];
            v40 = FCFeedRangeCoveredByFeedItems(v34);
            [v51[5] setFeedRange:v40];

            [v51[5] setExhaustedRange:(v45 >= v35) & v36];
          }

          else
          {
            v41 = [feedRange top];
            v42 = [feedRange top];
            v43 = [FCFeedRange feedRangeWithTop:v41 bottom:v42];
            [v51[5] setFeedRange:v43];

            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __52__FCFeedDatabase__serviceLookup_withFeed_feedItems___block_invoke;
            v46[3] = &unk_1E7C41528;
            v47 = feedRange;
            v49 = &v50;
            v48 = lookupCopy;
            [v48 enumerateGapsWithBlock:v46];
          }

          goto LABEL_17;
        }

        v22 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
          *buf = 136315906;
          v57 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
          v58 = 2080;
          v59 = "FCFeedDatabase.m";
          v60 = 1024;
          v61 = 893;
          v62 = 2114;
          v63 = v39;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          goto LABEL_33;
        }

LABEL_17:

        goto LABEL_18;
      }
    }

    v22 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"this case should have been short-circuited"];
      *buf = 136315906;
      v57 = "[FCFeedDatabase _serviceLookup:withFeed:feedItems:]";
      v58 = 2080;
      v59 = "FCFeedDatabase.m";
      v60 = 1024;
      v61 = 889;
      v62 = 2114;
      v63 = v44;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      goto LABEL_33;
    }

    goto LABEL_17;
  }

  v29 = 0;
LABEL_19:

  v30 = *MEMORY[0x1E69E9840];

  return v29;
}

- (void)_performWithStorageAndWait:(uint64_t)wait
{
  v14 = *MEMORY[0x1E69E9840];
  if (wait)
  {
    v3 = a2;
    if (!NSClassFromString(&cfstr_Xctest.isa) && [MEMORY[0x1E696AF00] isMainThread] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"This operation must not be performed on the main thread."];
      v6 = 136315906;
      v7 = "[FCFeedDatabase _performWithStorageAndWait:]";
      v8 = 2080;
      v9 = "FCFeedDatabase.m";
      v10 = 1024;
      v11 = 602;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
    }

    [(FCFeedDatabase *)wait _synchronizedInit];
    [*(wait + 48) accessWithBlock:v3];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)performDatabaseLookups:(id)lookups boundedByCount:(unint64_t)count
{
  v40 = *MEMORY[0x1E69E9840];
  lookupsCopy = lookups;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = lookupsCopy;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E69E9C10];
    v9 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        requiredFeature = [v11 requiredFeature];

        if (requiredFeature && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"count-bounded lookups don't yet support required features"];
          *buf = 136315906;
          v32 = "[FCFeedDatabase performDatabaseLookups:boundedByCount:]";
          v33 = 2080;
          v34 = "FCFeedDatabase.m";
          v35 = 1024;
          v36 = 170;
          v37 = 2114;
          v38 = v13;
          _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        [v11 setRequiredFeature:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v7);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke;
  v23[3] = &unk_1E7C41440;
  v23[4] = self;
  v24 = v5;
  v14 = dictionary;
  v25 = v14;
  countCopy = count;
  v15 = v5;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v23];
  v16 = v25;
  v17 = v14;

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke(uint64_t a1)
{
  v1 = a1;
  v154 = *MEMORY[0x1E69E9840];
  v103 = [(FCFeedDatabase *)*(a1 + 32) _feedsForLookups:?];
  v88 = [*(v1 + 40) fc_dictionaryWithKeyBlock:&__block_literal_global_92];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v2 = *(v1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v124 objects:v139 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v125;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v125 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v124 + 1) + 8 * i);
        v8 = [v7 feedID];
        v9 = [v103 objectForKeyedSubscript:v8];

        v10 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v7 withFeed:v9];
        if ([v10 ckFromOrder])
        {
          v11 = *(v1 + 48);
          v12 = [v7 feedID];
          [v11 setObject:v10 forKey:v12];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v124 objects:v139 count:16];
    }

    while (v4);
  }

  v13 = [*(v1 + 48) count];
  if (v13 < [*(v1 + 40) count])
  {
    v14 = *(v1 + 32);
    v94 = *(v1 + 56);
    v15 = *(v1 + 40);
    v104 = v103;
    v16 = 0x1E695D000;
    if (v14)
    {
      v92 = v14;
      v17 = [MEMORY[0x1E695DF90] dictionary];
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v97 = v15;
      obj = v15;
      v18 = [obj countByEnumeratingWithState:&v133 objects:v146 count:16];
      if (v18)
      {
        v19 = v18;
        v101 = 0;
        v20 = *v134;
        v89 = v1;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v134 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v133 + 1) + 8 * j);
            v23 = [v22 feedID];
            v24 = [v104 objectForKeyedSubscript:v23];

            if (v24)
            {
              v25 = [v24 feedID];
              v26 = [v22 feedRange];
              v27 = [v17 objectForKeyedSubscript:v26];

              if (v27)
              {
                v28 = [v17 objectForKeyedSubscript:v26];
                [v28 addObject:v25];
              }

              else
              {
                v28 = [MEMORY[0x1E695DFA8] setWithObject:v25];
                [v17 setObject:v28 forKeyedSubscript:v26];
              }

              if ([v22 hasMaxCount])
              {
                v29 = v19;
                v30 = v20;
                v31 = v17;
                v32 = v101;
                if (!v101)
                {
                  v32 = [MEMORY[0x1E695DF90] dictionary];
                }

                v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "maxCount") + 1}];
                v101 = v32;
                [v32 setObject:v33 forKeyedSubscript:v25];

                v17 = v31;
                v20 = v30;
                v19 = v29;
                v1 = v89;
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v133 objects:v146 count:16];
        }

        while (v19);
      }

      else
      {
        v101 = 0;
      }

      if ([v17 count])
      {
        v34 = [MEMORY[0x1E695DF00] date];
        v16 = 0x1E695D000uLL;
        v35 = [MEMORY[0x1E695DF70] array];
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __68__FCFeedDatabase__feedItemsForLookups_withFeedsByID_boundedByCount___block_invoke;
        v128[3] = &unk_1E7C41550;
        v36 = v35;
        v129 = v36;
        v130 = v92;
        v131 = v101;
        v132 = v94 + 1;
        [v17 enumerateKeysAndObjectsUsingBlock:v128];
        v37 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          v39 = [v34 fc_millisecondTimeIntervalUntilNow];
          v40 = [v36 count];
          v41 = [obj count];
          *buf = 134218496;
          v141 = v39;
          v142 = 2048;
          v143 = v40;
          v144 = 2048;
          v145 = v41;
          _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEFAULT, "feed database took %llums to lookup %lu feed items across %lu feeds", buf, 0x20u);
        }

        if ([v17 count] >= 2)
        {
          [v36 sortUsingSelector:sel_compareOrderDescending_];
        }

        v42 = v131;
        v14 = v36;
      }

      else
      {
        v14 = 0;
        v16 = 0x1E695D000uLL;
      }

      v15 = v97;
    }

    v43 = [*(v16 + 3952) array];
    v44 = MEMORY[0x1E695DF20];
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_3;
    v119[3] = &unk_1E7C413F0;
    v90 = v14;
    v120 = v90;
    v121 = v88;
    v45 = v43;
    v46 = *(v1 + 56);
    v122 = v45;
    v123 = v46;
    [v44 fc_dictionary:v119];
    v102 = obja = v45;
    v98 = FCFeedRangeCoveredByFeedItems(v45);
    v91 = [*(v16 + 3952) array];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v93 = *(v1 + 40);
    v47 = [v93 countByEnumeratingWithState:&v115 objects:v138 count:16];
    if (v47)
    {
      v48 = v47;
      v95 = *v116;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v116 != v95)
          {
            objc_enumerationMutation(v93);
          }

          v50 = *(*(&v115 + 1) + 8 * k);
          v51 = [v50 feedID];
          v52 = [v104 objectForKeyedSubscript:v51];

          v53 = [v50 feedRange];
          v54 = [v52 contiguousFetchedRangeInRange:v53];

          v55 = [v50 feedID];
          v56 = [v102 objectForKeyedSubscript:v55];
          v57 = FCFeedItemsCoveredByRange(v56, v54);

          v109[0] = MEMORY[0x1E69E9820];
          v109[1] = 3221225472;
          v109[2] = __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_4;
          v109[3] = &unk_1E7C41418;
          v109[4] = v50;
          v58 = v54;
          v110 = v58;
          v59 = v57;
          v111 = v59;
          v60 = obja;
          v61 = *(v1 + 56);
          v112 = v60;
          v114 = v61;
          v62 = v98;
          v113 = v62;
          if (__56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_4(v109))
          {
            [v91 addObject:v50];
          }

          else
          {
            v63 = objc_alloc_init(FCFeedDatabaseLookupResult);
            [(FCFeedDatabaseLookupResult *)v63 setFeedItems:v59];
            [(FCFeedDatabaseLookupResult *)v63 setFeedRange:v62];
            if ([v90 count] <= *(v1 + 56))
            {
              v64 = [v50 feedRange];
              -[FCFeedDatabaseLookupResult setExhaustedRange:](v63, "setExhaustedRange:", [v58 containsFeedRange:v64]);
            }

            else
            {
              [(FCFeedDatabaseLookupResult *)v63 setExhaustedRange:0];
            }

            v65 = *(v1 + 48);
            v66 = [v50 feedID];
            [v65 setObject:v63 forKey:v66];
          }
        }

        v48 = [v93 countByEnumeratingWithState:&v115 objects:v138 count:16];
      }

      while (v48);
    }

    v67 = v91;
    if ([v91 count])
    {
      [*(v1 + 48) removeAllObjects];
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v96 = v91;
      v68 = [v96 countByEnumeratingWithState:&v105 objects:v137 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v106;
        do
        {
          for (m = 0; m != v69; ++m)
          {
            if (*v106 != v70)
            {
              objc_enumerationMutation(v96);
            }

            v72 = *(*(&v105 + 1) + 8 * m);
            v73 = [v72 feedID];
            v74 = [v104 objectForKeyedSubscript:v73];

            v75 = [v72 feedRange];
            v76 = [v74 contiguousFetchedRangeInRange:v75];

            v77 = [v72 feedID];
            v78 = [v102 objectForKeyedSubscript:v77];
            v79 = FCFeedItemsCoveredByRange(v78, v76);

            v80 = [(FCFeedDatabase *)*(v1 + 32) _shortCircuitLookup:v72 withFeed:v74];
            v81 = v80;
            if (v80)
            {
              v82 = v80;
            }

            else
            {
              v82 = [(FCFeedDatabase *)*(v1 + 32) _serviceLookup:v72 withFeed:v74 feedItems:v79];
            }

            v83 = v82;

            if (![v83 ckFromOrder] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"feed is missing data but lookup result has no cursor"];
              *v146 = 136315906;
              v147 = "[FCFeedDatabase performDatabaseLookups:boundedByCount:]_block_invoke";
              v148 = 2080;
              v149 = "FCFeedDatabase.m";
              v150 = 1024;
              v151 = 291;
              v152 = 2114;
              v153 = v86;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v146, 0x26u);
            }

            v84 = *(v1 + 48);
            v85 = [v72 feedID];
            [v84 setObject:v83 forKey:v85];
          }

          v69 = [v96 countByEnumeratingWithState:&v105 objects:v137 count:16];
        }

        while (v69);
      }

      v67 = v91;
    }
  }

  v87 = *MEMORY[0x1E69E9840];
}

void __56__FCFeedDatabase_performDatabaseLookups_boundedByCount___block_invoke_3(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    v21 = a1;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 feedID];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
        if ([*(a1 + 48) count] >= *(a1 + 56))
        {

          goto LABEL_17;
        }

        if (![v10 hasMaxCount])
        {
          goto LABEL_9;
        }

        v11 = [v3 objectForKeyedSubscript:v9];
        v12 = v3;
        v13 = v5;
        v14 = v6;
        v15 = [v11 count];
        v16 = [v10 maxCount];

        v17 = v15 >= v16;
        v6 = v14;
        v5 = v13;
        v3 = v12;
        a1 = v21;
        if (!v17)
        {
LABEL_9:
          [*(a1 + 48) addObject:v8];
          v18 = [v3 objectForKeyedSubscript:v9];

          if (v18)
          {
            v19 = [v3 objectForKeyedSubscript:v9];
            [v19 addObject:v8];
          }

          else
          {
            v19 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
            [v3 setObject:v19 forKeyedSubscript:v9];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)saveFeedItems:(id)items forFeedID:(id)d insertionToken:(id)token requestDate:(id)date reachedToOrder:(BOOL)order extent:(unint64_t)extent reachedEnd:(BOOL)end
{
  v41 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  tokenCopy = token;
  dateCopy = date;
  if ([itemsCopy count] | extent || end || order || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (dCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems.count != 0 || ckReachedToOrder || reachedEnd || extent != 0"];
    *buf = 136315906;
    v34 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v35 = 2080;
    v36 = "FCFeedDatabase.m";
    v37 = 1024;
    v38 = 309;
    v39 = 2114;
    v40 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dCopy)
    {
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedID != nil"];
    *buf = 136315906;
    v34 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v35 = 2080;
    v36 = "FCFeedDatabase.m";
    v37 = 1024;
    v38 = 310;
    v39 = 2114;
    v40 = v21;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  if (!tokenCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "opaqueInsertionToken != nil"];
    *buf = 136315906;
    v34 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v35 = 2080;
    v36 = "FCFeedDatabase.m";
    v37 = 1024;
    v38 = 311;
    v39 = 2114;
    v40 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dateCopy)
    {
      goto LABEL_13;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "requestDate != nil"];
    *buf = 136315906;
    v34 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]";
    v35 = 2080;
    v36 = "FCFeedDatabase.m";
    v37 = 1024;
    v38 = 312;
    v39 = 2114;
    v40 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_13:
  if (dCopy)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__FCFeedDatabase_saveFeedItems_forFeedID_insertionToken_requestDate_reachedToOrder_extent_reachedEnd___block_invoke;
    v24[3] = &unk_1E7C41468;
    v25 = tokenCopy;
    selfCopy = self;
    v27 = dCopy;
    v28 = itemsCopy;
    orderCopy = order;
    v29 = dateCopy;
    extentCopy = extent;
    endCopy = end;
    [(FCFeedDatabase *)self _performWithStorageAndWait:v24];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __102__FCFeedDatabase_saveFeedItems_forFeedID_insertionToken_requestDate_reachedToOrder_extent_reachedEnd___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't save feed items without an insertion token"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 321;
    v74 = 2114;
    v75 = v54;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v2 = objc_opt_class();
  v3 = FCCheckedDynamicCast(v2, *(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 feedForFeedID:*(a1 + 48)];
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a feed in order to save feed items"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 325;
    v74 = 2114;
    v75 = v55;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v6 refreshedFromOrder];
  v8 = [v6 refreshedToOrder];
  v9 = [*(a1 + 56) sortedArrayUsingSelector:sel_compareOrderDescending_];
  if (v3)
  {
    v10 = v3[1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [FCFeedCursor cursorForOrder:v10];
  if (v3)
  {
    v12 = v3[2];
  }

  else
  {
    v12 = 0;
  }

  v13 = [FCFeedCursor cursorForOrder:v12];
  v14 = [FCFeedRange feedRangeWithTop:v11 bottom:v13];
  v15 = FCFeedItemsCoveredByRange(v9, v14);

  v16 = v15;
  v17 = [v15 count];
  if (v17 != [*(a1 + 56) count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CK cursor shouldn't produce feed items that precede it"];
    *buf = 136315906;
    v69 = "[FCFeedDatabase saveFeedItems:forFeedID:insertionToken:requestDate:reachedToOrder:extent:reachedEnd:]_block_invoke";
    v70 = 2080;
    v71 = "FCFeedDatabase.m";
    v72 = 1024;
    v73 = 335;
    v74 = 2114;
    v75 = v53;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v18 = *(a1 + 80);
  if ([*(a1 + 56) count] && !objc_msgSend(v15, "count"))
  {
    v19 = FCFeedDatabaseLog;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_ERROR))
    {
      v56 = v7;
      if (v3)
      {
        v57 = v3[2];
      }

      else
      {
        v57 = 0;
      }

      v58 = v19;
      v59 = [v6 feedID];
      *buf = 134218242;
      v69 = v57;
      v70 = 2112;
      v71 = v59;
      _os_log_error_impl(&dword_1B63EF000, v58, OS_LOG_TYPE_ERROR, "pretending to reach order %llu for feed %@ because rdar://problem/27201634 caused us to make no progress", buf, 0x16u);

      v18 = 1;
      v7 = v56;
      v16 = v15;
    }

    else
    {
      v18 = 1;
    }
  }

  v66 = [v6 refreshRegion];
  v63 = v18;
  if (v3)
  {
    v20 = v3[1];
  }

  else
  {
    v20 = 0;
  }

  v21 = +[FCFeedCursor cursorForTopOfFeed];
  v22 = [v21 order];

  if (v20 == v22)
  {
    v23 = [v6 refreshedFromOrder];
    v24 = [*(a1 + 64) fc_millisecondTimeIntervalSince1970];
    if (v24 > v7)
    {
      v7 = v24;
    }

    if (v3)
    {
      v25 = v3[2];
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a1 + 72);
    v27 = v26 != 0;
    v28 = v26 - 1;
    if (!v27)
    {
      v28 = 0;
    }

    if (v23)
    {
      v29 = v8;
    }

    else
    {
      v29 = -1;
    }

    if (v25 < v29)
    {
      v29 = v25;
    }

    if (v25 >= v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (![v16 count])
    {
      v47 = 0;
      goto LABEL_61;
    }

    v67 = v20;
    v65 = v30;
  }

  else
  {
    v67 = v20;
    v65 = v8;
    [v16 count];
  }

  v64 = v16;
  v31 = FCFeedRangeCoveredByFeedItems(v16);
  v32 = [v31 top];
  v33 = [v31 bottom];
  if (v67 == v22)
  {
    v34 = [v6 fetchedRangePrecedingOrder:{objc_msgSend(v32, "order")}];
    v35 = v34;
    if (v34)
    {
      v60 = v7;
      v61 = v9;
      v62 = v6;
      v36 = [v34 bottom];
      v37 = [v36 order];
      v38 = [v32 order];

      if (v37 > v38)
      {
        v39 = [v35 bottom];

        v32 = v39;
      }

      v9 = v61;
      v6 = v62;
      v7 = v60;
    }
  }

  else
  {
    if (v3)
    {
      v40 = v3[1];
    }

    else
    {
      v40 = 0;
    }

    [FCFeedCursor cursorForOrder:v40];
    v32 = v35 = v32;
  }

  if (*(a1 + 81) == 1)
  {
    v41 = +[FCFeedCursor cursorForBottomOfFeed];
  }

  else
  {
    if (v63)
    {
      if (v3)
      {
        v42 = v3[2];
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v43 = *(a1 + 72);
      if (!v43)
      {
        goto LABEL_57;
      }

      v42 = v43 - 1;
    }

    v41 = [FCFeedCursor cursorForOrder:v42];
  }

  v44 = v41;

  v33 = v44;
LABEL_57:
  if (v67 == v22 && [v66 containsOrder:{objc_msgSend(v33, "order")}])
  {
    [v66 bottom];
    v46 = v45 = v7;

    v33 = v46;
    v7 = v45;
  }

  v47 = [FCFeedRange feedRangeWithTop:v32 bottom:v33];

  v16 = v64;
  v30 = v65;
LABEL_61:
  v48 = *(a1 + 40);
  if (v48)
  {
    v49 = *(v48 + 48);
  }

  else
  {
    v49 = 0;
  }

  [v49 insertFeedItems:v16];
  v50 = *(a1 + 40);
  if (v50)
  {
    v51 = *(v50 + 48);
  }

  else
  {
    v51 = 0;
  }

  [v51 updateFeedID:*(a1 + 48) refreshedFromOrder:v7 refreshedToOrder:v30 fetchedRange:v47];

  v52 = *MEMORY[0x1E69E9840];
}

- (void)saveFeedItems:(id)items feedIDs:(id)ds extentByFeedID:(id)d requestRangeByFeedID:(id)iD
{
  itemsCopy = items;
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__FCFeedDatabase_saveFeedItems_feedIDs_extentByFeedID_requestRangeByFeedID___block_invoke;
  v18[3] = &unk_1E7C376C8;
  v19 = itemsCopy;
  v20 = dsCopy;
  selfCopy = self;
  v22 = dCopy;
  v23 = iDCopy;
  v14 = iDCopy;
  v15 = dCopy;
  v16 = dsCopy;
  v17 = itemsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v18];
}

void __76__FCFeedDatabase_saveFeedItems_feedIDs_extentByFeedID_requestRangeByFeedID___block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v71 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v85;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v85 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v84 + 1) + 8 * i);
        v9 = [v8 feedID];
        v10 = [v2 objectForKeyedSubscript:v9];

        if (v10)
        {
          [v10 addObject:v8];
        }

        else
        {
          v11 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
          v12 = [v8 feedID];
          [v2 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v5);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = v71;
  obj = *(v71 + 40);
  v72 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
  if (v72)
  {
    v70 = *v81;
    *&v14 = 136315906;
    v68 = v14;
    v78 = v2;
    do
    {
      v15 = 0;
      do
      {
        if (*v81 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v80 + 1) + 8 * v15);
        v17 = *(v13 + 48);
        v75 = v15;
        if (v17)
        {
          v18 = *(v17 + 48);
        }

        else
        {
          v18 = 0;
        }

        v19 = [v18 feedForFeedID:{v16, v68}];
        if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"must have a feed in order to save feed items"];
          *buf = v68;
          v89 = "[FCFeedDatabase saveFeedItems:feedIDs:extentByFeedID:requestRangeByFeedID:]_block_invoke";
          v90 = 2080;
          v91 = "FCFeedDatabase.m";
          v92 = 1024;
          v93 = 443;
          v94 = 2114;
          v95 = v62;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v20 = [v19 refreshedFromOrder];
        v21 = [v19 refreshedToOrder];
        v77 = [*(v13 + 56) objectForKey:v16];
        v22 = [v77 unsignedLongLongValue];
        v79 = [v19 refreshRegion];
        v23 = [v19 refreshedFromOrder];
        v24 = [*(v13 + 64) objectForKey:v16];
        v25 = [v24 dateRange];
        v26 = [v25 laterDate];
        v27 = [v26 fc_millisecondTimeIntervalSince1970];

        if (v27 <= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v27;
        }

        v76 = v24;
        v29 = v24;
        v30 = v16;
        v31 = [v29 bottom];
        v32 = [v31 order];
        if (v22)
        {
          v33 = v22 - 1;
        }

        else
        {
          v33 = 0;
        }

        if (v23)
        {
          v34 = v21;
        }

        else
        {
          v34 = -1;
        }

        if (v32 < v34)
        {
          v34 = v32;
        }

        if (v32 >= v33)
        {
          v35 = v34;
        }

        else
        {
          v35 = v33;
        }

        v36 = [v78 objectForKeyedSubscript:v30];
        if ([v36 count])
        {
          v74 = v35;
          v37 = [v36 sortedArrayUsingSelector:sel_compareOrderDescending_];
          v38 = [v37 count];
          if (v38 != [v36 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CK cursor shouldn't produce feed items that precede it"];
            *buf = v68;
            v89 = "[FCFeedDatabase saveFeedItems:feedIDs:extentByFeedID:requestRangeByFeedID:]_block_invoke";
            v90 = 2080;
            v91 = "FCFeedDatabase.m";
            v92 = 1024;
            v93 = 469;
            v94 = 2114;
            v95 = v63;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v73 = v28;
          v39 = FCFeedRangeCoveredByFeedItems(v37);
          v40 = v39;
          if (v22)
          {
            v41 = [v39 top];
            v42 = [FCFeedCursor cursorForOrder:v22 - 1];
            v43 = [FCFeedRange feedRangeWithTop:v41 bottom:v42];

            v40 = v43;
          }

          v44 = v79;
          v45 = [v40 top];
          v46 = [v19 fetchedRangePrecedingOrder:{objc_msgSend(v45, "order")}];

          if (v46)
          {
            v47 = [v46 bottom];
            v48 = [v47 order];
            v49 = [v40 top];
            v50 = [v49 order];

            if (v48 > v50)
            {
              v51 = [v46 bottom];
              v52 = [v51 order];
              v53 = [v40 bottom];
              v54 = +[FCFeedRange feedRangeWithMaxOrder:minOrder:](FCFeedRange, "feedRangeWithMaxOrder:minOrder:", v52, [v53 order]);

              v40 = v54;
            }

            v44 = v79;
          }

          v55 = [v40 bottom];
          v56 = [v44 containsCursor:v55];

          if (v56)
          {
            v57 = [v40 top];
            v58 = [v44 bottom];
            v59 = [FCFeedRange feedRangeWithTop:v57 bottom:v58];

            v40 = v59;
          }

          v13 = v71;
          v28 = v73;

          v35 = v74;
        }

        else
        {
          v40 = 0;
          v13 = v71;
          v44 = v79;
        }

        v60 = *(v13 + 48);
        if (v60)
        {
          v61 = *(v60 + 48);
        }

        else
        {
          v61 = 0;
        }

        [v61 updateFeedID:v30 refreshedFromOrder:v28 refreshedToOrder:v35 fetchedRange:v40];

        v15 = v75 + 1;
        v2 = v78;
      }

      while (v72 != v75 + 1);
      v64 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
      v72 = v64;
    }

    while (v64);
  }

  v65 = *(v13 + 48);
  if (v65)
  {
    v66 = *(v65 + 48);
  }

  else
  {
    v66 = 0;
  }

  [v66 insertFeedItems:*(v13 + 32)];

  v67 = *MEMORY[0x1E69E9840];
}

- (void)enumerateRangesMissingFromLookups:(id)lookups visitor:(id)visitor
{
  lookupsCopy = lookups;
  visitorCopy = visitor;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke;
  v10[3] = &unk_1E7C38FF0;
  v11 = lookupsCopy;
  selfCopy = self;
  v13 = visitorCopy;
  v8 = visitorCopy;
  v9 = lookupsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v10];
}

void __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fc_arrayByTransformingWithBlock:&__block_literal_global_45_1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
  }

  v18 = v2;
  v5 = [v4 feedsForFeedIDs:v2];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 feedID];
        v12 = [v5 objectForKeyedSubscript:v11];

        v13 = [MEMORY[0x1E695DF70] array];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke_3;
        v20[3] = &unk_1E7C414B0;
        v20[4] = v10;
        v14 = v13;
        v21 = v14;
        [v12 enumerateGapsWithBlock:v20];
        if ([v14 count])
        {
          v15 = *(a1 + 48);
          v16 = [v10 feedID];
          (*(v15 + 16))(v15, v16, v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __60__FCFeedDatabase_enumerateRangesMissingFromLookups_visitor___block_invoke_3(uint64_t a1, void *a2, BOOL *a3)
{
  v14 = a2;
  v5 = [*(a1 + 32) feedRange];
  v6 = [v14 intersectsRange:v5];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) feedRange];
    v9 = [v14 feedRangeByIntersectingWithRange:v8];
    [v7 addObject:v9];
  }

  v10 = [v14 bottom];
  v11 = [v10 order];
  v12 = [*(a1 + 32) feedRange];
  v13 = [v12 bottom];
  *a3 = v11 <= [v13 order];
}

- (void)lookupFeedItemsForFeedID:(id)d feedRange:(id)range completion:(id)completion
{
  dCopy = d;
  rangeCopy = range;
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__43;
  v24 = __Block_byref_object_dispose__43;
  v25 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke;
  v15[3] = &unk_1E7C414D8;
  v19 = &v20;
  v15[4] = self;
  v12 = dCopy;
  v16 = v12;
  v13 = rangeCopy;
  v17 = v13;
  v14 = array;
  v18 = v14;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v15];
  completionCopy[2](completionCopy, v21[5], v14);

  _Block_object_dispose(&v20, 8);
}

void __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v16[0] = *(a1 + 40);
  v3 = MEMORY[0x1E695DEC8];
  v4 = v2;
  v5 = [v3 arrayWithObjects:v16 count:1];
  v6 = [v4 feedItemsForFeedIDs:v5 feedRange:*(a1 + 48) feature:0 maxCountByFeed:0 totalMaxCount:0];
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 feedForFeedID:*(a1 + 40)];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke_2;
  v13[3] = &unk_1E7C414B0;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  [v11 enumerateGapsWithBlock:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __64__FCFeedDatabase_lookupFeedItemsForFeedID_feedRange_completion___block_invoke_2(uint64_t a1, void *a2, BOOL *a3)
{
  v10 = a2;
  if ([v10 intersectsRange:*(a1 + 32)])
  {
    v5 = *(a1 + 40);
    v6 = [v10 feedRangeByIntersectingWithRange:*(a1 + 32)];
    [v5 addObject:v6];
  }

  v7 = [v10 bottom];
  v8 = [v7 order];
  v9 = [*(a1 + 32) bottom];
  *a3 = v8 <= [v9 order];
}

- (void)saveFeedItems:(id)items feedID:(id)d feedRange:(id)range
{
  itemsCopy = items;
  dCopy = d;
  rangeCopy = range;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__FCFeedDatabase_saveFeedItems_feedID_feedRange___block_invoke;
  v14[3] = &unk_1E7C38C98;
  v14[4] = self;
  v15 = itemsCopy;
  v16 = dCopy;
  v17 = rangeCopy;
  v11 = rangeCopy;
  v12 = dCopy;
  v13 = itemsCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v14];
}

void __49__FCFeedDatabase_saveFeedItems_feedID_feedRange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  [v3 insertFeedItems:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  v15 = [v5 feedForFeedID:*(a1 + 48)];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[6];
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = v6;
  v10 = [v8 maxOrder];
  v11 = [v15 refreshedFromOrder];
  if (v10 <= v11)
  {
    v10 = v11;
  }

  v12 = [*(a1 + 56) minOrder];
  v13 = [v15 refreshedToOrder];
  if (v12 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  [v9 updateFeedID:v7 refreshedFromOrder:v10 refreshedToOrder:v14 fetchedRange:*(a1 + 56)];
}

- (void)saveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    storage = self->_storage;
  }

  else
  {
    storage = 0;
  }

  [(FCFDBStorage *)storage flushChanges];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v5 = handlerCopy;
  }
}

void __35__FCFeedDatabase__synchronizedInit__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 48))
  {
    v2 = [MEMORY[0x1E695DF00] date];
    v3 = *(a1 + 32);
    if (v3)
    {
      if (([v3 usage] & 4) != 0)
      {
        v4 = 6;
      }

      else
      {
        v4 = 4;
      }

      if (!NSClassFromString(&cfstr_Xctest.isa))
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          v6 = [v5 URLByAppendingPathComponent:@"feeddatabase" isDirectory:0];
          v7 = [MEMORY[0x1E696AC08] defaultManager];
          v8 = [v6 path];
          v9 = [v7 fileExistsAtPath:v8];

          if (v9)
          {
            LOWORD(value) = 0;
            getxattr([v6 fileSystemRepresentation], "com.apple.newscore.storeVersion", &value, 2uLL, 0, 0);
            v10 = value;
            v11 = *(v3 + 8);
            if (value != v11)
            {
              v12 = FCFeedDatabaseLog;
              if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v38 = v10;
                v39 = 2048;
                v40 = v11;
                _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "wiping feed database because persisted version %lu does not match current version %lu", buf, 0x16u);
              }

              v13 = [MEMORY[0x1E696AC08] defaultManager];
              [v13 removeItemAtURL:v6 error:0];
            }
          }

          v14 = [MEMORY[0x1E696AC08] defaultManager];
          v15 = [v6 path];
          v16 = [v14 fileExistsAtPath:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AC08] defaultManager];
            v18 = [v6 path];
            [v17 createFileAtPath:v18 contents:0 attributes:0];

            setxattr([v6 fileSystemRepresentation], "com.apple.newscore.storeVersion", (v3 + 8), 2uLL, 0, 0);
          }

          value = 0;
          v19 = [v6 getResourceValue:&value forKey:*MEMORY[0x1E695DB50] error:0];
          v20 = value;
          if (v19)
          {
            v21 = FCFeedDatabaseLog;
            if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
            {
              v22 = MEMORY[0x1E696AAF0];
              v23 = v21;
              v24 = [v22 stringFromByteCount:objc_msgSend(v20 countStyle:{"unsignedLongLongValue"), 0}];
              *buf = 138543362;
              v38 = v24;
              _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "feed database takes up %{public}@ on disk", buf, 0xCu);
            }
          }

          v25 = [FCFDBStorage alloc];
          v26 = [[FCFDBPruningPolicy alloc] initWithMaxAgeToPersist:1209600.0];
          v27 = [(FCFDBStorage *)v25 initWithFileURL:v6 options:v4 pruningPolicy:v26];
          v28 = *(v3 + 48);
          *(v3 + 48) = v27;
        }
      }

      if (!*(v3 + 48))
      {
        v29 = FCFeedDatabaseLog;
        if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEFAULT, "will use in-memory storage", buf, 2u);
        }

        v30 = [[FCFDBStorage alloc] initTransientWithOptions:v4];
        v31 = *(v3 + 48);
        *(v3 + 48) = v30;
      }
    }

    v32 = FCFeedDatabaseLog;
    if (os_log_type_enabled(FCFeedDatabaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v32;
      v34 = [v2 fc_millisecondTimeIntervalUntilNow];
      *buf = 134217984;
      v38 = v34;
      _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "feed database took %llums to initialize", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] != 1 || (objc_msgSend(*(a1 + 32), "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maxCount"), v7, v8 == -1))
  {
    v10 = -1;
  }

  else
  {
    v9 = [*(a1 + 32) firstObject];
    v10 = [v9 maxCount] + 1;
  }

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  if (v11)
  {
    v11 = v11[6];
  }

  v13 = v11;
  v14 = [v16 allObjects];
  v15 = [v13 feedItemsForFeedIDs:v14 feedRange:v6 feature:*(a1 + 56) maxCountByFeed:*(a1 + 64) totalMaxCount:v10];

  [v12 addObjectsFromArray:v15];
}

void __53__FCFeedDatabase__feedItemsForLookups_withFeedsByID___block_invoke_65(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 feedID];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [v3 objectForKeyedSubscript:v10];
          [v12 addObject:v9];
        }

        else
        {
          v12 = [MEMORY[0x1E695DF70] arrayWithObject:v9];
          [v3 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __52__FCFeedDatabase__serviceLookup_withFeed_feedItems___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 intersectsRange:*(a1 + 32)])
  {
    v6 = [v5 feedRangeByIntersectingWithRange:*(a1 + 32)];
    v7 = [v6 top];
    [*(*(*(a1 + 48) + 8) + 40) setCkFromOrder:{objc_msgSend(v7, "order")}];

    v8 = [v6 bottom];
    [*(*(*(a1 + 48) + 8) + 40) setCkToOrder:{objc_msgSend(v8, "order") + 1}];

    v9 = objc_opt_new();
    v10 = [v6 top];
    v11 = [v10 order];
    if (v9)
    {
      v9[1] = v11;
    }

    v12 = [v6 bottom];
    v13 = [v12 order];
    if (v9)
    {
      v9[2] = v13;
    }

    [*(*(*(a1 + 48) + 8) + 40) setInsertionToken:v9];
    v14 = FCFeedDatabaseLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 40) feedID];
      v16 = v15;
      if (v9)
      {
        v17 = v9[1];
        v18 = v9[2];
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      v20 = 138412802;
      v21 = v15;
      v22 = 2048;
      v23 = v17;
      v24 = 2048;
      v25 = v18;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "trying to extend feed %@ from order %llu to order %llu", &v20, 0x20u);
    }

    *a3 = 1;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __68__FCFeedDatabase__feedItemsForLookups_withFeedsByID_boundedByCount___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a1[4];
  v6 = a1[5];
  if (v6)
  {
    v6 = v6[6];
  }

  v8 = v6;
  v9 = a2;
  v11 = [a3 allObjects];
  v10 = [v8 feedItemsForFeedIDs:v11 feedRange:v9 feature:0 maxCountByFeed:a1[6] totalMaxCount:a1[7]];

  [v7 addObjectsFromArray:v10];
}

- (void)t_insertSegmentForFeedID:(id)d range:(id)range items:(id)items
{
  dCopy = d;
  rangeCopy = range;
  itemsCopy = items;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__FCFeedDatabase_Testing__t_insertSegmentForFeedID_range_items___block_invoke;
  v14[3] = &unk_1E7C38C98;
  v14[4] = self;
  v15 = dCopy;
  v16 = rangeCopy;
  v17 = itemsCopy;
  v11 = itemsCopy;
  v12 = rangeCopy;
  v13 = dCopy;
  [(FCFeedDatabase *)self _performWithStorageAndWait:v14];
}

void __64__FCFeedDatabase_Testing__t_insertSegmentForFeedID_range_items___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v13 = [v3 feedForFeedID:*(a1 + 40)];
  v4 = [v13 refreshedFromOrder];
  v5 = [v13 refreshedToOrder];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v4 = [v7 fc_millisecondTimeIntervalSince1970];

    v8 = [*(a1 + 48) top];
    v6 = [v8 order];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  [v10 insertFeedItems:*(a1 + 56)];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 48);
  }

  else
  {
    v12 = 0;
  }

  [v12 updateFeedID:*(a1 + 40) refreshedFromOrder:v4 refreshedToOrder:v6 fetchedRange:*(a1 + 48)];
}

- (id)t_lookupFeedID:(id)d range:(id)range maxCount:(unint64_t)count
{
  v17[1] = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dCopy = d;
  v10 = objc_opt_new();
  [v10 setFeedID:dCopy];

  [v10 setFeedRange:rangeCopy];
  [v10 setMaxCount:count];
  v17[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v12 = [(FCFeedDatabase *)self performDatabaseLookups:v11];
  allValues = [v12 allValues];
  firstObject = [allValues firstObject];

  v15 = *MEMORY[0x1E69E9840];

  return firstObject;
}

@end