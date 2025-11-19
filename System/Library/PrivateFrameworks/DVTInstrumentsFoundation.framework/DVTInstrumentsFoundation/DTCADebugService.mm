@interface DTCADebugService
+ (void)registerCapabilities:(id)a3;
- (BOOL)_switchNamed:(id)a3 toDebugOption:(unsigned int *)a4;
- (DTCADebugService)initWithChannel:(id)a3;
- (id)availableStatistics;
- (id)driverNames;
- (id)valueForSwitch:(id)a3;
- (void)_collectData;
- (void)cleanup;
- (void)cleanupSwitches;
- (void)dealloc;
- (void)setValue:(id)a3 forSwitchName:(id)a4;
@end

@implementation DTCADebugService

+ (void)registerCapabilities:(id)a3
{
  v4 = a3;
  [v4 publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation.immediate" withVersion:1 forClass:a1];
  [v4 publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation.deferred" withVersion:1 forClass:a1];
}

- (DTCADebugService)initWithChannel:(id)a3
{
  v7.receiver = self;
  v7.super_class = DTCADebugService;
  v3 = [(DTGraphicsService *)&v7 initWithChannel:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    enabledSwitches = v3->_enabledSwitches;
    v3->_enabledSwitches = v4;
  }

  return v3;
}

- (void)dealloc
{
  [(DTCADebugService *)self cleanupSwitches];
  v3.receiver = self;
  v3.super_class = DTCADebugService;
  [(DTGraphicsService *)&v3 dealloc];
}

- (void)cleanupSwitches
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(DTCADebugService *)self enabledSwitches];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v11 = 0;
        if ([(DTCADebugService *)self _switchNamed:v8 toDebugOption:&v11])
        {
          CARenderServerSetDebugOption();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [(DTCADebugService *)self enabledSwitches];
  [v9 removeAllObjects];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)availableStatistics
{
  if (!self->super._availableGlobalStatistics)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"FramesPerSecond", 0}];
    availableGlobalStatistics = self->super._availableGlobalStatistics;
    self->super._availableGlobalStatistics = v3;

    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{self->super._availableGlobalStatistics, @"global", 0}];
    availableStatistics = self->super._availableStatistics;
    self->super._availableStatistics = v5;
  }

  v7 = self->super._availableStatistics;

  return v7;
}

- (id)driverNames
{
  driverNames = self->super._driverNames;
  if (!driverNames)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithObjects:{XRVideoCardBuiltIn, 0}];
    v5 = self->super._driverNames;
    self->super._driverNames = v4;

    driverNames = self->super._driverNames;
  }

  return driverNames;
}

- (void)cleanup
{
  [(DTCADebugService *)self cleanupSwitches];
  v3.receiver = self;
  v3.super_class = DTCADebugService;
  [(DTGraphicsService *)&v3 cleanup];
}

- (BOOL)_switchNamed:(id)a3 toDebugOption:(unsigned int *)a4
{
  v5 = a3;
  if (!a4)
  {
    sub_24802FCA8();
  }

  v6 = v5;
  if ([v5 isEqual:@"flashUpdatedRegions"])
  {
    v7 = 0;
LABEL_6:
    LOBYTE(v8) = 1;
    goto LABEL_7;
  }

  if ([v6 isEqual:@"colorCopiedImages"])
  {
    v7 = 1;
    goto LABEL_6;
  }

  if ([v6 isEqual:@"colorBlendedLayers"])
  {
    LOBYTE(v8) = 1;
    v7 = 2;
  }

  else if ([v6 isEqual:@"colorMisalignedImages"])
  {
    LOBYTE(v8) = 1;
    v7 = 14;
  }

  else if ([v6 isEqual:@"colorImmediately"])
  {
    LOBYTE(v8) = 1;
    v7 = 3;
  }

  else if ([v6 isEqual:@"colorOpenGLFastPathBlue"])
  {
    LOBYTE(v8) = 1;
    v7 = 18;
  }

  else if ([v6 isEqual:@"colorOffscreenRenderedYellow"])
  {
    LOBYTE(v8) = 1;
    v7 = 17;
  }

  else if ([v6 isEqual:@"colorCached"])
  {
    LOBYTE(v8) = 1;
    v7 = 19;
  }

  else
  {
    v8 = [v6 isEqual:@"colorFormats"];
    if (v8)
    {
      v7 = 20;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_7:
  *a4 = v7;

  return v8;
}

- (id)valueForSwitch:(id)a3
{
  v4 = a3;
  v9 = 0;
  if ([(DTCADebugService *)self _switchNamed:v4 toDebugOption:&v9])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:CARenderServerGetDebugOption()];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DTCADebugService;
    v5 = [(DTGraphicsService *)&v8 valueForSwitch:v4];
  }

  v6 = v5;

  return v6;
}

- (void)setValue:(id)a3 forSwitchName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  if ([(DTCADebugService *)self _switchNamed:v7 toDebugOption:&v11])
  {
    v8 = [v6 BOOLValue];
    CARenderServerSetDebugOption();
    v9 = [(DTCADebugService *)self enabledSwitches];
    v10 = v9;
    if (v8)
    {
      [v9 setValue:v6 forKey:v7];
    }

    else
    {
      [v9 removeObjectForKey:v7];
    }
  }
}

- (void)_collectData
{
  self->super._lastFPSCount = CARenderServerGetFrameCounter();
  if (MGGetBoolAnswer())
  {
    v3 = 120;
  }

  else
  {
    v3 = 60;
  }

  self->super._maxFPS = v3;
  while (self->super._doCollectData)
  {
    v4 = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5 - self->super._startTime;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v6 * 1000000.0)];
    v8 = [(DTGraphicsService *)self currentFramesPerSecond:v6];
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = v9;
    if (v8)
    {
      [v9 setObject:v8 forKey:@"FramesPerSecond"];
    }

    [v10 setObject:XRVideoCardRunTimeStamp forKey:v7];
    [v10 setObject:XRVideoCardIdentifier forKey:XRVideoCardBuiltIn];
    v11 = [MEMORY[0x277D03668] messageWithObject:v10];
    v12 = [(DTXService *)self channel];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FE3764;
    v13[3] = &unk_278EF32E8;
    v13[4] = self;
    [v12 sendMessage:v11 replyHandler:v13];

    objc_autoreleasePoolPop(v4);
    usleep(self->super._samplingRate);
  }

  dispatch_semaphore_signal(self->super._stopSamplingSemaphore);
}

@end