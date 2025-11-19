@interface BTSDeviceLE
+ (id)deviceWithPeripheral:(id)a3 manager:(id)a4;
- (BOOL)cloudPaired;
- (BOOL)connect;
- (BOOL)isApplePencil:(int *)a3;
- (BOOL)isHIDDevice;
- (BOOL)isManagedByAliroWallet;
- (BOOL)isManagedByDeviceAccess;
- (BOOL)isManagedByWallet;
- (BOOL)isMyDevice;
- (BOOL)paired;
- (BOOL)supportsANCS;
- (BTSDeviceLE)initWithPeripheral:(id)a3 manager:(id)a4;
- (NSString)description;
- (id)classicDevice;
- (id)healthDeviceType;
- (id)identifier;
- (id)linkedRadioAddress;
- (id)name;
- (id)relatedFutureRadioAddress;
- (int)userSelectedHealthDataSyncConfig;
- (void)openChannelSoundingL2CAP;
- (void)sendChannelSoundingResults:(id)a3;
- (void)sendNextChannelSoundingMessage;
- (void)setANCSAuthorization:(BOOL)a3;
- (void)setChannelSoundingL2CAP:(id)a3;
- (void)setDenyIncomingClassicConnection:(BOOL)a3;
- (void)setUserSelectedHealthDataSyncConfig:(int)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)unpair;
@end

@implementation BTSDeviceLE

- (BTSDeviceLE)initWithPeripheral:(id)a3 manager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = BTSDeviceLE;
  v9 = [(BTSDeviceLE *)&v11 init];
  if (v9)
  {
    if ([v7 hasTag:@"IsHearingAid"])
    {

      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v9->_peripheral, a3);
      objc_storeStrong(&v9->_centralManager, a4);
    }
  }

  return v9;
}

+ (id)deviceWithPeripheral:(id)a3 manager:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[BTSDeviceLE alloc] initWithPeripheral:v6 manager:v5];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(BTSDeviceLE *)self isMyDevice])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if ([(BTSDeviceLE *)self isHealthDevice])
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  peripheral = self->_peripheral;
  underlyingDADevice = self->_underlyingDADevice;
  if ([(BTSDeviceLE *)self isTemporaryPairedDevice])
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  return [v3 stringWithFormat:@"<%@: %p, myDevice = %s, healthDevice = %s, peripheral = %@, daDevice = %@>, guest = %s", v4, self, v5, v6, peripheral, underlyingDADevice, v9];
}

- (id)identifier
{
  v2 = [(CBPeripheral *)self->_peripheral identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)name
{
  v3 = [self->_underlyingDADevice name];

  if (v3)
  {
    v4 = [self->_underlyingDADevice name];
  }

  else
  {
    v5 = [(BTSDeviceLE *)self healthDeviceType];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(CBPeripheral *)self->_peripheral name];
      v4 = [v6 stringWithFormat:@"GHSS %@", v7];
    }

    else
    {
      v8 = [(CBPeripheral *)self->_peripheral name];
      v9 = v8;
      if (v8)
      {
        v4 = v8;
      }

      else
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = [v10 localizedStringForKey:@"ACCESSORY" value:&stru_28634F910 table:@"Devices"];
      }
    }
  }

  return v4;
}

