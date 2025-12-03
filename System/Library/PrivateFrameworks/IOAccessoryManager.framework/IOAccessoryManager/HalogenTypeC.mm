@interface HalogenTypeC
- ($DE2CA4548F4C2DB4D89410195F9427A4)getMeasurementInfo;
- ($DE2CA4548F4C2DB4D89410195F9427A4)measurementInfoDefault;
- (BOOL)_allocBuffers;
- (BOOL)_connectToAccessoryManager:(int)manager;
- (BOOL)_createSleepWakeNotifier;
- (BOOL)_readCalibrationParameters:(id)parameters;
- (BOOL)_writeCalResults:(id)results;
- (BOOL)setLiquidDetected:(BOOL)detected;
- (BOOL)setMitigations:(BOOL)mitigations;
- (BOOL)supportsSelfTest;
- (id)_buildMeasurementOutputString:(id *)string;
- (id)_buildVerboseMeasurementOutputString:(id *)string;
- (id)_getHalogenMeasurementTypeString:(int)string;
- (id)_getLDCMPinString:(int)string;
- (id)getHalogenResultString:(int)string;
- (id)getVerboseMeasurementOutputString;
- (int)recordCallBackFunc:(unsigned int *)func AudioTimeStamp:(const AudioTimeStamp *)stamp busNum:(unsigned int)num numFrames:(unsigned int)frames AudioBufferList:(AudioBufferList *)list;
- (int)saveAsWav:(id)wav;
- (uint64_t)supportsSelfTest;
- (void)_allocBuffers;
- (void)_createSleepWakeNotifier;
- (void)_destroySleepWakeNotifier;
- (void)_disconnectFromAccessoryManager;
- (void)_freeBuffers;
- (void)_generateSineWave;
- (void)_resetCalcValues;
- (void)_runHPMTool:(BOOL)tool;
- (void)_storeMeasurementData:(int)data measurementType:(int)type measurementInfo:(id *)info halogenResult:(int)result;
- (void)dealloc;
- (void)setMeasurementInfoDefault:(id *)default;
- (void)setWetTooLong:(BOOL)long;
@end

@implementation HalogenTypeC

- (void)dealloc
{
  [(HalogenTypeC *)self _destroySleepWakeNotifier];
  [(HalogenTypeC *)self _disconnectFromAccessoryManager];
  [(HalogenTypeC *)self _freeBuffers];

  v3.receiver = self;
  v3.super_class = HalogenTypeC;
  [(HalogenTypeC *)&v3 dealloc];
}

- (BOOL)_createSleepWakeNotifier
{
  [(HalogenTypeC *)self setPowerState:2];
  [(HalogenTypeC *)self setSystemPowerPort:0];
  [(HalogenTypeC *)self setSystemPowerIterator:0];
  [(HalogenTypeC *)self setSystemPowerNotifyPortRef:0];
  [(HalogenTypeC *)self setSystemPowerQueue:dispatch_queue_create("com.apple.ioaccessorymanager.halogenTypeC.systemPower.queue", 0)];
  if ([(HalogenTypeC *)self systemPowerQueue])
  {
    [(HalogenTypeC *)self setSystemPowerPort:IORegisterForSystemPower(self, &self->_systemPowerNotifyPortRef, systemPowerCallback, &self->_systemPowerIterator)];
    if ([(HalogenTypeC *)self systemPowerPort])
    {
      [(HalogenTypeC *)self setPowerStateCond:objc_alloc_init(MEMORY[0x277CCA928])];
      if ([(HalogenTypeC *)self powerStateCond])
      {
        IONotificationPortSetDispatchQueue([(HalogenTypeC *)self systemPowerNotifyPortRef], [(HalogenTypeC *)self systemPowerQueue]);
        return 1;
      }

      else
      {
        [(HalogenTypeC *)&v4 _createSleepWakeNotifier];
        return v4;
      }
    }

    else
    {
      [(HalogenTypeC *)&v5 _createSleepWakeNotifier];
      return v5;
    }
  }

  else
  {
    [(HalogenTypeC *)&v6 _createSleepWakeNotifier];
    return v6;
  }
}

