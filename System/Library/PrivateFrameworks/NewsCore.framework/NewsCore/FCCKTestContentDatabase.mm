@interface FCCKTestContentDatabase
+ (id)testingDatabase;
- (id)addArticlesToTopOfFeed:(id)feed count:(unint64_t)count;
- (id)insertTestArticle;
- (id)insertTestArticleListReferencingArticleIDs:(id)ds;
- (id)insertTestArticleWithProperties:(id)properties;
- (id)insertTestForYouConfigWithProperties:(id)properties;
- (id)insertTestIssueListReferencingIssueIDs:(id)ds;
- (id)insertTestIssueWithProperties:(id)properties;
- (id)insertTestTagWithType:(id)type feedID:(id)d properties:(id)properties;
- (id)insertTestTagWithType:(id)type properties:(id)properties;
- (id)records:(id)records withDesiredKeys:(id)keys;
- (unint64_t)orderForArticleID:(id)d feedID:(id)iD;
- (void)addOperation:(id)operation;
- (void)deleteArticleWithID:(id)d;
- (void)deleteFeedID:(id)d;
- (void)insertArticleID:(id)d atBottomOfFeedID:(id)iD;
- (void)insertArticleID:(id)d atTopOfFeedID:(id)iD;
- (void)insertArticleID:(id)d inFeedID:(id)iD withOrder:(unint64_t)order;
- (void)insertArticleID:(id)d inFeedID:(id)iD withOrder:(unint64_t)order subOrder:(unint64_t)subOrder;
- (void)insertCanaryArticleWithID:(id)d;
- (void)insertRecord:(id)record;
- (void)insertTestArticleWithID:(id)d properties:(id)properties;
- (void)insertTestIssueWithID:(id)d properties:(id)properties;
- (void)insertTestTagWithID:(id)d type:(id)type properties:(id)properties;
- (void)populateWithBasicTestFeeds;
- (void)populateWithLargeTestFeeds;
- (void)simulateDroppedFeedForFeedID:(id)d;
- (void)updateArticleID:(id)d inFeedID:(id)iD withProperties:(id)properties;
- (void)updateArticleWithID:(id)d modDate:(id)date properties:(id)properties;
- (void)updateArticleWithID:(id)d properties:(id)properties;
- (void)updateTagWithID:(id)d properties:(id)properties;
@end

@implementation FCCKTestContentDatabase

+ (id)testingDatabase
{
  initForLoggingOnly = [[FCNetworkBehaviorMonitor alloc] initForLoggingOnly];
  initForTesting = [[FCConfigurationManager alloc] initForTesting];
  v4 = [objc_alloc(objc_opt_class()) initWithContainerIdentifier:@"bogus" productionEnvironment:0 networkBehaviorMonitor:initForLoggingOnly configurationManager:initForTesting];

  return v4;
}

- (void)addOperation:(id)operation
{
  v99 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  ++self->_countOfOperationsHandled;
  objc_opt_class();
  if (operationCopy && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = operationCopy;
    if ([(FCCKTestContentDatabase *)self simulateNetworkError])
    {
      queryCompletionBlock = [v5 queryCompletionBlock];

      if (queryCompletionBlock)
      {
        queryCompletionBlock2 = [v5 queryCompletionBlock];
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:4 userInfo:MEMORY[0x1E695E0F8]];
        (queryCompletionBlock2)[2](queryCompletionBlock2, 0, v8);
      }

      goto LABEL_18;
    }

    query = [v5 query];
    recordType = [query recordType];
    v12 = [recordType isEqualToString:@"MultiFeed"];

    if (v12)
    {
      feedQueryEndpoint = [(FCCKTestContentDatabase *)self feedQueryEndpoint];
    }

    else
    {
      recordType2 = [query recordType];
      v15 = [recordType2 isEqualToString:@"OrderFeed"];

      if (v15)
      {
        feedQueryEndpoint = [(FCCKTestContentDatabase *)self orderFeedQueryEndpoint];
      }

      else
      {
        recordType3 = [query recordType];
        v17 = [recordType3 isEqualToString:@"MultiFetch"];

        if (!v17)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unrecognized query record type"];
          *buf = 136315906;
          v92 = "[FCCKTestContentDatabase addOperation:]";
          v93 = 2080;
          v94 = "FCCKTestContentDatabase.m";
          v95 = 1024;
          v96 = 140;
          v97 = 2114;
          v98 = v18;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_16:

LABEL_17:
LABEL_18:
          objc_opt_class();
          v9 = 1;
          goto LABEL_19;
        }

        feedQueryEndpoint = [(FCCKTestContentDatabase *)self multiFetchQueryEndpoint];
      }
    }

    v18 = feedQueryEndpoint;
    records = [(FCCKTestContentDatabase *)self records];
    droppedFeeds = [(FCCKTestContentDatabase *)self droppedFeeds];
    [v18 handleQueryOperation:v5 withRecords:records droppedFeeds:droppedFeeds];

    goto LABEL_16;
  }

  objc_opt_class();
  if (!operationCopy)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v5 = 0;
  v9 = 0;
