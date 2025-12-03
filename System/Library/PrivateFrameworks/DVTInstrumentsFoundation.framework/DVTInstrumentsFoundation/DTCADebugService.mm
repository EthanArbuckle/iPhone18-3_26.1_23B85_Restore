@interface DTCADebugService
+ (void)registerCapabilities:(id)capabilities;
- (BOOL)_switchNamed:(id)named toDebugOption:(unsigned int *)option;
- (DTCADebugService)initWithChannel:(id)channel;
- (id)availableStatistics;
- (id)driverNames;
- (id)valueForSwitch:(id)switch;
- (void)_collectData;
- (void)cleanup;
- (void)cleanupSwitches;
- (void)dealloc;
- (void)setValue:(id)value forSwitchName:(id)name;
@end

@implementation DTCADebugService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.coreanimation.deferred" withVersion:1 forClass:self];
}

- (DTCADebugService)initWithChannel:(id)channel
{
  v7.receiver = self;
  v7.super_class = DTCADebugService;
  v3 = [(DTGraphicsService *)&v7 initWithChannel:channel];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    enabledSwitches = v3->_enabledSwitches;
    v3->_enabledSwitches = dictionary;
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
  enabledSwitches = [(DTCADebugService *)self enabledSwitches];
  v4 = [enabledSwitches countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(enabledSwitches);
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
      v5 = [enabledSwitches countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  enabledSwitches2 = [(DTCADebugService *)self enabledSwitches];
  [enabledSwitches2 removeAllObjects];

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

- (BOOL)_switchNamed:(id)named toDebugOption:(unsigned int *)option
{
  namedCopy = named;
  if (!option)
  {
    sub_24802FCA8();
  }

  v6 = namedCopy;
  if ([namedCopy isEqual:@"flashUpdatedRegions"])
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
  *option = v7;

  return v8;
}

- (id)valueForSwitch:(id)switch
{
  switchCopy = switch;
  v9 = 0;
  if ([(DTCADebugService *)self _switchNamed:switchCopy toDebugOption:&v9])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:CARenderServerGetDebugOption()];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DTCADebugService;
    v5 = [(DTGraphicsService *)&v8 valueForSwitch:switchCopy];
  }

  v6 = v5;

  return v6;
}

- (void)setValue:(id)value forSwitchName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  v11 = 0;
  if ([(DTCADebugService *)self _switchNamed:nameCopy toDebugOption:&v11])
  {
    bOOLValue = [valueCopy BOOLValue];
    CARenderServerSetDebugOption();
    enabledSwitches = [(DTCADebugService *)self enabledSwitches];
    v10 = enabledSwitches;
    if (bOOLValue)
    {
      [enabledSwitches setValue:valueCopy forKey:nameCopy];
    }

    else
    {
      [enabledSwitches removeObjectForKey:nameCopy];
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v10 = dictionary;
    if (v8)
    {
      [dictionary setObject:v8 forKey:@"FramesPerSecond"];
    }

    [v10 setObject:XRVideoCardRunTimeStamp forKey:v7];
    [v10 setObject:XRVideoCardIdentifier forKey:XRVideoCardBuiltIn];
    v11 = [MEMORY[0x277D03668] messageWithObject:v10];
    channel = [(DTXService *)self channel];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FE3764;
    v13[3] = &unk_278EF32E8;
    v13[4] = self;
    [channel sendMessage:v11 replyHandler:v13];

    objc_autoreleasePoolPop(v4);
    usleep(self->super._samplingRate);
  }

  dispatch_semaphore_signal(self->super._stopSamplingSemaphore);
}

@end