@interface _CNForkJoinProgressiveResultObservationStrategy
- (_CNForkJoinProgressiveResultObservationStrategy)initWithCapacity:(unint64_t)a3;
- (void)observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4;
- (void)receiveResult:(id)a3 fromObservableAtIndex:(unint64_t)a4 observer:(id)a5;
@end

@implementation _CNForkJoinProgressiveResultObservationStrategy

- (_CNForkJoinProgressiveResultObservationStrategy)initWithCapacity:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = _CNForkJoinProgressiveResultObservationStrategy;
  v4 = [(_CNForkJoinProgressiveResultObservationStrategy *)&v13 init];
  if (v4)
  {
    for (i = [MEMORY[0x1E695DF70] array];
    {
      v6 = [MEMORY[0x1E695DF70] array];
      [i addObject:v6];
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

- (void)receiveResult:(id)a3 fromObservableAtIndex:(unint64_t)a4 observer:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  if (v9->_activeObservableIdx == a4)
  {
    objc_sync_exit(v9);

    [v8 observerDidReceiveResult:v11];
  }

  else
  {
    v10 = [(NSArray *)v9->_results objectAtIndex:a4];
    [v10 addObject:v11];

    objc_sync_exit(v9);
  }
}

- (void)observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = self;
  objc_sync_enter(v8);
  [(NSMutableIndexSet *)v8->_finishedObservables addIndex:a3];
  for (i = v8->_activeObservableIdx; [(NSMutableIndexSet *)v8->_finishedObservables containsIndex:i]; ++i)
  {
    v10 = [(NSArray *)v8->_results objectAtIndexedSubscript:i];
    [v7 addObjectsFromArray:v10];

    v11 = [(NSArray *)v8->_results objectAtIndexedSubscript:i];
    [v11 removeAllObjects];
  }

  v8->_activeObservableIdx = i;
  if (i < [(NSArray *)v8->_results count])
  {
    v12 = [(NSArray *)v8->_results objectAtIndexedSubscript:v8->_activeObservableIdx];
    [v7 addObjectsFromArray:v12];

    v13 = [(NSArray *)v8->_results objectAtIndexedSubscript:v8->_activeObservableIdx];
    [v13 removeAllObjects];
  }

  v14 = [(NSMutableIndexSet *)v8->_finishedObservables count];
  v15 = [(NSArray *)v8->_results count];
  objc_sync_exit(v8);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v7;
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

        [v6 observerDidReceiveResult:{*(*(&v21 + 1) + 8 * v19++), v21}];
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  if (v14 == v15)
  {
    [v6 observerDidComplete];
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end