@interface FCCKTestContentDatabase
+ (id)testingDatabase;
- (id)addArticlesToTopOfFeed:(id)a3 count:(unint64_t)a4;
- (id)insertTestArticle;
- (id)insertTestArticleListReferencingArticleIDs:(id)a3;
- (id)insertTestArticleWithProperties:(id)a3;
- (id)insertTestForYouConfigWithProperties:(id)a3;
- (id)insertTestIssueListReferencingIssueIDs:(id)a3;
- (id)insertTestIssueWithProperties:(id)a3;
- (id)insertTestTagWithType:(id)a3 feedID:(id)a4 properties:(id)a5;
- (id)insertTestTagWithType:(id)a3 properties:(id)a4;
- (id)records:(id)a3 withDesiredKeys:(id)a4;
- (unint64_t)orderForArticleID:(id)a3 feedID:(id)a4;
- (void)addOperation:(id)a3;
- (void)deleteArticleWithID:(id)a3;
- (void)deleteFeedID:(id)a3;
- (void)insertArticleID:(id)a3 atBottomOfFeedID:(id)a4;
- (void)insertArticleID:(id)a3 atTopOfFeedID:(id)a4;
- (void)insertArticleID:(id)a3 inFeedID:(id)a4 withOrder:(unint64_t)a5;
- (void)insertArticleID:(id)a3 inFeedID:(id)a4 withOrder:(unint64_t)a5 subOrder:(unint64_t)a6;
- (void)insertCanaryArticleWithID:(id)a3;
- (void)insertRecord:(id)a3;
- (void)insertTestArticleWithID:(id)a3 properties:(id)a4;
- (void)insertTestIssueWithID:(id)a3 properties:(id)a4;
- (void)insertTestTagWithID:(id)a3 type:(id)a4 properties:(id)a5;
- (void)populateWithBasicTestFeeds;
- (void)populateWithLargeTestFeeds;
- (void)simulateDroppedFeedForFeedID:(id)a3;
- (void)updateArticleID:(id)a3 inFeedID:(id)a4 withProperties:(id)a5;
- (void)updateArticleWithID:(id)a3 modDate:(id)a4 properties:(id)a5;
- (void)updateArticleWithID:(id)a3 properties:(id)a4;
- (void)updateTagWithID:(id)a3 properties:(id)a4;
@end

@implementation FCCKTestContentDatabase

+ (id)testingDatabase
{
  v2 = [[FCNetworkBehaviorMonitor alloc] initForLoggingOnly];
  v3 = [[FCConfigurationManager alloc] initForTesting];
  v4 = [objc_alloc(objc_opt_class()) initWithContainerIdentifier:@"bogus" productionEnvironment:0 networkBehaviorMonitor:v2 configurationManager:v3];

  return v4;
}

