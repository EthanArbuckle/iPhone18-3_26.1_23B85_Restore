@interface MROSTransaction
- (MROSTransaction)initWithName:(id)name;
- (void)invalidateTransaction;
@end

@implementation MROSTransaction

- (MROSTransaction)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = MROSTransaction;
  v6 = [(MROSTransaction *)&v10 init];
  if (v6)
  {
    [nameCopy UTF8String];
    v7 = os_transaction_create();
    containedTransaction = v6->_containedTransaction;
    v6->_containedTransaction = v7;

    objc_storeStrong(&v6->_transactionName, name);
  }

  return v6;
}

- (void)invalidateTransaction
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[OS_Transaction] invalidating: %{public}@", &v8, 0xCu);
  }

  v4 = [(NSString *)self->_transactionName stringByAppendingString:@" (invalidated)"];
  transactionName = self->_transactionName;
  self->_transactionName = v4;

  containedTransaction = self->_containedTransaction;
  self->_containedTransaction = 0;

  v7 = *MEMORY[0x1E69E9840];
}

@end