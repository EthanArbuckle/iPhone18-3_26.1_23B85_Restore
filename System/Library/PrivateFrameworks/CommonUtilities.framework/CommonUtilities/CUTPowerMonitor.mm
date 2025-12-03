@interface CUTPowerMonitor
+ (id)sharedInstance;
- (BOOL)_initIOService;
- (BOOL)_updateBatteryConnectedStateWithBatteryEntry:(unsigned int)entry;
- (BOOL)isExternalPowerConnected;
- (double)batteryPercentRemaining;
- (id)_init;
- (void)_handlePowerChangedNotificationWithMessageType:(unsigned int)type notificationID:(void *)d;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)updateBatteryLevelWithBatteryEntry:(unsigned int)entry;
@end

@implementation CUTPowerMonitor

+ (id)sharedInstance
{
  if (qword_1ED4AE460 != -1)
  {
    sub_1B2331DA4();
  }

  v3 = qword_1ED4AE430;

  return v3;
}

- (BOOL)isExternalPowerConnected
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_internal + 64);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_handlePowerChangedNotificationWithMessageType:(unsigned int)type notificationID:(void *)d
{
  v20 = *MEMORY[0x1E69E9840];
  if (type == -536870288 || type == -536870272)
  {
    v12 = *(self->_internal + 7);
    v13 = *MEMORY[0x1E69E9840];

    IOAllowPowerChange(v12, d);
  }

  else
  {
    if (type == -536870144)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = *(selfCopy->_internal + 6);
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = *v16;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v16 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v15 + 1) + 8 * i);
            v10 = dispatch_get_global_queue(0, 0);
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = sub_1B233041C;
            v14[3] = &unk_1E7B20D70;
            v14[4] = v9;
            v14[5] = selfCopy;
            dispatch_async(v10, v14);
          }

          v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v6);
      }

      objc_sync_exit(selfCopy);
    }

    v11 = *MEMORY[0x1E69E9840];
  }
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = CUTPowerMonitor;
  v2 = [(CUTPowerMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_CUTPowerMonitor);
    internal = v2->_internal;
    v2->_internal = v3;

    *(v2->_internal + 7) = 0xBFF0000000000000;
    if (![(CUTPowerMonitor *)v2 _initIOService])
    {
      p_super = &v2->super;
      v2 = 0;
      goto LABEL_6;
    }

    *(v2->_internal + 7) = IORegisterForSystemPower(0, v2->_internal + 4, sub_1B2322BF4, v2->_internal + 10);
    if (*(v2->_internal + 7))
    {
      p_super = dispatch_queue_create("CUTPowerMonitor-IOPowerManagement", 0);
      IONotificationPortSetDispatchQueue(*(v2->_internal + 4), p_super);
LABEL_6:
    }
  }

  return v2;
}

- (BOOL)_initIOService
{
  v3 = *MEMORY[0x1E696CD68];
  *(self->_internal + 2) = IONotificationPortCreate(*MEMORY[0x1E696CD68]);
  *(self->_internal + 1) = IONotificationPortGetRunLoopSource(*(self->_internal + 2));
  if (*(self->_internal + 1))
  {
    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, *(self->_internal + 1), *MEMORY[0x1E695E8E0]);
    v5 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v3, v5);
    if (!IOServiceAddInterestNotification(*(self->_internal + 2), MatchingService, "IOGeneralInterest", sub_1B2322AB0, 0, self->_internal + 6))
    {
      [(CUTPowerMonitor *)self updateBatteryLevelWithBatteryEntry:MatchingService];
      [(CUTPowerMonitor *)self _updateBatteryConnectedStateWithBatteryEntry:MatchingService];
      LOBYTE(v7) = 1;
      return v7;
    }

    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_1B2331D14();
LABEL_7:
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_1B2331D5C();
      goto LABEL_7;
    }
  }

  return v7;
}

- (void)dealloc
{
  Main = CFRunLoopGetMain();
  v4 = *MEMORY[0x1E695E8E0];
  if (CFRunLoopContainsSource(Main, *(self->_internal + 1), *MEMORY[0x1E695E8E0]))
  {
    v5 = CFRunLoopGetMain();
    CFRunLoopRemoveSource(v5, *(self->_internal + 1), v4);
  }

  internal = self->_internal;
  v7 = *(internal + 2);
  if (v7)
  {
    IONotificationPortDestroy(v7);
    *(self->_internal + 2) = 0;
    internal = self->_internal;
  }

  v8 = *(internal + 6);
  if (v8)
  {
    IOObjectRelease(v8);
    *(self->_internal + 6) = 0;
    internal = self->_internal;
  }

  if (*(internal + 7))
  {
    IODeregisterForSystemPower(internal + 10);
    IONotificationPortDestroy(*(self->_internal + 4));
    IOServiceClose(*(self->_internal + 7));
    *(self->_internal + 7) = 0;
  }

  v9.receiver = self;
  v9.super_class = CUTPowerMonitor;
  [(CUTPowerMonitor *)&v9 dealloc];
}

- (void)updateBatteryLevelWithBatteryEntry:(unsigned int)entry
{
  obj = self;
  objc_sync_enter(obj);
  *(obj->_internal + 11) = entry;
  *(obj->_internal + 7) = 0xBFF0000000000000;
  objc_sync_exit(obj);
}

- (BOOL)_updateBatteryConnectedStateWithBatteryEntry:(unsigned int)entry
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  CFProperty = IORegistryEntryCreateCFProperty(entry, @"ExternalConnected", *MEMORY[0x1E695E480], 0);
  v6 = CFProperty;
  if (CFProperty)
  {
    bOOLValue = [CFProperty BOOLValue];
    internal = selfCopy->_internal;
    v9 = internal[64];
    v10 = v9 != bOOLValue;
    if (v9 != bOOLValue)
    {
      internal[64] = bOOLValue;
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  return v10;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v10 = delegateCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = *(selfCopy->_internal + 6);
    if (!v6)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      internal = selfCopy->_internal;
      v9 = internal[6];
      internal[6] = weakObjectsHashTable;

      v6 = *(selfCopy->_internal + 6);
    }

    [v6 addObject:v10];
    objc_sync_exit(selfCopy);

    delegateCopy = v10;
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v6 = delegateCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [*(selfCopy->_internal + 6) removeObject:v6];
    objc_sync_exit(selfCopy);

    delegateCopy = v6;
  }
}

- (double)batteryPercentRemaining
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internal = selfCopy->_internal;
  if (*(internal + 7) != -1.0)
  {
    goto LABEL_12;
  }

  v4 = *(internal + 11);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(v4, @"MaxCapacity", *MEMORY[0x1E695E480], 0);
  v7 = IORegistryEntryCreateCFProperty(v4, @"CurrentCapacity", v5, 0);
  v8 = v7;
  if (CFProperty)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(selfCopy->_internal + 7) = 0xBFF0000000000000;
    if (!CFProperty)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [v7 doubleValue];
    v11 = v10;
    [CFProperty doubleValue];
    *(selfCopy->_internal + 7) = v11 / v12;
    *(selfCopy->_internal + 11) = 0;
  }

  CFRelease(CFProperty);
LABEL_10:
  if (v8)
  {
    CFRelease(v8);
  }

LABEL_12:
  v13 = *(selfCopy->_internal + 7);
  objc_sync_exit(selfCopy);

  return v13;
}

@end