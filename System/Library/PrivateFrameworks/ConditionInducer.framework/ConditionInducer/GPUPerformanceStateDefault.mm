@interface GPUPerformanceStateDefault
+ (BOOL)supportsConsistentStateDevice:(id)device;
+ (id)consistentStateDevice;
+ (id)perfLevelEnumToGPUStateStringKey:(unsigned int)key;
+ (unsigned)ioAccelerator;
- (BOOL)_acquireLock;
- (BOOL)_setConsistentPerformanceLevel;
- (BOOL)active;
- (BOOL)isDestructive;
- (BOOL)isInternalOnly;
- (BOOL)setUp;
- (GPUPerformanceStateDefault)initWithGPUPerformanceState:(unsigned int)state;
- (id)identifierName;
- (id)userFriendlyName;
- (void)_cleanup;
- (void)_dumpCurrentState:(id)state;
- (void)_setConsistentPerformanceLevel;
- (void)setUp;
- (void)tearDown;
@end

@implementation GPUPerformanceStateDefault

+ (unsigned)ioAccelerator
{
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("IOAccelerator");
  result = IOServiceGetMatchingService(v2, v3);
  if (!result)
  {
    v5 = IOServiceMatching("IOAcceleratorES");

    return IOServiceGetMatchingService(v2, v5);
  }

  return result;
}

+ (BOOL)supportsConsistentStateDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (id)consistentStateDevice
{
  v2 = MTLCreateSystemDefaultDevice();
  if ([GPUPerformanceStateDefault supportsConsistentStateDevice:v2])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)perfLevelEnumToGPUStateStringKey:(unsigned int)key
{
  if (key < 4)
  {
    return off_278DF81F8[key];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[GPUPerformanceStateDefault perfLevelEnumToGPUStateStringKey:];
  }

  return 0;
}

- (id)identifierName
{
  v8 = 0;
  v2 = @"GPUPerformanceState";
  v3 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v8];
  v4 = [v3 objectForKey:@"ConditionIdentifierName"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v2 = v4;
  }

  return v2;
}

- (id)userFriendlyName
{
  v6 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"ConditionUserFriendlyName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDestructive
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsDestructive"];
  }

  return 1;
}

- (BOOL)isInternalOnly
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsInternalOnly"];
  }

  return 1;
}

- (GPUPerformanceStateDefault)initWithGPUPerformanceState:(unsigned int)state
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = GPUPerformanceStateDefault;
  v4 = [(COCondition *)&v10 init];
  v5 = v4;
  if (v4)
  {
    if (!state)
    {
      [GPUPerformanceStateDefault initWithGPUPerformanceState:];
    }

    v4->_desiredGPUPerformanceState = state;
    v4->_acceleratorService = +[GPUPerformanceStateDefault ioAccelerator];
    v5->_performanceLevel = state;
    v6 = objc_opt_new();
    applePMPPerfStateControl = v5->_applePMPPerfStateControl;
    v5->_applePMPPerfStateControl = v6;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Set Performance State: %lu", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_acquireLock
{
  outputStruct = 256;
  v2 = CallIO(self->_connection, &outputStruct, &outputStruct, "ConsistentPerfState_Lock");
  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [GPUPerformanceStateDefault _acquireLock];
  }

  return v2;
}

- (void)_cleanup
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setConsistentPerformanceLevel
{
  consistentDevice = self->_consistentDevice;
  if (!consistentDevice)
  {
    performanceLevel = self->_performanceLevel;
    outputStruct = 1;
    BYTE1(outputStruct) = performanceLevel;
    if (!CallIO(self->_connection, &outputStruct, &outputStruct, "ConsistentPerfState_Set"))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [(GPUPerformanceStateDefault *)&self->_performanceLevel _setConsistentPerformanceLevel];
      }

      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (([(AGXConsistentStateDevice *)consistentDevice enableConsistentPerfState:self->_performanceLevel]& 1) != 0)
  {
LABEL_6:
    LOBYTE(v4) = 1;
    return v4;
  }

  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v4)
  {
    [(GPUPerformanceStateDefault *)&self->_performanceLevel _setConsistentPerformanceLevel];
LABEL_9:
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)setUp
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Setup - %@ Condition", &v10, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.dt.gputools.gpuperfstate"];
  [v3 setInteger:self->_performanceLevel forKey:@"gpuperfstate"];
  v4 = +[GPUPerformanceStateDefault consistentStateDevice];
  consistentDevice = self->_consistentDevice;
  self->_consistentDevice = v4;

  if (!self->_consistentDevice)
  {
    if (IOServiceOpen(self->_acceleratorService, *MEMORY[0x277D85F48], 1u, &self->_connection))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [GPUPerformanceStateDefault setUp];
      }

      goto LABEL_12;
    }

    if (![(GPUPerformanceStateDefault *)self _acquireLock])
    {
      goto LABEL_13;
    }
  }

  if (![(GPUPerformanceStateDefault *)self _setConsistentPerformanceLevel])
  {
LABEL_12:
    [(GPUPerformanceStateDefault *)self _cleanup];
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Setup - %@ Condition", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[GPUPerformanceStateDefault setUp]"];
  [(GPUPerformanceStateDefault *)self _dumpCurrentState:v6];

  if ([(ApplePMPPerfStateControl *)self->_applePMPPerfStateControl setupConnectionForPowerState:self->_performanceLevel - 1])
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to Setup PMP %@ Condition", &v10, 0xCu);
    }
  }

LABEL_14:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_dumpCurrentState:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  consistentDevice = self->_consistentDevice;
  if (consistentDevice)
  {
    v6 = [(AGXConsistentStateDevice *)consistentDevice getConsistentPerfStateInfoAndReset:0];
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v11 = stateCopy;
        v12 = 2112;
        *v13 = v6;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Consistent Perf State Status: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [GPUPerformanceStateDefault _dumpCurrentState:];
    }
  }

  else
  {
    connection = self->_connection;
    if (connection)
    {
      outputStruct = 2;
      if (CallIO(connection, &outputStruct, &outputStruct, "ConsistentPerfState_Get"))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v11 = stateCopy;
          v12 = 1024;
          *v13 = BYTE2(outputStruct);
          *&v13[4] = 1024;
          *&v13[6] = BYTE3(outputStruct);
          v14 = 1024;
          v15 = BYTE4(outputStruct);
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Consistent Perf State Status: is_enabled=%u was_maintained=%u level=%u", buf, 0x1Eu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [GPUPerformanceStateDefault _dumpCurrentState:];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)tearDown
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[GPUPerformanceStateDefault tearDown]"];
  [(GPUPerformanceStateDefault *)self _dumpCurrentState:v3];

  [(GPUPerformanceStateDefault *)self _cleanup];
}

- (BOOL)active
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.dt.gputools.gpuperfstate"];
  if (!self->_performanceLevel)
  {
    [GPUPerformanceStateDefault active];
  }

  v4 = v3;
  v5 = self->_performanceLevel == [v3 integerForKey:@"gpuperfstate"];

  return v5;
}

- (void)_setConsistentPerformanceLevel
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *self;
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setUp
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end