@interface BluetoothBridge
+ (id)sharedBluetoothBridge;
- (BOOL)isConnected:(id)a3;
- (BOOL)isHALPublished:(unsigned __int8)a3 device:(id)a4;
- (BOOL)shouldRemoveDevice:(id)a3;
- (BluetoothBridge)init;
- (__CFDictionary)createDescriptionWithDevice:(id)a3;
- (id)addressFromDevice:(id)a3;
- (id)deviceFromIdentifier:(id)a3;
- (id)nameFromDevice:(id)a3;
- (unsigned)supportedFormats:(id)a3;
- (void)addListeners;
- (void)connectToAddress:(id)a3 completionHandler:(id)a4;
- (void)getHFPSupportStatus;
- (void)setManager:(OpaqueFigEndpointManager *)a3;
- (void)startLEScanning:(BOOL)a3;
- (void)stopLEScanning;
@end

@implementation BluetoothBridge

void __31__BluetoothBridge_addListeners__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_INFO, "Audio devices changed", buf, 2u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x80000A08000 error:0];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [*(a1 + 32) createDescriptionWithDevice:{v9, v17}];
        if (v10)
        {
          v11 = v10;
          v12 = BluetoothEndpointManagerLogComponent;
          if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v23 = v11;
            v24 = 2112;
            v25 = v9;
            _os_log_impl(&dword_241BB7000, v12, OS_LOG_TYPE_INFO, "HAL: %@ %@", buf, 0x16u);
          }

          BluetoothEndpointManagerHandleUpdateEvent(v11, [*(a1 + 32) manager]);
          CFRelease(v11);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 32) activation];

  if (v13)
  {
    v14 = [*(a1 + 32) activation];
    v14[2]();
  }

  else
  {
    v15 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241BB7000, v15, OS_LOG_TYPE_DEFAULT, "Activation block is nil", buf, 2u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)sharedBluetoothBridge
{
  if (sharedBluetoothBridge_sharedBridgeToken != -1)
  {
    +[BluetoothBridge sharedBluetoothBridge];
  }

  v3 = sharedBluetoothBridge_sharedBluetoothBridge;

  return v3;
}

uint64_t __40__BluetoothBridge_sharedBluetoothBridge__block_invoke()
{
  sharedBluetoothBridge_sharedBluetoothBridge = objc_alloc_init(BluetoothBridge);

  return MEMORY[0x2821F96F8]();
}

- (BluetoothBridge)init
{
  v9.receiver = self;
  v9.super_class = BluetoothBridge;
  v2 = [(BluetoothBridge *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BluetoothBridge", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = v2->_systemMonitor;
    v2->_systemMonitor = v6;

    [(CUSystemMonitor *)v2->_systemMonitor setFirstUnlockHandler:&__block_literal_global_4];
    [(CUSystemMonitor *)v2->_systemMonitor activateWithCompletion:0];
  }

  return v2;
}

void __23__BluetoothBridge_init__block_invoke()
{
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    __23__BluetoothBridge_init__block_invoke_cold_1();
  }
}

