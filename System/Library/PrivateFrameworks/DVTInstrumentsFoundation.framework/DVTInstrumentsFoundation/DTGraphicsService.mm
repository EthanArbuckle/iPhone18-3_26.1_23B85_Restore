@interface DTGraphicsService
+ (void)registerCapabilities:(id)capabilities;
- (DTGraphicsService)initWithChannel:(id)channel;
- (id)_collectSampleForService;
- (id)availableStatistics;
- (id)currentFramesPerSecond:(double)second;
- (id)driverNames;
- (id)queryGlobalStatistics;
- (id)queryPidStatistics;
- (void)_collectData;
- (void)_releaseIOServices;
- (void)_setupIOServices;
- (void)dealloc;
- (void)queryCards;
- (void)startSamplingAtTimeInterval:(id)interval processIdentifier:(id)identifier;
- (void)stopSampling;
@end

@implementation DTGraphicsService

+ (void)registerCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.opengl" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.opengl.immediate" withVersion:1 forClass:self];
  [capabilitiesCopy publishCapability:@"com.apple.instruments.server.services.graphics.opengl.deferred" withVersion:1 forClass:self];
}

- (DTGraphicsService)initWithChannel:(id)channel
{
  v8.receiver = self;
  v8.super_class = DTGraphicsService;
  v3 = [(DTXService *)&v8 initWithChannel:channel];
  v4 = v3;
  if (v3)
  {
    v3->_samplingRate = 1000000;
    v5 = dispatch_semaphore_create(0);
    stopSamplingSemaphore = v4->_stopSamplingSemaphore;
    v4->_stopSamplingSemaphore = v5;

    v4->_globalService = 0;
    v4->_perProcessService = 0;
    v4->_capFPS = 1;
    v4->_maxFPS = 60;
  }

  return v4;
}

- (void)dealloc
{
  [(DTGraphicsService *)self _releaseIOServices];
  v3.receiver = self;
  v3.super_class = DTGraphicsService;
  [(DTGraphicsService *)&v3 dealloc];
}

- (id)queryGlobalStatistics
{
  globalService = self->_globalService;
  if (globalService)
  {
    properties = 0;
    v3 = IORegistryEntryCreateCFProperties(globalService, &properties, 0, 0);
    if (v3)
    {
      printf("%s:%d: kernel error %d\n", "[DTGraphicsService queryGlobalStatistics]", 90, v3);
      abort();
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary addEntriesFromDictionary:{CFDictionaryGetValue(properties, @"PerformanceStatistics"}];
    v5 = CFDictionaryGetValue(properties, @"IOGLBundleName");
    if (v5)
    {
      v6 = XRVideoCardIdentifier;
      v7 = dictionary;
      v8 = v5;
    }

    else
    {
      v8 = XRVideoCardBuiltIn;
      v6 = XRVideoCardIdentifier;
      v7 = dictionary;
    }

    [v7 setObject:v8 forKey:v6];
    CFRelease(properties);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"DTGraphicsServiceException" format:@"Global statics not found"];
    dictionary = 0;
  }

  return dictionary;
}