- (id)healthDeviceType
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableHealthDevices", @"com.apple.bluetooth", &keyExistsAndHasValidFormat);
  v4 = 0;
  if (_os_feature_enabled_impl() && AppBooleanValue && keyExistsAndHasValidFormat)
  {
    v5 = [(CBPeripheral *)self->_peripheral customProperty:@"GHSDeviceType"];
    if (v5)
    {
      v6 = v5;
      if (([v5 isEqualToString:@"4103"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"4104") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"4113") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"4111"))
      {
        v4 = v6;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)paired
{
  v2 = self;
  v3 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  LOBYTE(v2) = [v3 isPeerPaired:v2->_peripheral];

  return v2;
}

- (BOOL)cloudPaired
{
  v2 = self;
  v3 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  LOBYTE(v2) = [v3 isPeerCloudPaired:v2->_peripheral];

  return v2;
}

- (id)classicDevice
{
  if ([(BTSDeviceLE *)self supportsCTKD])
  {
    v3 = [MEMORY[0x277CF3248] sharedInstance];
    v4 = [(CBPeripheral *)self->_peripheral identifier];
    v5 = [v3 deviceFromIdentifier:v4];

    v6 = [BTSDeviceClassic deviceWithDevice:v5];
    v7 = [v6 classicDevice];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isMyDevice
{
  if ([(BTSDeviceLE *)self paired]|| [(BTSDeviceLE *)self connected]|| [(BTSDeviceLE *)self isHealthDevice])
  {
    return 1;
  }

  return [(BTSDeviceLE *)self isManagedByDeviceAccess];
}

- (BOOL)connect
{
  v3 = [(CBPeripheral *)self->_peripheral isConnectedToSystem];
  if ((v3 & 1) == 0)
  {
    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];
  }

  return v3 ^ 1;
}

- (void)unpair
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(CBPeripheral *)self->_peripheral customProperty:@"Fitness"];

    if (v3)
    {
      [(CBPeripheral *)self->_peripheral setCustomProperty:@"Fitness" value:0];
      [(CBPeripheral *)self->_peripheral setCustomProperty:@"UpdateHealth" value:0];
      [(CBPeripheral *)self->_peripheral untag:*MEMORY[0x277CCCB90]];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.bluetooth.settings.fitness-device-pairing-state-changed", 0, 0, 1u);
    }
  }

  v5 = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [v5 unpairPeer:self->_peripheral];
}

- (BOOL)supportsANCS
{
  if (([(CBPeripheral *)self->_peripheral hasTag:@"ANCSAuthorized"]& 1) != 0)
  {
    return 1;
  }

  peripheral = self->_peripheral;

  return [(CBPeripheral *)peripheral hasTag:@"ANCSUnauthorized"];
}

- (BOOL)isManagedByWallet
{
  peripheral = self->_peripheral;
  if (peripheral)
  {
    LOBYTE(peripheral) = [(CBPeripheral *)peripheral hasTag:@"_MANAGED_BY_WALLET_"];
  }

  return peripheral;
}

- (BOOL)isManagedByAliroWallet
{
  peripheral = self->_peripheral;
  if (peripheral)
  {
    LOBYTE(peripheral) = [(CBPeripheral *)peripheral hasTag:@"_MANAGED_BY_ALIRO_WALLET_"];
  }

  return peripheral;
}

- (BOOL)isManagedByDeviceAccess
{
  LODWORD(peripheral) = _os_feature_enabled_impl();
  if (peripheral)
  {
    peripheral = self->_peripheral;
    if (peripheral)
    {
      LOBYTE(peripheral) = [(CBPeripheral *)peripheral hasTag:@"DA_ASK_RETAIN_DEVICE"];
    }

    if (self->_underlyingDADevice)
    {
      LOBYTE(peripheral) = 1;
    }
  }

  return peripheral;
}

