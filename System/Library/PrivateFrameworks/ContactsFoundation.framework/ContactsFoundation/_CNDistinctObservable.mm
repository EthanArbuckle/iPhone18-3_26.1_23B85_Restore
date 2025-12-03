@interface _CNDistinctObservable
- (BOOL)_resultIsDistinct:(id)distinct;
- (_CNDistinctObservable)initWithObservable:(id)observable;
- (id)subscribe:(id)subscribe;
@end

@implementation _CNDistinctObservable

- (_CNDistinctObservable)initWithObservable:(id)observable
{
  observableCopy = observable;
  v12.receiver = self;
  v12.super_class = _CNDistinctObservable;
  v6 = [(_CNDistinctObservable *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observable, observable);
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    previouslyObservedResults = v7->_previouslyObservedResults;
    v7->_previouslyObservedResults = v8;

    v10 = v7;
  }

  return v7;
}

- (id)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  observable = self->_observable;
  v6 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __35___CNDistinctObservable_subscribe___block_invoke;
  v18[3] = &unk_1E6ED63C8;
  v18[4] = self;
  v19 = subscribeCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35___CNDistinctObservable_subscribe___block_invoke_2;
  v16[3] = &unk_1E6ED5830;
  v17 = v19;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __35___CNDistinctObservable_subscribe___block_invoke_3;
  v14 = &unk_1E6ED5A30;
  v15 = v17;
  v7 = v17;
  v8 = [CNObserver blockObserverOfClass:v6 withResultBlock:v18 completionBlock:v16 failureBlock:&v11];
  v9 = [(CNObservable *)observable subscribe:v8, v11, v12, v13, v14];

  return v9;
}

- (BOOL)_resultIsDistinct:(id)distinct
{
  distinctCopy = distinct;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_previouslyObservedResults containsObject:distinctCopy];
  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)selfCopy->_previouslyObservedResults addObject:distinctCopy];
  }

  objc_sync_exit(selfCopy);

  return v6 ^ 1;
}

@end