@interface DRSEnableDataGatheringQuery
+ (id)_ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7;
+ (id)_ON_MOC_QUEUE_enableDataGatheringQueryForID:(id)a3 context:(id)a4;
+ (id)cachedQueryResponseForQuery:(id)a3 inContext:(id)a4 errorOut:(id *)a5;
+ (id)enableDataGatheringQueriesForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7;
+ (id)enableDataGatheringQueryForID:(id)a3 context:(id)a4;
+ (id)leastRecentDateFirstSortDescriptor;
+ (id)mostRecentDateFirstSortDescriptor;
- (BOOL)doesMatchCachedQuery:(id)a3;
- (BOOL)isEqualToDataGatheringQuery:(id)a3;
- (BOOL)submitQuery;
- (DRSDecisionServerBatchRequest)pbBatchInstance;
- (DRSEnableDataGatheringQuery)initWithXPCDict:(id)a3;
- (NSString)debugDescription;
- (NSString)responseString;
- (id)_initWithMO_ON_MOC_QUEUE:(id)a3;
- (id)jsonCompatibleDictionaryRepresentation;
- (id)protobufRepresentation;
- (void)queryFinishedWithDecision:(id)a3 error:(id)a4;
- (void)updateContextWithDataGatheringQuery_ON_MOC_QUEUE:(id)a3;
@end

@implementation DRSEnableDataGatheringQuery

- (id)protobufRepresentation
{
  if ([(DRSEnableDataGatheringQuery *)self response]== 2)
  {
    v3 = objc_alloc_init(DRSProtoEnableDataGatheringRequest);
    v4 = objc_alloc_init(DRSProtoRequestDescription);
    v5 = [(DRSEnableDataGatheringQuery *)self teamID];
    [(DRSProtoRequestDescription *)v4 setTeamId:v5];

    v6 = [(DRSEnableDataGatheringQuery *)self issueCategory];
    [(DRSProtoRequestDescription *)v4 setIssueCategory:v6];

    v7 = [(DRSEnableDataGatheringQuery *)self contextDictionaryData];
    [(DRSProtoRequestDescription *)v4 setContextDictionaryData:v7];

    v8 = [(DRSEnableDataGatheringQuery *)self queryDate];
    [v8 timeIntervalSince1970];
    [(DRSProtoRequestDescription *)v4 setRequestTime:v9];

    [(DRSProtoEnableDataGatheringRequest *)v3 setRequestDescription:v4];
    v10 = [(DRSEnableDataGatheringQuery *)self logType];
    [(DRSProtoEnableDataGatheringRequest *)v3 setLogType:v10];

    [(DRSProtoEnableDataGatheringRequest *)v3 setIsContinue:[(DRSEnableDataGatheringQuery *)self isContinue]];
  }

  else
  {
    v11 = DPLogHandle_CKCodeServerError();
    if (os_signpost_enabled(v11))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "BadEnableDataGatheringQuery", "Tried to create a protobuf for a query that was not in RETRY state", v13, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (DRSDecisionServerBatchRequest)pbBatchInstance
{
  v2 = objc_alloc_init(DRSProtoEnableDataGatheringRequestBatch);

  return v2;
}

- (NSString)debugDescription
{
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v19 = [(DRSEnableDataGatheringQuery *)self build];
  v21 = [(DRSEnableDataGatheringQuery *)self queryID];
  v18 = [v21 UUIDString];
  v3 = [(DRSEnableDataGatheringQuery *)self responseString];
  v4 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"-";
  }

  v7 = [(DRSEnableDataGatheringQuery *)self attemptCount];
  v8 = [(DRSEnableDataGatheringQuery *)self teamID];
  v9 = [(DRSEnableDataGatheringQuery *)self issueCategory];
  v10 = [(DRSEnableDataGatheringQuery *)self logType];
  if ([(DRSEnableDataGatheringQuery *)self isContinue])
  {
    v11 = @"Continue";
  }

  else
  {
    v11 = @"Initial";
  }

  v12 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
  v13 = [v12 debugDescription];
  v14 = v13;
  v15 = @"-";
  if (v13)
  {
    v15 = v13;
  }

  v16 = [v20 initWithFormat:@"%@ %@ %@ %@ %u %@/%@ %@ %@ %@", v19, v18, v3, v6, v7, v8, v9, v10, v11, v15];

  return v16;
}

- (NSString)responseString
{
  v2 = [(DRSEnableDataGatheringQuery *)self response];
  if (v2 > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return &off_27899F9B8[v2]->isa;
  }
}

- (id)_initWithMO_ON_MOC_QUEUE:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = DRSEnableDataGatheringQuery;
  v5 = [(DRSEnableDataGatheringQuery *)&v30 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 contextDictionaryData];
  contextDictionaryData = v5->_contextDictionaryData;
  v5->_contextDictionaryData = v6;

  if (!v5->_contextDictionaryData)
  {
    goto LABEL_4;
  }

  v8 = [(DRSEnableDataGatheringQuery *)v5 contextDictionaryData];
  v9 = DRSDictionaryForData(v8);
  contextDictionary = v5->_contextDictionary;
  v5->_contextDictionary = v9;

  v11 = [(DRSEnableDataGatheringQuery *)v5 contextDictionary];

  if (v11)
  {
LABEL_4:
    v12 = [v4 teamID];
    teamID = v5->_teamID;
    v5->_teamID = v12;

    v14 = [v4 issueCategory];
    issueCategory = v5->_issueCategory;
    v5->_issueCategory = v14;

    v16 = [v4 build];
    build = v5->_build;
    v5->_build = v16;

    v18 = [v4 queryDate];
    queryDate = v5->_queryDate;
    v5->_queryDate = v18;

    v20 = [v4 logType];
    logType = v5->_logType;
    v5->_logType = v20;

    v5->_response = [v4 response];
    v22 = [v4 queryID];
    queryID = v5->_queryID;
    v5->_queryID = v22;

    v5->_attemptCount = [v4 attemptCount];
    v24 = [v4 rejectionReason];
    rejectionReason = v5->_rejectionReason;
    v5->_rejectionReason = v24;

    v5->_isContinue = [v4 isContinue];
LABEL_5:
    v26 = v5;
    goto LABEL_6;
  }

  v28 = DPLogHandle_CoreDataError();
  if (os_signpost_enabled(v28))
  {
    *v29 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedEnableDataGatheringQueryMO", "Could not convert context dict data into dict", v29, 2u);
  }

  v26 = 0;
LABEL_6:

  return v26;
}