- (void)setManager:(OpaqueFigEndpointManager *)a3
{
  self->_manager = a3;
  v4 = [(BluetoothBridge *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BluetoothBridge_setManager___block_invoke;
  block[3] = &unk_278D10640;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __30__BluetoothBridge_setManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addListeners];
  v2 = *(a1 + 32);

  return [v2 getHFPSupportStatus];
}

- (void)getHFPSupportStatus
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v3 = [MEMORY[0x277CBE010] controllerInfoAndReturnError:&v15];
  v4 = v15;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge getHFPSupportStatus];
    }

    v6 = dispatch_time(0, 1000000000);
    v7 = [(BluetoothBridge *)self queue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __38__BluetoothBridge_getHFPSupportStatus__block_invoke;
    v14[3] = &unk_278D10640;
    v14[4] = self;
    dispatch_after(v6, v7, v14);
  }

  else
  {
    -[BluetoothBridge setNoHFPSupport:](self, "setNoHFPSupport:", ([v3 supportedServices] & 1) == 0);
    v8 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = [(BluetoothBridge *)self noHFPSupport];
      v12 = "supported";
      if (v11)
      {
        v12 = "not supported";
      }

      *buf = 136315138;
      v17 = v12;
      _os_log_impl(&dword_241BB7000, v10, OS_LOG_TYPE_DEFAULT, "HFP %s", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (__CFDictionary)createDescriptionWithDevice:(id)a3
{
  v4 = a3;
  if (!-[BluetoothBridge shouldRemoveDevice:](self, "shouldRemoveDevice:", v4) && [MEMORY[0x277CBE0B0] isDeviceSupportedWithType:objc_msgSend(v4 VIDsrc:"deviceType") VID:objc_msgSend(v4 PID:{"vendorIDSource"), objc_msgSend(v4, "vendorID"), objc_msgSend(v4, "productID")}])
  {
    v5 = [(BluetoothBridge *)self supportedFormats:v4];
    v6 = [(BluetoothBridge *)self systemMonitor];
    v7 = [v6 firstUnlocked];

    if (v7)
    {
      v8 = [v4 gapaFlags];
      if (([v4 deviceFlags] & 0x1000000) != 0)
      {
        if (([v4 deviceFlags] & 4) != 0)
        {
          v16 = MGGetBoolAnswer();
        }

        else
        {
          v16 = 0;
        }

        v17 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v18 = [v17 BOOLForKey:@"WirelessSplitter"];

        v12 = v18 | v16;
        v59 = [v4 listeningMode];
        v19 = ([v4 deviceFlags] >> 26) & 2;
        v20 = v19 & 0xFFFFFFFE | ([v4 deviceFlags] >> 26) & 1;
        if ([v4 autoAncCapability] == 1)
        {
          v11 = v20 | 4;
        }

        else
        {
          v11 = v20;
        }

        v62 = ([v4 deviceFlags] >> 40) & 1;
        v10 = [v4 smartRoutingMode] == 1;
        v60 = ([v4 deviceFlags] >> 28) & 1;
        v9 = ([v4 deviceFlags] >> 23) & 1;
        v13 = [v4 spatialAudioMode];
        [v4 deviceFlags];
        v61 = [v4 conversationDetectCapability] == 1;
        v63 = [v4 conversationDetectConfig] == 1;
      }

      else
      {
        v9 = 0;
        v60 = 0;
        v62 = 0;
        v10 = 0;
        v61 = 0;
        v63 = 0;
        v11 = 0;
        v59 = 0;
        v12 = 0;
        v13 = -1;
      }

      v21 = [MEMORY[0x277CBEB38] dictionary];
      if (([v4 supportedServices] & 0x10000) != 0)
      {
        v14 = 0;
LABEL_37:

        goto LABEL_9;
      }

      v58 = (v8 & 2) == 0;
      v22 = [(BluetoothBridge *)self addressFromDevice:v4];
      [v21 setObject:v22 forKey:@"DeviceID"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v5];
      [v21 setObject:v23 forKey:@"SupportedFormats"];

      v24 = [(BluetoothBridge *)self nameFromDevice:v4];
      [v21 setObject:v24 forKey:@"Name"];

      v25 = [(BluetoothBridge *)self isConnected:v4];
      v26 = *MEMORY[0x277CBED28];
      v27 = *MEMORY[0x277CBED10];
      if (v25)
      {
        v28 = *MEMORY[0x277CBED28];
      }

      else
      {
        v28 = *MEMORY[0x277CBED10];
      }

      [v21 setObject:v28 forKey:@"Connected"];
      if (v12)
      {
        v29 = v26;
      }

      else
      {
        v29 = v27;
      }

      [v21 setObject:v29 forKey:@"Shareable"];
      v30 = [MEMORY[0x277CCABB0] numberWithInt:v59];
      [v21 setObject:v30 forKey:@"ListeningMode"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
      [v21 setObject:v31 forKey:@"SupportedListeningModes"];

      v32 = [MEMORY[0x277CCABB0] numberWithBool:v9];
      [v21 setObject:v32 forKey:@"SupportsSpatialAudio"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v13];
      [v21 setObject:v33 forKey:@"SpatialAudioMode"];

      v34 = [MEMORY[0x277CCABB0] numberWithBool:v60];
      [v21 setObject:v34 forKey:@"SpatialAudioEnabled"];

      v35 = [MEMORY[0x277CCABB0] numberWithBool:v62];
      [v21 setObject:v35 forKey:@"SupportsSmartRouting"];

      v36 = [MEMORY[0x277CCABB0] numberWithBool:v10];
      [v21 setObject:v36 forKey:@"SmartRoutingEnabled"];

      v37 = [MEMORY[0x277CCABB0] numberWithBool:v61];
      [v21 setObject:v37 forKey:@"SupportsConversationDetect"];

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v63];
      [v21 setObject:v38 forKey:@"ConversationDetectEnable"];

      v39 = [MEMORY[0x277CCABB0] numberWithBool:v58];
      [v21 setObject:v39 forKey:@"IsGenuineAirPods"];

      v40 = [v4 appearanceValue];
      if (v40 > 2368)
      {
        switch(v40)
        {
          case 2625:
            v41 = @"HearingAid";
            goto LABEL_27;
          case 2370:
            v41 = @"Headset";
            goto LABEL_27;
          case 2369:
            v41 = @"Earbud";
            goto LABEL_27;
        }
      }

      else if ((v40 - 2112) < 6)
      {
        v41 = @"Speaker";
LABEL_27:
        v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "productID")}];
        [v21 setObject:v42 forKey:*MEMORY[0x277CC14A0]];

        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "vendorID")}];
        [v21 setObject:v43 forKey:*MEMORY[0x277CC1598]];

        v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"BT%@%d, %d", v41, objc_msgSend(v4, "vendorID"), objc_msgSend(v4, "productID")];
        [v21 setObject:v44 forKey:@"ModelID"];

        v45 = [MEMORY[0x277CBEB38] dictionary];
        [v4 batteryLevelCase];
        if (v46 != 0.0)
        {
          v47 = MEMORY[0x277CCABB0];
          [v4 batteryLevelCase];
          v48 = [v47 numberWithFloat:?];
          [v45 setObject:v48 forKey:*MEMORY[0x277CC0A88]];
        }

        [v4 batteryLevelLeft];
        if (v49 != 0.0)
        {
          v50 = MEMORY[0x277CCABB0];
          [v4 batteryLevelLeft];
          v51 = [v50 numberWithFloat:?];
          [v45 setObject:v51 forKey:*MEMORY[0x277CC0A90]];
        }

        [v4 batteryLevelRight];
        if (v52 != 0.0)
        {
          v53 = MEMORY[0x277CCABB0];
          [v4 batteryLevelRight];
          v54 = [v53 numberWithFloat:?];
          [v45 setObject:v54 forKey:*MEMORY[0x277CC0A98]];
        }

        [v4 batteryLevelMain];
        if (v55 != 0.0)
        {
          v56 = MEMORY[0x277CCABB0];
          [v4 batteryLevelMain];
          v57 = [v56 numberWithFloat:?];
          [v45 setObject:v57 forKey:*MEMORY[0x277CC0AA0]];
        }

        [v21 setObject:v45 forKey:@"BatteryLevels"];
        v14 = v21;

        goto LABEL_37;
      }

      v41 = @"Headphones";
      goto LABEL_27;
    }

    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge createDescriptionWithDevice:];
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)addListeners
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_241BB7000, a2, OS_LOG_TYPE_ERROR, "Failed to add AudioDevice listener %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __31__BluetoothBridge_addListeners__block_invoke_37(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    [v3 discoveryFlags];
    v6 = CUPrintFlags64();
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_241BB7000, v5, OS_LOG_TYPE_DEFAULT, "Device found %@ with flags:%@", buf, 0x16u);
  }

  if ([*(a1 + 32) shouldRemoveDevice:v3])
  {
    v14 = @"DeviceID";
    v7 = [*(a1 + 32) uidFromDevice:v3];
    v15 = v7;
    BluetoothEndpointManagerHandleRemove([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1], objc_msgSend(*(a1 + 32), "manager"));

    v8 = [*(a1 + 32) addressFromDevice:{v3, @"DeviceID"}];
    v13 = v8;
    BluetoothEndpointManagerHandleRemove([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1], objc_msgSend(*(a1 + 32), "manager"));
  }

  else
  {
    v9 = [*(a1 + 32) createDescriptionWithDevice:v3];
    if (v9)
    {
      v10 = v9;
      BluetoothEndpointManagerHandleUpdateEvent(v9, [*(a1 + 32) manager]);
      CFRelease(v10);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __31__BluetoothBridge_addListeners__block_invoke_41(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Device lost %@", buf, 0xCu);
  }

  if (([v3 deviceFlags] & 0x4000) != 0)
  {
    v7 = [*(a1 + 32) createDescriptionWithDevice:v3];
    if (v7)
    {
      v8 = v7;
      BluetoothEndpointManagerHandleUpdateEvent(v7, [*(a1 + 32) manager]);
      CFRelease(v8);
    }
  }

  else
  {
    v12 = @"DeviceID";
    v5 = [*(a1 + 32) uidFromDevice:v3];
    v13 = v5;
    BluetoothEndpointManagerHandleRemove([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1], objc_msgSend(*(a1 + 32), "manager"));

    v6 = [*(a1 + 32) addressFromDevice:{v3, @"DeviceID"}];
    v11 = v6;
    BluetoothEndpointManagerHandleRemove([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1], objc_msgSend(*(a1 + 32), "manager"));
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __31__BluetoothBridge_addListeners__block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      __31__BluetoothBridge_addListeners__block_invoke_42_cold_1(v2, v3);
    }
  }
}

