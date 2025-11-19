@interface HKFetchOperation
- (HKFetchOperation)initWithOperationDescription:(id)a3;
- (HKFetchOperationDelegate)_delegate;
- (void)_alertDelegateDidUpdatePriority;
- (void)startOperationWithCompletion:(id)a3;
- (void)stopOperation;
@end

@implementation HKFetchOperation

- (HKFetchOperation)initWithOperationDescription:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HKFetchOperation;
  v6 = [(HKFetchOperation *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v6->_UUID;
    v6->_UUID = v7;

    v6->_highPriority = 0;
    objc_storeStrong(&v6->_operationDescription, a3);
    v6->_queueTime = 0.0;
    v6->_executionTime = 0.0;
  }

  return v6;
}

- (void)_alertDelegateDidUpdatePriority
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained fetchOperationDidUpdatePriority:self];
}

- (HKFetchOperationDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)startOperationWithCompletion:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)stopOperation
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end