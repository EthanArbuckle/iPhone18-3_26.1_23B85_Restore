@interface AppleIRDeviceProvider
- (AppleIRDeviceProvider)initWithBus:(id)a3 deviceUID:(unsigned __int8)a4;
- (BOOL)_dispatchAppleVendorEventPage:(unsigned int)a3 usage:(unsigned int)a4 timestamp:(unint64_t)a5 toDevice:(id)a6;
- (BOOL)_dispatchEventWithCommand:(unint64_t)a3 timestamp:(unint64_t)a4 toDevice:(id)a5;
- (BOOL)dispatchEventsForCommand:(id)a3 toDevice:(id)a4;
- (BOOL)pairAppleRemote:(id *)a3;
- (BOOL)unpairAppleRemote:(id *)a3;
- (void)_schedulePressAndHoldTimer;
- (void)_synthesizeButtonReleaseWithTimestamp:(unint64_t)a3;
- (void)dealloc;
@end

@implementation AppleIRDeviceProvider

- (AppleIRDeviceProvider)initWithBus:(id)a3 deviceUID:(unsigned __int8)a4
{
  v6.receiver = self;
  v6.super_class = AppleIRDeviceProvider;
  result = [(CoreIRDeviceProvider *)&v6 initWithBus:a3 local:0 deviceType:1];
  if (result)
  {
    result->_deviceUID = a4;
    result->_lastAppleIRCommand = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AppleIRDeviceProvider;
  [(CoreIRDeviceProvider *)&v3 dealloc];
}

- (BOOL)pairAppleRemote:(id *)a3
{
  v5 = [(AppleIRDeviceProvider *)self busProvider];

  return [v5 setPairedAppleRemote:self error:a3];
}

- (BOOL)unpairAppleRemote:(id *)a3
{
  v5 = 0;
  result = [-[AppleIRDeviceProvider busProvider](self "busProvider")];
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

- (BOOL)dispatchEventsForCommand:(id)a3 toDevice:(id)a4
{
  v18 = 0;
  v7 = [-[AppleIRDeviceProvider busProvider](self "busProvider")];
  v8 = [a3 timestamp];
  lastCommandTimestamp = self->_lastCommandTimestamp;
  v17 = 0;
  v16 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [AppleIRDeviceProvider dispatchEventsForCommand:&v19 toDevice:?];
    v12 = v19;
    goto LABEL_71;
  }

  v10 = v8 - lastCommandTimestamp;
  if (gLogCategory_CoreRCDevice <= 40)
  {
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
    }

    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:a3 toDevice:?];
    }
  }

  if ([a3 isRepeat])
  {
    if (self->_lastCoreRCCommand)
    {
      v11 = v10 > _maxRepeatIntervalTicks;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }

      -[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:](self, "_dispatchEventWithCommand:timestamp:toDevice:", self->_lastCoreRCCommand, v8, [-[AppleIRDeviceProvider busProvider](self "busProvider")]);
      self->_lastCommandTimestamp = v8;
      goto LABEL_70;
    }

    if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
    }

    v12 = 0;
LABEL_71:
    v13 = v18;
    if (v18)
    {
      goto LABEL_72;
    }

