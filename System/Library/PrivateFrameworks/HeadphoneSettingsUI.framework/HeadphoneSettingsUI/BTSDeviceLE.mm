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
- (id)classicDevice;
- (id)description;
- (id)healthDeviceType;
- (id)identifier;
- (id)linkedRadioAddress;
- (id)name;
- (id)relatedFutureRadioAddress;
- (int)userSelectedHealthDataSyncConfig;
- (void)setANCSAuthorization:(BOOL)a3;
- (void)setDenyIncomingClassicConnection:(BOOL)a3;
- (void)setUserSelectedHealthDataSyncConfig:(int)a3;
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
      v6 = MEMORY[0x1E696AEC0];
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
        v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v4 = [v10 localizedStringForKey:@"ACCESSORY" value:&stru_1F20FAB50 table:@"Devices"];
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
    v3 = [MEMORY[0x1E698F468] sharedInstance];
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
      [(CBPeripheral *)self->_peripheral untag:*MEMORY[0x1E696BD30]];
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
  if (([(CBPeripheral *)self->_peripheral hasTag:@"IsLEKeyboard"]& 1) != 0)
  {
    return 1;
  }

  peripheral = self->_peripheral;

  return [(CBPeripheral *)peripheral hasTag:@"IsLEMouse"];
}

@end