@interface _EFDistinctUntilChangedObservable
- (BOOL)_isLastResultDistinctFromResult:(id)a3;
- (_EFDistinctUntilChangedObservable)initWithObservable:(id)a3;
- (id)subscribe:(id)a3;
@end

@implementation _EFDistinctUntilChangedObservable

- (_EFDistinctUntilChangedObservable)initWithObservable:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _EFDistinctUntilChangedObservable;
  v6 = [(_EFDistinctUntilChangedObservable *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v6->_lock;
    v6->_lock = v7;

    objc_storeStrong(&v6->_observable, a3);
  }

  return v6;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  observable = self->_observable;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __47___EFDistinctUntilChangedObservable_subscribe___block_invoke;
  v17[3] = &unk_1E82484E0;
  v17[4] = self;
  v18 = v4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47___EFDistinctUntilChangedObservable_subscribe___block_invoke_2;
  v15[3] = &unk_1E8248580;
  v16 = v18;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___EFDistinctUntilChangedObservable_subscribe___block_invoke_3;
  v13 = &unk_1E82485A8;
  v6 = v16;
  v14 = v6;
  v7 = [EFObserver observerWithResultBlock:v17 completionBlock:v15 failureBlock:&v10];
  v8 = [(EFObservable *)observable subscribe:v7, v10, v11, v12, v13];

  return v8;
}

- (BOOL)_isLastResultDistinctFromResult:(id)a3
{
  v5 = a3;
  [(NSLock *)self->_lock lock];
  v6 = [v5 isEqual:self->_lastObservedResult];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_lastObservedResult, a3);
  }

  [(NSLock *)self->_lock unlock];

  return v6 ^ 1;
}

@end