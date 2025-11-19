@interface _CNBlockObserver
- (_CNBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5;
- (void)observerDidComplete;
- (void)observerDidFailWithError:(id)a3;
- (void)observerDidReceiveResult:(id)a3;
@end

@implementation _CNBlockObserver

- (void)observerDidComplete
{
  [(CNObservableContractEnforcement *)self->_enforcement observerDidComplete];
  v3 = *(self->_completionBlock + 2);

  v3();
}

- (_CNBlockObserver)initWithResultBlock:(id)a3 completionBlock:(id)a4 failureBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = _CNBlockObserver;
  v11 = [(_CNBlockObserver *)&v22 init];
  if (v11)
  {
    if (!v8)
    {
      v8 = &__block_literal_global_85;
    }

    if (!v9)
    {
      v9 = &__block_literal_global_3_2;
    }

    if (!v10)
    {
      v10 = &__block_literal_global_6;
    }

    v12 = [v8 copy];
    resultBlock = v11->_resultBlock;
    v11->_resultBlock = v12;

    v14 = [v9 copy];
    completionBlock = v11->_completionBlock;
    v11->_completionBlock = v14;

    v16 = [v10 copy];
    failureBlock = v11->_failureBlock;
    v11->_failureBlock = v16;

    v18 = objc_alloc_init(CNObservableContractEnforcement);
    enforcement = v11->_enforcement;
    v11->_enforcement = v18;

    v20 = v11;
  }

  return v11;
}

- (void)observerDidReceiveResult:(id)a3
{
  v4 = a3;
  v5 = +[CNObservableContractEnforcement shouldSwizzleNilResults];
  if (!v4 && v5)
  {
    v6 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v6];
    }

    v7 = +[CNObservable os_log_protocol];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNBehaviorSubject observerDidReceiveResult:v7];
    }

    v4 = [MEMORY[0x1E695DFB0] null];
  }

  [(CNObservableContractEnforcement *)self->_enforcement observerDidReceiveResult:v4];
  (*(self->_resultBlock + 2))();
}

- (void)observerDidFailWithError:(id)a3
{
  enforcement = self->_enforcement;
  v5 = a3;
  [(CNObservableContractEnforcement *)enforcement observerDidFailWithError:v5];
  (*(self->_failureBlock + 2))();
}

@end