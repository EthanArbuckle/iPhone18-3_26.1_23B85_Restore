@interface BDSReadingDataMigrationManagerClient
- (BDSReadingDataMigrationManagerClient)init;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3;
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

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingDataMigrationManagerClient *)self serviceProxy];
  [v5 mergeMovedReadingHistoryDataWithCompletionHandler:v4];
}

@end