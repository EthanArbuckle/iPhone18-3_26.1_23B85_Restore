@interface BTSDeviceLE
+ (id)deviceWithPeripheral:(id)peripheral manager:(id)manager;
- (BOOL)cloudPaired;
- (BOOL)connect;
- (BOOL)isApplePencil:(int *)pencil;
- (BOOL)isHIDDevice;
- (BOOL)isManagedByAliroWallet;
- (BOOL)isManagedByDeviceAccess;
- (BOOL)isManagedByWallet;
- (BOOL)isMyDevice;
- (BOOL)paired;
- (BOOL)supportsANCS;
- (BTSDeviceLE)initWithPeripheral:(id)peripheral manager:(id)manager;
- (NSString)description;
- (id)classicDevice;
- (id)healthDeviceType;
- (id)identifier;
- (id)linkedRadioAddress;
- (id)name;
- (id)relatedFutureRadioAddress;
- (int)userSelectedHealthDataSyncConfig;
- (void)openChannelSoundingL2CAP;
- (void)sendChannelSoundingResults:(id)results;
- (void)sendNextChannelSoundingMessage;
- (void)setANCSAuthorization:(BOOL)authorization;
- (void)setChannelSoundingL2CAP:(id)p;
- (void)setDenyIncomingClassicConnection:(BOOL)connection;
- (void)setUserSelectedHealthDataSyncConfig:(int)config;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)unpair;
@end

@implementation BTSDeviceLE

- (BTSDeviceLE)initWithPeripheral:(id)peripheral manager:(id)manager
{
  peripheralCopy = peripheral;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = BTSDeviceLE;
  v9 = [(BTSDeviceLE *)&v11 init];
  if (v9)
  {
    if ([peripheralCopy hasTag:@"IsHearingAid"])
    {

      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v9->_peripheral, peripheral);
      objc_storeStrong(&v9->_centralManager, manager);
    }
  }

  return v9;
}

+ (id)deviceWithPeripheral:(id)peripheral manager:(id)manager
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v7 = [[BTSDeviceLE alloc] initWithPeripheral:peripheralCopy manager:managerCopy];

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
  identifier = [(CBPeripheral *)self->_peripheral identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (id)name
{
  name = [self->_underlyingDADevice name];

  if (name)
  {
    name2 = [self->_underlyingDADevice name];
  }

  else
  {
    healthDeviceType = [(BTSDeviceLE *)self healthDeviceType];

    if (healthDeviceType)
    {
      v6 = MEMORY[0x277CCACA8];
      name3 = [(CBPeripheral *)self->_peripheral name];
      name2 = [v6 stringWithFormat:@"GHSS %@", name3];
    }

    else
    {
      name4 = [(CBPeripheral *)self->_peripheral name];
      v9 = name4;
      if (name4)
      {
        name2 = name4;
      }

      else
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        name2 = [v10 localizedStringForKey:@"ACCESSORY" value:&stru_286339F58 table:@"Devices"];
      }
    }
  }

  return name2;
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
  selfCopy = self;
  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  LOBYTE(selfCopy) = [sharedPairingAgent isPeerPaired:selfCopy->_peripheral];

  return selfCopy;
}

- (BOOL)cloudPaired
{
  selfCopy = self;
  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  LOBYTE(selfCopy) = [sharedPairingAgent isPeerCloudPaired:selfCopy->_peripheral];

  return selfCopy;
}

