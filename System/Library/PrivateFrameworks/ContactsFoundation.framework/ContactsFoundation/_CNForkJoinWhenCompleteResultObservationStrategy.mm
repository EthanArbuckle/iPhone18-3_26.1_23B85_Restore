@interface _CNForkJoinWhenCompleteResultObservationStrategy
- (_CNForkJoinWhenCompleteResultObservationStrategy)initWithCapacity:(unint64_t)capacity;
- (void)observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer;
- (void)receiveResult:(id)result fromObservableAtIndex:(unint64_t)index observer:(id)observer;
@end

@implementation _CNForkJoinWhenCompleteResultObservationStrategy

- (_CNForkJoinWhenCompleteResultObservationStrategy)initWithCapacity:(unint64_t)capacity
{
  v13.receiver = self;
  v13.super_class = _CNForkJoinWhenCompleteResultObservationStrategy;
  v4 = [(_CNForkJoinWhenCompleteResultObservationStrategy *)&v13 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    results = v4->_results;
    v4->_results = v5;

    for (; capacity; --capacity)
    {
      v7 = v4->_results;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v7 addObject:null];
    }

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
  [(NSMutableArray *)selfCopy->_results replaceObjectAtIndex:index withObject:resultCopy];
  objc_sync_exit(selfCopy);
}

- (void)observableAtIndex:(unint64_t)index didCompleteForObserver:(id)observer
{
  observerCopy = observer;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableIndexSet *)selfCopy->_finishedObservables addIndex:index];
  v8 = [(NSMutableIndexSet *)selfCopy->_finishedObservables count];
  if (v8 == [(NSMutableArray *)self->_results count])
  {
    [v6 setArray:self->_results];
    objc_sync_exit(selfCopy);

    [observerCopy observerDidReceiveResult:v6];
    [observerCopy observerDidComplete];
  }

  else
  {
    objc_sync_exit(selfCopy);
  }
}

@end