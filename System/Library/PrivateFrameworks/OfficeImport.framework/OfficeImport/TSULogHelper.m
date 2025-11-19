@interface TSULogHelper
+ (id)sharedInstance;
- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3;
@end

@implementation TSULogHelper

+ (id)sharedInstance
{
  if (sharedInstance_pred != -1)
  {
    +[TSULogHelper sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

void __30__TSULogHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TSULogHelper);
  v1 = sharedInstance__instance;
  sharedInstance__instance = v0;
}

- (BOOL)incrementThrottleCountAndCheckThottleMax:(unint64_t)a3
{
  v5 = [(TSULogHelper *)self throttleCount];
  [(TSULogHelper *)self setThrottleCount:[(TSULogHelper *)self throttleCount]+ 1];
  v6 = [(TSULogHelper *)self lastThrottleCheck];
  if (v5 == a3 && TSUPerformanceCat_init_token != -1)
  {
    [TSULogHelper incrementThrottleCountAndCheckThottleMax:];
  }

  if (v5 < a3 || !v6)
  {
    goto LABEL_12;
  }

  [v6 timeIntervalSinceNow];
  v8 = v7;
  [v6 timeIntervalSinceNow];
  if (v9 < -300.0)
  {
    if (TSUPerformanceCat_init_token != -1)
    {
      [TSULogHelper incrementThrottleCountAndCheckThottleMax:];
    }

    [(TSULogHelper *)self setThrottleCount:0];
  }

  if (v8 >= -60.0)
  {
    v10 = 1;
  }

  else
  {
LABEL_12:
    v11 = [MEMORY[0x277CBEAA8] date];
    [(TSULogHelper *)self setLastThrottleCheck:v11];

    v10 = 0;
  }

  return v10;
}

void __57__TSULogHelper_incrementThrottleCountAndCheckThottleMax___block_invoke()
{
  v0 = TSULogCreateCategory("TSUPerformanceCat");
  v1 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v0;
}

void __57__TSULogHelper_incrementThrottleCountAndCheckThottleMax___block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUPerformanceCat");
  v1 = TSUPerformanceCat_log_t;
  TSUPerformanceCat_log_t = v0;
}

@end