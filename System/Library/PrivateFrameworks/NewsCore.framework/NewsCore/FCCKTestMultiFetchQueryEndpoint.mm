@interface FCCKTestMultiFetchQueryEndpoint
- (id)_collectRecordIDsFromRecords:(id)records linkKeysByRecordType:(id)type;
- (id)_collectRecordsWithRecords:(id)records recordIDs:(id)ds linkKeysByRecordType:(id)type visitedRecordIDs:(id)iDs missingRecordIDs:(id)recordIDs;
- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds;
@end

@implementation FCCKTestMultiFetchQueryEndpoint

- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds
{
  v119 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  recordsCopy = records;
  feedsCopy = feeds;
  query = [operationCopy query];
  objc_opt_class();
  v78 = query;
  predicate = [query predicate];
  if (predicate)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = predicate;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v80 = recordsCopy;
  v77 = v13;
  if (v13 && [v13 compoundPredicateType] == 1)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected feed query predicate type"];
    *buf = 136315906;
    v112 = "[FCCKTestMultiFetchQueryEndpoint handleQueryOperation:withRecords:droppedFeeds:]";
    v113 = 2080;
    v114 = "FCCKTestContentDatabase.m";
    v115 = 1024;
    v116 = 1287;
    v117 = 2114;
    v118 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v13)
    {
      goto LABEL_10;
    }
  }

  else if (v13)
  {
LABEL_10:
    selfCopy = self;
    v75 = operationCopy;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    subpredicates = [v13 subpredicates];
    v15 = [subpredicates countByEnumeratingWithState:&v103 objects:v110 count:16];
    if (!v15)
    {
      v82 = 0;
      obj = 0;
      v17 = 0;
      goto LABEL_33;
    }

    v16 = v15;
    v82 = 0;
    obj = 0;
    v17 = 0;
    v18 = *v104;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v104 != v18)
        {
          objc_enumerationMutation(subpredicates);
        }

        v20 = *(*(&v103 + 1) + 8 * v19);
        objc_opt_class();
        if (!v20 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_22;
        }

        v21 = v20;
        if ([v21 predicateOperatorType] != 99)
        {
          goto LABEL_22;
        }

        rightExpression = [v21 rightExpression];
        if ([rightExpression expressionType] == 3)
        {
          keyPath = [rightExpression keyPath];
          v24 = [keyPath isEqualToString:@"recordIDs"];

          if (v24)
          {
            leftExpression = [v21 leftExpression];
            constantValue = [leftExpression constantValue];
            v27 = v17;
            v17 = constantValue;
LABEL_28:

            goto LABEL_29;
          }

          keyPath2 = [rightExpression keyPath];
          v29 = [keyPath2 isEqualToString:@"recordTypes"];

          if (v29)
          {
            leftExpression = [v21 leftExpression];
            constantValue2 = [leftExpression constantValue];
            v27 = obj;
            obj = constantValue2;
            goto LABEL_28;
          }

          keyPath3 = [rightExpression keyPath];
          v32 = [keyPath3 isEqualToString:@"fetchFields"];

          if (v32)
          {
            leftExpression = [v21 leftExpression];
            constantValue3 = [leftExpression constantValue];
            v27 = v82;
            v82 = constantValue3;
            goto LABEL_28;
          }
        }

LABEL_29:

LABEL_22:
        ++v19;
      }

      while (v16 != v19);
      v34 = [subpredicates countByEnumeratingWithState:&v103 objects:v110 count:16];
      v16 = v34;
      if (!v34)
      {
LABEL_33:

        self = selfCopy;
        operationCopy = v75;
        recordsCopy = v80;
        v35 = v17;
        v36 = v82;
        v37 = obj;
        goto LABEL_36;
      }
    }
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
LABEL_36:
  v39 = MEMORY[0x1E695DF20];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke;
  v100[3] = &unk_1E7C37D00;
  v40 = v37;
  v101 = v40;
  v84 = v36;
  v102 = v84;
  v41 = [v39 fc_dictionary:v100];
  v42 = [MEMORY[0x1E695DFA8] set];
  v43 = [MEMORY[0x1E695DFA8] set];
  v81 = v42;
  v83 = v41;
  v44 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordsWithRecords:recordsCopy recordIDs:v35 linkKeysByRecordType:v41 visitedRecordIDs:v43 missingRecordIDs:v42];

  desiredKeys = [operationCopy desiredKeys];

  if (desiredKeys)
  {
    v74 = v40;
    v76 = v35;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v72 = v44;
    obja = v44;
    v46 = [obja countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v46)
    {
      v47 = v46;
      v87 = *v97;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v97 != v87)
          {
            objc_enumerationMutation(obja);
          }

          v49 = *(*(&v96 + 1) + 8 * i);
          v50 = MEMORY[0x1E695DFD8];
          v51 = operationCopy;
          desiredKeys2 = [operationCopy desiredKeys];
          v53 = [v50 setWithArray:desiredKeys2];

          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          changedKeys = [v49 changedKeys];
          v55 = [changedKeys countByEnumeratingWithState:&v92 objects:v108 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v93;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v93 != v57)
                {
                  objc_enumerationMutation(changedKeys);
                }

                v59 = *(*(&v92 + 1) + 8 * j);
                if (([v53 containsObject:v59] & 1) == 0)
                {
                  [v49 setObject:0 forKeyedSubscript:v59];
                }
              }

              v56 = [changedKeys countByEnumeratingWithState:&v92 objects:v108 count:16];
            }

            while (v56);
          }

          operationCopy = v51;
        }

        v47 = [obja countByEnumeratingWithState:&v96 objects:v109 count:16];
      }

      while (v47);
    }

    recordsCopy = v80;
    v40 = v74;
    v35 = v76;
    v44 = v72;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v60 = v44;
  v61 = [v60 countByEnumeratingWithState:&v88 objects:v107 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v89;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v89 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v88 + 1) + 8 * k);
        recordFetchedBlock = [operationCopy recordFetchedBlock];
        recordFetchedBlock[2](recordFetchedBlock, v65);
      }

      v62 = [v60 countByEnumeratingWithState:&v88 objects:v107 count:16];
    }

    while (v62);
  }

  v67 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Results"];
  allObjects = [v81 allObjects];
  [v67 setObject:allObjects forKeyedSubscript:@"notFound"];

  recordFetchedBlock2 = [operationCopy recordFetchedBlock];
  (recordFetchedBlock2)[2](recordFetchedBlock2, v67);

  queryCompletionBlock = [operationCopy queryCompletionBlock];
  queryCompletionBlock[2](queryCompletionBlock, 0, 0);

  v71 = *MEMORY[0x1E69E9840];
}

void __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2;
  v7[3] = &unk_1E7C43470;
  v8 = v3;
  v6 = v3;
  [v5 fc_enumerateSideBySideWithArray:v4 reverse:0 block:v7];
}

void __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v5 componentsSeparatedByString:{@", "}];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_collectRecordsWithRecords:(id)records recordIDs:(id)ds linkKeysByRecordType:(id)type visitedRecordIDs:(id)iDs missingRecordIDs:(id)recordIDs
{
  v38 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dsCopy = ds;
  typeCopy = type;
  iDsCopy = iDs;
  recordIDsCopy = recordIDs;
  if (!recordsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "records"];
    *buf = 136315906;
    v31 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v32 = 2080;
    v33 = "FCCKTestContentDatabase.m";
    v34 = 1024;
    v35 = 1374;
    v36 = 2114;
    v37 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordIDs"];
    *buf = 136315906;
    v31 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v32 = 2080;
    v33 = "FCCKTestContentDatabase.m";
    v34 = 1024;
    v35 = 1375;
    v36 = 2114;
    v37 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!typeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "linkKeysByRecordType"];
    *buf = 136315906;
    v31 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v32 = 2080;
    v33 = "FCCKTestContentDatabase.m";
    v34 = 1024;
    v35 = 1376;
    v36 = 2114;
    v37 = v29;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [recordIDsCopy addObjectsFromArray:dsCopy];
  v17 = FCLookupRecordByNames(recordsCopy, dsCopy);
  v18 = [v17 fc_arrayByTransformingWithBlock:&__block_literal_global_119];
  [recordIDsCopy fc_removeObjectsFromArray:v18];

  v19 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordIDsFromRecords:v17 linkKeysByRecordType:typeCopy];
  allObjects = [iDsCopy allObjects];
  v21 = [v19 fc_arrayByRemovingObjectsInArray:allObjects];

  if ([v21 count])
  {
    [iDsCopy addObjectsFromArray:v21];
    v22 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordsWithRecords:recordsCopy recordIDs:v21 linkKeysByRecordType:typeCopy visitedRecordIDs:iDsCopy missingRecordIDs:recordIDsCopy];
    v23 = [v17 arrayByAddingObjectsFromArray:v22];
  }

  else
  {
    v23 = v17;
  }

  v24 = v23;

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

