@interface CAMDelayTestHarness
- (CAMDelayTestHarness)initWithTestName:(id)name secondsDelay:(int64_t)delay;
- (void)startTesting;
@end

@implementation CAMDelayTestHarness

- (CAMDelayTestHarness)initWithTestName:(id)name secondsDelay:(int64_t)delay
{
  v9.receiver = self;
  v9.super_class = CAMDelayTestHarness;
  v5 = [(CAMPerformanceTestHarness *)&v9 initWithTestName:name];
  v6 = v5;
  if (v5)
  {
    v5->__delay = delay;
    v7 = v5;
  }

  return v6;
}

- (void)startTesting
{
  v5.receiver = self;
  v5.super_class = CAMDelayTestHarness;
  [(CAMPerformanceTestHarness *)&v5 startTesting];
  v3 = dispatch_time(0, 1000000000 * [(CAMDelayTestHarness *)self _delay]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__CAMDelayTestHarness_startTesting__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

@end