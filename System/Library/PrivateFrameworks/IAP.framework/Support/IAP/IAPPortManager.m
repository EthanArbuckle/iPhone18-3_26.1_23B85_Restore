@interface IAPPortManager
- (BOOL)accessoryPowerModeOnDuringSleep;
- (BOOL)internalBatteryChargingState;
- (BOOL)isDeviceInLowPowerMode;
- (BOOL)sendReserveCurrentNotification;
- (BOOL)supportsPowerModeOnAcrossSleep;
- (BOOL)supportsUltraHighPowerMode;
- (IAPPortManager)initWithService:(unsigned int)a3 andNotificationPort:(IONotificationPort *)a4;
- (int)accessoryPowerState;
- (unsigned)availableCurrentFromAccInMa;
- (unsigned)maxInputCurrentFromAccInMa;
- (unsigned)reserveCurrentForAccInMa;
- (unsigned)ultraHighPowerModeCurrentLimit;
- (void)dealloc;
- (void)restoreAvailableCurrentFromAcc;
- (void)setAccessoryPowerModeOnDuringSleep:(BOOL)a3;
- (void)setAccessoryPowerState:(int)a3;
- (void)setInternalBatteryChargingState:(BOOL)a3;
- (void)setMaxInputCurrentFromAccInMa:(unsigned __int16)a3;
- (void)setReserveCurrentForAccInMa:(unsigned __int16)a3;
@end

@implementation IAPPortManager

- (IAPPortManager)initWithService:(unsigned int)a3 andNotificationPort:(IONotificationPort *)a4
{
  v16.receiver = self;
  v16.super_class = IAPPortManager;
  result = [(IAPPortManager *)&v16 init];
  v7 = result;
  if (!result)
  {
    return v7;
  }

  connect = 0;
  *&result->_supportsUltraHighPowerMode = -1;
  if (((result + 16) & 7) == 0)
  {
    result->_notificationPortRef = a4;
    if (((result + 40) & 3) == 0)
    {
      result->_accessoryPowerState = 1;
      result->_sendReserveCurrentNotification = 0;
      p_service = &result->_service;
      if ((&result->_service & 3) == 0)
      {
        *p_service = a3;
        v9 = IOObjectRetain(a3);
        if (v9)
        {
          NSLog(@"ERROR - %s:%s - %d IOObjectRetain failed %#x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager initWithService:andNotificationPort:]", 128, v9);
        }

        v10 = IOServiceOpen(*p_service, mach_task_self_, 0, &connect);
        if (v10 || connect == 0)
        {
          NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager initWithService:andNotificationPort:]", 134, v10);
        }

        else
        {
          v12 = IOServiceAddInterestNotification(v7->_notificationPortRef, v7->_service, "IOGeneralInterest", sub_1000DE1DC, v7, &v7->_notification);
          if (v12)
          {
            NSLog(@"ERROR - %s:%s - %d couldn't add interest notification %#x", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager initWithService:andNotificationPort:]", 140, v12);
          }

          IOServiceClose(connect);
        }

        v13 = [NSNumber alloc];
        service = v7->_service;
        result = [v13 initWithInt:IOAccessoryManagerGetPrimaryPort()];
        if ((&v7->_portNumber & 7) == 0)
        {
          v7->_portNumber = result;
          return v7;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  p_service = &self->_service;
  if ((&self->_service & 3) != 0)
  {
    goto LABEL_9;
  }

  if (*p_service)
  {
    IOObjectRelease(*p_service);
    *p_service = 0;
  }

  p_notification = &self->_notification;
  if ((&self->_notification & 3) != 0)
  {
    goto LABEL_9;
  }

  if (*p_notification)
  {
    IOObjectRelease(*p_notification);
    *p_notification = 0;
  }

  if (((self + 32) & 7) != 0)
  {
LABEL_9:
    __break(0x5516u);
  }

  else
  {

    v5.receiver = self;
    v5.super_class = IAPPortManager;
    [(IAPPortManager *)&v5 dealloc];
  }
}

- (BOOL)isDeviceInLowPowerMode
{
  if ([(IAPPortManager *)self isLowPowerModeSupported]&& (v2 = SCPreferencesCreate(kCFAllocatorDefault, @"com.apple.iapd", @"com.apple.radios.plist")) != 0)
  {
    v3 = v2;
    SCPreferencesSynchronize(v2);
    Value = SCPreferencesGetValue(v3, @"LowPowerMode");
    v5 = Value;
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      LOBYTE(v5) = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) == 1;
    }

    CFRelease(v3);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setAccessoryPowerState:(int)a3
{
  p_accessoryPowerState = &self->_accessoryPowerState;
  if ((&self->_accessoryPowerState & 3) != 0)
  {
    goto LABEL_19;
  }

  if ((*p_accessoryPowerState | a3) >= 4)
  {
LABEL_20:
    __break(0x550Au);
    return;
  }

  if (*p_accessoryPowerState == a3)
  {
    return;
  }

  connect = 0;
  if ((&self->_service & 3) != 0)
  {
LABEL_19:
    __break(0x5516u);
    goto LABEL_20;
  }

  v6 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = connect == 0;
  }

  if (v7)
  {
    NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setAccessoryPowerState:]", 217, v6);
  }

  else
  {
    if (a3 != 2 && a3 != 3 || ![(IAPPortManager *)self isDeviceInLowPowerMode])
    {
      v8 = IOAccessoryManagerConfigurePower();
      if (v8)
      {
        NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerConfigurePower failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setAccessoryPowerState:]", 238, v8);
      }
    }

    IOServiceClose(connect);
  }

  *p_accessoryPowerState = a3;
}