- (void)_destroySleepWakeNotifier
{
  if ([(HalogenTypeC *)self systemPowerIterator])
  {
    IODeregisterForSystemPower(&self->_systemPowerIterator);
  }

  if ([(HalogenTypeC *)self systemPowerNotifyPortRef])
  {
    IONotificationPortDestroy([(HalogenTypeC *)self systemPowerNotifyPortRef]);
  }

  if ([(HalogenTypeC *)self systemPowerPort])
  {
    IOServiceClose([(HalogenTypeC *)self systemPowerPort]);
  }

  if ([(HalogenTypeC *)self systemPowerQueue])
  {
    dispatch_release([(HalogenTypeC *)self systemPowerQueue]);
  }

  powerStateCond = [(HalogenTypeC *)self powerStateCond];
}

- (BOOL)_connectToAccessoryManager:(int)manager
{
  ServiceWithSupportedFeature = IOAccessoryManagerGetServiceWithSupportedFeature();
  self->_service = ServiceWithSupportedFeature;
  if (ServiceWithSupportedFeature)
  {
    if (IOServiceOpen(ServiceWithSupportedFeature, *MEMORY[0x277D85F48], 0, &self->_connect))
    {
      [HalogenTypeC _connectToAccessoryManager:];
      return v6;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    [HalogenTypeC _connectToAccessoryManager:];
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
          [(HalogenTypeC *)&v9 _allocBuffers];
          return v9;
        }
      }

      else
      {
        [(HalogenTypeC *)&v10 _allocBuffers];
        return v10;
      }
    }

    else
    {
      [(HalogenTypeC *)&v11 _allocBuffers];
      return v11;
    }
  }

  else
  {
    [(HalogenTypeC *)&v12 _allocBuffers];
    return v12;
  }
}

- (void)_freeBuffers
{
  voltageData = self->_voltageData;
}

- (BOOL)supportsSelfTest
{
  v2 = MGGetStringAnswer();
  v3 = v2;
  if (v2 && [v2 length])
  {
    v4 = ([v3 isEqualToString:{@"iPad13, 1"}] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", @"iPad13,2");
    goto LABEL_7;
  }

  supportsSelfTest = [(HalogenTypeC *)v3 == 0 supportsSelfTest];
  v4 = 0;
  result = 0;
  if ((supportsSelfTest & 1) == 0)
  {
LABEL_7:

    return v4;
  }

  return result;
}

- (void)_generateSineWave
{
  bytes = [(NSMutableData *)self->_pcmOutputData bytes];
  if (self->_nTotalSamples >= 1)
  {
    v4 = bytes;
    v5 = 0;
    v6 = self->_signalFreq * 6.28318531 / self->_sampleRate;
    v7 = (self->_initalPhaseInDegrees / 360.0 + self->_initalPhaseInDegrees / 360.0) * 3.14159265;
    do
    {
      v8 = sin(v7);
      maxOutputAmplitude = [(HalogenTypeC *)self maxOutputAmplitude];
      v10 = -([(HalogenTypeC *)self signalOffset]- v8 * maxOutputAmplitude);
      *(v4 + 4 * v5) = v10;
      v7 = v7 + v6;
      ++v5;
    }

    while (v5 < self->_nTotalSamples);
  }
}

- (void)_runHPMTool:(BOOL)tool
{
  toolCopy = tool;
  v11[2] = *MEMORY[0x277D85DE8];
  [objc_msgSend(MEMORY[0x277CCAC38] "processInfo")];
  pipe = [MEMORY[0x277CCAC10] pipe];
  fileHandleForReading = [pipe fileHandleForReading];
  v6 = objc_alloc_init(MEMORY[0x277CCACB0]);
  [v6 setLaunchPath:@"/usr/local/bin/hpmtool"];
  v7 = @"--data=0x110B0402";
  if (toolCopy)
  {
    v7 = @"--data=0x110B0400";
  }

  v11[0] = @"--command=DVEn";
  v11[1] = v7;
  [v6 setArguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v11, 2)}];
  [v6 setStandardOutput:pipe];
  [v6 launch];
  readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];
  [fileHandleForReading closeFile];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:readDataToEndOfFile encoding:4];
  NSLog(&cfstr_HpmtoolReturne.isa, v9);

  v10 = *MEMORY[0x277D85DE8];
}

