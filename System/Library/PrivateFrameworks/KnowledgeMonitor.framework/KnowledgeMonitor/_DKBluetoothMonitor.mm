@interface _DKBluetoothMonitor
+ (id)audioProductsBatteryLevels;
+ (id)log;
+ (int)BMDeviceBluetoothDeviceTypeFromBTDeviceType:(int)a3;
- (_DKBluetoothMonitor)init;
- (id)loadState;
- (void)deactivate;
- (void)dealloc;
- (void)handleUnpairingEvent:(id)a3;
- (void)receiveNotificationEvent:(id)a3;
- (void)saveState;
- (void)start;
- (void)updateCurrentBatteryLevels;
@end

@implementation _DKBluetoothMonitor

- (_DKBluetoothMonitor)init
{
  v24.receiver = self;
  v24.super_class = _DKBluetoothMonitor;
  v2 = [(_DKMonitor *)&v24 init];
  if (v2)
  {
    if (+[_DKBluetoothMonitor writeToBiome])
    {
      v3 = BiomeLibrary();
      v4 = [v3 Device];
      v5 = [v4 Wireless];
      v6 = [v5 Bluetooth];
      v7 = [v6 source];
      source = v2->_source;
      v2->_source = v7;
    }

    v9 = BiomeLibrary();
    v10 = [v9 Device];
    v11 = [v10 Wireless];
    v12 = [v11 Bluetooth];
    v13 = [v12 pruner];
    [(_DKBluetoothMonitor *)v2 setPruner:v13];

    v14 = [MEMORY[0x277CBEB38] dictionary];
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    inactiveConnections = v2->_inactiveConnections;
    v2->_inactiveConnections = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    previousVendorIDs = v2->_previousVendorIDs;
    v2->_previousVendorIDs = v18;

    v20 = [(_DKBluetoothMonitor *)v2 loadState];
    v21 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connectionUpdateLock = v2->_connectionUpdateLock;
    v2->_connectionUpdateLock = v21;
  }

  return v2;
}

