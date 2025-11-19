@interface HalogenMeasurement
- (BOOL)_allocBuffers;
- (BOOL)_connectToAccessoryManager:(int)a3;
- (BOOL)_createSleepWakeNotifier;
- (BOOL)_initArbiter;
- (BOOL)_initAudioPath;
- (BOOL)shouldInvertData;
- (id)getResultString;
- (int)saveAsWav:(id)a3;
- (unsigned)maxOutputAmplitude;
- (unsigned)signalOffset;
- (void)_allocBuffers;
- (void)_createSleepWakeNotifier;
- (void)_deinitArbiter;
- (void)_deinitAudioPath;
- (void)_destroySleepWakeNotifier;
- (void)_disconnectFromAccessoryManager;
- (void)_freeBuffers;
- (void)_generateSineWave;
- (void)_initArbiter;
- (void)_initAudioPath;
- (void)_resetCalcValues;
- (void)dealloc;
@end

@implementation HalogenMeasurement

- (void)dealloc
{
  [(HalogenMeasurement *)self _destroySleepWakeNotifier];
  [(HalogenMeasurement *)self _disconnectFromAccessoryManager];
  [(HalogenMeasurement *)self _deinitArbiter];
  [(HalogenMeasurement *)self _freeBuffers];

  v3.receiver = self;
  v3.super_class = HalogenMeasurement;
  [(HalogenMeasurement *)&v3 dealloc];
}

- (BOOL)_connectToAccessoryManager:(int)a3
{
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  self->_service = ServiceWithPrimaryPort;
  if (ServiceWithPrimaryPort)
  {
    if (IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &self->_connect))
    {
      [HalogenMeasurement _connectToAccessoryManager:];
      return v6;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [HalogenMeasurement _connectToAccessoryManager:];
    return v7;
  }
}

- (void)_disconnectFromAccessoryManager
{
  connect = self->_connect;
  if (connect)
  {
    IOServiceClose(connect);
    self->_connect = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }
}

- (BOOL)_initArbiter
{
  self->_arbiterLocked = 0;
  v3 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(self->_service, @"SupportsEisAfe", *MEMORY[0x277CBECE8], 0);
  v5 = IORegistryEntryCreateCFProperty(self->_service, @"RequiresEisAfeArbiter", v3, 0);
  v6 = v5;
  self->_arbitrationRequired = 1;
  if (v5)
  {
    self->_arbitrationRequired = CFBooleanGetValue(v5) != 0;
  }

  else if (CFProperty)
  {
    if (CFBooleanGetValue(CFProperty))
    {
      self->_arbitrationRequired = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenMeasurement:Skipping arbitration.", v10, 2u);
      }
    }
  }

  if (self->_arbitrationRequired)
  {
    v7 = [objc_alloc(MEMORY[0x277D81FB0]) initWithID:0];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D81FA8]);
  }

  v8 = v7;
  self->_arbiterClient = v7;
  if (v7)
  {
    if (!CFProperty)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [HalogenMeasurement _initArbiter];
  if (CFProperty)
  {
LABEL_8:
    CFRelease(CFProperty);
  }

LABEL_9:
  if (v6)
  {
    CFRelease(v6);
  }

  return v8 != 0;
}

- (void)_deinitArbiter
{
  if (self->_arbiterLocked)
  {
    [(BaseResourceArbiterClient *)self->_arbiterClient releaseResourceAccess];
  }

  arbiterClient = self->_arbiterClient;
}