- (void)addOperation:(id)a3
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = a3;
  ++self->_countOfOperationsHandled;
  objc_opt_class();
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
    if ([(FCCKTestContentDatabase *)self simulateNetworkError])
    {
      v6 = [v5 queryCompletionBlock];

      if (v6)
      {
        v7 = [v5 queryCompletionBlock];
        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:4 userInfo:MEMORY[0x1E695E0F8]];
        (v7)[2](v7, 0, v8);
      }

      goto LABEL_18;
    }

    v10 = [v5 query];
    v11 = [v10 recordType];
    v12 = [v11 isEqualToString:@"MultiFeed"];

    if (v12)
    {
      v13 = [(FCCKTestContentDatabase *)self feedQueryEndpoint];
    }

    else
    {
      v14 = [v10 recordType];
      v15 = [v14 isEqualToString:@"OrderFeed"];

      if (v15)
      {
        v13 = [(FCCKTestContentDatabase *)self orderFeedQueryEndpoint];
      }

      else
      {
        v16 = [v10 recordType];
        v17 = [v16 isEqualToString:@"MultiFetch"];

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

        v13 = [(FCCKTestContentDatabase *)self multiFetchQueryEndpoint];
      }
    }

    v18 = v13;
    v19 = [(FCCKTestContentDatabase *)self records];
    v20 = [(FCCKTestContentDatabase *)self droppedFeeds];
    [v18 handleQueryOperation:v5 withRecords:v19 droppedFeeds:v20];

    goto LABEL_16;
  }

  objc_opt_class();
  if (!v4)
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

  v21 = v4;
  v22 = [(FCCKTestContentDatabase *)self fetchedKeys];
  if (v22)
  {
    v23 = [(FCCKTestContentDatabase *)self fetchedKeys];
    v24 = [v21 desiredKeys];
    v25 = [v23 setByAddingObjectsFromArray:v24];
    [(FCCKTestContentDatabase *)self setFetchedKeys:v25];
  }

  else
  {
    v26 = MEMORY[0x1E695DFD8];
    v23 = [v21 desiredKeys];
    v24 = [v26 setWithArray:v23];
    [(FCCKTestContentDatabase *)self setFetchedKeys:v24];
  }

  if ([(FCCKTestContentDatabase *)self simulateNetworkError])
  {
    v27 = [v21 fetchRecordsCompletionBlock];

    if (v27)
    {
      v28 = [v21 fetchRecordsCompletionBlock];
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695B740] code:4 userInfo:MEMORY[0x1E695E0F8]];
      (v28)[2](v28, 0, v29);
    }
  }

  else
  {
    v75 = v5;
    v76 = v4;
    v30 = [v21 recordIDs];
    v31 = [(FCCKTestContentDatabase *)self records];
    v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ CONTAINS %K", v30, @"recordID"];
    v33 = [v31 filteredArrayUsingPredicate:v32];

    v34 = [v21 desiredKeys];
    v35 = [(FCCKTestContentDatabase *)self records:v33 withDesiredKeys:v34];

    v36 = [MEMORY[0x1E695DF90] dictionary];
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
          v42 = [v21 perRecordProgressBlock];

          if (v42)
          {
            v43 = [v21 perRecordProgressBlock];
            v44 = [v41 recordID];
            (v43)[2](v43, v44, 0.5);
          }

          v45 = [v21 perRecordCompletionBlock];

          if (v45)
          {
            v46 = [v21 perRecordCompletionBlock];
            v47 = [v41 recordID];
            (v46)[2](v46, v41, v47, 0);
          }

          v48 = [v41 recordID];
          [v36 setObject:v41 forKey:v48];

          v49 = [v21 perRecordCompletionBlock];

          if (v49)
          {
            v50 = [v21 perRecordCompletionBlock];
            v51 = [v41 recordID];
            (v50)[2](v50, v41, v51, 0);
          }
        }

        v38 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v38);
    }

    v52 = [MEMORY[0x1E695DF90] dictionary];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v53 = v30;
    v54 = [v53 countByEnumeratingWithState:&v79 objects:v89 count:16];
    v77 = v52;
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
          v60 = [v36 objectForKeyedSubscript:v59];

          if (!v60)
          {
            v61 = [MEMORY[0x1E696ABC0] errorWithDomain:v57 code:11 userInfo:MEMORY[0x1E695E0F8]];
            [v52 setObject:v61 forKeyedSubscript:v59];
            v62 = [v21 perRecordCompletionBlock];

            if (v62)
            {
              v63 = [v21 perRecordCompletionBlock];
              (v63)[2](v63, 0, v59, v61);
            }

            v52 = v77;
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v55);
    }

    if ([v52 count])
    {
      v64 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E695B740];
      v87 = *MEMORY[0x1E695B798];
      v88 = v52;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v67 = [v64 errorWithDomain:v65 code:2 userInfo:v66];
    }

    else
    {
      v67 = 0;
    }

    v5 = v75;
    v4 = v76;
    v68 = [v21 fetchRecordsCompletionBlock];

    if (v68)
    {
      v69 = [v21 fetchRecordsCompletionBlock];
      (v69)[2](v69, v36, v67);
    }
  }

LABEL_60:

  v70 = *MEMORY[0x1E69E9840];
}

- (void)insertRecord:(id)a3
{
  v4 = a3;
  v5 = [(FCCKTestContentDatabase *)self records];
  [v5 addObject:v4];
}

- (id)insertTestArticle
{
  v3 = FCRandomArticleCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:v3 properties:0];

  return v3;
}

- (id)insertTestArticleWithProperties:(id)a3
{
  v4 = a3;
  v5 = FCRandomArticleCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:v5 properties:v4];

  return v5;
}

- (void)insertCanaryArticleWithID:(id)a3
{
  v4 = MEMORY[0x1E695BA60];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];

  v9 = [v6 initWithRecordType:@"Article" recordID:v7];
  v8 = [(FCCKTestContentDatabase *)self records];
  [v8 addObject:v9];
}