- (DRSEnableDataGatheringQuery)initWithXPCDict:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "TeamID");
  v6 = xpc_dictionary_get_string(v4, "Category");
  v7 = xpc_dictionary_get_string(v4, "LogType");
  length = 0;
  data = xpc_dictionary_get_data(v4, "ContextDict", &length);

  if (data)
  {
    v9 = length == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13 = 0;
    v10 = 0;
    v12 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:data length:?];
    v11 = DRSDictionaryForData(v10);
    v12 = v11;
    v13 = v11 == 0;
    if (v11)
    {
      v14 = v11;
    }
  }

  if (string)
  {
    v15 = v6 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || v7 == 0;
  if (v16 || !v12 && length)
  {
    v17 = DPLogHandle_ServiceXPCError();
    if (os_signpost_enabled(v17))
    {
      if (string)
      {
        v18 = string;
      }

      else
      {
        v18 = "MISSING";
      }

      if (!v6)
      {
        v6 = "MISSING";
      }

      if (v7)
      {
        v19 = v7;
      }

      else
      {
        v19 = "MISSING";
      }

      if (v13)
      {
        v20 = @"MALFORMED";
      }

      else
      {
        v38 = [v12 debugDescription];
        v7 = v38;
        v20 = @"-";
        if (v38)
        {
          v20 = v38;
        }
      }

      *buf = 136446978;
      v44 = v18;
      v45 = 2082;
      v46 = v6;
      v47 = 2082;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedEnableDataGatheringRequest", "Received invalid log gathering query from %{public, name=teamID}s/%{public, name=issueCategory}s/%{public, name=logType}s %{public, name=contextDictionaryDescription}@", buf, 0x2Au);
      if (!v13)
      {
      }
    }

    v37 = 0;
  }

  else
  {
    v41.receiver = self;
    v41.super_class = DRSEnableDataGatheringQuery;
    v21 = [(DRSEnableDataGatheringQuery *)&v41 init];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_contextDictionary, v12);
      objc_storeStrong(&v22->_contextDictionaryData, v10);
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      teamID = v22->_teamID;
      v22->_teamID = v23;

      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
      issueCategory = v22->_issueCategory;
      v22->_issueCategory = v25;

      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      logType = v22->_logType;
      v22->_logType = v27;

      v29 = [MEMORY[0x277CBEAA8] date];
      queryDate = v22->_queryDate;
      v22->_queryDate = v29;

      v31 = [MEMORY[0x277CCAD78] UUID];
      queryID = v22->_queryID;
      v22->_queryID = v31;

      v22->_response = 2;
      v22->_attemptCount = 0;
      v33 = +[DRSSystemProfile sharedInstance];
      v34 = [v33 build];
      build = v22->_build;
      v22->_build = v34;

      rejectionReason = v22->_rejectionReason;
      v22->_rejectionReason = 0;

      v22->_isContinue = 0;
    }

    self = v22;
    v37 = self;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

