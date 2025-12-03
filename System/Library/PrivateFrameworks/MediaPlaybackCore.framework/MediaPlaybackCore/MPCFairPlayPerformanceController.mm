@interface MPCFairPlayPerformanceController
+ (MPCFairPlayPerformanceController)shared;
- (void)accountManager:(id)manager didChangeAccounts:(id)accounts;
- (void)database:(id)database didFinishImportRequest:(id)request result:(id)result;
- (void)registerEngine:(id)engine;
- (void)unregisterEngine:(id)engine;
@end

@implementation MPCFairPlayPerformanceController

+ (MPCFairPlayPerformanceController)shared
{
  v2 = sub_1C5C645B8();

  return v2;
}

- (void)registerEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  sub_1C5C67F88(engineCopy);
}

- (void)unregisterEngine:(id)engine
{
  engineCopy = engine;
  selfCopy = self;
  sub_1C5D306B0(engineCopy);
}

- (void)accountManager:(id)manager didChangeAccounts:(id)accounts
{
  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  sub_1C6016B10();
  managerCopy = manager;
  selfCopy = self;
  sub_1C5D32ACC();
}

- (void)database:(id)database didFinishImportRequest:(id)request result:(id)result
{
  databaseCopy = database;
  requestCopy = request;
  resultCopy = result;
  selfCopy = self;
  sub_1C5D3520C(selfCopy, v11, resultCopy);
}

@end