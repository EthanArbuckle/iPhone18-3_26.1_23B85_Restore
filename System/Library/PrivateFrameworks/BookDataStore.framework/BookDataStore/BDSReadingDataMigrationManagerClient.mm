@interface BDSReadingDataMigrationManagerClient
- (BDSReadingDataMigrationManagerClient)init;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
@end

@implementation BDSReadingDataMigrationManagerClient

- (BDSReadingDataMigrationManagerClient)init
{
  v6.receiver = self;
  v6.super_class = BDSReadingDataMigrationManagerClient;
  v2 = [(BDSReadingDataMigrationManagerClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingDataMigrationManagerClient *)self serviceProxy];
  [serviceProxy mergeMovedReadingHistoryDataWithCompletionHandler:handlerCopy];
}

@end