+ (id)_ON_MOC_QUEUE_enableDataGatheringQueryForID:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAC30];
  v8 = a4;
  v9 = [v7 predicateWithFormat:@"queryID == %@", v6];
  v17 = 0;
  v10 = [a1 _ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:v9 context:v8 sortDescriptors:0 fetchLimit:0 errorOut:&v17];

  v11 = v17;
  if (v10 && [v10 count])
  {
    if ([v10 count] == 1)
    {
      v12 = [v10 firstObject];
      goto LABEL_9;
    }

    v13 = DPLogHandle_CoreDataError();
    if (os_signpost_enabled(v13))
    {
      v14 = [v10 count];
      *buf = 138543618;
      v19 = v6;
      v20 = 2048;
      v21 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchUnexpectedMatches", "Query for UUID %{public}@ found %lu objects", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7
{
  v12 = a4;
  v13 = MEMORY[0x277CBE428];
  v14 = a5;
  v15 = a3;
  v16 = [a1 entityName];
  v17 = [v13 fetchRequestWithEntityName:v16];

  [v17 setPredicate:v15];
  [v17 setSortDescriptors:v14];

  if (a6)
  {
    [v17 setFetchLimit:a6];
  }

  v24 = 0;
  v18 = [v12 executeFetchRequest:v17 error:&v24];
  v19 = v24;
  v20 = v19;
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    *a7 = v20;
  }

  else
  {
    v22 = v18;
  }

  return v22;
}

+ (id)mostRecentDateFirstSortDescriptor
{
  if (mostRecentDateFirstSortDescriptor_onceToken_0 != -1)
  {
    +[DRSEnableDataGatheringQuery mostRecentDateFirstSortDescriptor];
  }

  v3 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0;

  return v3;
}

void __64__DRSEnableDataGatheringQuery_mostRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"queryDate" ascending:0];
  v1 = mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0;
  mostRecentDateFirstSortDescriptor_mostRecentDateSortDescriptor_0 = v0;
}

+ (id)leastRecentDateFirstSortDescriptor
{
  if (leastRecentDateFirstSortDescriptor_onceToken_0 != -1)
  {
    +[DRSEnableDataGatheringQuery leastRecentDateFirstSortDescriptor];
  }

  v3 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0;

  return v3;
}

void __65__DRSEnableDataGatheringQuery_leastRecentDateFirstSortDescriptor__block_invoke()
{
  v0 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"queryDate" ascending:1];
  v1 = leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0;
  leastRecentDateFirstSortDescriptor_leastRecentDateSortDescriptor_0 = v0;
}

+ (id)enableDataGatheringQueriesForFilterPredicate:(id)a3 context:(id)a4 sortDescriptors:(id)a5 fetchLimit:(unint64_t)a6 errorOut:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__5;
  v38 = __Block_byref_object_dispose__5;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__5;
  v32 = __Block_byref_object_dispose__5;
  v33 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __120__DRSEnableDataGatheringQuery_enableDataGatheringQueriesForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v20[3] = &unk_27899F998;
  v26 = a1;
  v15 = v12;
  v21 = v15;
  v16 = v13;
  v22 = v16;
  v17 = v14;
  v23 = v17;
  v24 = &v28;
  v27 = a6;
  v25 = &v34;
  [v16 performBlockAndWait:v20];
  if (a7)
  {
    *a7 = v29[5];
  }

  v18 = v35[5];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);

  return v18;
}