- (void)startLEScanning:(BOOL)a3
{
  v3 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v5 = MGGetStringAnswer();
  if (v5 && (v6 = v5, v7 = [v5 isEqualToString:@"AudioAccessory"], CFRelease(v6), v7))
  {
    v8 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241BB7000, v8, OS_LOG_TYPE_INFO, "Can't start LE scans on HomePod", buf, 2u);
    }
  }

  else
  {
    v9 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      *buf = 67109376;
      v21 = [(BluetoothBridge *)self targetUserSession];
      v22 = 1024;
      v23 = v3;
      _os_log_impl(&dword_241BB7000, v10, OS_LOG_TYPE_DEFAULT, "Starting LE scanning (%d) fast:%d", buf, 0xEu);
    }

    v11 = [(BluetoothBridge *)self deviceDiscovery];
    [v11 setDiscoveryFlags:{objc_msgSend(v11, "discoveryFlags") | 0x8000}];

    v12 = [(BluetoothBridge *)self deviceDiscovery];
    [v12 setBleRSSIThresholdHint:4294967221];

    if (v3)
    {
      v13 = [(BluetoothBridge *)self deviceDiscovery];
      [v13 setBleScanRate:50];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__BluetoothBridge_startLEScanning___block_invoke;
      block[3] = &unk_278D10640;
      block[4] = self;
      v14 = dispatch_block_create(DISPATCH_BLOCK_NO_QOS_CLASS, block);
      [(BluetoothBridge *)self setLowerScanRate:v14];

      v15 = dispatch_time(0, 10000000000);
      v16 = [(BluetoothBridge *)self queue];
      v17 = [(BluetoothBridge *)self lowerScanRate];
      dispatch_after(v15, v16, v17);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __35__BluetoothBridge_startLEScanning___block_invoke(uint64_t a1)
{
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_DEFAULT, "Dropping scan rate to low", v4, 2u);
  }

  v3 = [*(a1 + 32) deviceDiscovery];
  [v3 setBleScanRate:30];
}