- (void)insertTestArticleWithID:(id)a3 properties:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(FCCKTestContentDatabase *)self insertTestTagWithType:@"channel" properties:0];
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v15];
  v10 = [v8 initWithRecordType:@"Article" recordID:v9];

  [v10 setEtag:@"1"];
  [v10 setObject:v7 forKeyedSubscript:@"sourceChannelTagID"];
  v11 = [(FCCKTestContentDatabase *)self records];
  [v11 addObject:v10];

  v12 = [v6 objectForKeyedSubscript:@"publishDate"];

  if (!v12)
  {
    if (v6)
    {
      [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
    }

    else
    {
      [MEMORY[0x1E695DF90] dictionary];
    }
    v13 = ;
    v14 = [MEMORY[0x1E695DF00] date];
    [v13 setObject:v14 forKeyedSubscript:@"publishDate"];

    v6 = v13;
  }

  [(FCCKTestContentDatabase *)self updateArticleWithID:v15 properties:v6];
}

- (id)insertTestForYouConfigWithProperties:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FCRandomForYouConfigCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"ForYouConfig" recordID:v7];

  [v8 setEtag:@"1"];
  v9 = [(FCCKTestContentDatabase *)self records];
  [v9 addObject:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
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

- (id)insertTestArticleListReferencingArticleIDs:(id)a3
{
  v4 = a3;
  v5 = FCRandomArticleListCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"ArticleList" recordID:v7];

  [v8 setEtag:@"1"];
  v9 = [(FCCKTestContentDatabase *)self records];
  [v9 addObject:v8];

  [v8 setObject:v4 forKeyedSubscript:@"articleIDs"];

  return v5;
}

- (id)insertTestIssueListReferencingIssueIDs:(id)a3
{
  v4 = a3;
  v5 = FCRandomIssueListCloudKitID();
  v6 = objc_alloc(MEMORY[0x1E695BA60]);
  v7 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v5];
  v8 = [v6 initWithRecordType:@"IssueList" recordID:v7];

  [v8 setEtag:@"1"];
  v9 = [(FCCKTestContentDatabase *)self records];
  [v9 addObject:v8];

  [v8 setObject:v4 forKeyedSubscript:@"issueIDs"];

  return v5;
}

- (void)updateArticleWithID:(id)a3 properties:(id)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  [(FCCKTestContentDatabase *)self updateArticleWithID:v8 modDate:v9 properties:v7];
}

- (void)updateArticleWithID:(id)a3 modDate:(id)a4 properties:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FCCKTestContentDatabase *)self records];
  v12 = FCLookupRecordByName(v11, v8);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = v10;
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

  [v12 setModificationDate:v9];
  v20 = [v13 objectForKeyedSubscript:@"publishDate"];
  if (v20)
  {
    v30 = v9;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = [(FCCKTestContentDatabase *)self records];
    v31 = v8;
    v22 = FCFeedItemRecordsForArticle(v21, v8);

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

    v9 = v30;
    v8 = v31;
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)deleteArticleWithID:(id)a3
{
  v4 = a3;
  v7 = [(FCCKTestContentDatabase *)self records];
  v5 = [(FCCKTestContentDatabase *)self records];
  v6 = FCLookupRecordByName(v5, v4);

  [v7 removeObject:v6];
}