LABEL_19:
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v9)
    {
LABEL_25:
      v21 = 0;
      goto LABEL_60;
    }

LABEL_23:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v71 = objc_alloc(MEMORY[0x1E696AEC0]);
      v72 = objc_opt_class();
      v73 = NSStringFromClass(v72);
      v74 = [v71 initWithFormat:@"%@ isn't supported by FCCKTestContentDatabase", v73];
      *buf = 136315906;
      v92 = "[FCCKTestContentDatabase addOperation:]";
      v93 = 2080;
      v94 = "FCCKTestContentDatabase.m";
      v95 = 1024;
      v96 = 193;
      v97 = 2114;
      v98 = v74;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_25;
  }

  v21 = operationCopy;
  fetchedKeys = [(FCCKTestContentDatabase *)self fetchedKeys];
  if (fetchedKeys)
  {
    fetchedKeys2 = [(FCCKTestContentDatabase *)self fetchedKeys];
    desiredKeys = [v21 desiredKeys];
    v25 = [fetchedKeys2 setByAddingObjectsFromArray:desiredKeys];
    [(FCCKTestContentDatabase *)self setFetchedKeys:v25];
  }

  else
  {
    v26 = MEMORY[0x1E695DFD8];
    fetchedKeys2 = [v21 desiredKeys];
    desiredKeys = [v26 setWithArray:fetchedKeys2];
    [(FCCKTestContentDatabase *)self setFetchedKeys:desiredKeys];
  }

  if ([(FCCKTestContentDatabase *)self simulateNetworkError])
  {
    fetchRecordsCompletionBlock = [v21 fetchRecordsCompletionBlock];

    if (fetchRecordsCompletionBlock)
    {
      fetchRecordsCompletionBlock2 = [v21 fetchRecordsCompletionBlock];
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:4 userInfo:MEMORY[0x1E695E0F8]];
      (fetchRecordsCompletionBlock2)[2](fetchRecordsCompletionBlock2, 0, v29);
    }
  }

  else
  {
    v75 = v5;
    v76 = operationCopy;
    recordIDs = [v21 recordIDs];
    records2 = [(FCCKTestContentDatabase *)self records];
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", recordIDs, @"recordID"];
    v33 = [records2 filteredArrayUsingPredicate:v32];

    desiredKeys2 = [v21 desiredKeys];
    v35 = [(FCCKTestContentDatabase *)self records:v33 withDesiredKeys:desiredKeys2];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = v35;
    v37 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v84;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v84 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v83 + 1) + 8 * i);
          perRecordProgressBlock = [v21 perRecordProgressBlock];

          if (perRecordProgressBlock)
          {
            perRecordProgressBlock2 = [v21 perRecordProgressBlock];
            recordID = [v41 recordID];
            (perRecordProgressBlock2)[2](perRecordProgressBlock2, recordID, 0.5);
          }

          perRecordCompletionBlock = [v21 perRecordCompletionBlock];

          if (perRecordCompletionBlock)
          {
            perRecordCompletionBlock2 = [v21 perRecordCompletionBlock];
            recordID2 = [v41 recordID];
            (perRecordCompletionBlock2)[2](perRecordCompletionBlock2, v41, recordID2, 0);
          }

          recordID3 = [v41 recordID];
          [dictionary setObject:v41 forKey:recordID3];

          perRecordCompletionBlock3 = [v21 perRecordCompletionBlock];

          if (perRecordCompletionBlock3)
          {
            perRecordCompletionBlock4 = [v21 perRecordCompletionBlock];
            recordID4 = [v41 recordID];
            (perRecordCompletionBlock4)[2](perRecordCompletionBlock4, v41, recordID4, 0);
          }
        }

        v38 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v38);
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v53 = recordIDs;
    v54 = [v53 countByEnumeratingWithState:&v79 objects:v89 count:16];
    v77 = dictionary2;
    if (v54)
    {
      v55 = v54;
      v56 = *v80;
      v57 = *MEMORY[0x1E695B740];
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v80 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v59 = *(*(&v79 + 1) + 8 * j);
          v60 = [dictionary objectForKeyedSubscript:v59];

          if (!v60)
          {
            v61 = [MEMORY[0x1E696ABC0] errorWithDomain:v57 code:11 userInfo:MEMORY[0x1E695E0F8]];
            [dictionary2 setObject:v61 forKeyedSubscript:v59];
            perRecordCompletionBlock5 = [v21 perRecordCompletionBlock];

            if (perRecordCompletionBlock5)
            {
              perRecordCompletionBlock6 = [v21 perRecordCompletionBlock];
              (perRecordCompletionBlock6)[2](perRecordCompletionBlock6, 0, v59, v61);
            }

            dictionary2 = v77;
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v55);
    }

    if ([dictionary2 count])
    {
      v64 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E695B740];
      v87 = *MEMORY[0x1E695B798];
      v88 = dictionary2;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v67 = [v64 errorWithDomain:v65 code:2 userInfo:v66];
    }

    else
    {
      v67 = 0;
    }

    v5 = v75;
    operationCopy = v76;
    fetchRecordsCompletionBlock3 = [v21 fetchRecordsCompletionBlock];

    if (fetchRecordsCompletionBlock3)
    {
      fetchRecordsCompletionBlock4 = [v21 fetchRecordsCompletionBlock];
      (fetchRecordsCompletionBlock4)[2](fetchRecordsCompletionBlock4, dictionary, v67);
    }
  }