- (id)relatedFutureRadioAddress
{
  if ([(BTSDeviceLE *)self isManagedByDeviceAccess])
  {
    v3 = [(CBPeripheral *)self->_peripheral customProperty:@"ASK_RELATED_RADIO_ADDRESS"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)linkedRadioAddress
{
  if ([(BTSDeviceLE *)self isManagedByDeviceAccess])
  {
    v3 = [(CBPeripheral *)self->_peripheral customProperty:@"ASK_LINKED_RADIO_ADDRESS"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDenyIncomingClassicConnection:(BOOL)a3
{
  v3 = a3;
  v5 = [(BTSDeviceLE *)self shouldDenyIncomingClassicConnection];
  if (v3)
  {
    if (!v5)
    {
      peripheral = self->_peripheral;

      [(CBPeripheral *)peripheral tag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
    }
  }

  else if (v5)
  {
    v7 = self->_peripheral;

    [(CBPeripheral *)v7 untag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
  }
}

- (void)setANCSAuthorization:(BOOL)a3
{
  peripheral = self->_peripheral;
  v5 = !a3;
  if (a3)
  {
    v6 = @"ANCSAuthorized";
  }

  else
  {
    v6 = @"ANCSUnauthorized";
  }

  if (v5)
  {
    v7 = @"ANCSAuthorized";
  }

  else
  {
    v7 = @"ANCSUnauthorized";
  }

  [(CBPeripheral *)peripheral tag:v6];
  v8 = self->_peripheral;

  [(CBPeripheral *)v8 untag:v7];
}

- (int)userSelectedHealthDataSyncConfig
{
  v3 = [(BTSDeviceLE *)self healthDeviceType];

  if (!v3)
  {
    return 2;
  }

  v4 = [(CBPeripheral *)self->_peripheral customProperty:@"UserSelectedHealthDataSyncConfig"];
  if ([v4 isEqualToString:@"HealthDataSyncAlways"])
  {
    v5 = 0;
  }

  else if ([v4 isEqualToString:@"HealthDataSyncWithUserConfirm"])
  {
    v5 = 1;
  }

  else
  {
    [v4 isEqualToString:@"HealthDataSyncNever"];
    v5 = 2;
  }

  return v5;
}

- (void)setUserSelectedHealthDataSyncConfig:(int)a3
{
  v5 = [(BTSDeviceLE *)self healthDeviceType];

  if (v5)
  {
    v6 = @"0";
    v7 = @"HealthDataSyncNever";
    if (!a3)
    {
      v7 = @"HealthDataSyncAlways";
      v6 = @"1";
    }

    v8 = a3 == 1;
    if (a3 == 1)
    {
      v9 = @"HealthDataSyncWithUserConfirm";
    }

    else
    {
      v9 = v7;
    }

    if (v8)
    {
      v10 = @"1";
    }

    else
    {
      v10 = v6;
    }

    v11 = [(CBPeripheral *)self->_peripheral customProperty:@"UpdateHealth"];

    if (!v11)
    {
      [(CBPeripheral *)self->_peripheral setCustomProperty:@"UpdateHealth" value:v10];
    }

    peripheral = self->_peripheral;

    [(CBPeripheral *)peripheral setCustomProperty:@"UserSelectedHealthDataSyncConfig" value:v9];
  }
}

- (BOOL)isApplePencil:(int *)a3
{
  if (([(CBPeripheral *)self->_peripheral hasTag:@"A1603"]& 1) != 0)
  {
    goto LABEL_2;
  }

  if (([(CBPeripheral *)self->_peripheral hasTag:@"A2051"]& 1) != 0)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (([(CBPeripheral *)self->_peripheral hasTag:@"A3085"]& 1) != 0)
  {
LABEL_2:
    v5 = 0;
  }

  else
  {
    v6 = [(CBPeripheral *)self->_peripheral hasTag:@"A2538"];
    if (!v6)
    {
      return v6;
    }

    v5 = 2;
  }

LABEL_5:
  *a3 = v5;
  LOBYTE(v6) = 1;
  return v6;
}

- (BOOL)isHIDDevice
{
  if (([(CBPeripheral *)self->_peripheral hasTag:@"IsLEKeyboard"]& 1) != 0 || ([(CBPeripheral *)self->_peripheral hasTag:@"IsLEMouse"]& 1) != 0)
  {
    return 1;
  }

  peripheral = self->_peripheral;

  return [(CBPeripheral *)peripheral hasTag:@"IsXboxBLEController"];
}

- (void)setChannelSoundingL2CAP:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(CBL2CAPChannel *)v4 outputStream];
    [v6 setDelegate:self];

    v7 = [(CBL2CAPChannel *)v5 outputStream];
    v8 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v7 scheduleInRunLoop:v8 forMode:*MEMORY[0x277CBE640]];

    v9 = [(CBL2CAPChannel *)v5 outputStream];
    [v9 open];
  }

  else
  {
    channelSoundingL2CAP = self->_channelSoundingL2CAP;
    if (channelSoundingL2CAP)
    {
      v11 = [(CBL2CAPChannel *)channelSoundingL2CAP outputStream];
      v12 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v11 removeFromRunLoop:v12 forMode:*MEMORY[0x277CBE640]];

      v13 = [(CBL2CAPChannel *)self->_channelSoundingL2CAP outputStream];
      [v13 close];
    }
  }

  v14 = self->_channelSoundingL2CAP;
  self->_channelSoundingL2CAP = v5;
}

- (void)openChannelSoundingL2CAP
{
  v3 = [(BTSDeviceLE *)self channelSoundingL2CAP];

  if (!v3)
  {
    peripheral = self->_peripheral;

    [(CBPeripheral *)peripheral openL2CAPChannel:128];
  }
}

- (void)sendChannelSoundingResults:(id)a3
{
  v4 = a3;
  if ([(CBPeripheral *)self->_peripheral state]== CBPeripheralStateConnected)
  {
    v5 = [(BTSDeviceLE *)self channelSoundingL2CAP];

    if (v5)
    {
      v6 = [(BTSDeviceLE *)self channelSoundingL2CAP];
      v7 = [v6 outputStream];
      [v7 setDelegate:self];

      v8 = [DKMessage sendEntireProcedure:v4 withMTU:[(CBPeripheral *)self->_peripheral maximumWriteValueLengthForType:1]- 4];
      v9 = [(BTSDeviceLE *)self channelSoundingTXQueue];

      if (!v9)
      {
        v10 = objc_opt_new();
        [(BTSDeviceLE *)self setChannelSoundingTXQueue:v10];
      }

      v11 = [(BTSDeviceLE *)self channelSoundingTXQueue];
      [v11 addObjectsFromArray:v8];

      [(BTSDeviceLE *)self sendNextChannelSoundingMessage];
    }

    else
    {
      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [BTSDeviceLE sendChannelSoundingResults:?];
      }
    }
  }

  else
  {
    v8 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BTSDeviceLE sendChannelSoundingResults:?];
    }
  }
}