- (id)insertTestTagWithType:(id)a3 feedID:(id)a4 properties:(id)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc(MEMORY[0x1E695BA60]);
  v11 = objc_alloc(MEMORY[0x1E695BA70]);
  v12 = FCRandomTagCloudKitID();
  v13 = [v11 initWithRecordName:v12];
  v14 = [v10 initWithRecordType:@"Tag" recordID:v13];

  [v14 setEtag:@"1"];
  [v14 setObject:v7 forKeyedSubscript:@"type"];
  v15 = +[FCAppleAccount sharedAccount];
  v16 = [v15 contentStoreFrontID];
  v17 = FCCKLocalizedRecordKey(@"feedConfiguration", v16);

  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = MEMORY[0x1E696ACB0];
  v41 = @"everythingFeedID";
  v42[0] = v8;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v21 = [v19 dataWithJSONObject:v20 options:0 error:0];
  v22 = [v18 initWithData:v21 encoding:4];
  [v14 setObject:v22 forKeyedSubscript:v17];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v23 = v9;
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

  v30 = [(FCCKTestContentDatabase *)self records];
  [v30 addObject:v14];

  v31 = [v14 recordID];
  v32 = [v31 recordName];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)insertTestTagWithType:(id)a3 properties:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = objc_alloc(MEMORY[0x1E695BA70]);
  v10 = FCRandomTagCloudKitID();
  v11 = [v9 initWithRecordName:v10];
  v12 = [v8 initWithRecordType:@"Tag" recordID:v11];

  [v12 setObject:v6 forKeyedSubscript:@"type"];
  [v12 setEtag:@"1"];
  v13 = [MEMORY[0x1E695DF00] date];
  [v12 setModificationDate:v13];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v7;
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

  v21 = [(FCCKTestContentDatabase *)self records];
  [v21 addObject:v12];

  v22 = [v12 recordID];
  v23 = [v22 recordName];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)insertTestTagWithID:(id)a3 type:(id)a4 properties:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc(MEMORY[0x1E695BA60]);
  v12 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v8];
  v13 = [v11 initWithRecordType:@"Tag" recordID:v12];

  [v13 setObject:v9 forKeyedSubscript:@"type"];
  [v13 setEtag:@"1"];
  v14 = [MEMORY[0x1E695DF00] date];
  [v13 setModificationDate:v14];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v10;
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

  v22 = [(FCCKTestContentDatabase *)self records];
  [v22 addObject:v13];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)insertTestIssueWithProperties:(id)a3
{
  v4 = a3;
  v5 = FCRandomIssueCloudKitID();
  [(FCCKTestContentDatabase *)self insertTestIssueWithID:v5 properties:v4];

  return v5;
}

- (void)insertTestIssueWithID:(id)a3 properties:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695BA60]);
  v9 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v6];
  v10 = [v8 initWithRecordType:@"Issue" recordID:v9];

  [v10 setEtag:@"1"];
  v11 = [(FCCKTestContentDatabase *)self records];
  [v11 addObject:v10];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v7;
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

- (void)updateTagWithID:(id)a3 properties:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FCCKTestContentDatabase *)self records];
  v9 = FCLookupRecordByName(v8, v6);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v7;
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

  v17 = [MEMORY[0x1E695DF00] date];
  [v9 setModificationDate:v17];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)insertArticleID:(id)a3 atTopOfFeedID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCCKTestContentDatabase *)self records];
  v14 = FCSortedFeedItemRecordsForFeedID(v8, v6);

  v9 = [v14 firstObject];
  v10 = [v9 objectForKeyedSubscript:@"order"];

  v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItem"];
  [v11 setObject:v6 forKeyedSubscript:@"tagID"];

  [v11 setObject:v7 forKeyedSubscript:@"articleID"];
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") + 1}];
    [v11 setObject:v12 forKeyedSubscript:@"order"];
  }

  else
  {
    [v11 setObject:&unk_1F2E70728 forKeyedSubscript:@"order"];
  }

  v13 = [(FCCKTestContentDatabase *)self records];
  [v13 addObject:v11];
}

- (void)insertArticleID:(id)a3 atBottomOfFeedID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCCKTestContentDatabase *)self records];
  v14 = FCSortedFeedItemRecordsForFeedID(v8, v6);

  v9 = [v14 lastObject];
  v10 = [v9 objectForKeyedSubscript:@"order"];

  v11 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItem"];
  [v11 setObject:v6 forKeyedSubscript:@"tagID"];

  [v11 setObject:v7 forKeyedSubscript:@"articleID"];
  if (v10)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") - 1}];
    [v11 setObject:v12 forKeyedSubscript:@"order"];
  }

  else
  {
    [v11 setObject:&unk_1F2E70728 forKeyedSubscript:@"order"];
  }

  v13 = [(FCCKTestContentDatabase *)self records];
  [v13 addObject:v11];
}

- (void)insertArticleID:(id)a3 inFeedID:(id)a4 withOrder:(unint64_t)a5
{
  v8 = MEMORY[0x1E695BA60];
  v9 = a4;
  v10 = a3;
  v13 = [[v8 alloc] initWithRecordType:@"FeedItem"];
  [v13 setObject:v9 forKeyedSubscript:@"tagID"];

  [v13 setObject:v10 forKeyedSubscript:@"articleID"];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  [v13 setObject:v11 forKeyedSubscript:@"order"];

  v12 = [(FCCKTestContentDatabase *)self records];
  [v12 addObject:v13];
}

