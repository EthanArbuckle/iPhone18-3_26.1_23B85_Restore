@interface CADFetchCalendarItemsWithPredicateOperation
+ (BOOL)isJunkEvent:(void *)event;
+ (id)performSynchronouslyWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier cancellationToken:(id)token;
- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier completionHandler:(id)handler;
- (void)_callCompletionOnceWithResults:(id)results;
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

- (CADFetchCalendarItemsWithPredicateOperation)initWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier completionHandler:(id)handler
{
  predicateCopy = predicate;
  connectionCopy = connection;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = CADFetchCalendarItemsWithPredicateOperation;
  v16 = [(CADFetchCalendarItemsWithPredicateOperation *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_predicate, predicate);
    v17->_entityType = type;
    objc_storeStrong(&v17->_connection, connection);
    v17->_token = identifier;
    v18 = MEMORY[0x22AA4DCD0](handlerCopy);
    completion = v17->_completion;
    v17->_completion = v18;
  }

  return v17;
}

+ (id)performSynchronouslyWithPredicate:(id)predicate entityType:(int)type connection:(id)connection fetchIdentifier:(unsigned int)identifier cancellationToken:(id)token
{
  v49 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  connectionCopy = connection;
  tokenCopy = token;
  databasesToQuery = [predicateCopy databasesToQuery];
  v14 = [CADFetchedObjectSerializer alloc];
  defaultPropertiesToLoad = [predicateCopy defaultPropertiesToLoad];
  relatedObjectPropertiesToLoad = [predicateCopy relatedObjectPropertiesToLoad];
  v17 = [(CADFetchedObjectSerializer *)v14 initWithConnection:connectionCopy defaultPropertiesToLoad:defaultPropertiesToLoad relatedObjectPropertiesToLoad:relatedObjectPropertiesToLoad];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke;
  v42[3] = &unk_27851B938;
  selfCopy = self;
  v18 = predicateCopy;
  v43 = v18;
  v19 = connectionCopy;
  v44 = v19;
  v20 = v17;
  v45 = v20;
  v21 = tokenCopy;
  v46 = v21;
  v22 = MEMORY[0x22AA4DCD0](v42);
  v23 = v22;
  if (databasesToQuery)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = databasesToQuery;
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

          intValue = [*(*(&v36 + 1) + 8 * i) intValue];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __137__CADFetchCalendarItemsWithPredicateOperation_performSynchronouslyWithPredicate_entityType_connection_fetchIdentifier_cancellationToken___block_invoke_3;
          v34[3] = &unk_27851A480;
          v35 = v23;
          [v19 withDatabaseID:intValue perform:v34];
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
    fetchedObjectWrappers = 0;
  }

  else
  {
    fetchedObjectWrappers = [(CADFetchedObjectSerializer *)v20 fetchedObjectWrappers];
  }

  v31 = *MEMORY[0x277D85DE8];

  return fetchedObjectWrappers;
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

+ (BOOL)isJunkEvent:(void *)event
{
  Event = event;
  v4 = CFGetTypeID(event);
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

- (void)_callCompletionOnceWithResults:(id)results
{
  if ((atomic_exchange(&self->_hasRunCompletion._Value, 1u) & 1) == 0)
  {
    (*(self->_completion + 2))();
  }
}

@end