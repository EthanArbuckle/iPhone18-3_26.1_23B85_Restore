@interface BDSReadingGoalsServiceClient
+ (id)sharedServiceProxy;
+ (void)clearLocalCachedDataWithCompletionHandler:(id)handler;
- (BDSReadingGoalsServiceClient)init;
- (void)_handleOnRemoteChange:(id)change;
- (void)changeBooksFinishedGoalTo:(int64_t)to completionHandler:(id)handler;
- (void)changeDailyGoalTo:(double)to completionHandler:(id)handler;
- (void)clearDataWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)stateInfoWithCompletionHandler:(id)handler;
@end

@implementation BDSReadingGoalsServiceClient

+ (id)sharedServiceProxy
{
  if (qword_1EE2B0488 != -1)
  {
    sub_1E4702018();
  }

  v3 = qword_1EE2B04B8;

  return v3;
}

- (BDSReadingGoalsServiceClient)init
{
  v7.receiver = self;
  v7.super_class = BDSReadingGoalsServiceClient;
  v2 = [(BDSReadingGoalsServiceClient *)&v7 init];
  if (v2)
  {
    v3 = +[BDSReadingGoalsServiceClient sharedServiceProxy];
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleOnRemoteChange_ name:@"com.apple.BDSService.ReadingGoalsService.onRemoteChange" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self name:@"com.apple.BDSService.ReadingGoalsService.onRemoteChange" object:0];

  v4.receiver = self;
  v4.super_class = BDSReadingGoalsServiceClient;
  [(BDSReadingGoalsServiceClient *)&v4 dealloc];
}

- (void)changeBooksFinishedGoalTo:(int64_t)to completionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [serviceProxy readingGoalsChangeBooksFinishedGoalTo:to withCompletion:handlerCopy];
}

- (void)changeDailyGoalTo:(double)to completionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [serviceProxy readingGoalsChangeDailyGoalTo:handlerCopy withCompletion:to];
}

- (void)clearDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [serviceProxy readingGoalsClearDataWithCompletion:handlerCopy];
}

- (void)stateInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  serviceProxy = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [serviceProxy readingGoalsStateInfoWithCompletion:handlerCopy];
}

+ (void)clearLocalCachedDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[BDSReadingGoalsServiceClient sharedServiceProxy];
  [v4 readingGoalsClearLocalCachedDataWithCompletion:handlerCopy];
}

- (void)_handleOnRemoteChange:(id)change
{
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BDSReadingGoalsServiceClient _handleOnRemoteChange", v7, 2u);
  }

  onRemoteChange = [(BDSReadingGoalsServiceClient *)self onRemoteChange];
  v6 = onRemoteChange;
  if (onRemoteChange)
  {
    (*(onRemoteChange + 16))(onRemoteChange);
  }
}

@end