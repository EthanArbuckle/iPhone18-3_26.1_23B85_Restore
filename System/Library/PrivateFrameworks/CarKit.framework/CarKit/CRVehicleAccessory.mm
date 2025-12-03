@interface CRVehicleAccessory
+ (int64_t)_transportTypeForExternalAccessoryTransportType:(int)type;
- (BOOL)_updateName;
- (BOOL)isBluetoothConnected;
- (EAAccessory)accessory;
- (NSDictionary)analyticsDescription;
- (NSDictionary)vehicleAccessoryInfoKeys;
- (NSString)description;
- (NSString)radarDescription;
- (id)coreAccessoriesEndpointUUID;
- (id)displayName;
- (void)beginWiredBluetoothPairing:(id)pairing;
- (void)requestWiFiCredentials;
- (void)sendDeviceTransportIdentifiers;
- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessCarPlayAvailable:(id)playAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable;
@end

@implementation CRVehicleAccessory

- (NSDictionary)vehicleAccessoryInfoKeys
{
  vehicleInfoDataCache = [(CRVehicleAccessory *)self vehicleInfoDataCache];
  accessory = [(CRVehicleAccessory *)self accessory];
  if (accessory)
  {
    if (![vehicleInfoDataCache count])
    {
      vehicleInfoInitialData = [accessory vehicleInfoInitialData];

      vehicleInfoDataCache = vehicleInfoInitialData;
    }

    goto LABEL_8;
  }

  vehicleAccessoryInfoKeysCache = [(CRVehicleAccessory *)self vehicleAccessoryInfoKeysCache];
  if (!vehicleAccessoryInfoKeysCache)
  {
LABEL_8:
    manufacturer = [accessory manufacturer];
    modelNumber = [accessory modelNumber];
    name = [accessory name];
    serialNumber = [accessory serialNumber];
    v13 = [vehicleInfoDataCache objectForKeyedSubscript:*MEMORY[0x1E6966D98]];
    ppid = [accessory ppid];
    firmwareRevision = [accessory firmwareRevision];
    hardwareRevision = [accessory hardwareRevision];
    destinationSharingOptions = [accessory destinationSharingOptions];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = dictionary;
    if (manufacturer)
    {
      [dictionary setObject:manufacturer forKey:@"manufacturer"];
    }

    if (modelNumber)
    {
      [v7 setObject:modelNumber forKey:@"modelName"];
    }

    if (name)
    {
      [v7 setObject:name forKey:@"name"];
    }

    if (firmwareRevision)
    {
      [v7 setObject:firmwareRevision forKey:@"firmwareVersion"];
    }

    if (hardwareRevision)
    {
      [v7 setObject:hardwareRevision forKey:@"hardwareVersion"];
    }

    if (serialNumber)
    {
      [v7 setObject:serialNumber forKey:@"serialNumber"];
    }

    v30 = v13;
    if (v13)
    {
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntegerValue & 1];
      v27 = serialNumber;
      v17 = name;
      v18 = modelNumber;
      v19 = manufacturer;
      v21 = v20 = vehicleInfoDataCache;
      [v7 setObject:v21 forKey:@"engineTypeGasoline"];

      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntegerValue & 2];
      [v7 setObject:v22 forKey:@"engineTypeDiesel"];

      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntegerValue & 4];
      [v7 setObject:v23 forKey:@"engineTypeElectric"];

      vehicleInfoDataCache = v20;
      manufacturer = v19;
      modelNumber = v18;
      name = v17;
      serialNumber = v27;
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntegerValue & 8];
      [v7 setObject:v24 forKey:@"engineTypeCNG"];
    }

    if (ppid)
    {
      [v7 setObject:ppid forKey:@"ppid"];
    }

    v25 = [MEMORY[0x1E696AD98] numberWithBool:destinationSharingOptions & 1];
    [v7 setObject:v25 forKey:@"destinationSharing"];

    [(CRVehicleAccessory *)self setVehicleAccessoryInfoKeysCache:v7];
    goto LABEL_25;
  }

  v7 = vehicleAccessoryInfoKeysCache;
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

+ (int64_t)_transportTypeForExternalAccessoryTransportType:(int)type
{
  if (type > 8)
  {
    return 0;
  }

  else
  {
    return qword_1C825B998[type];
  }
}

- (BOOL)isBluetoothConnected
{
  bluetoothAddress = [(CRVehicleAccessory *)self bluetoothAddress];
  v3 = [bluetoothAddress length] != 0;

  return v3;
}

- (id)displayName
{
  vehicleName = [(CRVehicleAccessory *)self vehicleName];
  if (![vehicleName length])
  {
    bluetoothAddress = [(CRVehicleAccessory *)self bluetoothAddress];
    v5 = [bluetoothAddress length];

    if (v5)
    {
      bluetoothAddress2 = [(CRVehicleAccessory *)self bluetoothAddress];
    }

    else
    {
      bluetoothAddress2 = &stru_1F47DECC0;
    }

    vehicleName = bluetoothAddress2;
  }

  return vehicleName;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  vehicleName = [(CRVehicleAccessory *)self vehicleName];
  transportType = [(CRVehicleAccessory *)self transportType];
  if ((transportType - 1) > 3)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E82FD328[transportType - 1];
  }

  if (vehicleName)
  {
    v7 = vehicleName;
  }

  else
  {
    v7 = @"<unnamed>";
  }

  accessoryProtocols = [(CRVehicleAccessory *)self accessoryProtocols];
  bluetoothAddress = [(CRVehicleAccessory *)self bluetoothAddress];
  v10 = [v3 stringWithFormat:@"%@ (transport: %@, protocols: %@, bluetoothAddress: %@)", v7, v6, accessoryProtocols, bluetoothAddress];

  return v10;
}

