@interface CPLCKRecordRequestor
- (BOOL)processedFetchedRequestedRecordsWithError:(id *)a3;
- (CPLCKRecordRequestor)initWithFetchCache:(id)a3 scopeProvider:(id)a4;
- (NSArray)requestedRecordIDs;
- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)a3 task:(id)a4 completionHandler:(id)a5;
- (void)fetchRequestedRecordsForTransportTask:(id)a3 completionHandler:(id)a4;
- (void)requestRecordWithRecordID:(id)a3 operationType:(int64_t)a4 forRecordWithRecordID:(id)a5 completionHandler:(id)a6;
@end

@implementation CPLCKRecordRequestor

- (CPLCKRecordRequestor)initWithFetchCache:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPLCKRecordRequestor;
  v8 = [(CPLCKRecordRequestor *)&v12 init];
  if (v8)
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = objc_alloc_init(CPLCKRecordFetchCache);
    }

    fetchCache = v8->_fetchCache;
    v8->_fetchCache = v9;

    objc_storeStrong(&v8->_scopeProvider, a4);
  }

  return v8;
}

- (void)requestRecordWithRecordID:(id)a3 operationType:(int64_t)a4 forRecordWithRecordID:(id)a5 completionHandler:(id)a6
{
  v25 = a3;
  v10 = a5;
  v11 = a6;
  requestedRecordIDs = self->_requestedRecordIDs;
  if (!requestedRecordIDs)
  {
    v13 = objc_alloc_init(NSMutableSet);
    v14 = self->_requestedRecordIDs;
    self->_requestedRecordIDs = v13;

    v15 = objc_alloc_init(NSMutableArray);
    requests = self->_requests;
    self->_requests = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    requestedRecordIDsPerOperationType = self->_requestedRecordIDsPerOperationType;
    self->_requestedRecordIDsPerOperationType = v17;

    requestedRecordIDs = self->_requestedRecordIDs;
  }

  [(NSMutableSet *)requestedRecordIDs addObject:v25];
  v19 = sub_1001AAB10([CPLCKRecordRequest alloc], v25, v10, v11);
  [(NSMutableArray *)self->_requests addObject:v19];
  v20 = self->_requestedRecordIDsPerOperationType;
  v21 = [NSNumber numberWithInteger:a4];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v23 = self->_requestedRecordIDsPerOperationType;
    v24 = [NSNumber numberWithInteger:a4];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];
  }

  [v22 addObject:v25];
}

- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)a3 task:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 nextObject];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_requestedRecordIDsPerOperationType objectForKeyedSubscript:v11];
    v13 = [v12 allObjects];

    v14 = [v11 integerValue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009615C;
    v15[3] = &unk_100276660;
    v19 = v10;
    v16 = v9;
    v17 = self;
    v18 = v8;
    [v16 fetchRecordsWithIDs:v13 fetchResources:0 wantsAllRecords:0 type:v14 completionHandler:v15];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)fetchRequestedRecordsForTransportTask:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  requestedRecordIDsPerOperationType = self->_requestedRecordIDsPerOperationType;
  v8 = a3;
  v9 = [(NSMutableDictionary *)requestedRecordIDsPerOperationType keyEnumerator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096330;
  v11[3] = &unk_1002727E8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(CPLCKRecordRequestor *)self _fetchRecordsForNextOperationTypeInEnumerator:v9 task:v8 completionHandler:v11];
}

- (NSArray)requestedRecordIDs
{
  v2 = [(NSMutableSet *)self->_requestedRecordIDs allObjects];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (BOOL)processedFetchedRequestedRecordsWithError:(id *)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_requests;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 3);
        }

        else
        {
          v10 = 0;
        }

        fetchCache = self->_fetchCache;
        v12 = v10[2];
        v13 = v10;
        v14 = v12();
        v15 = 0;

        if ((v14 & 1) == 0)
        {
          if (v9)
          {
            v16 = *(v9 + 2);
          }

          else
          {
            v16 = 0;
          }

          scopeProvider = self->_scopeProvider;
          v18 = v16;
          v19 = [(CPLCloudKitScopeProvider *)scopeProvider rejectedScopedIdentifierForRejectedCKRecordID:v18];

          v20 = [v4 objectForKeyedSubscript:v19];

          if (!v20)
          {
            if (!v15)
            {
              v15 = @"processing requested record failed";
            }

            if ((_CPLSilentLogging & 1) == 0)
            {
              v21 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                if (v9)
                {
                  v22 = *(v9 + 1);
                  v23 = *(v9 + 2);
                  v9 = v22;
                }

                else
                {
                  v22 = 0;
                  v23 = 0;
                }

                *buf = 138413058;
                v39 = v22;
                v40 = 2112;
                v41 = v23;
                v42 = 2112;
                v43 = v19;
                v44 = 2114;
                v45 = v15;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Processing requested record %@ for %@ (on behalf of %@) was rejected: %{public}@", buf, 0x2Au);
              }
            }

            [v4 setObject:v15 forKeyedSubscript:v19];
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      v6 = v24;
    }

    while (v24);
  }

  v25 = [v4 count];
  if (v25)
  {
    v36 = CPLErrorRejectedRecordIdentifiersAndReasonsKey;
    v37 = v4;
    v26 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v27 = [CPLErrors cplErrorWithCode:18 underlyingError:0 userInfo:v26 description:@"Rejecting some records because of bad or missing requested records"];

    if (a3)
    {
      v28 = v27;
      *a3 = v27;
    }
  }

  return v25 == 0;
}

@end