- (BOOL)supportsUltraHighPowerMode
{
  supportsUltraHighPowerMode = self->_supportsUltraHighPowerMode;
  if (supportsUltraHighPowerMode == 255)
  {
    v3 = self;
    if (((self + 8) & 3) != 0)
    {
      __break(0x5516u);
      return self;
    }

    service = self->_service;
    supportsUltraHighPowerMode = IOAccessoryManagerPowerModeIsSupported() != 0;
    v3->_supportsUltraHighPowerMode = supportsUltraHighPowerMode;
  }

  LOBYTE(self) = supportsUltraHighPowerMode != 0;
  return self;
}

- (BOOL)supportsPowerModeOnAcrossSleep
{
  supportsPowerModeOnAcrossSleep = self->_supportsPowerModeOnAcrossSleep;
  if (supportsPowerModeOnAcrossSleep == 255)
  {
    v3 = self;
    if (((self + 8) & 3) != 0)
    {
      __break(0x5516u);
      return self;
    }

    service = self->_service;
    supportsPowerModeOnAcrossSleep = IOAccessoryManagerPowerDuringSleepIsSupported() != 0;
    v3->_supportsPowerModeOnAcrossSleep = supportsPowerModeOnAcrossSleep;
  }

  LOBYTE(self) = supportsPowerModeOnAcrossSleep != 0;
  return self;
}

- (BOOL)accessoryPowerModeOnDuringSleep
{
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    service = self->_service;
    LOBYTE(self) = IOAccessoryManagerGetPowerDuringSleep() != 0;
  }

  return self;
}

- (void)setAccessoryPowerModeOnDuringSleep:(BOOL)a3
{
  connect = 0;
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = connect == 0;
    }

    if (v4)
    {
      NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setAccessoryPowerModeOnDuringSleep:]", 283, v3);
    }

    else
    {
      v5 = IOAccessoryManagerSetPowerDuringSleep();
      if (v5)
      {
        if (v5 == -536870183)
        {
          NSLog(@"INFO - %s:%s - %d IOAccessoryManagerSetPowerDuringSleep not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setAccessoryPowerModeOnDuringSleep:]", 291, 3758097113);
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerSetPowerDuringSleep failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setAccessoryPowerModeOnDuringSleep:]", 295, v5);
        }
      }

      IOServiceClose(connect);
    }
  }
}

- (unsigned)availableCurrentFromAccInMa
{
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    service = self->_service;
    USBCurrentLimitBase = IOAccessoryManagerGetUSBCurrentLimitBase();
    if (USBCurrentLimitBase == -536870183)
    {
      NSLog(@"INFO - %s:%s - %d IOAccessoryManagerGetUSBCurrentLimitBase not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager availableCurrentFromAccInMa]", 310, 3758097113);
    }

    else if (USBCurrentLimitBase)
    {
      NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerGetUSBCurrentLimitBase failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager availableCurrentFromAccInMa]", 314, USBCurrentLimitBase);
    }

    LOWORD(self) = 0;
  }

  return self;
}

- (void)restoreAvailableCurrentFromAcc
{
  connect = 0;
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = connect == 0;
    }

    if (v4)
    {
      NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager restoreAvailableCurrentFromAcc]", 379, v3);
    }

    else
    {
      self->_sendReserveCurrentNotification = 0;
      v5 = IOAccessoryManagerRestoreUSBCurrentLimitBase();
      if (v5)
      {
        if (v5 == -536870183)
        {
          NSLog(@"INFO - %s:%s - %d IOAccessoryManagerRestoreUSBcurrentLimitBase not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager restoreAvailableCurrentFromAcc]", 367, 3758097113);
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerRestoreUSBcurrentLimitBase failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager restoreAvailableCurrentFromAcc]", 371, v5);
        }
      }

      IOServiceClose(connect);
    }
  }
}

- (unsigned)reserveCurrentForAccInMa
{
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
    __break(0x550Cu);
  }

  else
  {
    service = self->_service;
    USBCurrentLimitOffset = IOAccessoryManagerGetUSBCurrentLimitOffset();
    if (USBCurrentLimitOffset)
    {
      if (USBCurrentLimitOffset == -536870183)
      {
        NSLog(@"INFO - %s:%s - %d IOAccessoryManagerGetUSBCurrentLimitOffset not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager reserveCurrentForAccInMa]", 394, 3758097113);
      }

      else
      {
        NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerGetUSBCurrentLimitOffset failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager reserveCurrentForAccInMa]", 398, USBCurrentLimitOffset);
      }
    }

    LOWORD(self) = 0;
  }

  return self;
}