LABEL_60:

  v70 = *MEMORY[0x1E69E9840];
}

- (void)insertRecord:(id)record
{
  recordCopy = record;
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:recordCopy];
}

- (id)insertTestArticle
{
  v3 = FCRandomArticleCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:v3 properties:0];

  return v3;
}

- (id)insertTestArticleWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = FCRandomArticleCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:v5 properties:propertiesCopy];

  return v5;
}

- (void)insertCanaryArticleWithID:(id)d
{
  v4 = MEMORY[0x1E695BA60];
  dCopy = d;
  v6 = [v4 alloc];
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:dCopy];

  v9 = [v6 initWithRecordType:@"Article" recordID:v7];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v9];
}

- (void)insertTestArticleWithID:(id)d properties:(id)properties
{
  dCopy = d;
  propertiesCopy = properties;
  v7 = [(FCCKTestContentDatabase *)self insertTestTagWithType:@"channel" properties:0];
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:dCopy];
  v10 = [v8 initWithRecordType:@"Article" recordID:v9];

  [v10 setEtag:@"1"];
  [v10 setObject:v7 forKeyedSubscript:@"sourceChannelTagID"];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v10];

  v12 = [propertiesCopy objectForKeyedSubscript:@"publishDate"];

  if (!v12)
  {
    if (propertiesCopy)
    {
      [MEMORY[0x1E695DF90] dictionaryWithDictionary:propertiesCopy];
    }

    else
    {
      [MEMORY[0x1E695DF90] dictionary];
    }
    v13 = ;
    date = [MEMORY[0x1E695DF00] date];
    [v13 setObject:date forKeyedSubscript:@"publishDate"];

    propertiesCopy = v13;
  }

  [(FCCKTestContentDatabase *)self updateArticleWithID:dCopy properties:propertiesCopy];
}

- (id)insertTestForYouConfigWithProperties:(id)properties
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v5 = FCRandomForYouConfigCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"ForYouConfig" recordID:v7];

  [v8 setEtag:@"1"];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = propertiesCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        [v8 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)insertTestArticleListReferencingArticleIDs:(id)ds
{
  dsCopy = ds;
  v5 = FCRandomArticleListCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"ArticleList" recordID:v7];

  [v8 setEtag:@"1"];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v8];

  [v8 setObject:dsCopy forKeyedSubscript:@"articleIDs"];

  return v5;
}