LABEL_87:

    self->_lastAppleIRCommand = a3;
    self->_lastCommandTimestamp = v8;
    return v12;
  }

  if ([a3 vendorID] != kAppleIRVendorIDApple)
  {
    [(AppleIRDeviceProvider *)&v18 dispatchEventsForCommand:a3 toDevice:&v19];
    goto LABEL_86;
  }

  if (v7 && v7 != self && ([a3 isUnpairingRequest] & 1) == 0 && (objc_msgSend(a3, "isBTLEDiscoveryModeRequest") & 1) == 0)
  {
    [(AppleIRDeviceProvider *)&v18 dispatchEventsForCommand:&v19 toDevice:?];
LABEL_86:
    v12 = 0;
    v13 = v19;
    if (v19)
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

  if (!self->_isB39 && [a3 isB39Command])
  {
    self->_isB39 = 1;
  }

  if ([a3 isA39PlayPauseSelect])
  {
    if (self->_isB39)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }

LABEL_41:
      [(AppleIRDeviceProvider *)self _cancelPressAndHoldTimer];
      [(AppleIRDeviceProvider *)self _schedulePressAndHoldTimer];
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6757 userInfo:0];
      v18 = v13;
      goto LABEL_42;
    }

    if ([self->_lastAppleIRCommand isB39PlayPauseOrSelect]&& v10 <= _maxRepeatIntervalTicks)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }

      goto LABEL_41;
    }
  }

  if ([a3 isPairingRequest])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
    }

    [(AppleIRDeviceProvider *)self pairAppleRemote:&v18];
    goto LABEL_70;
  }

  if ([a3 isUnpairingRequest])
  {
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
    }

    [(AppleIRDeviceProvider *)self unpairAppleRemote:&v18];
    goto LABEL_70;
  }

  if ([a3 getVendorSpecificHIDUsagePage:&v17 + 4 usageID:&v17 ignoreRepeats:&v16])
  {
    if (v16 == 1 && [a3 isEqual:self->_lastAppleIRCommand] && v10 <= _maxRepeatIntervalTicks)
    {
      if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }
    }

    else
    {
      if ([a3 isStackshotRequest] && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
      {
        [AppleIRDeviceProvider dispatchEventsForCommand:toDevice:];
      }

      [(AppleIRDeviceProvider *)self _dispatchAppleVendorEventPage:HIDWORD(v17) usage:v17 timestamp:v8 toDevice:a4];
    }

    goto LABEL_70;
  }

  v14 = [a3 command];
  if (v14)
  {
    -[AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:](self, "_dispatchEventWithCommand:timestamp:toDevice:", v14, v8, [-[AppleIRDeviceProvider busProvider](self "busProvider")]);
LABEL_70:
    v12 = 1;
    goto LABEL_71;
  }

  [(AppleIRDeviceProvider *)&v18 dispatchEventsForCommand:a3 toDevice:&v19];
  v13 = v19;
LABEL_42:
  v12 = 1;
  if (!v13)
  {
    goto LABEL_87;
  }

LABEL_72:
  if ([v13 code] != -6757 && gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [AppleIRDeviceProvider dispatchEventsForCommand:? toDevice:?];
  }

  return v12;
}

- (BOOL)_dispatchEventWithCommand:(unint64_t)a3 timestamp:(unint64_t)a4 toDevice:(id)a5
{
  [(AppleIRDeviceProvider *)self _cancelPressAndHoldTimer];
  if (!a3)
  {
    [AppleIRDeviceProvider _dispatchEventWithCommand:&v13 timestamp:? toDevice:?];
    return v13;
  }

  if (gLogCategory_CoreRCDevice <= 10 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [AppleIRDeviceProvider _dispatchEventWithCommand:timestamp:toDevice:];
  }

  lastCoreRCCommand = self->_lastCoreRCCommand;
  if (!lastCoreRCCommand)
  {
    goto LABEL_9;
  }

  if (lastCoreRCCommand != a3)
  {
    [(AppleIRDeviceProvider *)self _synthesizeButtonReleaseWithTimestamp:a4];
LABEL_9:
    if (gLogCategory_CoreRCDevice <= 40 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider _dispatchEventWithCommand:a3 timestamp:? toDevice:?];
    }

    if (![(CoreIRDeviceProvider *)self dispatchButtonEventWithCommand:a3 pressed:1 timestamp:a4 toDevice:a5])
    {
      [AppleIRDeviceProvider _dispatchEventWithCommand:? timestamp:? toDevice:?];
      return v12;
    }

    self->_lastCoreRCCommand = a3;
    v10 = 1;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:
  [(AppleIRDeviceProvider *)self _schedulePressAndHoldTimer];
  return v10;
}

- (BOOL)_dispatchAppleVendorEventPage:(unsigned int)a3 usage:(unsigned int)a4 timestamp:(unint64_t)a5 toDevice:(id)a6
{
  v8 = *MEMORY[0x277CBECE8];
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v10 = VendorDefinedEvent;
    v11 = [[CoreRCHIDEvent alloc] initWithIOHIDEvent:VendorDefinedEvent];
    v12 = v11 != 0;
    if (v11)
    {
      [a6 receivedHIDEvent:v11 fromDevice:self];
    }

    else
    {
      [AppleIRDeviceProvider _dispatchAppleVendorEventPage:usage:timestamp:toDevice:];
    }

    CFRelease(v10);
  }

  else
  {
    if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
    {
      [AppleIRDeviceProvider _dispatchAppleVendorEventPage:usage:timestamp:toDevice:];
    }

    v11 = 0;
    v12 = 0;
  }

  return v12;
}

