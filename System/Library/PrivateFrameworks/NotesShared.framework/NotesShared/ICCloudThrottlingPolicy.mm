@interface ICCloudThrottlingPolicy
+ (void)resetSavedPolicyState;
- (ICCloudThrottlingLevel)currentLevel;
- (ICCloudThrottlingPolicy)init;
- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)levels resetInterval:(double)interval;
- (double)batchInterval;
- (double)maximumBatchIntervalFactor;
- (void)changeLevelIfNecessary;
- (void)dealloc;
- (void)incrementBatchCount;
- (void)loadSavedPolicyState;
- (void)resetPolicy;
- (void)savePolicyState;
- (void)startPolicyResetTimer;
@end

@implementation ICCloudThrottlingPolicy

- (void)loadSavedPolicyState
{
  [self currentLevelIndex];
  throttlingLevels = [self throttlingLevels];
  [throttlingLevels count];
  currentLevel = [self currentLevel];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

- (void)startPolicyResetTimer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICCloudThrottlingPolicy_startPolicyResetTimer__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (ICCloudThrottlingLevel)currentLevel
{
  currentLevelIndex = [(ICCloudThrottlingPolicy *)self currentLevelIndex];
  throttlingLevels = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v5 = [throttlingLevels count] - 1;

  if (currentLevelIndex >= v5)
  {
    currentLevelIndex = v5;
  }

  throttlingLevels2 = [(ICCloudThrottlingPolicy *)self throttlingLevels];
  v7 = [throttlingLevels2 objectAtIndexedSubscript:currentLevelIndex];

  return v7;
}

- (double)batchInterval
{
  currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
  [currentLevel batchInterval];
  v4 = v3;

  return v4;
}

- (double)maximumBatchIntervalFactor
{
  currentLevel = [(ICCloudThrottlingPolicy *)self currentLevel];
  [currentLevel maximumBatchIntervalFactor];
  v4 = v3;

  return v4;
}

void __48__ICCloudThrottlingPolicy_startPolicyResetTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) policyResetTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) policyResetTimer];
    [v4 invalidate];

    [*(a1 + 32) setPolicyResetTimer:0];
  }

  v5 = [*(a1 + 32) policyStartDate];
  [*(a1 + 32) resetInterval];
  v8 = [v5 dateByAddingTimeInterval:?];

  v6 = MEMORY[0x277CBEBB8];
  [v8 timeIntervalSinceNow];
  v7 = [v6 scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_resetPolicy selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setPolicyResetTimer:v7];
}

- (ICCloudThrottlingPolicy)init
{
  [(ICCloudThrottlingPolicy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICCloudThrottlingPolicy)initWithThrottlingLevels:(id)levels resetInterval:(double)interval
{
  levelsCopy = levels;
  v17.receiver = self;
  v17.super_class = ICCloudThrottlingPolicy;
  v7 = [(ICCloudThrottlingPolicy *)&v17 init];
  v8 = v7;
  if (v7)
  {
    [(ICCloudThrottlingPolicy *)v7 setThrottlingLevels:levelsCopy];
    [(ICCloudThrottlingPolicy *)v8 setResetInterval:interval];
    [(ICCloudThrottlingPolicy *)v8 loadSavedPolicyState];
    policyStartDate = [(ICCloudThrottlingPolicy *)v8 policyStartDate];
    [policyStartDate timeIntervalSinceNow];
    v11 = -v10;
    [(ICCloudThrottlingPolicy *)v8 resetInterval];
    v13 = v12;

    if (v13 < v11)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__ICCloudThrottlingPolicy_initWithThrottlingLevels_resetInterval___block_invoke;
      block[3] = &unk_278194B00;
      v16 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [(ICCloudThrottlingPolicy *)v8 startPolicyResetTimer];
  }

  return v8;
}

- (void)dealloc
{
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __34__ICCloudThrottlingPolicy_dealloc__block_invoke;
  v8 = &unk_278194B00;
  selfCopy = self;
  performBlockOnMainThreadAndWait();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICCloudThrottlingPolicy;
  [(ICCloudThrottlingPolicy *)&v4 dealloc];
}

uint64_t __34__ICCloudThrottlingPolicy_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) policyResetTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setPolicyResetTimer:0];
}

- (void)incrementBatchCount
{
  [self currentBatchCount];
  [self currentLevelIndex];
  throttlingLevels = [self throttlingLevels];
  [throttlingLevels count];
  currentLevel = [self currentLevel];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x28u);
}

- (void)changeLevelIfNecessary
{
  [self currentLevelIndex];
  throttlingLevels = [self throttlingLevels];
  [throttlingLevels count];
  currentLevel = [self currentLevel];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x18u);
}

- (void)resetPolicy
{
  currentLevel = [self currentLevel];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)resetSavedPolicyState
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180] removeObjectForKey:@"ThrottlingPolicyCurrentBatchCount"];

  mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180]2 removeObjectForKey:@"ThrottlingPolicyCurrentLevelIndex"];

  mEMORY[0x277D36180]3 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  [mEMORY[0x277D36180]3 removeObjectForKey:@"ThrottlingPolicyStartTime"];
}

- (void)savePolicyState
{
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICCloudThrottlingPolicy currentBatchCount](self, "currentBatchCount")}];
  [mEMORY[0x277D36180] setObject:v4 forKey:@"ThrottlingPolicyCurrentBatchCount"];

  mEMORY[0x277D36180]2 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICCloudThrottlingPolicy currentLevelIndex](self, "currentLevelIndex")}];
  [mEMORY[0x277D36180]2 setObject:v6 forKey:@"ThrottlingPolicyCurrentLevelIndex"];

  mEMORY[0x277D36180]3 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  policyStartDate = [(ICCloudThrottlingPolicy *)self policyStartDate];
  [policyStartDate timeIntervalSinceReferenceDate];
  [mEMORY[0x277D36180]3 setDouble:@"ThrottlingPolicyStartTime" forKey:?];
}

@end