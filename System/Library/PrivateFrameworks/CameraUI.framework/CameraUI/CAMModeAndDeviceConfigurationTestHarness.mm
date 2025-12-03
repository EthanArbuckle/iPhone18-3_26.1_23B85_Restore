@interface CAMModeAndDeviceConfigurationTestHarness
- (CAMModeAndDeviceConfigurationTestHarness)initWithTestName:(id)name;
- (void)_handleChangeToMode:(id)mode;
- (void)_handleDidCloseViewfinderForReason:(id)reason;
- (void)_handleDidOpenViewfinderForReason:(id)reason;
- (void)_handleWillCloseViewfinderForReason:(id)reason;
- (void)_handleWillOpenViewfinderForReason:(id)reason;
- (void)handleChangeToMode:(int64_t)mode device:(int64_t)device;
- (void)registerHandler:(id)handler forChangeToMode:(int64_t)mode devicePosition:(int64_t)position;
- (void)removeListeners;
- (void)setupListeners;
- (void)startTesting;
- (void)stopTesting;
@end

@implementation CAMModeAndDeviceConfigurationTestHarness

- (CAMModeAndDeviceConfigurationTestHarness)initWithTestName:(id)name
{
  v8.receiver = self;
  v8.super_class = CAMModeAndDeviceConfigurationTestHarness;
  v3 = [(CAMPerformanceTestHarness *)&v8 initWithTestName:name];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleChangeToMode_ name:@"CAMPerformanceDidChangeToModeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleWillCloseViewfinderForReason_ name:@"CAMPerformanceWillCloseViewfinderNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleDidCloseViewfinderForReason_ name:@"CAMPerformanceDidCloseViewfinderNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleWillOpenViewfinderForReason_ name:@"CAMPerformanceWillOpenViewfinderNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleDidOpenViewfinderForReason_ name:@"CAMPerformanceDidOpenViewfinderNotification" object:0];
}

- (void)removeListeners
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
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

- (void)_handleChangeToMode:(id)mode
{
  userInfo = [mode userInfo];
  v4 = [userInfo valueForKey:@"mode"];
  intValue = [v4 intValue];

  v6 = [userInfo valueForKey:@"device"];
  intValue2 = [v6 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleChangeToMode:intValue device:intValue2];
}

- (void)_handleWillCloseViewfinderForReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo valueForKey:@"reason"];
  intValue = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleWillCloseViewfinderForReason:intValue];
}

- (void)_handleDidCloseViewfinderForReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo valueForKey:@"reason"];
  intValue = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleDidCloseViewfinderForReason:intValue];
}

- (void)_handleWillOpenViewfinderForReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo valueForKey:@"reason"];
  intValue = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleWillOpenViewfinderForReason:intValue];
}

- (void)_handleDidOpenViewfinderForReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo valueForKey:@"reason"];
  intValue = [v4 intValue];

  [(CAMModeAndDeviceConfigurationTestHarness *)self handleDidOpenViewfinderForReason:intValue];
}

- (void)handleChangeToMode:(int64_t)mode device:(int64_t)device
{
  v31 = *MEMORY[0x1E69E9840];
  if ((device - 1) > 0xA)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_1A3A6A978[device - 1];
  }

  _modeChangeListeners = [(CAMModeAndDeviceConfigurationTestHarness *)self _modeChangeListeners];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = _modeChangeListeners;
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
        if ([v13 desiredMode] == mode && objc_msgSend(v13, "desiredDevicePosition") == v5)
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
        handler = [v19 handler];
        handler[2]();

        [v8 removeObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)registerHandler:(id)handler forChangeToMode:(int64_t)mode devicePosition:(int64_t)position
{
  handlerCopy = handler;
  v10 = objc_alloc_init(CAMModeAndDeviceConfigurationChangeListener);
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setDesiredMode:mode];
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setDesiredDevicePosition:position];
  [(CAMModeAndDeviceConfigurationChangeListener *)v10 setHandler:handlerCopy];

  _modeChangeListeners = [(CAMModeAndDeviceConfigurationTestHarness *)self _modeChangeListeners];
  [_modeChangeListeners addObject:v10];
}

@end