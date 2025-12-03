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
- (id)classicDevice;
- (id)description;
- (id)healthDeviceType;
- (id)identifier;
- (id)linkedRadioAddress;
- (id)name;
- (id)relatedFutureRadioAddress;
- (int)userSelectedHealthDataSyncConfig;
- (void)setANCSAuthorization:(BOOL)authorization;
- (void)setDenyIncomingClassicConnection:(BOOL)connection;
- (void)setUserSelectedHealthDataSyncConfig:(int)config;
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
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
      v6 = MEMORY[0x1E696AEC0];
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
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        name2 = [v10 localizedStringForKey:@"ACCESSORY" value:&stru_1F20FAB50 table:@"Devices"];
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
    mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
    identifier = [(CBPeripheral *)self->_peripheral identifier];
    v5 = [mEMORY[0x1E698F468] deviceFromIdentifier:identifier];

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
      [(CBPeripheral *)self->_peripheral untag:*MEMORY[0x1E696BD30]];
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
  if (([(CBPeripheral *)self->_peripheral hasTag:@"IsLEKeyboard"]& 1) != 0)
  {
    return 1;
  }

  peripheral = self->_peripheral;

  return [(CBPeripheral *)peripheral hasTag:@"IsLEMouse"];
}

@end