- (void)sendNextChannelSoundingMessage
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [a1 channelSoundingL2CAP];
  v4 = [v3 outputStream];
  v5 = [v4 streamError];
  v6 = [v5 localizedDescription];
  v8 = 138412290;
  v9 = v6;
  _os_log_error_impl(&dword_25126C000, a2, OS_LOG_TYPE_ERROR, "Error sending channel sounding data: %@", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 > 3)
  {
    if (a4 != 4)
    {
      if (a4 == 8)
      {
        v7 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [BTSDeviceLE stream:v6 handleEvent:v7];
        }

        goto LABEL_25;
      }

      if (a4 == 16)
      {
        v9 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          v16 = 128;
          _os_log_impl(&dword_25126C000, v9, OS_LOG_TYPE_DEFAULT, "NSStreamEventEndEncountered for %d", &v15, 8u);
        }

        [(BTSDeviceLE *)self closeChannelSoundingL2CAP];
      }

      goto LABEL_26;
    }

    v10 = sharedBluetoothSettingsLogComponent();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      v12 = [(BTSDeviceLE *)self channelSoundingTXQueue];
      v13 = [v12 count];

      if (v13)
      {
        [(BTSDeviceLE *)self sendNextChannelSoundingMessage];
      }

      goto LABEL_26;
    }

    v15 = 67109120;
    v16 = 128;
    v11 = "NSStreamEventHasSpaceAvailable for %d";
LABEL_20:
    _os_log_impl(&dword_25126C000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 8u);
    goto LABEL_21;
  }

  switch(a4)
  {
    case 0uLL:
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = 128;
        v8 = "NSStreamEventNone for L2CAP channel: %d";
        goto LABEL_15;
      }

LABEL_25:

      break;
    case 1uLL:
      v10 = sharedBluetoothSettingsLogComponent();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v15 = 67109120;
      v16 = 128;
      v11 = "NSStreamEventOpenCompleted for %d";
      goto LABEL_20;
    case 2uLL:
      v7 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 67109120;
        v16 = 128;
        v8 = "NSStreamEventHasBytesAvailable for %d";
LABEL_15:
        _os_log_impl(&dword_25126C000, v7, OS_LOG_TYPE_DEFAULT, v8, &v15, 8u);
        goto LABEL_25;
      }

      goto LABEL_25;
  }

LABEL_26:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendChannelSoundingResults:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendChannelSoundingResults:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)stream:(void *)a1 handleEvent:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 streamError];
  v4 = [v3 localizedDescription];
  v6[0] = 67109378;
  v6[1] = 128;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_25126C000, a2, OS_LOG_TYPE_ERROR, "NSStreamEventErrorOccurred for %d. Error: %@", v6, 0x12u);

  v5 = *MEMORY[0x277D85DE8];
}

@end