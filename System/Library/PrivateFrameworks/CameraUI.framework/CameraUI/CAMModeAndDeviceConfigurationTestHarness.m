@interface CAMModeAndDeviceConfigurationTestHarness
- (CAMModeAndDeviceConfigurationTestHarness)initWithTestName:(id)a3;
- (void)_handleChangeToMode:(id)a3;
- (void)_handleDidCloseViewfinderForReason:(id)a3;
- (void)_handleDidOpenViewfinderForReason:(id)a3;
- (void)_handleWillCloseViewfinderForReason:(id)a3;
- (void)_handleWillOpenViewfinderForReason:(id)a3;
- (void)handleChangeToMode:(int64_t)a3 device:(int64_t)a4;
- (void)registerHandler:(id)a3 forChangeToMode:(int64_t)a4 devicePosition:(int64_t)a5;
- (void)removeListeners;
- (void)setupListeners;
- (void)startTesting;
- (void)stopTesting;
@end

@implementation CAMModeAndDeviceConfigurationTestHarness

- (CAMModeAndDeviceConfigurationTestHarness)initWithTestName:(id)a3
{
  v8.receiver = self;
  v8.super_class = CAMModeAndDeviceConfigurationTestHarness;
  v3 = [(CAMPerformanceTestHarness *)&v8 initWithTestName:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    modeChangeListeners = v3->__modeChangeListeners;
    v3->__modeChangeListeners = v4;

    [(CAMModeAndDeviceConfigurationTestHarness *)v3 setupListeners];
    v6 = v3;
  }

  return v3;
}

- (void)setupListeners
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleChangeToMode_ name:@"CAMPerformanceDidChangeToModeNotification" object:0];
  [v3 addObserver:self selector:sel__handleWillCloseViewfinderForReason_ name:@"CAMPerformanceWillCloseViewfinderNotification" object:0];
  [v3 addObserver:self selector:sel__handleDidCloseViewfinderForReason_ name:@"CAMPerformanceDidCloseViewfinderNotification" object:0];
  [v3 addObserver:self selector:sel__handleWillOpenViewfinderForReason_ name:@"CAMPerformanceWillOpenViewfinderNotification" object:0];
  [v3 addObserver:self selector:sel__handleDidOpenViewfinderForReason_ name:@"CAMPerformanceDidOpenViewfinderNotification" object:0];
}

- (void)removeListeners
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)startTesting
{
  [(CAMModeAndDeviceConfigurationTestHarness *)self setupListeners];
  v3.receiver = self;
  v3.super_class = CAMModeAndDeviceConfigurationTestHarness;
  [(CAMPerformanceTestHarness *)&v3 startTesting];
}

- (void)stopTesting
{
  v3.receiver = self;
  v3.super_class = CAMModeAndDeviceConfigurationTestHarness;
  [(CAMPerformanceTestHarness *)&v3 stopTesting];
  [(CAMModeAndDeviceConfigurationTestHarness *)self removeListeners];
}

- (void)_handleChangeToMode:(id)a3
{
  v8 = [a3 userInfo];
  v4 = [v8 valueForKey:@"mode"];
  v5 = [v4 intValue];

  v6 = [v8 valueForKey:@"device"];
  v7 = [v6 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleChangeToMode:v5 device:v7];
}

- (void)_handleWillCloseViewfinderForReason:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 valueForKey:@"reason"];
  v5 = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleWillCloseViewfinderForReason:v5];
}

- (void)_handleDidCloseViewfinderForReason:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 valueForKey:@"reason"];
  v5 = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleDidCloseViewfinderForReason:v5];
}

- (void)_handleWillOpenViewfinderForReason:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 valueForKey:@"reason"];
  v5 = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleWillOpenViewfinderForReason:v5];
}

- (void)_handleDidOpenViewfinderForReason:(id)a3
{
  v6 = [a3 userInfo];
  v4 = [v6 valueForKey:@"reason"];
  v5 = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleDidOpenViewfinderForReason:v5];
}

- (void)handleChangeToMode:(int64_t)a3 device:(int64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if ((a4 - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A3A6A978[a4 - 1];
  }

  v6 = [(CAMModeAndDeviceConfigurationTestHarness *)self _modeChangeListeners];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 desiredMode] == a3 && objc_msgSend(v13, "desiredDevicePosition") == v5)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        v20 = [v19 handler];
        v20[2]();

        [v8 removeObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)registerHandler:(id)a3 forChangeToMode:(int64_t)a4 devicePosition:(int64_t)a5
{
  v8 = a3;
  v10 = objc_alloc_init(CAMModeAndDeviceConfigurationChangeListener);
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setDesiredMode:a4];
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setDesiredDevicePosition:a5];
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setHandler:v8];

  v9 = [(CAMModeAndDeviceConfigurationTestHarness *)self _modeChangeListeners];
  [v9 addObject:v10];
}

@end