- (void)_synthesizeButtonReleaseWithTimestamp:(unint64_t)a3
{
  lastCoreRCCommand = self->_lastCoreRCCommand;
  if (lastCoreRCCommand)
  {
    if (gLogCategory_CoreRCDevice <= 40)
    {
      if (gLogCategory_CoreRCDevice != -1 || (v6 = _LogCategory_Initialize(), lastCoreRCCommand = self->_lastCoreRCCommand, v6))
      {
        v7 = lastCoreRCCommand;
        v8 = CoreRCCommandString(lastCoreRCCommand);
        LogPrintF();
        lastCoreRCCommand = self->_lastCoreRCCommand;
      }
    }

    -[CoreIRDeviceProvider dispatchButtonEventWithCommand:pressed:timestamp:toDevice:](self, "dispatchButtonEventWithCommand:pressed:timestamp:toDevice:", lastCoreRCCommand, 0, a3, [-[AppleIRDeviceProvider busProvider](self busProvider]);
    self->_lastCoreRCCommand = 0;
  }

  else if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    [AppleIRDeviceProvider _synthesizeButtonReleaseWithTimestamp:];
  }
}

- (void)_schedulePressAndHoldTimer
{
  pressAndHoldTimeoutGenerationCount = self->_pressAndHoldTimeoutGenerationCount;
  v4 = dispatch_time(0, 140000000);
  v5 = [-[CoreRCDevice bus](self "bus")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke;
  v6[3] = &unk_278EA2AA0;
  v6[4] = self;
  v6[5] = pressAndHoldTimeoutGenerationCount;
  dispatch_after(v4, v5, v6);
}

uint64_t __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 10)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke_cold_1(v1);
    }
  }

  v3 = v1 + 32;
  v2 = *(v1 + 32);
  if (*(v3 + 8) == v2[127])
  {
    v4 = mach_absolute_time();

    return [v2 _synthesizeButtonReleaseWithTimestamp:v4];
  }

  return result;
}

- (uint64_t)dispatchEventsForCommand:(uint64_t)result toDevice:(_BYTE *)a2 .cold.1(uint64_t result, _BYTE *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (uint64_t)dispatchEventsForCommand:(void *)a1 toDevice:.cold.3(void *a1)
{
  [a1 payload];
  [a1 vendorID];
  [a1 deviceUID];
  [a1 commandPage];
  [a1 commandID];
  UpTicksToMilliseconds();
  return LogPrintF();
}

- (uint64_t)dispatchEventsForCommand:(uint64_t *)a3 toDevice:.cold.4(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = a2;
    LogPrintF();
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:{0, v7}];
  *a3 = result;
  *a1 = result;
  return result;
}

- (uint64_t)dispatchEventsForCommand:(uint64_t *)a3 toDevice:.cold.5(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (gLogCategory_CoreRCDevice <= 50 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = a2;
    LogPrintF();
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:{0, v7}];
  *a3 = result;
  *a1 = result;
  return result;
}

- (uint64_t)dispatchEventsForCommand:(uint64_t *)a3 toDevice:.cold.6(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (gLogCategory_CoreRCDevice <= 60 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    v7 = a2;
    LogPrintF();
  }

  result = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6735 userInfo:{0, v7}];
  *a3 = result;
  *a1 = result;
  return result;
}

- (uint64_t)_dispatchEventWithCommand:(uint64_t)result timestamp:toDevice:.cold.3(uint64_t result)
{
  v1 = result;
  if (gLogCategory_CoreRCDevice <= 90)
  {
    if (gLogCategory_CoreRCDevice != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

- (uint64_t)_dispatchEventWithCommand:(uint64_t)result timestamp:(_BYTE *)a2 toDevice:.cold.4(uint64_t result, _BYTE *a2)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

- (void)_dispatchAppleVendorEventPage:usage:timestamp:toDevice:.cold.1()
{
  if (gLogCategory_CoreRCDevice <= 90 && (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_0();
  }
}

uint64_t __51__AppleIRDeviceProvider__schedulePressAndHoldTimer__block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1016);
  return LogPrintF();
}

@end