- (void)insertArticleID:(id)a3 inFeedID:(id)a4 withOrder:(unint64_t)a5 subOrder:(unint64_t)a6
{
  v10 = MEMORY[0x1E695BA60];
  v11 = a4;
  v12 = a3;
  v16 = [[v10 alloc] initWithRecordType:@"FeedItem"];
  [v16 setObject:v11 forKeyedSubscript:@"tagID"];

  [v16 setObject:v12 forKeyedSubscript:@"articleID"];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a5];
  [v16 setObject:v13 forKeyedSubscript:@"order"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a6];
  [v16 setObject:v14 forKeyedSubscript:@"subOrder"];

  v15 = [(FCCKTestContentDatabase *)self records];
  [v15 addObject:v16];
}

- (void)updateArticleID:(id)a3 inFeedID:(id)a4 withProperties:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FCCKTestContentDatabase *)self records];
  v12 = FCLookupFeedItemRecordByFeedAndArticle(v11, v9, v8);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v10;
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
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v3 fc_millisecondTimeIntervalSince1970];

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
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article1" inFeedID:@"test_feed1" withOrder:v4];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article2" inFeedID:@"test_feed1" withOrder:v4 - 1];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed1_article3" inFeedID:@"test_feed1" withOrder:v4 - 2];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article1" properties:0];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article2" properties:0];
  [(FCCKTestContentDatabase *)self insertTestArticleWithID:@"Atest_feed2_article3" properties:0];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article1" inFeedID:@"test_feed2" withOrder:v4 - 1];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article2" inFeedID:@"test_feed2" withOrder:v4 - 2];
  [(FCCKTestContentDatabase *)self insertArticleID:@"Atest_feed2_article3" inFeedID:@"test_feed2" withOrder:v4 - 3];
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-21600.0];
  v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-43200.0];
  v41[0] = v7;
  v40[0] = @"publishDate";
  v40[1] = @"publishDateMillis";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "fc_millisecondTimeIntervalSince1970")}];
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

  v35[0] = v7;
  v34[0] = @"publishDate";
  v34[1] = @"publishDateMillis";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v7, "fc_millisecondTimeIntervalSince1970")}];
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
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v2 fc_millisecondTimeIntervalSince1970];

  v4 = @"publishDate";
  v5 = 1;
  v6 = 0x1E695D000uLL;
  do
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Atest_feed1_article%lu", v5];
    v28[0] = v4;
    v8 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:v3];
    v29[0] = v8;
    v28[1] = @"publishDateMillis";
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
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
    [(FCCKTestContentDatabase *)self insertArticleID:v7 inFeedID:@"test_feed1" withOrder:v3--];

    v14 = 0x1E696A000uLL;
    ++v5;
  }

  while (v5 != 51);
  v15 = v3 + 25;
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

- (void)deleteFeedID:(id)a3
{
  v4 = a3;
  v5 = [(FCCKTestContentDatabase *)self records];
  v7 = FCSortedFeedItemRecordsForFeedID(v5, v4);

  v6 = [(FCCKTestContentDatabase *)self records];
  [v6 removeObjectsInArray:v7];
}

- (void)simulateDroppedFeedForFeedID:(id)a3
{
  v4 = a3;
  v5 = [(FCCKTestContentDatabase *)self droppedFeeds];
  [v5 addObject:v4];
}

- (id)addArticlesToTopOfFeed:(id)a3 count:(unint64_t)a4
{
  v6 = a3;
  for (i = [MEMORY[0x1E695DF70] array];
  {
    v8 = [(FCCKTestContentDatabase *)self insertTestArticle];
    [(FCCKTestContentDatabase *)self insertArticleID:v8 atTopOfFeedID:v6];
    [i insertObject:v8 atIndex:0];
  }

  return i;
}

- (unint64_t)orderForArticleID:(id)a3 feedID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FCCKTestContentDatabase *)self records];
  v9 = FCLookupFeedItemRecordByFeedAndArticle(v8, v6, v7);

  v10 = [v9 objectForKeyedSubscript:@"order"];
  v11 = [v10 unsignedLongLongValue];

  return v11;
}

- (id)records:(id)a3 withDesiredKeys:(id)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = [v5 setWithArray:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__FCCKTestContentDatabase_records_withDesiredKeys___block_invoke;
  v11[3] = &unk_1E7C3B338;
  v12 = v7;
  v8 = v7;
  v9 = [v6 fc_arrayByTransformingWithBlock:v11];

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