- (id)insertTestIssueListReferencingIssueIDs:(id)ds
{
  dsCopy = ds;
  v5 = FCRandomIssueListCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"IssueList" recordID:v7];

  [v8 setEtag:@"1"];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v8];

  [v8 setObject:dsCopy forKeyedSubscript:@"issueIDs"];

  return v5;
}

- (void)updateArticleWithID:(id)d properties:(id)properties
{
  v6 = MEMORY[0x1E695DF00];
  propertiesCopy = properties;
  dCopy = d;
  date = [v6 date];
  [(FCCKTestContentDatabase *)self updateArticleWithID:dCopy modDate:date properties:propertiesCopy];
}

- (void)updateArticleWithID:(id)d modDate:(id)date properties:(id)properties
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  propertiesCopy = properties;
  records = [(FCCKTestContentDatabase *)self records];
  v12 = FCLookupRecordByName(records, dCopy);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = propertiesCopy;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v15);
  }

  [v12 setModificationDate:dateCopy];
  v20 = [v13 objectForKeyedSubscript:@"publishDate"];
  if (v20)
  {
    v30 = dateCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    records2 = [(FCCKTestContentDatabase *)self records];
    v31 = dCopy;
    v22 = FCFeedItemRecordsForArticle(records2, dCopy);

    v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * j);
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v20, "fc_millisecondTimeIntervalSince1970")}];
          [v27 setObject:v28 forKeyedSubscript:@"publishDateMillis"];
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    dateCopy = v30;
    dCopy = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)deleteArticleWithID:(id)d
{
  dCopy = d;
  records = [(FCCKTestContentDatabase *)self records];
  records2 = [(FCCKTestContentDatabase *)self records];
  v6 = FCLookupRecordByName(records2, dCopy);

  [records removeObject:v6];
}

- (id)insertTestTagWithType:(id)type feedID:(id)d properties:(id)properties
{
  v42[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  dCopy = d;
  propertiesCopy = properties;
  v10 = objc_alloc(MEMORY[0x1E695BA60]);
  v11 = objc_alloc(MEMORY[0x1E695BA70]);
  v12 = FCRandomTagCloudKitID();
  v13 = [v11 initWithRecordName:v12];
  v14 = [v10 initWithRecordType:@"Tag" recordID:v13];

  [v14 setEtag:@"1"];
  [v14 setObject:typeCopy forKeyedSubscript:@"type"];
  v15 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v15 contentStoreFrontID];
  v17 = FCCKLocalizedRecordKey(@"feedConfiguration", contentStoreFrontID);

  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = MEMORY[0x1E696ACB0];
  v41 = @"everythingFeedID";
  v42[0] = dCopy;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v21 = [v19 dataWithJSONObject:v20 options:0 error:0];
  v22 = [v18 initWithData:v21 encoding:4];
  [v14 setObject:v22 forKeyedSubscript:v17];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = propertiesCopy;
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v37;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v36 + 1) + 8 * i);
        v29 = [v23 objectForKeyedSubscript:v28];
        [v14 setObject:v29 forKeyedSubscript:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v25);
  }

  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v14];

  recordID = [v14 recordID];
  recordName = [recordID recordName];

  v33 = *MEMORY[0x1E69E9840];

  return recordName;
}

- (id)insertTestTagWithType:(id)type properties:(id)properties
{
  v31 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  propertiesCopy = properties;
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = objc_alloc(MEMORY[0x1E695BA70]);
  v10 = FCRandomTagCloudKitID();
  v11 = [v9 initWithRecordName:v10];
  v12 = [v8 initWithRecordType:@"Tag" recordID:v11];

  [v12 setObject:typeCopy forKeyedSubscript:@"type"];
  [v12 setEtag:@"1"];
  date = [MEMORY[0x1E695DF00] date];
  [v12 setModificationDate:date];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = propertiesCopy;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = [v14 objectForKeyedSubscript:{v19, v26}];
        [v12 setObject:v20 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v12];

  recordID = [v12 recordID];
  recordName = [recordID recordName];

  v24 = *MEMORY[0x1E69E9840];

  return recordName;
}

