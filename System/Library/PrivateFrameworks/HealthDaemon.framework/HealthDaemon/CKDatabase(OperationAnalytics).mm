@interface CKDatabase(OperationAnalytics)
+ (void)hd_addOperationObserver:()OperationAnalytics queue:;
- (void)hd_addOperation:()OperationAnalytics;
@end

@implementation CKDatabase(OperationAnalytics)

+ (void)hd_addOperationObserver:()OperationAnalytics queue:
{
  v5 = _MergedGlobals_201;
  v6 = a4;
  v7 = a3;
  v9 = v7;
  if (v5 == -1)
  {
    v8 = v7;
  }

  else
  {
    dispatch_once(&_MergedGlobals_201, &__block_literal_global_100);
    v8 = v9;
  }

  [qword_280D67BF8 registerObserver:v8 queue:v6];
}

- (void)hd_addOperation:()OperationAnalytics
{
  v4 = a3;
  [a1 addOperation:v4];
  v5 = qword_280D67BF8;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CKDatabase_OperationAnalytics__hd_addOperation___block_invoke;
  v7[3] = &unk_278620A40;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  [v5 notifyObservers:v7];
}

@end