- (void)stopLEScanning
{
  v3 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_241BB7000, v3, OS_LOG_TYPE_DEFAULT, "Stop LE scanning", v11, 2u);
  }

  v4 = [(BluetoothBridge *)self deviceDiscovery];
  [v4 setDiscoveryFlags:{objc_msgSend(v4, "discoveryFlags") & 0xFFFFFFFFFFFF7FFFLL}];

  v5 = [(BluetoothBridge *)self deviceDiscovery];
  [v5 setBleScanRate:0];

  v6 = [(BluetoothBridge *)self lowerScanRate];
  if (v6)
  {
    v7 = v6;
    v8 = [(BluetoothBridge *)self lowerScanRate];
    v9 = dispatch_block_testcancel(v8);

    if (!v9)
    {
      v10 = [(BluetoothBridge *)self lowerScanRate];
      dispatch_block_cancel(v10);
    }
  }
}

- (BOOL)shouldRemoveDevice:(id)a3
{
  v4 = a3;
  if (!v4 || ![(BluetoothBridge *)self supportedFormats:v4])
  {
    goto LABEL_37;
  }

  if (([v4 deviceFlags] & 0x4000) != 0 || (objc_msgSend(v4, "deviceFlags") & 0x2000) != 0)
  {
    if (-[BluetoothBridge isConnected:](self, "isConnected:", v4) || ([v4 discoveryFlags] & 0x8000) != 0)
    {
      v8 = [v4 connectedServices];
      v9 = [v4 connectedServices];
      if ((v8 & 0x400000) == 0 || (v9 & 0x10000) != 0)
      {
        v10 = [v4 deviceFlags];
        v11 = [v4 deviceFlags];
        v12 = [v4 proximityPairingPrimaryPlacement];
        if (!v12)
        {
          v12 = [v4 primaryPlacement];
        }

        v13 = [v4 proximityPairingSecondaryPlacement];
        if (!v13)
        {
          v13 = [v4 secondaryPlacement];
        }

        v14 = v10 & 0x1000000000;
        v15 = [v4 deviceFlags];
        v16 = (v15 >> 37) & 1;
        if ((v15 & 0x2000000000) == 0 && v14)
        {
          LODWORD(v16) = v12 == 3 || v12 == 0;
        }

        v18 = [v4 deviceFlags];
        v19 = (v18 >> 38) & 1;
        if ((v18 & 0x4000000000) == 0 && v14)
        {
          LODWORD(v19) = v13 == 3 || v13 == 0;
        }

        if ((v16 & (v19 | ((v11 & 0x800000000) == 0))) != 1)
        {
          v21 = 0;
          goto LABEL_38;
        }

        v5 = BluetoothEndpointManagerLogComponent;
        if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 0;
          v6 = "No device usable";
          v7 = &v23;
          goto LABEL_36;
        }
      }
    }

    else
    {
      v5 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 0;
        v6 = "Disconnected with no nearby status";
        v7 = &v24;
        goto LABEL_36;
      }
    }
  }

  else
  {
    v5 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 0;
      v6 = "No longer paired";
      v7 = &v25;
LABEL_36:
      _os_log_impl(&dword_241BB7000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

LABEL_37:
  v21 = 1;
LABEL_38:

  return v21;
}

- (BOOL)isHALPublished:(unsigned __int8)a3 device:(id)a4
{
  v4 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(BluetoothBridge *)self addressFromDevice:a4];
  HIDWORD(v6) = *"bolg";
  v23 = 0;
  outData = 0;
  v22 = 0;
  ioDataSize = 0;
  LODWORD(v6) = 1919186467;
  inAddress.mElement = 0;
  *&inAddress.mSelector = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-btaudio", v5];
  if (AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &v23 + 1))
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge isHALPublished:device:];
    }

    goto LABEL_4;
  }

  v11 = HIDWORD(v23);
  v12 = malloc_type_malloc(HIDWORD(v23), 0x100004052888210uLL);
  if (!v12)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_5;
  }

  v13 = v12;
  if (AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &v23 + 1, v12))
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge isHALPublished:device:];
    }

    free(v13);
    goto LABEL_4;
  }

  if (v11 < 4)
  {
LABEL_16:
    free(v13);
    v18 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "HFP";
      if (v4 == 1)
      {
        v19 = "A2DP";
      }

      *buf = 136315394;
      v26 = v19;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_241BB7000, v18, OS_LOG_TYPE_DEFAULT, "%s is not published for %@", buf, 0x16u);
    }

    goto LABEL_4;
  }

  v14 = 0;
  v15 = 4 * (v11 >> 2);
  while (1)
  {
    v16 = *&v13[v14];
    ioDataSize = 8;
    v22 = 0x676C6F6275696420;
    LODWORD(v23) = 0;
    if (!AudioObjectGetPropertyData(v16, &v22, 0, 0, &ioDataSize, &outData))
    {
      v17 = [v7 isEqual:outData];
      CFRelease(outData);
      if (v17)
      {
        break;
      }
    }

    v14 += 4;
    if (v15 == v14)
    {
      goto LABEL_16;
    }
  }

  free(v13);
  v8 = 1;