- (BOOL)_allocBuffers
{
  v3 = self->_inputFrameSizeInBytes * self->_nTotalSamples;
  *&self->_pcmInputDataIndexInBytes = 0;
  self->_pcmInputDataMaxSzInBytes = v3;
  v4 = [MEMORY[0x277CBEB28] dataWithLength:?];
  self->_pcmInputData = v4;
  if (v4)
  {
    *&self->_pcmOutputDataMaxSzInBytes = (self->_outputFrameSizeInBytes * self->_nTotalSamples);
    v5 = [MEMORY[0x277CBEB28] dataWithLength:?];
    self->_pcmOutputData = v5;
    if (v5)
    {
      v6 = [MEMORY[0x277CBEB28] dataWithLength:8 * self->_nMeasurementSamples];
      self->_currentData = v6;
      if (v6)
      {
        v7 = [MEMORY[0x277CBEB28] dataWithLength:8 * self->_nMeasurementSamples];
        self->_voltageData = v7;
        if (v7)
        {
          return 1;
        }

        else
        {
          [(HalogenMeasurement *)&v9 _allocBuffers];
          return v9;
        }
      }

      else
      {
        [(HalogenMeasurement *)&v10 _allocBuffers];
        return v10;
      }
    }

    else
    {
      [(HalogenMeasurement *)&v11 _allocBuffers];
      return v11;
    }
  }

  else
  {
    [(HalogenMeasurement *)&v12 _allocBuffers];
    return v12;
  }
}

- (void)_freeBuffers
{
  voltageData = self->_voltageData;
}

- (void)_generateSineWave
{
  v3 = [(NSMutableData *)self->_pcmOutputData bytes];
  if (self->_nTotalSamples >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = self->_signalFreq * 6.28318531 / self->_sampleRate;
    v7 = (self->_initalPhaseInDegrees / 360.0 + self->_initalPhaseInDegrees / 360.0) * 3.14159265;
    do
    {
      v8 = sin(v7);
      v9 = [(HalogenMeasurement *)self maxOutputAmplitude];
      *(v4 + 2 * v5) = -([(HalogenMeasurement *)self signalOffset]- v8 * v9);
      v7 = v6 + v7;
      ++v5;
    }

    while (v5 < self->_nTotalSamples);
  }
}

