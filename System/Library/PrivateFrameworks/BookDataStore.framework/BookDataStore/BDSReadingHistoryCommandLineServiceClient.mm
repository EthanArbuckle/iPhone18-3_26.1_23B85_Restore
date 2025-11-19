@interface BDSReadingHistoryCommandLineServiceClient
+ (id)sharedServiceProxy;
- (BDSReadingHistoryCommandLineServiceClient)init;
- (void)backupWithName:(id)a3 completionHandler:(id)a4;
- (void)clearDataWithCompletionHandler:(id)a3;
- (void)clearDate:(id)a3 completionHandler:(id)a4;
- (void)clearTodayWithCompletionHandler:(id)a3;
- (void)incrementWithDate:(id)a3 by:(int64_t)a4 completionHandler:(id)a5;
- (void)listBackupWithCompletionHandler:(id)a3;
- (void)readingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 completionHandler:(id)a6;
- (void)restoreWithName:(id)a3 completionHandler:(id)a4;
- (void)serviceStatusInfoWithCompletionHandler:(id)a3;
@end

@implementation BDSReadingHistoryCommandLineServiceClient

+ (id)sharedServiceProxy
{
  if (qword_1EE2B0480 != -1)
  {
    sub_1E4701D64();
  }

  v3 = qword_1EE2B04B0;

  return v3;
}

- (BDSReadingHistoryCommandLineServiceClient)init
{
  v6.receiver = self;
  v6.super_class = BDSReadingHistoryCommandLineServiceClient;
  v2 = [(BDSReadingHistoryCommandLineServiceClient *)&v6 init];
  if (v2)
  {
    v3 = +[BDSReadingHistoryCommandLineServiceClient sharedServiceProxy];
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;
  }

  return v2;
}

- (void)clearDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v5 readingHistoryClearDataWithCompletion:v4];
}

- (void)clearDate:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v8 readingHistoryClearDate:v7 withCompletion:v6];
}

- (void)clearTodayWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v5 readingHistoryClearTodayWithCompletion:v4];
}

- (void)incrementWithDate:(id)a3 by:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v10 readingHistoryIncrementWithDate:v9 by:a4 withCompletion:v8];
}

- (void)readingHistoryStateInfoWithRangeStart:(id)a3 rangeEnd:(id)a4 currentTime:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v14 readingHistoryReadingHistoryStateInfoWithRangeStart:v13 rangeEnd:v12 currentTime:v11 withCompletion:v10];
}

- (void)serviceStatusInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v5 readingHistoryServiceStatusInfoWithCompletion:v4];
}

- (void)backupWithName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v8 readingHistoryBackupWithName:v7 completion:v6];
}

- (void)listBackupWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v5 readingHistoryListBackupWithCompletion:v4];
}

- (void)restoreWithName:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [v8 readingHistoryRestoreWithName:v7 completion:v6];
}

@end