- (void)insertTestTagWithID:(id)d type:(id)type properties:(id)properties
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  typeCopy = type;
  propertiesCopy = properties;
  v11 = objc_alloc(MEMORY[0x1E695BA60]);
  v12 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:dCopy];
  v13 = [v11 initWithRecordType:@"Tag" recordID:v12];

  [v13 setObject:typeCopy forKeyedSubscript:@"type"];
  [v13 setEtag:@"1"];
  date = [MEMORY[0x1E695DF00] date];
  [v13 setModificationDate:date];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = propertiesCopy;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:{v20, v24}];
        [v13 setObject:v21 forKeyedSubscript:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v13];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)insertTestIssueWithProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = FCRandomIssueCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestIssueWithID:v5 properties:propertiesCopy];

  return v5;
}

- (void)insertTestIssueWithID:(id)d properties:(id)properties
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:dCopy];
  v10 = [v8 initWithRecordType:@"Issue" recordID:v9];

  [v10 setEtag:@"1"];
  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v10];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = propertiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = [v12 objectForKeyedSubscript:{v17, v20}];
        [v10 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)updateTagWithID:(id)d properties:(id)properties
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  propertiesCopy = properties;
  records = [(FCCKTestContentDatabase *)self records];
  v9 = FCLookupRecordByName(records, dCopy);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = propertiesCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v19}];
        [v9 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  date = [MEMORY[0x1E695DF00] date];
  [v9 setModificationDate:date];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)insertArticleID:(id)d atTopOfFeedID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  records = [(FCCKTestContentDatabase *)self records];
  v14 = FCSortedFeedItemRecordsForFeedID(records, iDCopy);

  firstObject = [v14 firstObject];
  v10 = [firstObject objectForKeyedSubscript:@"order"];

  v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItem"];
  [v11 setObject:iDCopy forKeyedSubscript:@"tagID"];

  [v11 setObject:dCopy forKeyedSubscript:@"articleID"];
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") + 1}];
    [v11 setObject:v12 forKeyedSubscript:@"order"];
  }

  else
  {
    [v11 setObject:&unk_1F2E70728 forKeyedSubscript:@"order"];
  }

  records2 = [(FCCKTestContentDatabase *)self records];
  [records2 addObject:v11];
}

- (void)insertArticleID:(id)d atBottomOfFeedID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  records = [(FCCKTestContentDatabase *)self records];
  v14 = FCSortedFeedItemRecordsForFeedID(records, iDCopy);

  lastObject = [v14 lastObject];
  v10 = [lastObject objectForKeyedSubscript:@"order"];

  v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItem"];
  [v11 setObject:iDCopy forKeyedSubscript:@"tagID"];

  [v11 setObject:dCopy forKeyedSubscript:@"articleID"];
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") - 1}];
    [v11 setObject:v12 forKeyedSubscript:@"order"];
  }

  else
  {
    [v11 setObject:&unk_1F2E70728 forKeyedSubscript:@"order"];
  }

  records2 = [(FCCKTestContentDatabase *)self records];
  [records2 addObject:v11];
}

- (void)insertArticleID:(id)d inFeedID:(id)iD withOrder:(unint64_t)order
{
  v8 = MEMORY[0x1E695BA60];
  iDCopy = iD;
  dCopy = d;
  v13 = [[v8 alloc] initWithRecordType:@"FeedItem"];
  [v13 setObject:iDCopy forKeyedSubscript:@"tagID"];

  [v13 setObject:dCopy forKeyedSubscript:@"articleID"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:order];
  [v13 setObject:v11 forKeyedSubscript:@"order"];

  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v13];
}

- (void)insertArticleID:(id)d inFeedID:(id)iD withOrder:(unint64_t)order subOrder:(unint64_t)subOrder
{
  v10 = MEMORY[0x1E695BA60];
  iDCopy = iD;
  dCopy = d;
  v16 = [[v10 alloc] initWithRecordType:@"FeedItem"];
  [v16 setObject:iDCopy forKeyedSubscript:@"tagID"];

  [v16 setObject:dCopy forKeyedSubscript:@"articleID"];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:order];
  [v16 setObject:v13 forKeyedSubscript:@"order"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:subOrder];
  [v16 setObject:v14 forKeyedSubscript:@"subOrder"];

  records = [(FCCKTestContentDatabase *)self records];
  [records addObject:v16];
}

