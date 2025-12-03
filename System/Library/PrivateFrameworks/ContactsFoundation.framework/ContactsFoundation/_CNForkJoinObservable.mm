@interface _CNForkJoinObservable
+ (id)forkJoin:(id)join;
+ (id)progressiveForkJoin:(id)join;
- (_CNForkJoinObservable)initWithObservables:(id)observables reportingStrategy:(id)strategy;
- (id)subscribe:(id)subscribe;
@end

@implementation _CNForkJoinObservable

+ (id)forkJoin:(id)join
{
  joinCopy = join;
  v5 = -[_CNForkJoinWhenCompleteResultObservationStrategy initWithCapacity:]([_CNForkJoinWhenCompleteResultObservationStrategy alloc], "initWithCapacity:", [joinCopy count]);
  v6 = [[self alloc] initWithObservables:joinCopy reportingStrategy:v5];

  return v6;
}

+ (id)progressiveForkJoin:(id)join
{
  joinCopy = join;
  v5 = -[_CNForkJoinProgressiveResultObservationStrategy initWithCapacity:]([_CNForkJoinProgressiveResultObservationStrategy alloc], "initWithCapacity:", [joinCopy count]);
  v6 = [[self alloc] initWithObservables:joinCopy reportingStrategy:v5];

  return v6;
}

- (_CNForkJoinObservable)initWithObservables:(id)observables reportingStrategy:(id)strategy
{
  observablesCopy = observables;
  strategyCopy = strategy;
  v13.receiver = self;
  v13.super_class = _CNForkJoinObservable;
  v8 = [(_CNForkJoinObservable *)&v13 init];
  if (v8)
  {
    v9 = [observablesCopy copy];
    observables = v8->_observables;
    v8->_observables = v9;

    objc_storeStrong(&v8->_resultReportingStrategy, strategy);
    v11 = v8;
  }

  return v8;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v5 = objc_alloc_init(CNCancelationToken);
  v6 = self->_resultReportingStrategy;
  observables = self->_observables;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35___CNForkJoinObservable_subscribe___block_invoke;
  v14[3] = &unk_1E6ED8770;
  v15 = v6;
  v16 = subscribeCopy;
  v8 = v5;
  v17 = v8;
  v9 = subscribeCopy;
  v10 = v6;
  [(NSArray *)observables enumerateObjectsUsingBlock:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

@end