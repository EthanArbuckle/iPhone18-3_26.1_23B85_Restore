@interface MODatabaseUpgradeCompletionDelegate
- (MODatabaseUpgradeCompletionDelegate)initWithHandler:(id)handler;
- (void)didUpdateWithStatus:(unint64_t)status andError:(id)error;
@end

@implementation MODatabaseUpgradeCompletionDelegate

- (MODatabaseUpgradeCompletionDelegate)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = MODatabaseUpgradeCompletionDelegate;
  v5 = [(MODatabaseUpgradeCompletionDelegate *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2318D5790](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)didUpdateWithStatus:(unint64_t)status andError:(id)error
{
  errorCopy = error;
  handler = [(MODatabaseUpgradeCompletionDelegate *)self handler];

  if (handler)
  {
    handler2 = [(MODatabaseUpgradeCompletionDelegate *)self handler];
    (handler2)[2](handler2, status, errorCopy);
  }
}

@end