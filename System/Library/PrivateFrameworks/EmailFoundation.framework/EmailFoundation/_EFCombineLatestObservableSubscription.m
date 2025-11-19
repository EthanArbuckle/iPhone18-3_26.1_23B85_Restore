@interface _EFCombineLatestObservableSubscription
- (_EFCombineLatestObservableSubscription)initWithObservables:(id)a3;
- (id)subscribe:(id)a3;
- (void)_observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4;
- (void)_observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 observer:(id)a5;
- (void)_observableAtIndex:(unint64_t)a3 receivedResult:(id)a4 observer:(id)a5;
@end

@implementation _EFCombineLatestObservableSubscription

- (_EFCombineLatestObservableSubscription)initWithObservables:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _EFCombineLatestObservableSubscription;
  v5 = [(_EFCombineLatestObservableSubscription *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v6;

    v8 = [v4 ef_map:&__block_literal_global_5];
    observables = v5->_observables;
    v5->_observables = v8;

    v10 = [v4 ef_map:&__block_literal_global_10];
    v11 = [v10 mutableCopy];
    results = v5->_results;
    v5->_results = v11;

    v13 = [v4 ef_map:&__block_literal_global_13];
    v14 = [v13 mutableCopy];
    tokens = v5->_tokens;
    v5->_tokens = v14;

    v16 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
    activeIndexes = v5->_activeIndexes;
    v5->_activeIndexes = v16;

    v18 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, objc_msgSend(v4, "count")}];
    silentIndexes = v5->_silentIndexes;
    v5->_silentIndexes = v18;
  }

  return v5;
}

- (id)subscribe:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(EFManualCancelationToken);
  v6 = [(_EFCombineLatestObservableSubscription *)self observables];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___EFCombineLatestObservableSubscription_subscribe___block_invoke;
  v12[3] = &unk_1E82484B8;
  v7 = v5;
  v13 = v7;
  v14 = self;
  v8 = v4;
  v15 = v8;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

- (void)_observableAtIndex:(unint64_t)a3 receivedResult:(id)a4 observer:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = _ef_log_EFObservable();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218498;
    v15 = self;
    v16 = 2048;
    v17 = a3;
    v18 = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_1C6152000, v10, OS_LOG_TYPE_DEBUG, "[%p] Result for index %lu: %@", &v14, 0x20u);
  }

  [(NSLock *)self->_lock lock];
  [(NSMutableArray *)self->_results replaceObjectAtIndex:a3 withObject:v8];
  [(NSMutableIndexSet *)self->_silentIndexes removeIndex:a3];
  if ([(NSMutableIndexSet *)self->_silentIndexes count])
  {
    v11 = _ef_log_EFObservable();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_EFCombineLatestObservableSubscription _observableAtIndex:&self->_silentIndexes receivedResult:v11 observer:?];
    }

    v12 = 0;
  }

  else
  {
    v12 = [(NSMutableArray *)self->_results copy];
  }

  [(NSLock *)self->_lock unlock];
  if (v12)
  {
    [v9 observerDidReceiveResult:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_observableAtIndex:(unint64_t)a3 didCompleteForObserver:(id)a4
{
  v9 = a4;
  [(NSLock *)self->_lock lock];
  tokens = self->_tokens;
  v7 = [MEMORY[0x1E695DFB0] null];
  [(NSMutableArray *)tokens replaceObjectAtIndex:a3 withObject:v7];

  [(NSMutableIndexSet *)self->_activeIndexes removeIndex:a3];
  v8 = [(NSMutableIndexSet *)self->_activeIndexes count];
  [(NSLock *)self->_lock unlock];
  if (!v8)
  {
    [v9 observerDidComplete];
  }
}

- (void)_observableAtIndex:(unint64_t)a3 didFailWithError:(id)a4 observer:(id)a5
{
  v11 = a4;
  v8 = a5;
  [(NSLock *)self->_lock lock];
  v9 = [(NSMutableIndexSet *)self->_activeIndexes mutableCopy];
  [v9 removeIndex:a3];
  v10 = [(NSMutableArray *)self->_tokens objectsAtIndexes:v9];
  [v10 makeObjectsPerformSelector:sel_cancel];
  [(NSLock *)self->_lock unlock];
  [v8 observerDidFailWithError:v11];
}

- (void)_observableAtIndex:(uint64_t)a1 receivedResult:(uint64_t *)a2 observer:(os_log_t)log .cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 134218242;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_debug_impl(&dword_1C6152000, log, OS_LOG_TYPE_DEBUG, "[%p] Remaining silent indexes: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end