id __127__FCCKTestMultiFetchQueryEndpoint__collectRecordsWithRecords_recordIDs_linkKeysByRecordType_visitedRecordIDs_missingRecordIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordID];
  v3 = [v2 recordName];

  return v3;
}

- (id)_collectRecordIDsFromRecords:(id)records linkKeysByRecordType:(id)type
{
  v26 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  typeCopy = type;
  if (!recordsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "records"];
    *buf = 136315906;
    v19 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]";
    v20 = 2080;
    v21 = "FCCKTestContentDatabase.m";
    v22 = 1024;
    v23 = 1408;
    v24 = 2114;
    v25 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (typeCopy)
    {
      goto LABEL_6;
    }
  }

  else if (typeCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "linkKeysByRecordType"];
    *buf = 136315906;
    v19 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]";
    v20 = 2080;
    v21 = "FCCKTestContentDatabase.m";
    v22 = 1024;
    v23 = 1409;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = MEMORY[0x1E695DEC8];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke;
  v15[3] = &unk_1E7C3B110;
  v16 = recordsCopy;
  v17 = typeCopy;
  v8 = typeCopy;
  v9 = recordsCopy;
  v10 = [v7 fc_array:v15];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = a1;
  obj = *(a1 + 32);
  v27 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v27)
  {
    v3 = 0x1E696A000uLL;
    v4 = 0x1E695B000uLL;
    v25 = *v35;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        v6 = *(*(&v34 + 1) + 8 * v5);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v7 = *(v26 + 40);
        v8 = [v6 recordType];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v9 countByEnumeratingWithState:&v30 objects:v46 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [v6 valueForKey:*(*(&v30 + 1) + 8 * i)];
              v15 = *(v3 + 3776);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v29 addObject:v14];
                goto LABEL_24;
              }

              v16 = *(v4 + 2736);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v14 recordID];
                v17 = v3;
                v19 = v18 = v4;
                v20 = [v19 recordName];
                [v29 addObject:v20];

                v4 = v18;
                v3 = v17;
                goto LABEL_24;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v14 fc_containsObjectPassingTest:&__block_literal_global_257])
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_24;
                  }

                  v21 = [objc_alloc(*(v3 + 3776)) initWithFormat:@"not yet supported"];
                  *buf = 136315906;
                  v39 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]_block_invoke";
                  v40 = 2080;
                  v41 = "FCCKTestContentDatabase.m";
                  v42 = 1024;
                  v43 = 1438;
                  v44 = 2114;
                  v45 = v21;
                  v22 = MEMORY[0x1E69E9C10];
                  goto LABEL_22;
                }

                [v29 addObjectsFromArray:v14];
              }

              else if (v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v21 = [objc_alloc(*(v3 + 3776)) initWithFormat:@"not yet supported"];
                *buf = 136315906;
                v39 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]_block_invoke";
                v40 = 2080;
                v41 = "FCCKTestContentDatabase.m";
                v42 = 1024;
                v43 = 1443;
                v44 = 2114;
                v45 = v21;
                v22 = MEMORY[0x1E69E9C10];
LABEL_22:
                _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }

LABEL_24:
            }

            v11 = [v9 countByEnumeratingWithState:&v30 objects:v46 count:16];
          }

          while (v11);
        }

        v5 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v27);
  }

  v23 = *MEMORY[0x1E69E9840];
}

BOOL __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end