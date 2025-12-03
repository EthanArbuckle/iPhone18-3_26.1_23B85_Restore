@interface DMClientAPIController
- (DMClientAPIController)init;
- (void)progressHostIsReady;
@end

@implementation DMClientAPIController

- (DMClientAPIController)init
{
  v5.receiver = self;
  v5.super_class = DMClientAPIController;
  v2 = [(DMClientAPIController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DMClientAPIController *)v2 setConnectionMigrationMaximumAttempts:3];
    [(DMClientAPIController *)v3 setConnectionMigrationTimeIntervalToLastRetryDate:1.0];
  }

  return v3;
}

- (void)progressHostIsReady
{
  v6 = +[DMConnection connection];
  if (v6)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "msgID", 14);
    connection = [v6 connection];
    v5 = [connection sendMessageSync:v3];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to datamigrator!");
  }
}

@end