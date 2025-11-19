@interface _CNForkJoinWhenCompleteResultObservationStrategy
- (_CNForkJoinWhenCompleteResultObservationStrategy)initWithCapacity:(unint64_t)a3;
- (void)observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4;
- (void)receiveResult:(id)a3 fromObservableAtIndex:(unint64_t)a4 observer:(id)a5;
@end

@implementation _CNForkJoinWhenCompleteResultObservationStrategy

- (_CNForkJoinWhenCompleteResultObservationStrategy)initWithCapacity:(unint64_t)a3
{
  v13.receiver = self;
  v13.super_class = _CNForkJoinWhenCompleteResultObservationStrategy;
  v4 = [(_CNForkJoinWhenCompleteResultObservationStrategy *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v4->_results;
    v4->_results = v5;

    for (; a3; --a3)
    {
      v7 = v4->_results;
      v8 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v7 addObject:v8];
    }

    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    finishedObservables = v4->_finishedObservables;
    v4->_finishedObservables = v9;

    v11 = v4;
  }

  return v4;
}

- (void)receiveResult:(id)a3 fromObservableAtIndex:(unint64_t)a4 observer:(id)a5
{
  v10 = a3;
  v8 = a5;
  v9 = self;
  objc_sync_enter(v9);
  [(NSMutableArray *)v9->_results replaceObjectAtIndex:a4 withObject:v10];
  objc_sync_exit(v9);
}

- (void)observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4
{
  v9 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableIndexSet *)v7->_finishedObservables addIndex:a3];
  v8 = [(NSMutableIndexSet *)v7->_finishedObservables count];
  if (v8 == [(NSMutableArray *)self->_results count])
  {
    [v6 setArray:self->_results];
    objc_sync_exit(v7);

    [v9 observerDidReceiveResult:v6];
    [v9 observerDidComplete];
  }

  else
  {
    objc_sync_exit(v7);
  }
}

@end