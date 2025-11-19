@interface MODatabaseUpgradeCompletionDelegate
- (MODatabaseUpgradeCompletionDelegate)initWithHandler:(id)a3;
- (void)didUpdateWithStatus:(unint64_t)a3 andError:(id)a4;
@end

@implementation MODatabaseUpgradeCompletionDelegate

- (MODatabaseUpgradeCompletionDelegate)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MODatabaseUpgradeCompletionDelegate;
  v5 = [(MODatabaseUpgradeCompletionDelegate *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2318D5790](v4);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)didUpdateWithStatus:(unint64_t)a3 andError:(id)a4
{
  v8 = a4;
  v6 = [(MODatabaseUpgradeCompletionDelegate *)self handler];

  if (v6)
  {
    v7 = [(MODatabaseUpgradeCompletionDelegate *)self handler];
    (v7)[2](v7, a3, v8);
  }
}

@end