- (int)recordCallBackFunc:(unsigned int *)func AudioTimeStamp:(const AudioTimeStamp *)stamp busNum:(unsigned int)num numFrames:(unsigned int)frames AudioBufferList:(AudioBufferList *)list
{
  v28 = *MEMORY[0x277D85DE8];
  *&ioData.mNumberBuffers = 0xAAAAAAAAAAAAAAAALL;
  *&ioData.mBuffers[0].mNumberChannels = 0xAAAAAAAAAAAAAAAALL;
  v9 = self->_inputFrameSizeInBytes * frames;
  if (self->_pcmInputDataMaxSzInBytes - self->_pcmInputDataIndexInBytes < v9)
  {
    [HalogenTypeC recordCallBackFunc:AudioTimeStamp:busNum:numFrames:AudioBufferList:];
  }

  else if (!self->_isMeasurementDone)
  {
    ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mData = ([(NSMutableData *)self->_pcmInputData bytes]+ self->_pcmInputDataIndexInBytes);
    ioData.mBuffers[0].mDataByteSize = v9;
    halogenAudioUnit = self->_halogenAudioUnit;
    if (halogenAudioUnit)
    {
      v14 = AudioUnitRender([(HalogenAudio *)halogenAudioUnit getAudioComponentInstance], func, stamp, num, frames, &ioData);
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v15;
          _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenTypeC:render failed osstatus=0x%x", buf, 8u);
        }
      }

      [(HalogenTypeC *)self setPcmInputDataIndexInBytes:(self->_pcmInputDataIndexInBytes + v9)];
      [(HalogenTypeC *)self setPcmInputDataSampleCnt:self->_pcmInputDataSampleCnt + frames];
      pcmInputDataSampleCnt = self->_pcmInputDataSampleCnt;
      nMeasurementSamples = self->_nMeasurementSamples;
      if (pcmInputDataSampleCnt >= nMeasurementSamples + self->_calibrationSampleOffsetInFrames)
      {
        if (!self->_isCalibrationDone)
        {
          self->_isCalibrationDone = 1;
          self->_measurementSampleOffsetInFrames = self->_nAceSettlingSamples + pcmInputDataSampleCnt;
          *buf = 0xAAAAAAAAAAAAAAAALL;
          if (self->_pinToMeasure == 4 && self->_isInternalBuild)
          {
            [(HalogenTypeC *)self _runHPMTool:1, 0xAAAAAAAAAAAAAAAALL];
          }

          else
          {
            connect = self->_connect;
            ldcmState = self->_ldcmState;
            v20 = IOAccessoryManagerSetLDCM();
            if (v20)
            {
              v21 = v20;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v25 = 67109120;
                v26 = v21;
                _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenTypeC:IOAccessoryManagerSetLDCM failed with: 0x%x", v25, 8u);
              }
            }
          }

          pcmInputDataSampleCnt = self->_pcmInputDataSampleCnt;
          nMeasurementSamples = self->_nMeasurementSamples;
        }

        if (pcmInputDataSampleCnt >= nMeasurementSamples + self->_measurementSampleOffsetInFrames)
        {
          self->_isMeasurementDone = 1;
          [(NSCondition *)self->_audioTimeoutCond signal];
        }
      }
    }

    else
    {
      [HalogenTypeC recordCallBackFunc:AudioTimeStamp:busNum:numFrames:AudioBufferList:];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)saveAsWav:(id)wav
{
  outExtAudioFile = 0xAAAAAAAAAAAAAAAALL;
  uTF8String = [wav UTF8String];
  if (!self->_isMeasurementDone)
  {
    [HalogenTypeC saveAsWav:?];
    return LODWORD(inStreamDesc.mSampleRate);
  }

  v5 = uTF8String;
  v6 = strlen(uTF8String);
  v7 = CFURLCreateFromFileSystemRepresentation(0, v5, v6, 0);
  if (!v7)
  {
    [HalogenTypeC saveAsWav:?];
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
  *&inStreamDesc.mFormatID = 0x96C70636DLL;
  if (ExtAudioFileCreateWithURL(v7, 0x57415645u, &inStreamDesc, 0, 1u, &outExtAudioFile))
  {
    [HalogenTypeC saveAsWav:];
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

- (BOOL)setMitigations:(BOOL)mitigations
{
  connect = self->_connect;
  v4 = IOAccessoryManagerLDCMEnableMitigations();
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    [HalogenTypeC setMitigations:v5];
  }

  else if (v5)
  {
    *v7 = 0;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenTypeC:Mitigations Enabled: Turning off Type-C Port.", v7, 2u);
  }

  return v4 == 0;
}

- (BOOL)setLiquidDetected:(BOOL)detected
{
  detectedCopy = detected;
  v10 = *MEMORY[0x277D85DE8];
  connect = self->_connect;
  v5 = IOAccessoryManagerLDCMSetLiquidDetected();
  v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    [HalogenTypeC setLiquidDetected:v6];
  }

  else if (v6)
  {
    v9[0] = 67109120;
    v9[1] = detectedCopy;
    _os_log_impl(&dword_2548F1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HalogenTypeC:Liquid Detected Set:%d.", v9, 8u);
  }

  result = v5 == 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_writeCalResults:(id)results
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_voltageGainCorrection];
  v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_currentGainCorrection];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_currentPhaseCompensation];
  [v5 setObject:v6 forKey:@"VoltageGainCorrection"];
  [v5 setObject:v7 forKey:@"CurrentGainCorrection"];
  [v5 setObject:v8 forKey:@"CurrentPhaseCompensation"];
  v9 = [v5 writeToFile:results atomically:1];

  if ((v9 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCouldNotW.isa);
  }

  return v9;
}

