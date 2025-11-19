@interface _CNForkJoinObservable
+ (id)forkJoin:(id)a3;
+ (id)progressiveForkJoin:(id)a3;
- (_CNForkJoinObservable)initWithObservables:(id)a3 reportingStrategy:(id)a4;
- (id)subscribe:(id)a3;
@end

@implementation _CNForkJoinObservable

+ (id)forkJoin:(id)a3
{
  v4 = a3;
  v5 = -[_CNForkJoinWhenCompleteResultObservationStrategy initWithCapacity:]([_CNForkJoinWhenCompleteResultObservationStrategy alloc], "initWithCapacity:", [v4 count]);
  v6 = [[a1 alloc] initWithObservables:v4 reportingStrategy:v5];

  return v6;
}

+ (id)progressiveForkJoin:(id)a3
{
  v4 = a3;
  v5 = -[_CNForkJoinProgressiveResultObservationStrategy initWithCapacity:]([_CNForkJoinProgressiveResultObservationStrategy alloc], "initWithCapacity:", [v4 count]);
  v6 = [[a1 alloc] initWithObservables:v4 reportingStrategy:v5];

  return v6;
}

- (_CNForkJoinObservable)initWithObservables:(id)a3 reportingStrategy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _CNForkJoinObservable;
  v8 = [(_CNForkJoinObservable *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    observables = v8->_observables;
    v8->_observables = v9;

    objc_storeStrong(&v8->_resultReportingStrategy, a4);
    v11 = v8;
  }

  return v8;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNCancelationToken);
  v6 = self->_resultReportingStrategy;
  observables = self->_observables;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35___CNForkJoinObservable_subscribe___block_invoke;
  v14[3] = &unk_1E6ED8770;
  v15 = v6;
  v16 = v4;
  v8 = v5;
  v17 = v8;
  v9 = v4;
  v10 = v6;
  [(NSArray *)observables enumerateObjectsUsingBlock:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

@end