@interface HKFetchOperation
- (HKFetchOperation)initWithOperationDescription:(id)description;
- (HKFetchOperationDelegate)_delegate;
- (void)_alertDelegateDidUpdatePriority;
- (void)startOperationWithCompletion:(id)completion;
- (void)stopOperation;
@end

@implementation HKFetchOperation

- (HKFetchOperation)initWithOperationDescription:(id)description
{
  descriptionCopy = description;
  v10.receiver = self;
  v10.super_class = HKFetchOperation;
  v6 = [(HKFetchOperation *)&v10 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    UUID = v6->_UUID;
    v6->_UUID = uUID;

    v6->_highPriority = 0;
    objc_storeStrong(&v6->_operationDescription, description);
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

- (void)startOperationWithCompletion:(id)completion
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