LABEL_5:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isConnected:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge isConnected:];
    }

    goto LABEL_14;
  }

  if (![(BluetoothBridge *)self supportedFormats:v4])
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      [BluetoothBridge isConnected:];
    }

    goto LABEL_14;
  }

  if (([(BluetoothBridge *)self supportedFormats:v4]& 4) != 0 && ![(BluetoothBridge *)self isHALPublished:4 device:v4]|| ([(BluetoothBridge *)self supportedFormats:v4]& 1) != 0 && ![(BluetoothBridge *)self isHALPublished:1 device:v4]|| ([(BluetoothBridge *)self supportedFormats:v4]& 2) != 0 && ![(BluetoothBridge *)self isHALPublished:2 device:v4])
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:

  return v5;
}

- (unsigned)supportedFormats:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = ([v4 supportedServices] >> 4) & 1;
    v7 = v6 & 0xFFFFFFFD | (2 * ([v5 supportedServices] & 1));
    v8 = v7 | ([v5 supportedServices] >> 14) & 4;
    if (!v8)
    {
      if (([v5 deviceFlags] & 0x1000000) != 0)
      {
        v10 = BluetoothEndpointManagerLogComponent;
        if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
        {
          [(BluetoothBridge *)v10 supportedFormats:v5];
        }

        LOBYTE(v8) = 3;
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    if (([v5 deviceFlags] & 0x20000000) != 0)
    {
      v11 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_241BB7000, v11, OS_LOG_TYPE_DEFAULT, "%@ is guest not in contacts removing handsfree service", &v14, 0xCu);
      }

      LOBYTE(v8) = v8 & 0xFD;
    }

    if ([(BluetoothBridge *)self noHFPSupport])
    {
      v9 = v8 & 0x7D;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)deviceFromIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBE020]);
  [v4 setIdentifier:v3];
  [MEMORY[0x277CBE030] devicesWithDiscoveryFlags:0x80000A08000 error:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isEquivalentToCBDevice:v4 compareFlags:{8, v15}])
        {
          v12 = v10;

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_241BB7000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find a paired device with identifier %@", buf, 0xCu);
  }

  v12 = v4;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)addressFromDevice:(id)a3
{
  v3 = [a3 btAddressData];
  v4 = CUPrintNSDataAddress();

  return v4;
}