- (id)classicDevice
{
  if ([(BTSDeviceLE *)self supportsCTKD])
  {
    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    identifier = [(CBPeripheral *)self->_peripheral identifier];
    v5 = [mEMORY[0x277CF3248] deviceFromIdentifier:identifier];

    v6 = [BTSDeviceClassic deviceWithDevice:v5];
    classicDevice = [v6 classicDevice];
  }

  else
  {
    classicDevice = 0;
  }

  return classicDevice;
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
  isConnectedToSystem = [(CBPeripheral *)self->_peripheral isConnectedToSystem];
  if ((isConnectedToSystem & 1) == 0)
  {
    [(CBCentralManager *)self->_centralManager connectPeripheral:self->_peripheral options:0];
  }

  return isConnectedToSystem ^ 1;
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

  sharedPairingAgent = [(CBCentralManager *)self->_centralManager sharedPairingAgent];
  [sharedPairingAgent unpairPeer:self->_peripheral];
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

- (void)setDenyIncomingClassicConnection:(BOOL)connection
{
  connectionCopy = connection;
  shouldDenyIncomingClassicConnection = [(BTSDeviceLE *)self shouldDenyIncomingClassicConnection];
  if (connectionCopy)
  {
    if (!shouldDenyIncomingClassicConnection)
    {
      peripheral = self->_peripheral;

      [(CBPeripheral *)peripheral tag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
    }
  }

  else if (shouldDenyIncomingClassicConnection)
  {
    v7 = self->_peripheral;

    [(CBPeripheral *)v7 untag:@"_DENY_INCOMING_CLASSIC_CONNECTION_"];
  }
}

- (void)setANCSAuthorization:(BOOL)authorization
{
  peripheral = self->_peripheral;
  v5 = !authorization;
  if (authorization)
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
  healthDeviceType = [(BTSDeviceLE *)self healthDeviceType];

  if (!healthDeviceType)
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

- (void)setUserSelectedHealthDataSyncConfig:(int)config
{
  healthDeviceType = [(BTSDeviceLE *)self healthDeviceType];

  if (healthDeviceType)
  {
    v6 = @"0";
    v7 = @"HealthDataSyncNever";
    if (!config)
    {
      v7 = @"HealthDataSyncAlways";
      v6 = @"1";
    }

    v8 = config == 1;
    if (config == 1)
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

- (BOOL)isApplePencil:(int *)pencil
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
  *pencil = v5;
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

- (void)setChannelSoundingL2CAP:(id)p
{
  pCopy = p;
  v5 = pCopy;
  if (pCopy)
  {
    outputStream = [(CBL2CAPChannel *)pCopy outputStream];
    [outputStream setDelegate:self];

    outputStream2 = [(CBL2CAPChannel *)v5 outputStream];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [outputStream2 scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];

    outputStream3 = [(CBL2CAPChannel *)v5 outputStream];
    [outputStream3 open];
  }

  else
  {
    channelSoundingL2CAP = self->_channelSoundingL2CAP;
    if (channelSoundingL2CAP)
    {
      outputStream4 = [(CBL2CAPChannel *)channelSoundingL2CAP outputStream];
      currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
      [outputStream4 removeFromRunLoop:currentRunLoop2 forMode:*MEMORY[0x277CBE640]];

      outputStream5 = [(CBL2CAPChannel *)self->_channelSoundingL2CAP outputStream];
      [outputStream5 close];
    }
  }

  v14 = self->_channelSoundingL2CAP;
  self->_channelSoundingL2CAP = v5;
}

- (void)openChannelSoundingL2CAP
{
  channelSoundingL2CAP = [(BTSDeviceLE *)self channelSoundingL2CAP];

  if (!channelSoundingL2CAP)
  {
    peripheral = self->_peripheral;

    [(CBPeripheral *)peripheral openL2CAPChannel:128];
  }
}

- (void)sendChannelSoundingResults:(id)results
{
  resultsCopy = results;
  if ([(CBPeripheral *)self->_peripheral state]== CBPeripheralStateConnected)
  {
    channelSoundingL2CAP = [(BTSDeviceLE *)self channelSoundingL2CAP];

    if (channelSoundingL2CAP)
    {
      channelSoundingL2CAP2 = [(BTSDeviceLE *)self channelSoundingL2CAP];
      outputStream = [channelSoundingL2CAP2 outputStream];
      [outputStream setDelegate:self];

      v8 = [DKMessage sendEntireProcedure:resultsCopy withMTU:[(CBPeripheral *)self->_peripheral maximumWriteValueLengthForType:1]- 4];
      channelSoundingTXQueue = [(BTSDeviceLE *)self channelSoundingTXQueue];

      if (!channelSoundingTXQueue)
      {
        v10 = objc_opt_new();
        [(BTSDeviceLE *)self setChannelSoundingTXQueue:v10];
      }

      channelSoundingTXQueue2 = [(BTSDeviceLE *)self channelSoundingTXQueue];
      [channelSoundingTXQueue2 addObjectsFromArray:v8];

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
  channelSoundingL2CAP = [self channelSoundingL2CAP];
  outputStream = [channelSoundingL2CAP outputStream];
  streamError = [outputStream streamError];
  localizedDescription = [streamError localizedDescription];
  v8 = 138412290;
  v9 = localizedDescription;
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "Error sending channel sounding data: %@", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  if (event > 3)
  {
    if (event != 4)
    {
      if (event == 8)
      {
        v7 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [BTSDeviceLE stream:streamCopy handleEvent:v7];
        }

        goto LABEL_25;
      }

      if (event == 16)
      {
        v9 = sharedBluetoothSettingsLogComponent();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 67109120;
          v16 = 128;
          _os_log_impl(&dword_251143000, v9, OS_LOG_TYPE_DEFAULT, "NSStreamEventEndEncountered for %d", &v15, 8u);
        }

        [(BTSDeviceLE *)self closeChannelSoundingL2CAP];
      }

      goto LABEL_26;
    }

    v10 = sharedBluetoothSettingsLogComponent();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:

      channelSoundingTXQueue = [(BTSDeviceLE *)self channelSoundingTXQueue];
      v13 = [channelSoundingTXQueue count];

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
    _os_log_impl(&dword_251143000, v10, OS_LOG_TYPE_DEFAULT, v11, &v15, 8u);
    goto LABEL_21;
  }

  switch(event)
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
        _os_log_impl(&dword_251143000, v7, OS_LOG_TYPE_DEFAULT, v8, &v15, 8u);
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
  _os_log_error_impl(&dword_251143000, a2, OS_LOG_TYPE_ERROR, "NSStreamEventErrorOccurred for %d. Error: %@", v6, 0x12u);

  v5 = *MEMORY[0x277D85DE8];
}

@end