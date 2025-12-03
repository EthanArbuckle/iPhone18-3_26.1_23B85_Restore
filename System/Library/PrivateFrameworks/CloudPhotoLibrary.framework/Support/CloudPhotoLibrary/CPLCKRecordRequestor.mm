@interface CPLCKRecordRequestor
- (BOOL)processedFetchedRequestedRecordsWithError:(id *)error;
- (CPLCKRecordRequestor)initWithFetchCache:(id)cache scopeProvider:(id)provider;
- (NSArray)requestedRecordIDs;
- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)enumerator task:(id)task completionHandler:(id)handler;
- (void)fetchRequestedRecordsForTransportTask:(id)task completionHandler:(id)handler;
- (void)requestRecordWithRecordID:(id)d operationType:(int64_t)type forRecordWithRecordID:(id)iD completionHandler:(id)handler;
@end

@implementation CPLCKRecordRequestor

- (CPLCKRecordRequestor)initWithFetchCache:(id)cache scopeProvider:(id)provider
{
  cacheCopy = cache;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CPLCKRecordRequestor;
  v8 = [(CPLCKRecordRequestor *)&v12 init];
  if (v8)
  {
    if (cacheCopy)
    {
      v9 = cacheCopy;
    }

    else
    {
      v9 = objc_alloc_init(CPLCKRecordFetchCache);
    }

    fetchCache = v8->_fetchCache;
    v8->_fetchCache = v9;

    objc_storeStrong(&v8->_scopeProvider, provider);
  }

  return v8;
}

- (void)requestRecordWithRecordID:(id)d operationType:(int64_t)type forRecordWithRecordID:(id)iD completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
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

  [(NSMutableSet *)requestedRecordIDs addObject:dCopy];
  v19 = sub_1001AAB10([CPLCKRecordRequest alloc], dCopy, iDCopy, handlerCopy);
  [(NSMutableArray *)self->_requests addObject:v19];
  v20 = self->_requestedRecordIDsPerOperationType;
  v21 = [NSNumber numberWithInteger:type];
  v22 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:v21];

  if (!v22)
  {
    v22 = objc_alloc_init(NSMutableSet);
    v23 = self->_requestedRecordIDsPerOperationType;
    v24 = [NSNumber numberWithInteger:type];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];
  }

  [v22 addObject:dCopy];
}

- (void)_fetchRecordsForNextOperationTypeInEnumerator:(id)enumerator task:(id)task completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  taskCopy = task;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v12 = [(NSMutableDictionary *)self->_requestedRecordIDsPerOperationType objectForKeyedSubscript:nextObject];
    allObjects = [v12 allObjects];

    integerValue = [nextObject integerValue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009615C;
    v15[3] = &unk_100276660;
    v19 = handlerCopy;
    v16 = taskCopy;
    selfCopy = self;
    v18 = enumeratorCopy;
    [v16 fetchRecordsWithIDs:allObjects fetchResources:0 wantsAllRecords:0 type:integerValue completionHandler:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)fetchRequestedRecordsForTransportTask:(id)task completionHandler:(id)handler
{
  handlerCopy = handler;
  requestedRecordIDsPerOperationType = self->_requestedRecordIDsPerOperationType;
  taskCopy = task;
  keyEnumerator = [(NSMutableDictionary *)requestedRecordIDsPerOperationType keyEnumerator];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100096330;
  v11[3] = &unk_1002727E8;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(CPLCKRecordRequestor *)self _fetchRecordsForNextOperationTypeInEnumerator:keyEnumerator task:taskCopy completionHandler:v11];
}

- (NSArray)requestedRecordIDs
{
  allObjects = [(NSMutableSet *)self->_requestedRecordIDs allObjects];
  v3 = allObjects;
  if (allObjects)
  {
    v4 = allObjects;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (BOOL)processedFetchedRequestedRecordsWithError:(id *)error
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

    if (error)
    {
      v28 = v27;
      *error = v27;
    }
  }

  return v25 == 0;
}

@end