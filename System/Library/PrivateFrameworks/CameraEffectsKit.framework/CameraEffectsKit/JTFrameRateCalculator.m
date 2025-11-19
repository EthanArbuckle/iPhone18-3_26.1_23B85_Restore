@interface JTFrameRateCalculator
- (JTFrameRateCalculator)initWithWindowSize:(double)a3;
- (void)JT_restart;
- (void)log:(id)a3;
- (void)tickDropped;
- (void)tickDroppedDisplay;
- (void)tickFrameReceived;
- (void)tickReceived;
@end

@implementation JTFrameRateCalculator

- (JTFrameRateCalculator)initWithWindowSize:(double)a3
{
  v13.receiver = self;
  v13.super_class = JTFrameRateCalculator;
  v4 = [(JTFrameRateCalculator *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_windowSize = a3;
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"com.apple.%@", v8];

    v10 = dispatch_queue_create([v9 UTF8String], 0);
    queue = v5->_queue;
    v5->_queue = v10;

    [(JTFrameRateCalculator *)v5 JT_restart];
  }

  return v5;
}

- (void)log:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__JTFrameRateCalculator_log___block_invoke;
  v7[3] = &unk_278D7A140;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __29__JTFrameRateCalculator_log___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stateDate];
  [v2 timeIntervalSinceNow];
  v4 = v3;

  [*(a1 + 32) windowSize];
  if (v5 > 0.0)
  {
    v6 = -v4;
    [*(a1 + 32) windowSize];
    if (v7 < -v4)
    {
      v8 = [*(a1 + 32) receivedRenderCount];
      v9 = v8 - [*(a1 + 32) droppedRenderCount];
      v10 = (v9 - [*(a1 + 32) droppedDisplayFrameCount]) / v6;
      v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v12 = [v11 BOOLForKey:@"JTLogFPS"];

      if (v12)
      {
        v13 = +[JFXVideoCameraController sharedInstance];
        v14 = [v13 debugFrameRateLabel];

        v15 = JFXLog_core();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v9 / v6;
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "receivedRenderCount")}];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "droppedRenderCount")}];
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "receivedDisplayFrameCount")}];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "droppedDisplayFrameCount")}];
          v21 = [*(a1 + 32) name];
          *buf = 134219778;
          v26 = v16;
          v27 = 2048;
          v28 = v10;
          v29 = 2112;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          v33 = 2112;
          v34 = v19;
          v35 = 2112;
          v36 = v20;
          v37 = 2112;
          v38 = v14;
          v39 = 2112;
          v40 = v21;
          _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "Processed FPS (%f); Display FPS (%f); recieved (%@); dropped (%@); frameCount(%@); droppedDisplay(%@); cameraRate (%@) [%@]", buf, 0x52u);
        }
      }

      [*(a1 + 32) JT_restart];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __29__JTFrameRateCalculator_log___block_invoke_7;
      v22[3] = &unk_278D7C0F0;
      v23 = *(a1 + 40);
      v24 = v10;
      dispatch_async(MEMORY[0x277D85CD0], v22);
    }
  }
}

- (void)tickReceived
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__JTFrameRateCalculator_tickReceived__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__JTFrameRateCalculator_tickReceived__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 receivedRenderCount] + 1;

  return [v1 setReceivedRenderCount:v2];
}

- (void)tickDropped
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__JTFrameRateCalculator_tickDropped__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__JTFrameRateCalculator_tickDropped__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 droppedRenderCount] + 1;

  return [v1 setDroppedRenderCount:v2];
}

- (void)tickFrameReceived
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__JTFrameRateCalculator_tickFrameReceived__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__JTFrameRateCalculator_tickFrameReceived__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 receivedDisplayFrameCount] + 1;

  return [v1 setReceivedDisplayFrameCount:v2];
}

- (void)tickDroppedDisplay
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JTFrameRateCalculator_tickDroppedDisplay__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __43__JTFrameRateCalculator_tickDroppedDisplay__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 droppedDisplayFrameCount] + 1;

  return [v1 setDroppedDisplayFrameCount:v2];
}

- (void)JT_restart
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__JTFrameRateCalculator_JT_restart__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __35__JTFrameRateCalculator_JT_restart__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setStateDate:v2];

  [*(a1 + 32) setReceivedRenderCount:0];
  [*(a1 + 32) setDroppedRenderCount:0];
  [*(a1 + 32) setReceivedDisplayFrameCount:0];
  v3 = *(a1 + 32);

  return [v3 setDroppedDisplayFrameCount:0];
}

@end