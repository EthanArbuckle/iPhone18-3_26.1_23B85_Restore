@interface _CNForkJoinProgressiveResultObservationStrategy
- (_CNForkJoinProgressiveResultObservationStrategy)initWithCapacity:(unint64_t)capacity;
- (void)observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer;
- (void)receiveResult:(id)result fromObservableAtIndex:(unint64_t)index observer:(id)observer;
@end

@implementation _CNForkJoinProgressiveResultObservationStrategy

- (_CNForkJoinProgressiveResultObservationStrategy)initWithCapacity:(unint64_t)capacity
{
  v13.receiver = self;
  v13.super_class = _CNForkJoinProgressiveResultObservationStrategy;
  v4 = [(_CNForkJoinProgressiveResultObservationStrategy *)&v13 init];
  if (v4)
  {
    for (i = [MEMORY[0x1E695DF70] array];
    {
      array = [MEMORY[0x1E695DF70] array];
      [i addObject:array];
    }

    v7 = [i copy];
    results = v4->_results;
    v4->_results = v7;

    v4->_activeObservableIdx = 0;
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    finishedObservables = v4->_finishedObservables;
    v4->_finishedObservables = v9;

    v11 = v4;
  }

  return v4;
}

- (void)receiveResult:(id)result fromObservableAtIndex:(unint64_t)index observer:(id)observer
{
  resultCopy = result;
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activeObservableIdx == index)
  {
    objc_sync_exit(selfCopy);

    [observerCopy observerDidReceiveResult:resultCopy];
  }

  else
  {
    v10 = [(NSArray *)selfCopy->_results objectAtIndex:index];
    [v10 addObject:resultCopy];

    objc_sync_exit(selfCopy);
  }
}

- (void)observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer
{
  v26 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableIndexSet *)selfCopy->_finishedObservables addIndex:index];
  for (i = selfCopy->_activeObservableIdx; [(NSMutableIndexSet *)selfCopy->_finishedObservables containsIndex:i]; ++i)
  {
    v10 = [(NSArray *)selfCopy->_results objectAtIndexedSubscript:i];
    [array addObjectsFromArray:v10];

    v11 = [(NSArray *)selfCopy->_results objectAtIndexedSubscript:i];
    [v11 removeAllObjects];
  }

  selfCopy->_activeObservableIdx = i;
  if (i < [(NSArray *)selfCopy->_results count])
  {
    v12 = [(NSArray *)selfCopy->_results objectAtIndexedSubscript:selfCopy->_activeObservableIdx];
    [array addObjectsFromArray:v12];

    v13 = [(NSArray *)selfCopy->_results objectAtIndexedSubscript:selfCopy->_activeObservableIdx];
    [v13 removeAllObjects];
  }

  v14 = [(NSMutableIndexSet *)selfCopy->_finishedObservables count];
  v15 = [(NSArray *)selfCopy->_results count];
  objc_sync_exit(selfCopy);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = array;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [observerCopy observerDidReceiveResult:{*(*(&v21 + 1) + 8 * v19++), v21}];
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  if (v14 == v15)
  {
    [observerCopy observerDidComplete];
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end