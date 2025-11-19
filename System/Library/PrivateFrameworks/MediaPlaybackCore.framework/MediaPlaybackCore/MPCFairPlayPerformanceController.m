@interface MPCFairPlayPerformanceController
+ (MPCFairPlayPerformanceController)shared;
- (void)accountManager:(id)a3 didChangeAccounts:(id)a4;
- (void)database:(id)a3 didFinishImportRequest:(id)a4 result:(id)a5;
- (void)registerEngine:(id)a3;
- (void)unregisterEngine:(id)a3;
@end

@implementation MPCFairPlayPerformanceController

+ (MPCFairPlayPerformanceController)shared
{
  v2 = sub_1C5C645B8();

  return v2;
}

- (void)registerEngine:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5C67F88(v4);
}

- (void)unregisterEngine:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5D306B0(v4);
}

- (void)accountManager:(id)a3 didChangeAccounts:(id)a4
{
  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  sub_1C6016B10();
  v6 = a3;
  v7 = self;
  sub_1C5D32ACC();
}

- (void)database:(id)a3 didFinishImportRequest:(id)a4 result:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = self;
  sub_1C5D3520C(v12, v11, v10);
}

@end