void __120__DRSEnableDataGatheringQuery_enableDataGatheringQueriesForFilterPredicate_context_sortDescriptors_fetchLimit_errorOut___block_invoke(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[10];
  v32 = 0;
  v7 = [v5 _ON_MOC_QUEUE_enableDataGatheringQueriesForFilterPredicate:v2 context:v3 sortDescriptors:v4 fetchLimit:v6 errorOut:&v32];
  v8 = v32;
  v9 = v32;
  objc_storeStrong((*(a1[7] + 8) + 40), v8);
  if (!*(*(a1[7] + 8) + 40))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [DRSEnableDataGatheringQuery alloc];
          v17 = [(DRSEnableDataGatheringQuery *)v16 _initWithMO_ON_MOC_QUEUE:v15, v28];
          if (!v17)
          {
            v19 = MEMORY[0x277CCA9B8];
            v33 = *MEMORY[0x277CCA450];
            v34 = @"Failed to create query for queryMO";
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v21 = [v19 errorWithDomain:@"DiagnosticPipelinePersistenceError" code:0 userInfo:v20];

            v22 = *(a1[7] + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;
            v24 = v21;

            v25 = *(a1[8] + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = 0;

            goto LABEL_12;
          }

          v18 = v17;
          [*(*(a1[8] + 8) + 40) addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)cachedQueryResponseForQuery:(id)a3 inContext:(id)a4 errorOut:(id *)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CCAC30];
  v10 = [v7 teamID];
  v11 = [v7 issueCategory];
  v12 = [v7 logType];
  v13 = [v7 build];
  v14 = [v9 predicateWithFormat:@"teamID == %@ AND issueCategory == %@ AND logType == %@ AND build == %@", v10, v11, v12, v13];

  v15 = +[DRSEnableDataGatheringQuery mostRecentDateFirstSortDescriptor];
  v33[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

  v31 = 0;
  v17 = [a1 enableDataGatheringQueriesForFilterPredicate:v14 context:v8 sortDescriptors:v16 fetchLimit:1 errorOut:&v31];
  v18 = v31;
  if (v17 && [v17 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v26 = v8;
      v21 = *v28;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          if ([v7 doesMatchCachedQuery:v23])
          {
            v20 = v23;
            goto LABEL_14;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v8 = v26;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)enableDataGatheringQueryForID:(id)a3 context:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAC30];
  v8 = a4;
  v9 = [v7 predicateWithFormat:@"queryID == %@", v6];
  v24 = 0;
  v10 = [a1 enableDataGatheringQueriesForFilterPredicate:v9 context:v8 sortDescriptors:0 fetchLimit:1 errorOut:&v24];

  v11 = v24;
  if (v10 && [v10 count])
  {
    if ([v10 count] == 1)
    {
      v12 = [v10 firstObject];
      goto LABEL_16;
    }

    v13 = DPLogHandle_EnableDataGatheringQueryError();
    if (os_signpost_enabled(v13))
    {
      v21 = [v10 count];
      *buf = 138543618;
      v26 = v6;
      v27 = 2048;
      v28 = v21;
      v17 = "QueryMangedObjectFetchUnexpectedMatches";
      v18 = "Query for UUID %{public}@ found %lu objects";
      v19 = v13;
      v20 = 22;
      goto LABEL_14;
    }
  }

  else
  {
    if (v11)
    {
      v13 = DPLogHandle_CoreDataError();
      if (os_signpost_enabled(v13))
      {
        v14 = [v11 localizedDescription];
        v15 = v14;
        v16 = @"Unknown";
        if (v14)
        {
          v16 = v14;
        }

        *buf = 138543362;
        v26 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchFailure", "Failed to fetch a query object based on MO ID: %{public}@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v13 = DPLogHandle_EnableDataGatheringQuery();
    if (os_signpost_enabled(v13))
    {
      *buf = 138543362;
      v26 = v6;
      v17 = "QueryMangedObjectFetchMiss";
      v18 = "No cached query with MO ID %{public}@";
      v19 = v13;
      v20 = 12;
LABEL_14:
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v17, v18, buf, v20);
    }
  }

LABEL_15:

  v12 = 0;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)updateContextWithDataGatheringQuery_ON_MOC_QUEUE:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(DRSEnableDataGatheringQuery *)self queryID];
  v7 = [v5 _ON_MOC_QUEUE_enableDataGatheringQueryForID:v6 context:v4];

  if (!v7)
  {
    v8 = DPLogHandle_EnableDataGatheringQuery();
    if (os_signpost_enabled(v8))
    {
      v9 = [(DRSEnableDataGatheringQuery *)self queryID];
      v19 = 138543362;
      v20 = v9;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "QueryMangedObjectFetchMiss", "No cached query with MO ID %{public}@", &v19, 0xCu);
    }

    v7 = [[DRSEnableDataGatheringQueryMO alloc] initWithContext:v4];
    v10 = [(DRSEnableDataGatheringQuery *)self teamID];
    [(DRSEnableDataGatheringQueryMO *)v7 setTeamID:v10];

    v11 = [(DRSEnableDataGatheringQuery *)self issueCategory];
    [(DRSEnableDataGatheringQueryMO *)v7 setIssueCategory:v11];

    v12 = [(DRSEnableDataGatheringQuery *)self logType];
    [(DRSEnableDataGatheringQueryMO *)v7 setLogType:v12];

    v13 = [(DRSEnableDataGatheringQuery *)self contextDictionaryData];
    [(DRSEnableDataGatheringQueryMO *)v7 setContextDictionaryData:v13];

    v14 = [(DRSEnableDataGatheringQuery *)self build];
    [(DRSEnableDataGatheringQueryMO *)v7 setBuild:v14];

    v15 = [(DRSEnableDataGatheringQuery *)self queryDate];
    [(DRSEnableDataGatheringQueryMO *)v7 setQueryDate:v15];

    v16 = [(DRSEnableDataGatheringQuery *)self queryID];
    [(DRSEnableDataGatheringQueryMO *)v7 setQueryID:v16];
  }

  [(DRSEnableDataGatheringQueryMO *)v7 setResponse:[(DRSEnableDataGatheringQuery *)self response]];
  [(DRSEnableDataGatheringQueryMO *)v7 setAttemptCount:[(DRSEnableDataGatheringQuery *)self attemptCount]];
  v17 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  [(DRSEnableDataGatheringQueryMO *)v7 setRejectionReason:v17];

  [(DRSEnableDataGatheringQueryMO *)v7 setIsContinue:[(DRSEnableDataGatheringQuery *)self isContinue]];
  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqualToDataGatheringQuery:(id)a3
{
  v4 = a3;
  v5 = [(DRSEnableDataGatheringQuery *)self teamID];
  v6 = [v4 teamID];
  v7 = [v5 isEqualToString:v6];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [(DRSEnableDataGatheringQuery *)self issueCategory];
  v9 = [v4 issueCategory];
  v10 = [v8 isEqualToString:v9];

  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = [(DRSEnableDataGatheringQuery *)self logType];
  v12 = [v4 logType];
  v13 = [v11 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = [(DRSEnableDataGatheringQuery *)self build];
  v15 = [v4 build];
  v16 = [v14 isEqualToString:v15];

  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = [(DRSEnableDataGatheringQuery *)self queryDate];
  v18 = [v4 queryDate];
  v19 = [v17 isEqualToDate:v18];

  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = [(DRSEnableDataGatheringQuery *)self queryID];
  v21 = [v4 queryID];
  v22 = [v20 isEqual:v21];

  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
  if (v23 && (v24 = v23, [v4 contextDictionary], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v25))
  {
    v26 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    v27 = [v4 contextDictionary];
    v28 = [v26 isEqualToDictionary:v27];

    if ((v28 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v29 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    if (v29)
    {
      goto LABEL_18;
    }

    v30 = [v4 contextDictionary];

    if (v30)
    {
      goto LABEL_19;
    }
  }

  v31 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  if (v31)
  {
    v32 = v31;
    v33 = [v4 rejectionReason];

    if (v33)
    {
      v34 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
      v35 = [v4 rejectionReason];
      v36 = [v34 isEqualToString:v35];

      if ((v36 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  v29 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
  if (v29)
  {
LABEL_18:

    goto LABEL_19;
  }

  v39 = [v4 rejectionReason];

  if (v39)
  {
    goto LABEL_19;
  }

LABEL_22:
  v40 = [(DRSEnableDataGatheringQuery *)self attemptCount];
  if (v40 == [v4 attemptCount])
  {
    v41 = [(DRSEnableDataGatheringQuery *)self isContinue];
    if (v41 == [v4 isContinue])
    {
      v42 = [(DRSEnableDataGatheringQuery *)self response];
      v37 = v42 == [v4 response];
      goto LABEL_20;
    }
  }

LABEL_19:
  v37 = 0;
LABEL_20:

  return v37;
}

- (BOOL)doesMatchCachedQuery:(id)a3
{
  v4 = a3;
  v5 = [(DRSEnableDataGatheringQuery *)self teamID];
  v6 = [v4 teamID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(DRSEnableDataGatheringQuery *)self issueCategory];
    v9 = [v4 issueCategory];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [(DRSEnableDataGatheringQuery *)self logType];
      v12 = [v4 logType];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = [(DRSEnableDataGatheringQuery *)self build];
        v15 = [v4 build];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
          if (v17 && (v18 = v17, [v4 contextDictionary], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
          {
            v20 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
            v21 = [v4 contextDictionary];
            v22 = [v20 isEqualToDictionary:v21];

            if (v22)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v23 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
            if (v23)
            {
            }

            else
            {
              v24 = [v4 contextDictionary];

              if (!v24)
              {
LABEL_14:
                v25 = 1;
                goto LABEL_13;
              }
            }
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_13:

  return v25;
}

- (BOOL)submitQuery
{
  v30 = *MEMORY[0x277D85DE8];
  ++self->_attemptCount;
  v4 = DPLogHandle_CKCodeServer();
  v5 = [(DRSEnableDataGatheringQuery *)self queryID];
  v6 = [v5 hash];

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [(DRSEnableDataGatheringQuery *)self queryID];
    v8 = [(DRSEnableDataGatheringQuery *)self teamID];
    v9 = [(DRSEnableDataGatheringQuery *)self issueCategory];
    v10 = [(DRSEnableDataGatheringQuery *)self logType];
    v11 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    if (v11)
    {
      v2 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
      v12 = [v2 debugDescription];
    }

    else
    {
      v12 = @"-";
    }

    v20 = 138544386;
    v21 = v7;
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v12;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "EnableDataGatheringQuery", "Began request to decision server to enable data gathering for query ID %{public}@, %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=logType}@ %{public, name=contextDictionary}@", &v20, 0x34u);
    if (v11)
    {
    }
  }

  v13 = [(DRSEnableDataGatheringQuery *)self response];
  if (v13 != 2)
  {
    v14 = DPLogHandle_CKCodeServer();
    v15 = [(DRSEnableDataGatheringQuery *)self queryID];
    v16 = [v15 hash];

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v17 = [(DRSEnableDataGatheringQuery *)self responseString];
      v20 = 138543362;
      v21 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_END, v16, "EnableDataGatheringQuery", "FAILED: Query in unexpected state: %{public}@", &v20, 0xCu);
    }
  }

  result = v13 == 2;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)queryFinishedWithDecision:(id)a3 error:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localizedDescription];
    v10 = v9;
    v11 = @"Unknown";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    goto LABEL_5;
  }

  v19 = [v6 errorString];

  if (v19)
  {
    v12 = [v6 errorString];
    if (v12)
    {
LABEL_5:
      v13 = [(DRSEnableDataGatheringQuery *)self attemptCount];
      rejectionReason = DPLogHandle_CKCodeServer();
      v15 = [(DRSEnableDataGatheringQuery *)self queryID];
      v16 = [v15 hash];

      v17 = v16 - 1;
      if (v13 < 3)
      {
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(rejectionReason))
        {
          v29 = 138543362;
          v30 = v12;
          _os_signpost_emit_with_name_impl(&dword_232906000, rejectionReason, OS_SIGNPOST_INTERVAL_END, v16, "EnableDataGatheringQuery", "Attempt failed due to error: %{public}@", &v29, 0xCu);
        }
      }

      else
      {
        if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(rejectionReason))
        {
          v29 = 138543362;
          v30 = v12;
          _os_signpost_emit_with_name_impl(&dword_232906000, rejectionReason, OS_SIGNPOST_INTERVAL_END, v16, "EnableDataGatheringQuery", "Query invalidated due to attempt count. Last error:%{public}@", &v29, 0xCu);
        }

        self->_response = 3;
        rejectionReason = self->_rejectionReason;
        self->_rejectionReason = &v12->isa;
        v12 = v12;
      }

      goto LABEL_14;
    }
  }

  v20 = [v6 acceptedNum];
  v21 = [v20 BOOLValue];

  self->_response = v21;
  v22 = self->_rejectionReason;
  self->_rejectionReason = 0;

  v12 = DPLogHandle_CKCodeServer();
  v23 = [(DRSEnableDataGatheringQuery *)self queryID];
  v24 = [v23 hash];

  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v25 = [(DRSEnableDataGatheringQuery *)self responseString];
    v26 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
    v27 = v26;
    v28 = @"-";
    if (v26)
    {
      v28 = v26;
    }

    v29 = 138543618;
    v30 = v25;
    v31 = 2114;
    v32 = v28;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_END, v24, "EnableDataGatheringQuery", "Query successful with response: %{public}@, rejection reason: %{public}@", &v29, 0x16u);
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

- (id)jsonCompatibleDictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [(DRSEnableDataGatheringQuery *)self build];
  [v5 setObject:v6 forKeyedSubscript:@"build"];

  v7 = [(DRSEnableDataGatheringQuery *)self queryDate];
  v8 = [v4 stringFromDate:v7];
  [v5 setObject:v8 forKeyedSubscript:@"date"];

  v9 = [(DRSEnableDataGatheringQuery *)self teamID];
  [v5 setObject:v9 forKeyedSubscript:@"teamID"];

  v10 = [(DRSEnableDataGatheringQuery *)self issueCategory];
  [v5 setObject:v10 forKeyedSubscript:@"issueCategory"];

  v11 = [(DRSEnableDataGatheringQuery *)self responseString];
  [v5 setObject:v11 forKeyedSubscript:@"response"];

  v12 = [(DRSEnableDataGatheringQuery *)self logType];
  [v5 setObject:v12 forKeyedSubscript:@"logType"];

  v13 = [(DRSEnableDataGatheringQuery *)self queryID];
  v14 = [v13 UUIDString];
  [v5 setObject:v14 forKeyedSubscript:@"queryID"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[DRSEnableDataGatheringQuery attemptCount](self, "attemptCount")}];
  [v5 setObject:v15 forKeyedSubscript:@"uploadAttemptCount"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSEnableDataGatheringQuery isContinue](self, "isContinue")}];
  [v5 setObject:v16 forKeyedSubscript:@"isContinue"];

  v17 = [(DRSEnableDataGatheringQuery *)self rejectionReason];

  if (v17)
  {
    v18 = [(DRSEnableDataGatheringQuery *)self rejectionReason];
    [v5 setObject:v18 forKeyedSubscript:@"rejectionReason"];
  }

  v19 = [(DRSEnableDataGatheringQuery *)self contextDictionary];

  if (v19)
  {
    v20 = MEMORY[0x277CCAAA0];
    v21 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
    LODWORD(v20) = [v20 isValidJSONObject:v21];

    if (v20)
    {
      v22 = [(DRSEnableDataGatheringQuery *)self contextDictionary];
      [v5 setObject:v22 forKeyedSubscript:@"contextDictionary"];
    }

    else
    {
      v23 = DPLogHandle_Request();
      if (os_signpost_enabled(v23))
      {
        v24 = [(DRSEnableDataGatheringQuery *)self debugDescription];
        v27 = 138543362;
        v28 = v24;
        _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SkippedContextDictionaryJSONSerialization", "Context dictionary for %{public}@ cannot be serialized in JSON", &v27, 0xCu);
      }

      [v5 setObject:@"<Could not serialize>" forKeyedSubscript:@"contextDictionary"];
    }
  }

  objc_autoreleasePoolPop(v3);
  v25 = *MEMORY[0x277D85DE8];

  return v5;
}

@end