- (void)updateArticleID:(id)d inFeedID:(id)iD withProperties:(id)properties
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  propertiesCopy = properties;
  records = [(FCCKTestContentDatabase *)self records];
  v12 = FCLookupFeedItemRecordByFeedAndArticle(records, iDCopy, dCopy);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = propertiesCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:{v18, v21}];
        [v12 setObject:v19 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)populateWithBasicTestFeeds
{
  v45[1] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  fc_millisecondTimeIntervalSince1970 = [date fc_millisecondTimeIntervalSince1970];

  [(FCCKTestContentDatabase *)self insertTestTagWithID:@"Ichannel" type:@"channel" properties:MEMORY[0x1E695E0F8]];
  v44 = @"channelTagID";
  v45[0] = @"Ichannel";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  [(FCCKTestContentDatabase *)self insertTestIssueWithID:@"Iissue" properties:v5];

  v42[0] = @"parentIssueID";
  v42[1] = @"sourceChannelTagID";
  v43[0] = @"Iissue";
  v43[1] = @"Ichannel";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed1_article1" properties:v6];

  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed1_article2" properties:0];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed1_article3" properties:0];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article1" inFeedID:@"test_feed1" withOrder:fc_millisecondTimeIntervalSince1970];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article2" inFeedID:@"test_feed1" withOrder:fc_millisecondTimeIntervalSince1970 - 1];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article3" inFeedID:@"test_feed1" withOrder:fc_millisecondTimeIntervalSince1970 - 2];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article1" properties:0];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article2" properties:0];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article3" properties:0];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article1" inFeedID:@"test_feed2" withOrder:fc_millisecondTimeIntervalSince1970 - 1];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article2" inFeedID:@"test_feed2" withOrder:fc_millisecondTimeIntervalSince1970 - 2];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article3" inFeedID:@"test_feed2" withOrder:fc_millisecondTimeIntervalSince1970 - 3];
  date2 = [MEMORY[0x1E695DF00] date];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-21600.0];
  v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-43200.0];
  v41[0] = date2;
  v40[0] = @"publishDate";
  v40[1] = @"publishDateMillis";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(date2, "fc_millisecondTimeIntervalSince1970")}];
  v41[1] = v9;
  v40[2] = @"tagHalfLifeMillis";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v41[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed1_article1" inFeedID:@"test_feed1" withProperties:v11];

  v28 = v8;
  v39[0] = v8;
  v38[0] = @"publishDate";
  v38[1] = @"publishDateMillis";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "fc_millisecondTimeIntervalSince1970")}];
  v39[1] = v12;
  v38[2] = @"tagHalfLifeMillis";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v39[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed1_article2" inFeedID:@"test_feed1" withProperties:v14];

  v37[0] = v29;
  v36[0] = @"publishDate";
  v36[1] = @"publishDateMillis";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v29, "fc_millisecondTimeIntervalSince1970")}];
  v37[1] = v15;
  v36[2] = @"tagHalfLifeMillis";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v37[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed1_article3" inFeedID:@"test_feed1" withProperties:v17];

  v35[0] = date2;
  v34[0] = @"publishDate";
  v34[1] = @"publishDateMillis";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(date2, "fc_millisecondTimeIntervalSince1970")}];
  v35[1] = v18;
  v34[2] = @"tagHalfLifeMillis";
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v35[2] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed2_article1" inFeedID:@"test_feed2" withProperties:v20];

  v33[0] = v28;
  v32[0] = @"publishDate";
  v32[1] = @"publishDateMillis";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v28, "fc_millisecondTimeIntervalSince1970")}];
  v33[1] = v21;
  v32[2] = @"tagHalfLifeMillis";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v33[2] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed2_article2" inFeedID:@"test_feed2" withProperties:v23];

  v31[0] = v29;
  v30[0] = @"publishDate";
  v30[1] = @"publishDateMillis";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v29, "fc_millisecondTimeIntervalSince1970")}];
  v31[1] = v24;
  v30[2] = @"tagHalfLifeMillis";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:86400000];
  v31[2] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [(FCCKTestContentDatabase *)self updateArticleID:@"Atest_feed2_article3" inFeedID:@"test_feed2" withProperties:v26];

  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"A-canary" properties:0];
  v27 = *MEMORY[0x1E69E9840];
}

