@interface BDSReadingHistoryCommandLineServiceClient
+ (id)sharedServiceProxy;
- (BDSReadingHistoryCommandLineServiceClient)init;
- (void)backupWithName:(id)name completionHandler:(id)handler;
- (void)clearDataWithCompletionHandler:(id)handler;
- (void)clearDate:(id)date completionHandler:(id)handler;
- (void)clearTodayWithCompletionHandler:(id)handler;
- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler;
- (void)listBackupWithCompletionHandler:(id)handler;
- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler;
- (void)restoreWithName:(id)name completionHandler:(id)handler;
- (void)serviceStatusInfoWithCompletionHandler:(id)handler;
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

- (void)clearDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryClearDataWithCompletion:handlerCopy];
}

- (void)clearDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryClearDate:dateCopy withCompletion:handlerCopy];
}

- (void)clearTodayWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryClearTodayWithCompletion:handlerCopy];
}

- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryIncrementWithDate:dateCopy by:by withCompletion:handlerCopy];
}

- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  endCopy = end;
  startCopy = start;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryReadingHistoryStateInfoWithRangeStart:startCopy rangeEnd:endCopy currentTime:timeCopy withCompletion:handlerCopy];
}

- (void)serviceStatusInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryServiceStatusInfoWithCompletion:handlerCopy];
}

- (void)backupWithName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryBackupWithName:nameCopy completion:handlerCopy];
}

- (void)listBackupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryListBackupWithCompletion:handlerCopy];
}

- (void)restoreWithName:(id)name completionHandler:(id)handler
{
  handlerCopy = handler;
  nameCopy = name;
  serviceProxy = [(BDSReadingHistoryCommandLineServiceClient *)self serviceProxy];
  [serviceProxy readingHistoryRestoreWithName:nameCopy completion:handlerCopy];
}

@end