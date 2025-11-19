@interface BDSReadingGoalsServiceClient
+ (id)sharedServiceProxy;
+ (void)clearLocalCachedDataWithCompletionHandler:(id)a3;
- (BDSReadingGoalsServiceClient)init;
- (void)_handleOnRemoteChange:(id)a3;
- (void)changeBooksFinishedGoalTo:(int64_t)a3 completionHandler:(id)a4;
- (void)changeDailyGoalTo:(double)a3 completionHandler:(id)a4;
- (void)clearDataWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)stateInfoWithCompletionHandler:(id)a3;
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

    v5 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v5 addObserver:v2 selector:sel__handleOnRemoteChange_ name:@"com.apple.BDSService.ReadingGoalsService.onRemoteChange" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.BDSService.ReadingGoalsService.onRemoteChange" object:0];

  v4.receiver = self;
  v4.super_class = BDSReadingGoalsServiceClient;
  [(BDSReadingGoalsServiceClient *)&v4 dealloc];
}

- (void)changeBooksFinishedGoalTo:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [v7 readingGoalsChangeBooksFinishedGoalTo:a3 withCompletion:v6];
}

- (void)changeDailyGoalTo:(double)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [v7 readingGoalsChangeDailyGoalTo:v6 withCompletion:a3];
}

- (void)clearDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [v5 readingGoalsClearDataWithCompletion:v4];
}

- (void)stateInfoWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BDSReadingGoalsServiceClient *)self serviceProxy];
  [v5 readingGoalsStateInfoWithCompletion:v4];
}

+ (void)clearLocalCachedDataWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[BDSReadingGoalsServiceClient sharedServiceProxy];
  [v4 readingGoalsClearLocalCachedDataWithCompletion:v3];
}

- (void)_handleOnRemoteChange:(id)a3
{
  v4 = BDSServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BDSReadingGoalsServiceClient _handleOnRemoteChange", v7, 2u);
  }

  v5 = [(BDSReadingGoalsServiceClient *)self onRemoteChange];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
  }
}

@end