- (BOOL)_initAudioPath
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0;
  bitDepth = self->_bitDepth;
  sampleRate = self->_sampleRate;
  nOutputChannels = self->_nOutputChannels;
  inputFrameSizeInBytes = self->_inputFrameSizeInBytes;
  outputFrameSizeInBytes = self->_outputFrameSizeInBytes;
  nInputChannels = self->_nInputChannels;
  LODWORD(v25) = bitDepth;
  v18 = nOutputChannels;
  v19 = bitDepth;
  v21 = inputFrameSizeInBytes;
  v22 = 1;
  v23 = inputFrameSizeInBytes;
  *v20 = sampleRate;
  v20[1] = 0xC6C70636DLL;
  v16 = 1;
  v17 = outputFrameSizeInBytes;
  v15 = outputFrameSizeInBytes;
  *v14 = sampleRate;
  v14[1] = 0xC6C70636DLL;
  *&inDesc.componentType = xmmword_25491C130;
  inDesc.componentFlagsMask = 0;
  Next = AudioComponentFindNext(0, &inDesc);
  if (!Next)
  {
    [(HalogenMeasurement *)&v28 _initAudioPath];
    return v28;
  }

  if (AudioComponentInstanceNew(Next, &self->_audioComponentInst) || (audioComponentInst = self->_audioComponentInst) == 0)
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  inData = 1;
  if (AudioUnitSetProperty(audioComponentInst, 0x7D3u, 1u, 1u, &inData, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D3u, 2u, 0, &inData, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 1u, 0, v14, 0x28u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v11 = 0;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x33u, 2u, 1u, &v11, 4u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitSetProperty(self->_audioComponentInst, 8u, 2u, 1u, v20, 0x28u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v26 = recordCallback_0;
  v27 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x7D5u, 0, 1u, &v26, 0x10u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  v26 = playbackCallback_0;
  v27 = self;
  if (AudioUnitSetProperty(self->_audioComponentInst, 0x17u, 0, 0, &v26, 0x10u))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  if (AudioUnitInitialize(self->_audioComponentInst))
  {
    [HalogenMeasurement _initAudioPath];
    return v28;
  }

  return 1;
}

- (void)_deinitAudioPath
{
  audioComponentInst = self->_audioComponentInst;
  if (audioComponentInst)
  {
    AudioUnitUninitialize(audioComponentInst);
    AudioComponentInstanceDispose(self->_audioComponentInst);
    self->_audioComponentInst = 0;
  }
}

- (BOOL)_createSleepWakeNotifier
{
  [(HalogenMeasurement *)self setPowerState:2];
  [(HalogenMeasurement *)self setSystemPowerPort:0];
  [(HalogenMeasurement *)self setSystemPowerIterator:0];
  [(HalogenMeasurement *)self setSystemPowerNotifyPortRef:0];
  [(HalogenMeasurement *)self setSystemPowerQueue:dispatch_queue_create("com.apple.ioaccessorymanager.halogenMeasurement.systemPower.queue", 0)];
  if ([(HalogenMeasurement *)self systemPowerQueue])
  {
    [(HalogenMeasurement *)self setSystemPowerPort:IORegisterForSystemPower(self, &self->_systemPowerNotifyPortRef, systemPowerCallback_0, &self->_systemPowerIterator)];
    if ([(HalogenMeasurement *)self systemPowerPort])
    {
      [(HalogenMeasurement *)self setPowerStateCond:objc_alloc_init(MEMORY[0x277CCA928])];
      if ([(HalogenMeasurement *)self powerStateCond])
      {
        IONotificationPortSetDispatchQueue([(HalogenMeasurement *)self systemPowerNotifyPortRef], [(HalogenMeasurement *)self systemPowerQueue]);
        return 1;
      }

      else
      {
        [(HalogenMeasurement *)&v4 _createSleepWakeNotifier];
        return v4;
      }
    }

    else
    {
      [(HalogenMeasurement *)&v5 _createSleepWakeNotifier];
      return v5;
    }
  }

  else
  {
    [(HalogenMeasurement *)&v6 _createSleepWakeNotifier];
    return v6;
  }
}

- (void)_destroySleepWakeNotifier
{
  if ([(HalogenMeasurement *)self systemPowerIterator])
  {
    IODeregisterForSystemPower(&self->_systemPowerIterator);
  }

  if ([(HalogenMeasurement *)self systemPowerNotifyPortRef])
  {
    IONotificationPortDestroy([(HalogenMeasurement *)self systemPowerNotifyPortRef]);
  }

  if ([(HalogenMeasurement *)self systemPowerPort])
  {
    IOServiceClose([(HalogenMeasurement *)self systemPowerPort]);
  }

  if ([(HalogenMeasurement *)self systemPowerQueue])
  {
    dispatch_release([(HalogenMeasurement *)self systemPowerQueue]);
  }

  v3 = [(HalogenMeasurement *)self powerStateCond];
}

- (int)saveAsWav:(id)a3
{
  outExtAudioFile = 0xAAAAAAAAAAAAAAAALL;
  v4 = [a3 UTF8String];
  if (!self->_isMeasurementDone)
  {
    [HalogenMeasurement saveAsWav:?];
    return LODWORD(inStreamDesc.mSampleRate);
  }

  v5 = v4;
  v6 = strlen(v4);
  v7 = CFURLCreateFromFileSystemRepresentation(0, v5, v6, 0);
  if (!v7)
  {
    [HalogenMeasurement saveAsWav:?];
    return LODWORD(inStreamDesc.mSampleRate);
  }

  v8 = v7;
  *&inStreamDesc.mBitsPerChannel = 0;
  bitDepth = self->_bitDepth;
  sampleRate = self->_sampleRate;
  inStreamDesc.mChannelsPerFrame = self->_nInputChannels;
  inStreamDesc.mBitsPerChannel = bitDepth;
  inStreamDesc.mBytesPerPacket = self->_inputFrameSizeInBytes;
  inStreamDesc.mFramesPerPacket = 1;
  inStreamDesc.mBytesPerFrame = inStreamDesc.mBytesPerPacket;
  inStreamDesc.mSampleRate = sampleRate;
  *&inStreamDesc.mFormatID = 0xC6C70636DLL;
  if (ExtAudioFileCreateWithURL(v7, 0x57415645u, &inStreamDesc, 0, 1u, &outExtAudioFile))
  {
    [HalogenMeasurement saveAsWav:];
    v13 = v18;
  }

  else
  {
    v15.mBuffers[0].mData = [(NSMutableData *)self->_pcmInputData bytes];
    pcmInputDataSampleCnt = self->_pcmInputDataSampleCnt;
    v12 = self->_inputFrameSizeInBytes * pcmInputDataSampleCnt;
    v15.mBuffers[0].mNumberChannels = self->_nInputChannels;
    v15.mBuffers[0].mDataByteSize = v12;
    ExtAudioFileWrite(outExtAudioFile, pcmInputDataSampleCnt, &v15);
    ExtAudioFileDispose(outExtAudioFile);
    v13 = 0;
  }

  CFRelease(v8);
  return v13;
}

- (void)_resetCalcValues
{
  self->_precalVoltageSNR = 0.0;
  self->_calVoltageSNR = 0.0;
  self->_measurementVoltageSNR = 0.0;
  *&self->_precalCurrentSNR = 0u;
  *&self->_currentGainCorrection = 0u;
  *&self->_calCurrentSNR = 0u;
  *&self->_goertzelPhase = 0u;
  *&self->_compensatedPhase = 0u;
  *&self->_capacitanceInNanoF = 0u;
  self->_measurementCurrentSNR = 0.0;
  self->_measurementCondetSNR = 0.0;
}

- (id)getResultString
{
  halogenResult = self->_halogenResult;
  if (halogenResult > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_279793320[halogenResult];
  }
}

- (unsigned)maxOutputAmplitude
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HalogenMeasurement_maxOutputAmplitude__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (maxOutputAmplitude_onceToken != -1)
  {
    dispatch_once(&maxOutputAmplitude_onceToken, block);
  }

  return self->_maxOutputAmplitude;
}

void __40__HalogenMeasurement_maxOutputAmplitude__block_invoke(uint64_t a1)
{
  v3 = MGGetStringAnswer();
  v2 = 0x7FFF;
  if (([v3 hasPrefix:{@"iPhone12, 8"}] & 1) == 0)
  {
    if ([v3 hasPrefix:@"iPhone11"])
    {
      v2 = 0x7FFF;
    }

    else
    {
      v2 = 1057;
    }
  }

  *(*(a1 + 32) + 14) = v2;
  if (v3)
  {
  }
}

- (unsigned)signalOffset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HalogenMeasurement_signalOffset__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (signalOffset_onceToken != -1)
  {
    dispatch_once(&signalOffset_onceToken, block);
  }

  return self->_signalOffset;
}

