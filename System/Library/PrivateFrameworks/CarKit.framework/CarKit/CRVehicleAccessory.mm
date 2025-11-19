@interface CRVehicleAccessory
+ (int64_t)_transportTypeForExternalAccessoryTransportType:(int)a3;
- (BOOL)_updateName;
- (BOOL)isBluetoothConnected;
- (EAAccessory)accessory;
- (NSDictionary)analyticsDescription;
- (NSDictionary)vehicleAccessoryInfoKeys;
- (NSString)description;
- (NSString)radarDescription;
- (id)coreAccessoriesEndpointUUID;
- (id)displayName;
- (void)beginWiredBluetoothPairing:(id)a3;
- (void)requestWiFiCredentials;
- (void)sendDeviceTransportIdentifiers;
- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7;
@end

@implementation CRVehicleAccessory

- (NSDictionary)vehicleAccessoryInfoKeys
{
  v3 = [(CRVehicleAccessory *)self vehicleInfoDataCache];
  v4 = [(CRVehicleAccessory *)self accessory];
  if (v4)
  {
    if (![v3 count])
    {
      v5 = [v4 vehicleInfoInitialData];

      v3 = v5;
    }

    goto LABEL_8;
  }

  v6 = [(CRVehicleAccessory *)self vehicleAccessoryInfoKeysCache];
  if (!v6)
  {
LABEL_8:
    v9 = [v4 manufacturer];
    v10 = [v4 modelNumber];
    v11 = [v4 name];
    v12 = [v4 serialNumber];
    v13 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6966D98]];
    v29 = [v4 ppid];
    v14 = [v4 firmwareRevision];
    v31 = [v4 hardwareRevision];
    v28 = [v4 destinationSharingOptions];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v7 = v15;
    if (v9)
    {
      [v15 setObject:v9 forKey:@"manufacturer"];
    }

    if (v10)
    {
      [v7 setObject:v10 forKey:@"modelName"];
    }

    if (v11)
    {
      [v7 setObject:v11 forKey:@"name"];
    }

    if (v14)
    {
      [v7 setObject:v14 forKey:@"firmwareVersion"];
    }

    if (v31)
    {
      [v7 setObject:v31 forKey:@"hardwareVersion"];
    }

    if (v12)
    {
      [v7 setObject:v12 forKey:@"serialNumber"];
    }

    v30 = v13;
    if (v13)
    {
      v16 = [v13 unsignedIntegerValue];
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 & 1];
      v27 = v12;
      v17 = v11;
      v18 = v10;
      v19 = v9;
      v21 = v20 = v3;
      [v7 setObject:v21 forKey:@"engineTypeGasoline"];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 & 2];
      [v7 setObject:v22 forKey:@"engineTypeDiesel"];

      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 & 4];
      [v7 setObject:v23 forKey:@"engineTypeElectric"];

      v3 = v20;
      v9 = v19;
      v10 = v18;
      v11 = v17;
      v12 = v27;
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 & 8];
      [v7 setObject:v24 forKey:@"engineTypeCNG"];
    }

    if (v29)
    {
      [v7 setObject:v29 forKey:@"ppid"];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithBool:v28 & 1];
    [v7 setObject:v25 forKey:@"destinationSharing"];

    [(CRVehicleAccessory *)self setVehicleAccessoryInfoKeysCache:v7];
    goto LABEL_25;
  }

  v7 = v6;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "Falling back to cached vehicleAccessoryInfoKeys while accessory is not available", buf, 2u);
  }

LABEL_25:

  return v7;
}

- (EAAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

+ (int64_t)_transportTypeForExternalAccessoryTransportType:(int)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return qword_1C825B998[a3];
  }
}

- (BOOL)isBluetoothConnected
{
  v2 = [(CRVehicleAccessory *)self bluetoothAddress];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)displayName
{
  v3 = [(CRVehicleAccessory *)self vehicleName];
  if (![v3 length])
  {
    v4 = [(CRVehicleAccessory *)self bluetoothAddress];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(CRVehicleAccessory *)self bluetoothAddress];
    }

    else
    {
      v6 = &stru_1F47DECC0;
    }

    v3 = v6;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRVehicleAccessory *)self vehicleName];
  v5 = [(CRVehicleAccessory *)self transportType];
  if ((v5 - 1) > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E82FD328[v5 - 1];
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = @"<unnamed>";
  }

  v8 = [(CRVehicleAccessory *)self accessoryProtocols];
  v9 = [(CRVehicleAccessory *)self bluetoothAddress];
  v10 = [v3 stringWithFormat:@"%@ (transport: %@, protocols: %@, bluetoothAddress: %@)", v7, v6, v8, v9];

  return v10;
}

