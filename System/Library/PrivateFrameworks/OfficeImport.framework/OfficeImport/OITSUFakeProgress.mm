@interface OITSUFakeProgress
- (OITSUFakeProgress)initWithMaxValue:(double)value numberOfStages:(unint64_t)stages;
- (void)advanceToStage:(unint64_t)stage;
- (void)dealloc;
- (void)p_slowlyAdvanceToNextStage;
- (void)start;
- (void)stop;
@end

@implementation OITSUFakeProgress

- (OITSUFakeProgress)initWithMaxValue:(double)value numberOfStages:(unint64_t)stages
{
  if (!stages)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUFakeProgress initWithMaxValue:numberOfStages:]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUProgress.m"], 651, 0, "Invalid parameter not satisfying: %{public}s", "numberOfStages > 0");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v10.receiver = self;
  v10.super_class = OITSUFakeProgress;
  v8 = [(OITSUBasicProgress *)&v10 initWithMaxValue:value];
  if (v8)
  {
    v8->_accessQueue = dispatch_queue_create("TSUFakeProgress", 0);
    v8->_numberOfStages = stages;
    v8->_stopped = 1;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OITSUFakeProgress;
  [(OITSUBasicProgress *)&v3 dealloc];
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__OITSUFakeProgress_start__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

uint64_t __26__OITSUFakeProgress_start__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 64) == 1)
  {
    *(v1 + 64) = 0;
    return [*(result + 32) p_slowlyAdvanceToNextStage];
  }

  return result;
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__OITSUFakeProgress_stop__block_invoke;
  block[3] = &unk_2799C60B0;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)advanceToStage:(unint64_t)stage
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__OITSUFakeProgress_advanceToStage___block_invoke;
  v4[3] = &unk_2799C66D8;
  v4[4] = self;
  v4[5] = stage;
  dispatch_async(accessQueue, v4);
}

uint64_t __36__OITSUFakeProgress_advanceToStage___block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v2 > *(v3 + 48) && v2 <= *(v3 + 56))
  {
    v4 = result;
    *(v3 + 48) = v2;
    v5 = *(result + 32);
    v6 = v5[6] / v5[7];
    [v5 maxValue];
    v8 = v7 * v6;
    v9 = *(v4 + 32);

    return [v9 setValue:v8];
  }

  return result;
}

- (void)p_slowlyAdvanceToNextStage
{
  if (!self->_stopped && self->_currentStage < self->_numberOfStages)
  {
    v3 = dispatch_time(0, 250000000);
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__OITSUFakeProgress_p_slowlyAdvanceToNextStage__block_invoke;
    block[3] = &unk_2799C60B0;
    block[4] = self;
    dispatch_after(v3, accessQueue, block);
  }
}

uint64_t __47__OITSUFakeProgress_p_slowlyAdvanceToNextStage__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  v4 = 1.0 / v2[7];
  [v2 value];
  v5 = *(a1 + 32);
  v6 = v5[6];
  v8 = 1.0 - (1.0 - (v7 - v6 * v4) / v4) * 0.95;
  if (v8 > 0.95)
  {
    v8 = 0.95;
  }

  v9 = v4 * (v8 + v6);
  if (v9 <= 1.0)
  {
    v3 = v9;
  }

  [v5 maxValue];
  [*(a1 + 32) setValue:v10 * v3];
  v11 = *(a1 + 32);

  return [v11 p_slowlyAdvanceToNextStage];
}

@end