- (BOOL)_readCalibrationParameters:(id)parameters
{
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:parameters];
  __asm { FMOV            V0.2D, #1.0 }

  *&self->_voltageGainCorrection = _Q0;
  self->_currentPhaseCompensation = 0.0;
  if ([v4 objectForKey:@"VoltageGainCorrection"])
  {
    [objc_msgSend(v4 objectForKey:{@"VoltageGainCorrection", "doubleValue"}];
    self->_voltageGainCorrection = v10;
  }

  else
  {
    NSLog(&cfstr_CouldNotFindVo.isa);
  }

  if ([v4 objectForKey:@"CurrentGainCorrection"])
  {
    [objc_msgSend(v4 objectForKey:{@"CurrentGainCorrection", "doubleValue"}];
    self->_currentGainCorrection = v11;
  }

  else
  {
    NSLog(&cfstr_CouldNotFindCu.isa);
  }

  if ([v4 objectForKey:@"CurrentPhaseCompensation"])
  {
    [objc_msgSend(v4 objectForKey:{@"CurrentPhaseCompensation", "doubleValue"}];
    self->_currentPhaseCompensation = v12;
  }

  else
  {
    NSLog(&cfstr_CouldNotFindCu_0.isa);
  }

  return 1;
}

- (void)setWetTooLong:(BOOL)long
{
  self->_wetTooLong = long;
  halogenCalcTypeC = self->_halogenCalcTypeC;
  if (halogenCalcTypeC)
  {
    [(HalogenCalcTypeC *)halogenCalcTypeC setWetTooLong:?];
  }
}

- (id)_buildMeasurementOutputString:(id *)string
{
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@\n%@\n%@\n%@\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n%.12f\n", objc_msgSend(v5, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), -[HalogenTypeC _getHalogenMeasurementTypeString:](self, "_getHalogenMeasurementTypeString:", string->var0), -[HalogenTypeC _getLDCMPinString:](self, "_getLDCMPinString:", string->var1), -[HalogenTypeC getHalogenResultString:](self, "getHalogenResultString:", string->var2), *&string->var3, *&string->var4, *&string->var5, *&string->var16, *&string->var17, *&string->var18, string->var19 * 10000000.0, *&string->var20, *&string->var21, *&string->var10, *&string->var11, *&string->var14, *&string->var15, *&string->var22, *&string->var23];

  return v6;
}

- (id)_buildVerboseMeasurementOutputString:(id *)string
{
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"TimeStamp, %@\nMeasurementType, %@\nMeasurementPin, %@\nMeasurementResult, %@\nVolGainCorrection, %.12f\nCurGainCorrection, %.12f\nCurPhaseCompensation, %.12f\nVolSNR, %.12f\nCurSNR, %.12f\nVolAmplitude, %.12f\nCurAmplitudeMicroA, %.12f\nVolPhase, %.12f\nCurPhase, %.12f\nGoertzelImpedance, %.12f\nGoertzelPhase, %.12f\nResistanceInOhms, %.12f\nCapacitanceInNanoF, %.12f\nLoadImpedenceMagnitude, %.12f\nLoadImpedancePhase, %.12f\n", objc_msgSend(v5, "stringFromDate:", objc_msgSend(MEMORY[0x277CBEAA8], "date")), -[HalogenTypeC _getHalogenMeasurementTypeString:](self, "_getHalogenMeasurementTypeString:", string->var0), -[HalogenTypeC _getLDCMPinString:](self, "_getLDCMPinString:", string->var1), -[HalogenTypeC getHalogenResultString:](self, "getHalogenResultString:", string->var2), *&string->var3, *&string->var4, *&string->var5, *&string->var16, *&string->var17, *&string->var18, string->var19 * 10000000.0, *&string->var20, *&string->var21, *&string->var10, *&string->var11, *&string->var14, *&string->var15, *&string->var22, *&string->var23];

  return v6;
}

- (id)getVerboseMeasurementOutputString
{
  v2 = [(HalogenTypeC *)self _buildVerboseMeasurementOutputString:&self->_measurementInfoDefault];

  return [v2 copy];
}

- (void)_storeMeasurementData:(int)data measurementType:(int)type measurementInfo:(id *)info halogenResult:(int)result
{
  info->var0 = type;
  info->var1 = data;
  info->var2 = result;
  [(HalogenTypeC *)self voltageGainCorrection];
  info->var3 = v8;
  [(HalogenTypeC *)self currentGainCorrection];
  info->var4 = v9;
  [(HalogenTypeC *)self calVoltageSNR];
  info->var6 = v10;
  [(HalogenTypeC *)self calCurrentSNR];
  info->var7 = v11;
  [(HalogenTypeC *)self calVoltageAmplitude];
  info->var8 = v12;
  [(HalogenTypeC *)self calCurrentAmplitude];
  info->var9 = v13;
  [(HalogenTypeC *)self currentPhaseCompensation];
  info->var5 = v14;
  [(HalogenTypeC *)self measurementVoltageSNR];
  info->var16 = v15;
  [(HalogenTypeC *)self measurementCurrentSNR];
  info->var17 = v16;
  [(HalogenTypeC *)self measurementVoltageAmplitude];
  info->var18 = v17;
  [(HalogenTypeC *)self measurementCurrentAmplitude];
  info->var19 = v18;
  [(HalogenTypeC *)self measurementVoltagePhase];
  info->var20 = v19;
  [(HalogenTypeC *)self measurementCurrentPhase];
  info->var21 = v20;
  [(HalogenTypeC *)self goertzelImpedance];
  info->var10 = v21;
  [(HalogenTypeC *)self goertzelPhase];
  info->var11 = v22;
  [(HalogenTypeC *)self resistanceInOhms];
  info->var14 = v23;
  [(HalogenTypeC *)self capacitanceInNanoF];
  info->var15 = v24;
  [(HalogenTypeC *)self measurementLoadImpedanceMagnitude];
  info->var22 = v25;
  [(HalogenTypeC *)self measurementLoadImpedancePhase];
  info->var23 = v26;
}

- (id)getHalogenResultString:(int)string
{
  if (string > 0xB)
  {
    return @"Unknown";
  }

  else
  {
    return off_279793058[string];
  }
}

- (id)_getHalogenMeasurementTypeString:(int)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_2797930B8[string];
  }
}