- (id)queryPidStatistics
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_perProcessService)
  {
    v3 = objc_opt_new();
    iterator = 0;
    MEMORY[0x24C1C24E0](self->_perProcessService, "IOService", &iterator);
    v4 = IOIteratorNext(iterator);
    if (v4)
    {
      v5 = v4;
      do
      {
        memset(v14, 0, sizeof(v14));
        MEMORY[0x24C1C24F0](v5, v14);
        if (*&v14[0] == 0x58424D656C707041 && *(&v14[0] + 1) == 0x65696C4372657355 && *(v14 + 11) == 0x746E65696C4372)
        {
          properties = 0;
          v8 = IORegistryEntryCreateCFProperties(v5, &properties, 0, 0);
          if (v8)
          {
            printf("%s:%d: kernel error %d\n", "[DTGraphicsService queryPidStatistics]", 126, v8);
            abort();
          }

          v9 = CFDictionaryGetValue(properties, @"PerformanceStatistics");
          if (v9)
          {
            [v3 addObject:v9];
          }

          CFRelease(properties);
        }

        IOObjectRelease(v5);
        v5 = IOIteratorNext(iterator);
      }

      while (v5);
    }

    IOObjectRelease(iterator);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"DTGraphicsServiceException" format:@"Per process statics not found"];
    v3 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_setupIOServices
{
  if (!self->_globalService)
  {
    v3 = IOServiceMatching("IOAcceleratorES");
    if (!v3)
    {
      v3 = IOServiceMatching("IOAcceleratorESLegacy");
      if (!v3)
      {
        v3 = IOServiceMatching("AppleMBXDevice");
      }
    }

    existing = 0;
    v4 = *MEMORY[0x277CD2898];
    MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x277CD2898], v3, &existing);
    if (MatchingServices)
    {
      printf("%s:%d: kernel error %d\n", "[DTGraphicsService _setupIOServices]", 188, MatchingServices);
      goto LABEL_19;
    }

    v6 = IOIteratorNext(existing);
    self->_globalService = v6;
    if (v6)
    {
      v7 = "IOAcceleratorES";
    }

    else
    {
      v8 = IOServiceMatching("AppleMBXDevice");
      v9 = IOServiceGetMatchingServices(v4, v8, &existing);
      if (v9)
      {
        printf("%s:%d: kernel error %d\n", "[DTGraphicsService _setupIOServices]", 195, v9);
        goto LABEL_19;
      }

      v10 = IOIteratorNext(existing);
      self->_globalService = v10;
      if (!v10)
      {
        return;
      }

      v7 = "AppleMBXDevice";
    }

    IOObjectRelease(existing);
    v11 = IOServiceMatching(v7);
    if (!v11)
    {
      v11 = IOServiceMatching("IOAcceleratorESLegacy");
    }

    v12 = IOServiceGetMatchingServices(v4, v11, &existing);
    if (!v12)
    {
      self->_perProcessService = IOIteratorNext(existing);
      IOObjectRelease(existing);
      return;
    }

    printf("%s:%d: kernel error %d\n", "[DTGraphicsService _setupIOServices]", 215, v12);
LABEL_19:
    abort();
  }
}

- (void)_releaseIOServices
{
  perProcessService = self->_perProcessService;
  if (perProcessService)
  {
    IOObjectRelease(perProcessService);
    self->_perProcessService = 0;
  }

  globalService = self->_globalService;
  if (globalService)
  {
    IOObjectRelease(globalService);
    self->_globalService = 0;
  }
}

- (void)queryCards
{
  context[1] = *MEMORY[0x277D85DE8];
  if (!self->_availableGlobalStatistics)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableGlobalStatistics = self->_availableGlobalStatistics;
    self->_availableGlobalStatistics = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    availableProcessStatistics = self->_availableProcessStatistics;
    self->_availableProcessStatistics = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    driverNames = self->_driverNames;
    self->_driverNames = v7;

    [(DTGraphicsService *)self _setupIOServices];
    queryGlobalStatistics = [(DTGraphicsService *)self queryGlobalStatistics];
    if (queryGlobalStatistics)
    {
      [(NSMutableArray *)self->_driverNames addObject:XRVideoCardBuiltIn];
      v10 = [queryGlobalStatistics count];
      v11 = (context - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v11, 8 * v10);
      context[0] = v11;
      CFDictionaryApplyFunction(queryGlobalStatistics, sub_247FC3414, context);
      qsort(v11, v10, 8uLL, sub_247FC344C);
      for (; v10; --v10)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", *v11];
        if (([(NSMutableArray *)self->_availableGlobalStatistics containsObject:v12]& 1) == 0)
        {
          [(NSMutableArray *)self->_availableGlobalStatistics addObject:v12];
        }

        ++v11;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)availableStatistics
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (!self->_availableGlobalStatistics)
  {
    [(DTGraphicsService *)self queryCards];
    [(NSMutableArray *)self->_availableGlobalStatistics addObject:@"CoreAnimationFramesPerSecond"];
    availableGlobalStatistics = self->_availableGlobalStatistics;
    v10[0] = @"global";
    v10[1] = @"process";
    availableProcessStatistics = self->_availableProcessStatistics;
    v11[0] = availableGlobalStatistics;
    v11[1] = availableProcessStatistics;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    availableStatistics = self->_availableStatistics;
    self->_availableStatistics = v5;
  }

  v7 = self->_availableStatistics;
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)driverNames
{
  driverNames = self->_driverNames;
  if (!driverNames)
  {
    [(DTGraphicsService *)self queryCards];
    driverNames = self->_driverNames;
  }

  return driverNames;
}