- (id)nameFromDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (!v5)
  {
    v5 = [(BluetoothBridge *)self addressFromDevice:v4];
  }

  return v5;
}

- (void)connectToAddress:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(BluetoothBridge *)self deviceFromIdentifier:a3];
  if ([(BluetoothBridge *)self isConnected:v7])
  {
    v6[2](v6, 0);
  }

  else
  {
    v8 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(BluetoothBridge *)self nameFromDevice:v7];
      *buf = 138412290;
      v38 = v10;
      _os_log_impl(&dword_241BB7000, v9, OS_LOG_TYPE_DEFAULT, "Connect to device %@", buf, 0xCu);
    }

    v11 = objc_alloc_init(MEMORY[0x277CBE010]);
    v12 = objc_alloc_init(MEMORY[0x277CBE008]);
    [v12 setPeerDevice:v7];
    [v12 setServiceFlags:0xFFFFFFFFLL];
    if (([(BluetoothBridge *)self supportedFormats:v7]& 4) != 0)
    {
      [v12 setConnectionFlags:256];
    }

    if (([v7 deviceFlags] & 0x20000000) != 0)
    {
      v13 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241BB7000, v13, OS_LOG_TYPE_DEFAULT, "Wireless Splitter this is a guest not in contacts blocking HFP & GATT services", buf, 2u);
      }

      [v12 setServiceFlags:524312];
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke;
    v35[3] = &unk_278D106D8;
    v35[4] = self;
    v14 = v7;
    v36 = v14;
    [v12 activateWithCompletion:v35];
    v15 = objc_alloc_init(MEMORY[0x277CBE028]);
    [v15 setAudioRouteHidden:0];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_63;
    v33[3] = &unk_278D10448;
    v34 = v11;
    v16 = v11;
    [v16 modifyDevice:v14 settings:v15 completion:v33];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_64;
    block[3] = &unk_278D10700;
    v17 = v6;
    block[4] = self;
    v32 = v17;
    v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    [(BluetoothBridge *)self setActivationTimeoutBlock:v18];

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_65;
    v27 = &unk_278D10728;
    v30 = self;
    v28 = v14;
    v29 = v17;
    [(BluetoothBridge *)self setActivation:&v24];
    v19 = [(BluetoothBridge *)self activation:v24];
    v19[2]();

    v20 = dispatch_time(0, 20000000000);
    v21 = [(BluetoothBridge *)self queue];
    v22 = [(BluetoothBridge *)self activationTimeoutBlock];
    dispatch_after(v20, v21, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = BluetoothEndpointManagerLogComponent;
  if (v3)
  {
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
    {
      __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_cold_1(a1, v4);
    }
  }

  else if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = [v6 nameFromDevice:v5];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_241BB7000, v7, OS_LOG_TYPE_DEFAULT, "Baseband connected to %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_63_cold_1();
  }

  [*(a1 + 32) invalidate];
}

uint64_t __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_64(uint64_t a1)
{
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_64_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setActivation:0];
  return [*(a1 + 32) setActivationTimeoutBlock:0];
}

void __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_65(uint64_t a1)
{
  if ([*(a1 + 48) isConnected:*(a1 + 32)])
  {
    v2 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_DEFAULT, "Activated", v4, 2u);
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 48) setActivation:0];
    v3 = [*(a1 + 48) activationTimeoutBlock];
    dispatch_block_cancel(v3);
  }
}

void __31__BluetoothBridge_addListeners__block_invoke_42_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241BB7000, a2, OS_LOG_TYPE_ERROR, "Starting Discovery error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)supportedFormats:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 nameFromDevice:a3];
  v8 = 138412546;
  v9 = v6;
  v10 = 1024;
  v11 = [a3 supportedServices];
  _os_log_error_impl(&dword_241BB7000, v5, OS_LOG_TYPE_ERROR, "Error Service Mask isn't right %@ has service mask 0x%X", &v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void __54__BluetoothBridge_connectToAddress_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 nameFromDevice:v3];
  v7 = 138412290;
  v8 = v5;
  _os_log_error_impl(&dword_241BB7000, v4, OS_LOG_TYPE_ERROR, "Error connecting to %@", &v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end