- (void)setReserveCurrentForAccInMa:(unsigned __int16)a3
{
  connect = 0;
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = connect == 0;
    }

    if (v5)
    {
      NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setReserveCurrentForAccInMa:]", 416, v4);
    }

    else
    {
      v6 = IOAccessoryManagerSetUSBCurrentOffset();
      if (v6)
      {
        if (v6 == -536870183)
        {
          NSLog(@"INFO - %s:%s - %d IOAccessoryManagerSetUSBCurrentOffset not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setReserveCurrentForAccInMa:]", 424, 3758097113);
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerSetUSBCurrentOffset failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setReserveCurrentForAccInMa:]", 428, v6);
        }
      }

      else
      {
        self->_sendReserveCurrentNotification = 1;
      }

      IOServiceClose(connect);
    }
  }
}

- (unsigned)maxInputCurrentFromAccInMa
{
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    service = self->_service;
    USBCurrentLimitMaximum = IOAccessoryManagerGetUSBCurrentLimitMaximum();
    if (USBCurrentLimitMaximum == -536870160)
    {
      NSLog(@"INFO - %s:%s - %d IOAccessoryManagerSetUSBCurrentLimitMaximum not found %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager maxInputCurrentFromAccInMa]", 445, 3758097136);
    }

    else if (USBCurrentLimitMaximum)
    {
      NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerSetUSBCurrentLimitMaximum failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager maxInputCurrentFromAccInMa]", 449, USBCurrentLimitMaximum);
    }

    LOWORD(self) = 0;
  }

  return self;
}

- (void)setMaxInputCurrentFromAccInMa:(unsigned __int16)a3
{
  connect = 0;
  if ((&self->_service & 3) != 0)
  {
    goto LABEL_20;
  }

  v4 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = connect == 0;
  }

  if (v5)
  {
    NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setMaxInputCurrentFromAccInMa:]", 463, v4);
    return;
  }

  v6 = IOAccessoryManagerSetUSBCurrentLimitMaximum();
  if (v6)
  {
    if (v6 == -536870183)
    {
      NSLog(@"INFO - %s:%s - %d IOAccessoryManagerSetUSBCurrentLimitMaximum not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setMaxInputCurrentFromAccInMa:]", 471, 3758097113);
    }

    else
    {
      NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerSetUSBCurrentLimitMaximum failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setMaxInputCurrentFromAccInMa:]", 475, v6);
    }

    goto LABEL_17;
  }

  v7 = sub_100026FA0([(NSNumber *)[(IAPPortManager *)self portNumber] intValue]);
  if (!v7)
  {
    v7 = sub_100027034([(NSNumber *)[(IAPPortManager *)self portNumber] intValue]);
    if (!v7)
    {
      NSLog(@"ERROR - setMaxInputCurrentFromAccInMa Still no podTransport for manager %d", [(NSNumber *)[(IAPPortManager *)self portNumber] intValue]);
      goto LABEL_17;
    }
  }

  v8 = v7;
  v9 = sub_100048620();
  if (!v9 || (v9 & 7) != 0)
  {
LABEL_20:
    __break(0x5516u);
    return;
  }

  sub_10004A478(v9, v8, 0);
LABEL_17:
  IOServiceClose(connect);
}

- (void)setInternalBatteryChargingState:(BOOL)a3
{
  connect = 0;
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = IOServiceOpen(self->_service, mach_task_self_, 0, &connect);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = connect == 0;
    }

    if (v4)
    {
      NSLog(@"ERROR - %s:%s - %d IOServiceOpen failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setInternalBatteryChargingState:]", 502, v3);
    }

    else
    {
      v5 = IOAccessoryManagerSetBatteryPackMode();
      if (v5)
      {
        if (v5 == -536870183)
        {
          NSLog(@"INFO - %s:%s - %d IOAccessoryManagerSetBatteryPackMode not attached %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setInternalBatteryChargingState:]", 510, 3758097113);
        }

        else
        {
          NSLog(@"ERROR - %s:%s - %d IOAccessoryManagerSetBatteryPackMode failed %#x\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAPPortManager.mm", "[IAPPortManager setInternalBatteryChargingState:]", 514, v5);
        }
      }

      IOServiceClose(connect);
    }
  }
}

- (BOOL)internalBatteryChargingState
{
  if ((&self->_service & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    service = self->_service;
    LOBYTE(self) = IOAccessoryManagerGetBatteryPackMode() == 0;
  }

  return self;
}

- (unsigned)ultraHighPowerModeCurrentLimit
{
  if ((&self->_service & 3) == 0)
  {
    return _IOAccessoryManagerPowerModeCurrentLimit(self->_service, 4);
  }

  __break(0x5516u);
  return _IOAccessoryManagerPowerModeCurrentLimit(self, a2);
}

- (int)accessoryPowerState
{
  result = self->_accessoryPowerState;
  if (result >= 4)
  {
    __break(0x550Au);
  }

  return result;
}

- (BOOL)sendReserveCurrentNotification
{
  if (self->_sendReserveCurrentNotification >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_sendReserveCurrentNotification;
  }

  return self;
}

@end