- (id)_getLDCMPinString:(int)string
{
  if (string > 4)
  {
    return @"Undefined";
  }

  else
  {
    return off_2797930D0[string];
  }
}

- (void)_resetCalcValues
{
  self->_calVoltageSNR = 0.0;
  self->_measurementVoltageSNR = 0.0;
  self->_measurementCurrentSNR = 0.0;
  self->_currentGainCorrection = 0.0;
  self->_currentPhaseCompensation = 0.0;
  self->_voltageGainCorrection = 0.0;
  *&self->_calCurrentSNR = 0u;
  *&self->_calCurrentAmplitude = 0u;
  *&self->_goertzelPhase = 0u;
  *&self->_compensatedPhase = 0u;
  self->_capacitanceInNanoF = 0.0;
  *&self->_measurementVoltageAmplitude = 0u;
  *&self->_measurementVoltagePhase = 0u;
  *&self->_measurementLoadImpedanceMagnitude = 0u;
}

- ($DE2CA4548F4C2DB4D89410195F9427A4)getMeasurementInfo
{
  retstr->var23 = self[3].var23;
  v3 = *&self[3].var19;
  *&retstr->var17 = *&self[3].var17;
  *&retstr->var19 = v3;
  *&retstr->var21 = *&self[3].var21;
  v4 = *&self[3].var11;
  *&retstr->var9 = *&self[3].var9;
  *&retstr->var11 = v4;
  v5 = *&self[3].var15;
  *&retstr->var13 = *&self[3].var13;
  *&retstr->var15 = v5;
  v6 = *&self[3].var3;
  *&retstr->var0 = *&self[3].var0;
  *&retstr->var3 = v6;
  v7 = *&self[3].var7;
  *&retstr->var5 = *&self[3].var5;
  *&retstr->var7 = v7;
  return self;
}