- (NSString)radarDescription
{
  v3 = [(CRVehicleAccessory *)self accessory];
  v16 = MEMORY[0x1E696AEC0];
  v15 = [(CRVehicleAccessory *)self vehicleName];
  v4 = [v3 name];
  v5 = [v3 manufacturer];
  v6 = [v3 modelNumber];
  v7 = [v3 firmwareRevision];
  v8 = [v3 hardwareRevision];
  v9 = [v3 serialNumber];
  v10 = @"YES";
  if ([v3 supportsWirelessCarPlay])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (([v3 accessoryCapabilities] & 8) == 0)
  {
    v10 = @"NO";
  }

  v12 = [v3 ppid];
  v13 = [v16 stringWithFormat:@"Name: %@\nAccessory Name: %@\nManufacturer: %@\nModel Number: %@\nFirmware Revision: %@\nHardware Revision: %@\nSerial Number: %@\nSupports Wireless: %@\nProvides Location: %@\nPPID: %@\n", v15, v4, v5, v6, v7, v8, v9, v11, v10, v12];

  return v13;
}

- (NSDictionary)analyticsDescription
{
  v2 = [(CRVehicleAccessory *)self vehicleAccessoryInfoKeys];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v2 objectForKeyedSubscript:@"name"];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:@"name"];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  v6 = [v2 objectForKeyedSubscript:@"modelName"];

  if (v6)
  {
    v7 = [v2 objectForKeyedSubscript:@"modelName"];
    [v3 setObject:v7 forKeyedSubscript:@"modelName"];
  }

  v8 = [v2 objectForKeyedSubscript:@"manufacturer"];

  if (v8)
  {
    v9 = [v2 objectForKeyedSubscript:@"manufacturer"];
    [v3 setObject:v9 forKeyedSubscript:@"manufacturer"];
  }

  v10 = [v2 objectForKeyedSubscript:@"ppid"];

  if (v10)
  {
    v11 = [v2 objectForKeyedSubscript:@"ppid"];
    [v3 setObject:v11 forKeyedSubscript:@"ppid"];
  }

  v12 = [v2 objectForKeyedSubscript:@"firmwareVersion"];

  if (v12)
  {
    v13 = [v2 objectForKeyedSubscript:@"firmwareVersion"];
    [v3 setObject:v13 forKeyedSubscript:@"firmwareVersion"];
  }

  v14 = [v2 objectForKeyedSubscript:@"hardwareVersion"];

  if (v14)
  {
    v15 = [v2 objectForKeyedSubscript:@"hardwareVersion"];
    [v3 setObject:v15 forKeyedSubscript:@"hardwareVersion"];
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v16;
}

- (id)coreAccessoriesEndpointUUID
{
  v2 = [(CRVehicleAccessory *)self accessory];
  v3 = [v2 coreAccessoriesPrimaryUUID];

  return v3;
}

- (BOOL)_updateName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(CRVehicleAccessory *)self accessory];
  v4 = [(CRVehicleAccessory *)self vehicleInfoDataCache];
  v5 = [v4 objectForKey:*MEMORY[0x1E6966D90]];
  if ([v5 length])
  {
    v6 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [v3 name];

    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Vehicle did not have display name, falling back to %@", &v16, 0xCu);
    }

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v8 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [v6 componentsSeparatedByCharactersInSet:v8];
  v10 = [v9 componentsJoinedByString:@" "];

  v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v10 stringByTrimmingCharactersInSet:v11];

  if (v6)
  {
    v12 = [(CRVehicleAccessory *)self vehicleName];
    v13 = [v6 isEqualToString:v12];

    if ((v13 & 1) == 0)
    {
      [(CRVehicleAccessory *)self setVehicleName:v6];
      v14 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (void)beginWiredBluetoothPairing:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleAccessory *)self accessory];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__CRVehicleAccessory_beginWiredBluetoothPairing___block_invoke;
    v6[3] = &unk_1E82FD278;
    v7 = v4;
    [v5 beginOOBBTPairingWithCompletionBlock:v6];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __49__CRVehicleAccessory_beginWiredBluetoothPairing___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "beginOOBBTPairingWithCompletionBlock %i %@", v8, 0x12u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2 == 0, v5);
  }
}

- (void)requestWiFiCredentials
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "requesting WiFi credentials", v5, 2u);
  }

  v4 = [(CRVehicleAccessory *)self accessory];
  [v4 requestIAPAccessoryWiFiCredentials];
}

- (void)sendDeviceTransportIdentifiers
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MGGetStringAnswer();
  v4 = MGGetStringAnswer();
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C81FC000, v5, OS_LOG_TYPE_DEFAULT, "sending device transport identifiers BT: %@ USB: %@", &v7, 0x16u);
  }

  v6 = [(CRVehicleAccessory *)self accessory];
  [v6 sendDeviceIdentifierNotification:v3 usbIdentifier:v4];
}

- (void)sendWiredCarPlayAvailable:(id)a3 usbIdentifier:(id)a4 wirelessCarPlayAvailable:(id)a5 bluetoothIdentifier:(id)a6 themeAssetsAvailable:(id)a7
{
  v12 = MEMORY[0x1E6966DA0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v20 = [v12 sharedAccessoryManager];
  v18 = [(CRVehicleAccessory *)self accessory];
  v19 = [v18 coreAccessoriesPrimaryUUID];
  [v20 sendWiredCarPlayAvailable:v17 usbIdentifier:v16 wirelessCarPlayAvailable:v15 bluetoothIdentifier:v14 themeAssetsAvailable:v13 forUUID:v19];
}

@end