- (void)startSamplingAtTimeInterval:(id)interval processIdentifier:(id)identifier
{
  identifierCopy = identifier;
  self->_capFPS = CARenderServerGetDebugOption() ^ 1;
  self->_maxFPS = 60;
  [(DTGraphicsService *)self _setupIOServices];
  self->_doCollectData = 1;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastTimeStampInSeconds = v6;
  self->_startTime = v6;
  intValue = [identifierCopy intValue];

  self->_targetPid = intValue;
  v8 = MEMORY[0x277CCACC8];

  MEMORY[0x2821F9670](v8, sel_detachNewThreadSelector_toTarget_withObject_);
}

- (void)stopSampling
{
  if (self->_doCollectData)
  {
    self->_doCollectData = 0;
    dispatch_semaphore_wait(self->_stopSamplingSemaphore, 0xFFFFFFFFFFFFFFFFLL);

    [(DTGraphicsService *)self _releaseIOServices];
  }
}

- (id)_collectSampleForService
{
  v3 = objc_opt_new();
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4 - self->_startTime;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v5 * 1000000.0)];
  [v3 setObject:v6 forKey:XRVideoCardRunTimeStamp];
  queryGlobalStatistics = [(DTGraphicsService *)self queryGlobalStatistics];
  [v3 addEntriesFromDictionary:queryGlobalStatistics];

  if (self->_targetPid >= 1)
  {
    v28 = v6;
    v29 = v3;
    queryPidStatistics = [(DTGraphicsService *)self queryPidStatistics];
    v9 = objc_opt_new();
    v10 = [queryPidStatistics count];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v31 = queryPidStatistics;
      selfCopy = self;
      v30 = v10;
      do
      {
        v13 = [queryPidStatistics objectAtIndex:v12];
        v14 = [v13 objectForKey:@"OwningPID"];
        intValue = [v14 intValue];
        targetPid = self->_targetPid;

        if (intValue == targetPid)
        {
          if ([v9 count])
          {
            v33 = v12;
            allKeys = [v9 allKeys];
            v18 = [allKeys count];
            if (v18)
            {
              v19 = v18;
              for (i = 0; i != v19; ++i)
              {
                v21 = [allKeys objectAtIndex:i];
                v22 = [v9 objectForKey:v21];
                v23 = [v13 objectForKey:v21];
                if (v23)
                {
                  v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v23, "intValue") + objc_msgSend(v22, "intValue")}];
                  [v9 setObject:v24 forKey:v21];
                }
              }
            }

            queryPidStatistics = v31;
            self = selfCopy;
            v11 = v30;
            v12 = v33;
          }

          else
          {
            [v9 addEntriesFromDictionary:v13];
          }
        }

        ++v12;
      }

      while (v12 != v11);
    }

    v3 = v29;
    [v29 addEntriesFromDictionary:v9];

    v6 = v28;
  }

  v25 = [(DTGraphicsService *)self currentFramesPerSecond:v5];
  if (v25)
  {
    [v3 setObject:v25 forKey:@"CoreAnimationFramesPerSecond"];
  }

  v26 = [MEMORY[0x277D03668] messageWithObject:v3];

  return v26;
}

- (void)_collectData
{
  self->_lastFPSCount = CARenderServerGetFrameCounter();
  while (self->_doCollectData)
  {
    v3 = objc_autoreleasePoolPush();
    _collectSampleForService = [(DTGraphicsService *)self _collectSampleForService];
    if (_collectSampleForService)
    {
      channel = [(DTXService *)self channel];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = sub_247FC3B5C;
      v6[3] = &unk_278EF32E8;
      v6[4] = self;
      [channel sendMessage:_collectSampleForService replyHandler:v6];
    }

    objc_autoreleasePoolPop(v3);
    usleep(self->_samplingRate);
  }

  dispatch_semaphore_signal(self->_stopSamplingSemaphore);
}

- (id)currentFramesPerSecond:(double)second
{
  FrameCounter = CARenderServerGetFrameCounter();
  v6 = (FrameCounter - self->_lastFPSCount) / (second - self->_lastTimeStampInSeconds);
  self->_lastFPSCount = FrameCounter;
  self->_lastTimeStampInSeconds = second;
  if (!self->_capFPS || (maxFPS = self->_maxFPS, maxFPS >= v6))
  {
    maxFPS = v6;
  }

  v8 = MEMORY[0x277CCABB0];

  return [v8 numberWithUnsignedInt:maxFPS];
}

@end