- (void)dealloc
{
  [(_DKBluetoothMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKBluetoothMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

+ (id)audioProductsBatteryLevels
{
  v29 = *MEMORY[0x277D85DE8];
  if (IOPSCopyPowerSourcesByTypePrecise() || (v3 = IOPSCopyPowerSourcesList(0)) == 0)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  else
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    v2 = [MEMORY[0x277CBEB38] dictionary];
    if (Count >= 1)
    {
      v7 = 0;
      *&v6 = 138412546;
      v24 = v6;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
        v9 = IOPSGetPowerSourceDescription(0, ValueAtIndex);
        Value = CFDictionaryGetValue(v9, @"Accessory Category");
        v11 = CFDictionaryGetValue(v9, @"Part Identifier");
        v12 = CFDictionaryGetValue(v9, @"Group Identifier");
        if (!v12)
        {
          break;
        }

        v13 = [v2 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v14 = [MEMORY[0x277CBEB38] dictionary];
          [v2 setObject:v14 forKeyedSubscript:v12];
        }

        valuePtr = 0;
        if (!Value)
        {
          goto LABEL_24;
        }

        if (!CFEqual(Value, @"Headphone"))
        {
          if (!v11 || !CFEqual(Value, @"Audio Battery Case") || !CFEqual(v11, @"Case"))
          {
            goto LABEL_24;
          }

          v19 = CFDictionaryGetValue(v9, @"Current Capacity");
          CFNumberGetValue(v19, kCFNumberSInt32Type, &valuePtr);
          v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
          v17 = [v2 objectForKeyedSubscript:v12];
          v18 = [MEMORY[0x277CFE198] batteryLevelHeadphoneCase];
LABEL_22:
          v21 = v18;
          [v17 setObject:v16 forKeyedSubscript:{v18, v24}];

LABEL_23:
          goto LABEL_24;
        }

        if (v11)
        {
          if (CFEqual(v11, @"Left"))
          {
            v15 = CFDictionaryGetValue(v9, @"Current Capacity");
            CFNumberGetValue(v15, kCFNumberSInt32Type, &valuePtr);
            v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
            v17 = [v2 objectForKeyedSubscript:v12];
            v18 = [MEMORY[0x277CFE198] batteryLevelHeadphoneLeft];
            goto LABEL_22;
          }

          if (CFEqual(v11, @"Right"))
          {
            v20 = CFDictionaryGetValue(v9, @"Current Capacity");
            CFNumberGetValue(v20, kCFNumberSInt32Type, &valuePtr);
            v16 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
            v17 = [v2 objectForKeyedSubscript:v12];
            v18 = [MEMORY[0x277CFE198] batteryLevelHeadphoneRight];
            goto LABEL_22;
          }
        }

LABEL_24:

        if (Count == ++v7)
        {
          goto LABEL_25;
        }
      }

      v16 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        valuePtr = v24;
        v26 = Value;
        v27 = 2112;
        v28 = v11;
        _os_log_error_impl(&dword_22595A000, v16, OS_LOG_TYPE_ERROR, "Could not retrieve device address for connected device: %@ - %@", &valuePtr, 0x16u);
      }

      goto LABEL_23;
    }

LABEL_25:
    CFRelease(v4);
    CFRelease(0);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (int)BMDeviceBluetoothDeviceTypeFromBTDeviceType:(int)a3
{
  if (a3 < 0x32)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)updateCurrentBatteryLevels
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(_DKBluetoothMonitor *)self batteryLevels];
  v4 = [v3 mutableCopy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(_DKBluetoothMonitor *)self batteryLevels];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [(_DKBluetoothMonitor *)self batteryLevels];
        v13 = [v12 objectForKeyedSubscript:v11];
        v14 = [v13 mutableCopy];
        [v4 setValue:v14 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }

  v15 = [objc_opt_class() audioProductsBatteryLevels];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v15 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];

        if (!v22)
        {
          v23 = [MEMORY[0x277CBEB38] dictionary];
          [v4 setValue:v23 forKey:v21];
        }

        v24 = [v4 objectForKeyedSubscript:v21];
        v25 = [v15 objectForKeyedSubscript:v21];
        [v24 addEntriesFromDictionary:v25];
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v18);
  }

  [(_DKBluetoothMonitor *)self setBatteryLevels:v4];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v3 = MEMORY[0x277CF3248];
  v4 = [(_DKMonitor *)self queue];
  [v3 setSharedInstanceQueue:v4];

  v5 = [MEMORY[0x277CF3248] sharedInstance];
  v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v7 = [(_DKMonitor *)self queue];
  [v6 setUnderlyingQueue:v7];

  if (!self->_batteryLevelPollingQueue)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetknowledge.bluetoothBatteryPollingQueue", v8);
    batteryLevelPollingQueue = self->_batteryLevelPollingQueue;
    self->_batteryLevelPollingQueue = v9;
  }

  if (!self->_batteryLevelPollingTimer)
  {
    v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_batteryLevelPollingQueue);
    batteryLevelPollingTimer = self->_batteryLevelPollingTimer;
    self->_batteryLevelPollingTimer = v11;

    v13 = self->_batteryLevelPollingTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __28___DKBluetoothMonitor_start__block_invoke;
    handler[3] = &unk_27856F060;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_source_set_timer(self->_batteryLevelPollingTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_activate(self->_batteryLevelPollingTimer);
  }

  v14 = [(_DKBluetoothMonitor *)self batteryLevels];

  if (!v14)
  {
    [(_DKBluetoothMonitor *)self setBatteryLevels:MEMORY[0x277CBEC10]];
  }

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  v16 = *MEMORY[0x277CF3190];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __28___DKBluetoothMonitor_start__block_invoke_2;
  v26[3] = &unk_27856F718;
  v26[4] = self;
  v17 = [v15 addObserverForName:v16 object:0 queue:v6 usingBlock:v26];

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  v19 = *MEMORY[0x277CF3150];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __28___DKBluetoothMonitor_start__block_invoke_4;
  v25[3] = &unk_27856F718;
  v25[4] = self;
  v20 = [v18 addObserverForName:v19 object:0 queue:v6 usingBlock:v25];

  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  v22 = *MEMORY[0x277CF31A0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __28___DKBluetoothMonitor_start__block_invoke_5;
  v24[3] = &unk_27856F718;
  v24[4] = self;
  v23 = [v21 addObserverForName:v22 object:0 queue:v6 usingBlock:v24];

  self->_enabled = 1;
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

+ (id)log
{
  if (log_onceToken_2 != -1)
  {
    +[_DKBluetoothMonitor log];
  }

  v3 = log_log_2;

  return v3;
}

- (void)saveState
{
  v18[2] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__6;
  v12[4] = __Block_byref_object_dispose__6;
  activeConnections = self->_activeConnections;
  v17[0] = @"_DKBluetoothMonitor-activeConnections";
  v17[1] = @"_DKBluetoothMonitor-inactiveConnections";
  inactiveConnections = self->_inactiveConnections;
  v18[0] = activeConnections;
  v18[1] = inactiveConnections;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v5 = [(_DKMonitor *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32___DKBluetoothMonitor_saveState__block_invoke;
  v11[3] = &unk_27856F390;
  v11[4] = self;
  v11[5] = v12;
  v6 = v11;
  v7 = v5;
  v8 = os_transaction_create();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_6;
  block[3] = &unk_27856F178;
  v15 = v8;
  v16 = v6;
  v9 = v8;
  dispatch_async(v7, block);

  _Block_object_dispose(v12, 8);
  v10 = *MEMORY[0x277D85DE8];
}

- (id)loadState
{
  v3 = +[_DKBluetoothMonitor log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "load state called", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v4 = [(_DKMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32___DKBluetoothMonitor_loadState__block_invoke;
  v7[3] = &unk_27856F368;
  v7[4] = self;
  v7[5] = buf;
  dispatch_sync(v4, v7);

  v5 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v5;
}

- (void)receiveNotificationEvent:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (self->_enabled)
  {
    v6 = [v4 objectForKeyedSubscript:@"Notification"];
    v7 = [v6 isEqual:@"com.apple.bluetooth.pairing"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:@"_State"];
      v9 = [v8 unsignedLongLongValue];

      v10 = +[_DKBluetoothMonitor log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(_DKBluetoothMonitor *)v9 receiveNotificationEvent:v10];
      }

      v27 = bswap64(v9);
      LOWORD(v27) = HIWORD(v9);
      if (BTDeviceAddressToString())
      {
        v11 = +[_DKBluetoothMonitor log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(_DKBluetoothMonitor *)&v27 receiveNotificationEvent:v11, v12, v13, v14, v15, v16, v17];
        }
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
        v18 = +[_DKBluetoothMonitor log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = @"pairing";
          if ((v27 & 1) == 0)
          {
            v19 = @"unpairing";
          }

          *buf = 138412546;
          *&buf[4] = v19;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&dword_22595A000, v18, OS_LOG_TYPE_INFO, "Handling %@ of %@", buf, 0x16u);
        }

        if ((v27 & 1) == 0)
        {
          v20 = [(_DKMonitor *)self queue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __48___DKBluetoothMonitor_receiveNotificationEvent___block_invoke;
          v25[3] = &unk_27856F0B0;
          v25[4] = self;
          v11 = v11;
          v26 = v11;
          v21 = v25;
          v22 = os_transaction_create();
          *buf = MEMORY[0x277D85DD0];
          *&buf[8] = 3221225472;
          *&buf[16] = __cd_dispatch_async_capture_tx_block_invoke_6;
          v30 = &unk_27856F178;
          v31 = v22;
          v32 = v21;
          v23 = v22;
          dispatch_async(v20, buf);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleUnpairingEvent:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = os_transaction_create();
  v7 = [(_DKBluetoothMonitor *)self historicalDeletingHandler];

  if (v7)
  {
    v8 = MEMORY[0x277CCA920];
    v9 = MEMORY[0x277CFE260];
    v10 = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
    v11 = [v10 name];
    v12 = [v9 predicateForEventsWithStreamName:v11];
    v24[0] = v12;
    v13 = MEMORY[0x277CFE260];
    v14 = [MEMORY[0x277CFE198] address];
    v15 = [v13 predicateForObjectsWithMetadataKey:v14 andStringValue:v4];
    v24[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v17 = [v8 andPredicateWithSubpredicates:v16];

    v18 = [(_DKBluetoothMonitor *)self historicalDeletingHandler];
    (v18)[2](v18, v17);
  }

  v19 = [(_DKBluetoothMonitor *)self pruner];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44___DKBluetoothMonitor_handleUnpairingEvent___block_invoke;
  v22[3] = &unk_27856F458;
  v23 = v4;
  v20 = v4;
  [v19 deleteWithPolicy:@"forget-this-device" eventsPassingTest:v22];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)receiveNotificationEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134283521;
  v4 = a1;
  _os_log_debug_impl(&dword_22595A000, a2, OS_LOG_TYPE_DEBUG, "com.apple.bluetooth.pairing 0x%{private}llx", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)receiveNotificationEvent:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_5(&dword_22595A000, a2, a3, "Failed to format address for com.apple.bluetooth.pairing 0x%{private}llx", a5, a6, a7, a8, 1u);
  v8 = *MEMORY[0x277D85DE8];
}

@end