void __34__HalogenMeasurement_signalOffset__block_invoke(uint64_t a1)
{
  v3 = MGGetStringAnswer();
  if ([v3 hasPrefix:{@"iPhone12, 8"}])
  {
    v2 = 0;
  }

  else if ([v3 hasPrefix:@"iPhone11"])
  {
    v2 = 0;
  }

  else
  {
    v2 = 15308;
  }

  *(*(a1 + 32) + 16) = v2;
  if (v3)
  {
  }
}

- (BOOL)shouldInvertData
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HalogenMeasurement_shouldInvertData__block_invoke;
  block[3] = &unk_279793038;
  block[4] = self;
  if (shouldInvertData_onceToken != -1)
  {
    dispatch_once(&shouldInvertData_onceToken, block);
  }

  return self->_shouldInvertData;
}

void __38__HalogenMeasurement_shouldInvertData__block_invoke(uint64_t a1)
{
  v3 = MGGetStringAnswer();
  if ([v3 hasPrefix:{@"iPhone12, 8"}])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v3 hasPrefix:@"iPhone11"] ^ 1;
  }

  *(*(a1 + 32) + 8) = v2;
  if (v3)
  {
  }
}

- (void)initWithSize:onPort:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)initWithSize:onPort:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithSize:onPort:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectToAccessoryManager:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_connectToAccessoryManager:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  OUTLINED_FUNCTION_2_0();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initArbiter
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)_allocBuffers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initAudioPath
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_createSleepWakeNotifier
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)saveAsWav:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = -1;
}

- (void)saveAsWav:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = -1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveAsWav:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = -1;
}

@end