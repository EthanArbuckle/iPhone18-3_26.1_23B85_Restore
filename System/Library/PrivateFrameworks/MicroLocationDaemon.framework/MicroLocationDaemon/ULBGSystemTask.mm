@interface ULBGSystemTask
- (ULBGSystemTask)initWithUnderlyingTask:(id)a3;
@end

@implementation ULBGSystemTask

- (ULBGSystemTask)initWithUnderlyingTask:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULBGSystemTask;
  v5 = [(ULBGSystemTask *)&v10 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__ULBGSystemTask_initWithUnderlyingTask___block_invoke;
    v7[3] = &unk_2798D4080;
    objc_copyWeak(&v8, &location);
    [v4 setExpirationHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __41__ULBGSystemTask_initWithUnderlyingTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setShouldCancel:1];
    WeakRetained = v2;
  }
}

@end