- (void)populateWithLargeTestFeeds
{
  v29[4] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  fc_millisecondTimeIntervalSince1970 = [date fc_millisecondTimeIntervalSince1970];

  v4 = @"publishDate";
  v5 = 1;
  v6 = 0x1E695D000uLL;
  do
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Atest_feed1_article%lu", v5];
    v28[0] = v4;
    v8 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:fc_millisecondTimeIntervalSince1970];
    v29[0] = v8;
    v28[1] = @"publishDateMillis";
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:fc_millisecondTimeIntervalSince1970];
    v10 = v9 = v4;
    v29[1] = v10;
    v29[2] = @"Iissue";
    v28[2] = @"parentIssueID";
    v28[3] = @"sourceChannelTagID";
    v29[3] = @"Ichannel";
    [*(v6 + 3872) dictionaryWithObjects:v29 forKeys:v28 count:4];
    v12 = v11 = v6;
    [(FCCKTestContentDatabase *)self insertTestArticleWithID:v7 properties:v12];

    v6 = v11;
    v4 = v9;

    v13 = 0x1E695D000uLL;
    [(FCCKTestContentDatabase *)self insertArticleID:v7 inFeedID:@"test_feed1" withOrder:fc_millisecondTimeIntervalSince1970--];

    v14 = 0x1E696A000uLL;
    ++v5;
  }

  while (v5 != 51);
  v15 = fc_millisecondTimeIntervalSince1970 + 25;
  for (i = 1; i != 51; ++i)
  {
    v17 = [*(v14 + 3776) stringWithFormat:@"Atest_feed2_article%lu", i];
    v26[0] = v4;
    v18 = [*(v13 + 3840) fc_dateWithMillisecondTimeIntervalSince1970:v15];
    v26[1] = @"publishDateMillis";
    v27[0] = v18;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
    v27[1] = v19;
    v20 = [*(v6 + 3872) dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(FCCKTestContentDatabase *)self insertTestArticleWithID:v17 properties:v20];

    v6 = v11;
    v4 = v9;

    v13 = 0x1E695D000;
    [(FCCKTestContentDatabase *)self insertArticleID:v17 inFeedID:@"test_feed2" withOrder:v15--];

    v14 = 0x1E696A000;
  }

  [(FCCKTestContentDatabase *)self insertTestTagWithID:@"Ichannel" type:@"channel" properties:MEMORY[0x1E695E0F8]];
  v24 = @"channelTagID";
  v25 = @"Ichannel";
  v21 = [*(v11 + 3872) dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [(FCCKTestContentDatabase *)self insertTestIssueWithID:@"Iissue" properties:v21];

  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"A-canary" properties:0];
  v22 = *MEMORY[0x1E69E9840];
}

- (void)deleteFeedID:(id)d
{
  dCopy = d;
  records = [(FCCKTestContentDatabase *)self records];
  v7 = FCSortedFeedItemRecordsForFeedID(records, dCopy);

  records2 = [(FCCKTestContentDatabase *)self records];
  [records2 removeObjectsInArray:v7];
}

- (void)simulateDroppedFeedForFeedID:(id)d
{
  dCopy = d;
  droppedFeeds = [(FCCKTestContentDatabase *)self droppedFeeds];
  [droppedFeeds addObject:dCopy];
}

- (id)addArticlesToTopOfFeed:(id)feed count:(unint64_t)count
{
  feedCopy = feed;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    insertTestArticle = [(FCCKTestContentDatabase *)self insertTestArticle];
    [(FCCKTestContentDatabase *)self insertArticleID:insertTestArticle atTopOfFeedID:feedCopy];
    [i insertObject:insertTestArticle atIndex:0];
  }

  return i;
}

- (unint64_t)orderForArticleID:(id)d feedID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  records = [(FCCKTestContentDatabase *)self records];
  v9 = FCLookupFeedItemRecordByFeedAndArticle(records, iDCopy, dCopy);

  v10 = [v9 objectForKeyedSubscript:@"order"];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)records:(id)records withDesiredKeys:(id)keys
{
  v5 = MEMORY[0x1E695DFD8];
  recordsCopy = records;
  v7 = [v5 setWithArray:keys];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__FCCKTestContentDatabase_records_withDesiredKeys___block_invoke;
  v11[3] = &unk_1E7C3B338;
  v12 = v7;
  v8 = v7;
  v9 = [recordsCopy fc_arrayByTransformingWithBlock:v11];

  return v9;
}

id __51__FCCKTestContentDatabase_records_withDesiredKeys___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a2 copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 valuesByKey];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v10] & 1) == 0)
        {
          v11 = [v3 valuesByKey];
          [v11 setObject:0 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

@end