- ($DE2CA4548F4C2DB4D89410195F9427A4)measurementInfoDefault
{
  retstr->var23 = self[3].var23;
  v3 = *&self[3].var19;
  *&retstr->var17 = *&self[3].var17;
  *&retstr->var19 = v3;
  *&retstr->var21 = *&self[3].var21;
  v4 = *&self[3].var11;
  *&retstr->var9 = *&self[3].var9;
  *&retstr->var11 = v4;
  v5 = *&self[3].var15;
  *&retstr->var13 = *&self[3].var13;
  *&retstr->var15 = v5;
  v6 = *&self[3].var3;
  *&retstr->var0 = *&self[3].var0;
  *&retstr->var3 = v6;
  v7 = *&self[3].var7;
  *&retstr->var5 = *&self[3].var5;
  *&retstr->var7 = v7;
  return self;
}

- (void)setMeasurementInfoDefault:(id *)default
{
  v3 = *&default->var0;
  v4 = *&default->var3;
  v5 = *&default->var7;
  *&self->_measurementInfoDefault.currentPhaseCompensation = *&default->var5;
  *&self->_measurementInfoDefault.calCurrentSNR = v5;
  *&self->_measurementInfoDefault.type = v3;
  *&self->_measurementInfoDefault.voltageGainCorrection = v4;
  v6 = *&default->var9;
  v7 = *&default->var11;
  v8 = *&default->var15;
  *&self->_measurementInfoDefault.compensatedPhase = *&default->var13;
  *&self->_measurementInfoDefault.capacitanceInNanoF = v8;
  *&self->_measurementInfoDefault.calCurrentAmplitude = v6;
  *&self->_measurementInfoDefault.goertzelPhase = v7;
  v9 = *&default->var17;
  v10 = *&default->var19;
  v11 = *&default->var21;
  self->_measurementInfoDefault.measurementLoadImpedancePhase = default->var23;
  *&self->_measurementInfoDefault.measurementCurrentAmplitude = v10;
  *&self->_measurementInfoDefault.measurementCurrentPhase = v11;
  *&self->_measurementInfoDefault.measurementCurrentSNR = v9;
}

- (void)initWithParams:onPort:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)initWithParams:onPort:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:onPort:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithParams:(uint64_t)a1 onPort:(void *)a2 .cold.4(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  *a2 = a1;
}

- (void)_createSleepWakeNotifier
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *self = 0;
}

- (void)_connectToAccessoryManager:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectToAccessoryManager:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = 0;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_allocBuffers
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *self = 0;
}

- (uint64_t)supportsSelfTest
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  return self & 1;
}

- (void)recordCallBackFunc:AudioTimeStamp:busNum:numFrames:AudioBufferList:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 2u);
  }
}

- (void)recordCallBackFunc:AudioTimeStamp:busNum:numFrames:AudioBufferList:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 0x14u);
  }

  v5 = *MEMORY[0x277D85DE8];
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

- (void)doLDCMMeasurement:(_DWORD *)a1 isCalibrationNeeded:isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:.cold.1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 9;
}

- (void)doLDCMMeasurement:isCalibrationNeeded:isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  *v0 = v1;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_doLDCMMeasurement:(_DWORD *)a1 isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.1(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 9;
}

- (void)_doLDCMMeasurement:isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  *v0 = 2;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_doLDCMMeasurement:(_DWORD *)a1 isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.3(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 4;
}

- (void)_doLDCMMeasurement:(_DWORD *)a1 isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.4(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 3;
}

- (void)_doLDCMMeasurement:(_DWORD *)a1 isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.5(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 4;
}

- (void)_doLDCMMeasurement:isReceptacleEmpty:isReceptacleWet:withWetTransitionThreshold:withDryTransitionThreshold:measurementType:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v0, v1, v2, v3, v4, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setMitigations:(char)a1 .cold.1(char a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setLiquidDetected:(char)a1 .cold.1(char a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_0();
    _os_log_impl(v1, v2, v3, v4, v5, 8u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end