- (NSString)radarDescription
{
  accessory = [(CRVehicleAccessory *)self accessory];
  v16 = MEMORY[0x1E696AEC0];
  vehicleName = [(CRVehicleAccessory *)self vehicleName];
  name = [accessory name];
  manufacturer = [accessory manufacturer];
  modelNumber = [accessory modelNumber];
  firmwareRevision = [accessory firmwareRevision];
  hardwareRevision = [accessory hardwareRevision];
  serialNumber = [accessory serialNumber];
  v10 = @"YES";
  if ([accessory supportsWirelessCarPlay])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (([accessory accessoryCapabilities] & 8) == 0)
  {
    v10 = @"NO";
  }

  ppid = [accessory ppid];
  v13 = [v16 stringWithFormat:@"Name: %@\nAccessory Name: %@\nManufacturer: %@\nModel Number: %@\nFirmware Revision: %@\nHardware Revision: %@\nSerial Number: %@\nSupports Wireless: %@\nProvides Location: %@\nPPID: %@\n", vehicleName, name, manufacturer, modelNumber, firmwareRevision, hardwareRevision, serialNumber, v11, v10, ppid];

  return v13;
}

- (NSDictionary)analyticsDescription
{
  vehicleAccessoryInfoKeys = [(CRVehicleAccessory *)self vehicleAccessoryInfoKeys];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"name"];

  if (v4)
  {
    v5 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"name"];
    [dictionary setObject:v5 forKeyedSubscript:@"name"];
  }

  v6 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"modelName"];

  if (v6)
  {
    v7 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"modelName"];
    [dictionary setObject:v7 forKeyedSubscript:@"modelName"];
  }

  v8 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"manufacturer"];

  if (v8)
  {
    v9 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"manufacturer"];
    [dictionary setObject:v9 forKeyedSubscript:@"manufacturer"];
  }

  v10 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"ppid"];

  if (v10)
  {
    v11 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"ppid"];
    [dictionary setObject:v11 forKeyedSubscript:@"ppid"];
  }

  v12 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"firmwareVersion"];

  if (v12)
  {
    v13 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"firmwareVersion"];
    [dictionary setObject:v13 forKeyedSubscript:@"firmwareVersion"];
  }

  v14 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"hardwareVersion"];

  if (v14)
  {
    v15 = [vehicleAccessoryInfoKeys objectForKeyedSubscript:@"hardwareVersion"];
    [dictionary setObject:v15 forKeyedSubscript:@"hardwareVersion"];
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v16;
}

- (id)coreAccessoriesEndpointUUID
{
  accessory = [(CRVehicleAccessory *)self accessory];
  coreAccessoriesPrimaryUUID = [accessory coreAccessoriesPrimaryUUID];

  return coreAccessoriesPrimaryUUID;
}

- (BOOL)_updateName
{
  v18 = *MEMORY[0x1E69E9840];
  accessory = [(CRVehicleAccessory *)self accessory];
  vehicleInfoDataCache = [(CRVehicleAccessory *)self vehicleInfoDataCache];
  v5 = [vehicleInfoDataCache objectForKey:*MEMORY[0x1E6966D90]];
  if ([v5 length])
  {
    name = v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    name = [accessory name];

    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = name;
      _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "Vehicle did not have display name, falling back to %@", &v16, 0xCu);
    }

    if (!name)
    {
      goto LABEL_9;
    }
  }

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v9 = [name componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v10 = [v9 componentsJoinedByString:@" "];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  name = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (name)
  {
    vehicleName = [(CRVehicleAccessory *)self vehicleName];
    v13 = [name isEqualToString:vehicleName];

    if ((v13 & 1) == 0)
    {
      [(CRVehicleAccessory *)self setVehicleName:name];
      v14 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (void)beginWiredBluetoothPairing:(id)pairing
{
  pairingCopy = pairing;
  accessory = [(CRVehicleAccessory *)self accessory];
  if (accessory)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__CRVehicleAccessory_beginWiredBluetoothPairing___block_invoke;
    v6[3] = &unk_1E82FD278;
    v7 = pairingCopy;
    [accessory beginOOBBTPairingWithCompletionBlock:v6];
  }

  else if (pairingCopy)
  {
    (*(pairingCopy + 2))(pairingCopy, 0, 0);
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

  accessory = [(CRVehicleAccessory *)self accessory];
  [accessory requestIAPAccessoryWiFiCredentials];
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

  accessory = [(CRVehicleAccessory *)self accessory];
  [accessory sendDeviceIdentifierNotification:v3 usbIdentifier:v4];
}

- (void)sendWiredCarPlayAvailable:(id)available usbIdentifier:(id)identifier wirelessCarPlayAvailable:(id)playAvailable bluetoothIdentifier:(id)bluetoothIdentifier themeAssetsAvailable:(id)assetsAvailable
{
  v12 = MEMORY[0x1E6966DA0];
  assetsAvailableCopy = assetsAvailable;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  playAvailableCopy = playAvailable;
  identifierCopy = identifier;
  availableCopy = available;
  sharedAccessoryManager = [v12 sharedAccessoryManager];
  accessory = [(CRVehicleAccessory *)self accessory];
  coreAccessoriesPrimaryUUID = [accessory coreAccessoriesPrimaryUUID];
  [sharedAccessoryManager sendWiredCarPlayAvailable:availableCopy usbIdentifier:identifierCopy wirelessCarPlayAvailable:playAvailableCopy bluetoothIdentifier:bluetoothIdentifierCopy themeAssetsAvailable:assetsAvailableCopy forUUID:coreAccessoriesPrimaryUUID];
}

@end