@interface CADFetchCalendarItemsWithPredicateOperation
+ (BOOL)isJunkEvent:(void *)a3;
+ (id)performSynchronouslyWithPredicate:(id)a3 entityType:(int)a4 connection:(id)a5 fetchIdentifier:(unsigned int)a6 cancellationToken:(id)a7;
- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)a3 entityType:(int)a4 connection:(id)a5 fetchIdentifier:(unsigned int)a6 completionHandler:(id)a7;
- (void)_callCompletionOnceWithResults:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation CADFetchCalendarItemsWithPredicateOperation

- (void)main
{
  if (([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0)
  {
    startCallback = self->_startCallback;
    if (!startCallback || (startCallback[2](), ([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0))
    {
      v4 = [objc_opt_class() performSynchronouslyWithPredicate:self->_predicate entityType:self->_entityType connection:self->_connection fetchIdentifier:self->_token cancellationToken:self];
      if (([(CADFetchCalendarItemsWithPredicateOperation *)self isCancelled]& 1) == 0)
      {
        [(CADFetchCalendarItemsWithPredicateOperation *)self _callCompletionOnceWithResults:v4];
      }
    }
  }
}

- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)a3 entityType:(int)a4 connection:(id)a5 fetchIdentifier:(unsigned int)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = CADFetchCalendarItemsWithPredicateOperation;
  v16 = [(CADFetchCalendarItemsWithPredicateOperation *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_predicate, a3);
    v17->_entityType = a4;
    objc_storeStrong(&v17->_connection, a5);
    v17->_token = a6;
    v18 = MEMORY[0x22AA4DCD0](v15);
    completion = v17->_completion;
    v17->_completion = v18;
  }

  return v17;
}

+ (id)performSynchronouslyWithPredicate:(id)a3 entityType:(int)a4 connection:(id)a5 fetchIdentifier:(unsigned int)a6 cancellationToken:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a7;
  v13 = [v10 databasesToQuery];
  v14 = [CADFetchedObjectSerializer alloc];
  v15 = [v10 defaultPropertiesToLoad];
  v16 = [v10 relatedObjectPropertiesToLoad];
  v17 = [(CADFetchedObjectSerializer *)v14 initWithConnection:v11 defaultPropertiesToLoad:v15 relatedObjectPropertiesToLoad:v16];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke;
  v42[3] = &unk_27851B938;
  v47 = a1;
  v18 = v10;
  v43 = v18;
  v19 = v11;
  v44 = v19;
  v20 = v17;
  v45 = v20;
  v21 = v12;
  v46 = v21;
  v22 = MEMORY[0x22AA4DCD0](v42);
  v23 = v22;
  if (v13)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = v13;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v33 = v21;
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v36 + 1) + 8 * i) intValue];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke_3;
          v34[3] = &unk_27851A480;
          v35 = v23;
          [v19 withDatabaseID:v29 perform:v34];
        }

        v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v26);
      v21 = v33;
    }
  }

  else
  {
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke_2;
    v40[3] = &unk_27851A928;
    v41 = v22;
    [v19 withAllDatabasesPerform:v40];
    v24 = v41;
  }

  if ([v21 isCancelled])
  {
    v30 = 0;
  }

  else
  {
    v30 = [(CADFetchedObjectSerializer *)v20 fetchedObjectWrappers];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[8];
  v7 = objc_opt_class();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];

  return [v7 queryDatabase:a3 withID:a2 predicate:v8 connection:v9 serializer:v10 cancellationToken:v11];
}

+ (BOOL)isJunkEvent:(void *)a3
{
  Event = a3;
  v4 = CFGetTypeID(a3);
  if (v4 == CalEventOccurrenceGetTypeID())
  {
    Event = CalEventOccurrenceGetEvent();
  }

  return Event && CalEventGetJunkStatus() == 1;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = CADFetchCalendarItemsWithPredicateOperation;
  [(CADFetchCalendarItemsWithPredicateOperation *)&v3 cancel];
  [(CADFetchCalendarItemsWithPredicateOperation *)self _callCompletionOnceWithResults:0];
}

- (void)_callCompletionOnceWithResults:(id)a3
{
  if ((atomic_exchange(&self->_hasRunCompletion._Value, 1u) & 1) == 0)
  {
    (*(self->_completion + 2))();
  }
}

@end