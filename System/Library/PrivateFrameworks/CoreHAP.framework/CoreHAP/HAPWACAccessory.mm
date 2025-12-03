@interface HAPWACAccessory
- (BOOL)isAirPlayAccessory;
- (BOOL)isHomeKitAccessory;
- (BOOL)supportsCertAuth;
- (BOOL)supportsLegacyWAC;
- (BOOL)supportsTokenAuth;
- (BOOL)supportsWAC2;
- (HAPWACAccessory)initWithName:(id)name identifier:(id)identifier category:(id)category ssid:(id)ssid deviceId:(id)id flags:(unsigned int)flags;
- (HAPWACAccessory)initWithWiFiDevice:(id)device;
- (id)description;
- (void)__setupSupportedFlags:(unsigned int)flags;
- (void)updateWithHAPWACAccessory:(id)accessory;
@end

@implementation HAPWACAccessory

- (BOOL)isAirPlayAccessory
{
  os_unfair_lock_lock_with_options();
  v3 = 0;
  if (self->_supportsAirPlay)
  {
    v3 = self->_version == 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)isHomeKitAccessory
{
  os_unfair_lock_lock_with_options();
  if (self->_version)
  {
    v3 = self->_authFeatures != 0;
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)supportsCertAuth
{
  os_unfair_lock_lock_with_options();
  pairSetupWAC = 0;
  if ((self->_authFeatures & 8) != 0)
  {
    pairSetupWAC = self->_pairSetupWAC;
  }

  os_unfair_lock_unlock(&self->_lock);
  return pairSetupWAC;
}

- (BOOL)supportsTokenAuth
{
  os_unfair_lock_lock_with_options();
  pairSetupWAC = 0;
  if ((self->_authFeatures & 2) != 0)
  {
    pairSetupWAC = self->_pairSetupWAC;
  }

  os_unfair_lock_unlock(&self->_lock);
  return pairSetupWAC;
}

- (BOOL)supportsWAC2
{
  os_unfair_lock_lock_with_options();
  if (self->_authFeatures)
  {
    pairSetupWAC = self->_pairSetupWAC;
  }

  else
  {
    pairSetupWAC = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return pairSetupWAC;
}

- (BOOL)supportsLegacyWAC
{
  os_unfair_lock_lock_with_options();
  v3 = (self->_authFeatures & 0xD) != 0 && !self->_pairSetupWAC;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)updateWithHAPWACAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  cuWiFiDevice = [accessoryCopy cuWiFiDevice];
  cuWiFiDevice = self->_cuWiFiDevice;
  self->_cuWiFiDevice = cuWiFiDevice;

  name = [accessoryCopy name];
  name = self->_name;
  self->_name = name;

  model = [accessoryCopy model];
  model = self->_model;
  self->_model = model;

  manufacturer = [accessoryCopy manufacturer];
  manufacturer = self->_manufacturer;
  self->_manufacturer = manufacturer;

  wacCategory = [accessoryCopy wacCategory];
  wacCategory = self->_wacCategory;
  self->_wacCategory = wacCategory;

  rssi = [accessoryCopy rssi];
  rssi = self->_rssi;
  self->_rssi = rssi;

  bssid = [accessoryCopy bssid];
  bssid = self->_bssid;
  self->_bssid = bssid;

  ssid = [accessoryCopy ssid];
  ssid = self->_ssid;
  self->_ssid = ssid;

  identifier = [accessoryCopy identifier];
  identifier = self->_identifier;
  self->_identifier = identifier;

  setupHash = [accessoryCopy setupHash];
  setupHash = self->_setupHash;
  self->_setupHash = setupHash;

  deviceId = [accessoryCopy deviceId];
  deviceId = self->_deviceId;
  self->_deviceId = deviceId;

  rawScanResult = [accessoryCopy rawScanResult];
  rawScanResult = self->_rawScanResult;
  self->_rawScanResult = rawScanResult;

  self->_supportsAirPlay = 0;
  self->_homeKitPaired = 0;
  self->_pairSetupWAC = 0;
  self->_supportedWiFiBands = 0;
  self->_authFeatures = 0;
  cuWiFiDevice2 = [accessoryCopy cuWiFiDevice];
  -[HAPWACAccessory __setupSupportedFlags:](self, "__setupSupportedFlags:", [cuWiFiDevice2 deviceIEFlags]);

  [accessoryCopy discoveryTime];
  self->_discoveryTime = v29;
  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v29 = HAPIsInternalBuild();
  if (v29)
  {
    name = [(HAPWACAccessory *)self name];
  }

  else
  {
    name = @"<private>";
  }

  v27 = HAPIsInternalBuild();
  if (v27)
  {
    model = [(HAPWACAccessory *)self model];
  }

  else
  {
    model = @"<private>";
  }

  v23 = HAPIsInternalBuild();
  if (v23)
  {
    manufacturer = [(HAPWACAccessory *)self manufacturer];
  }

  else
  {
    manufacturer = @"<private>";
  }

  wacCategory = [(HAPWACAccessory *)self wacCategory];
  v20 = HAPIsInternalBuild();
  if (v20)
  {
    bssid = [(HAPWACAccessory *)self bssid];
  }

  else
  {
    bssid = @"<private>";
  }

  v19 = HAPIsInternalBuild();
  v28 = name;
  v26 = model;
  v21 = wacCategory;
  v22 = manufacturer;
  if (v19)
  {
    ssid = [(HAPWACAccessory *)self ssid];
  }

  else
  {
    ssid = @"<private>";
  }

  identifier = [(HAPWACAccessory *)self identifier];
  deviceId = [(HAPWACAccessory *)self deviceId];
  setupHash = [(HAPWACAccessory *)self setupHash];
  if ([(HAPWACAccessory *)self supportsAirPlay])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  if ([(HAPWACAccessory *)self homeKitPaired])
  {
    v11 = @"Yes";
  }

  else
  {
    v11 = @"No";
  }

  if ([(HAPWACAccessory *)self pairSetupWAC])
  {
    v12 = @"Yes";
  }

  else
  {
    v12 = @"No";
  }

  if ([(HAPWACAccessory *)self version]== 1)
  {
    v13 = @"HAPWACV1";
  }

  else if ([(HAPWACAccessory *)self version]== 2)
  {
    v13 = @"HAPWACV2";
  }

  else
  {
    v13 = @"?";
  }

  v14 = HAPAuthFeaturesToString([(HAPWACAccessory *)self authFeatures]);
  v15 = HAPWACWiFiBandToString([(HAPWACAccessory *)self supportedWiFiBands]);
  [(HAPWACAccessory *)self discoveryTime];
  v25 = [v24 stringWithFormat:@"\n Name: %@\n Model: %@\n Manufacturer: %@\n Category: %@\n BSSID: %@\n SSID: %@\n Identifier: %@\n DeviceId: %@\n setup hash: %@\n AirPlay: %@\n HomeKit Paired: %@\n Pair Setup WAC: %@\n HomeKit Version: %@\n Auth: %@\n Supported WiFi Band(s): %@\n DiscoveryTime: %f sec\n ", v28, v26, v22, v21, bssid, ssid, identifier, deviceId, setupHash, v10, v11, v12, v13, v14, v15, v16];

  if (v19)
  {
  }

  if (v20)
  {
  }

  if (v23)
  {
  }

  if (v27)
  {
  }

  if (v29)
  {
  }

  return v25;
}

- (HAPWACAccessory)initWithName:(id)name identifier:(id)identifier category:(id)category ssid:(id)ssid deviceId:(id)id flags:(unsigned int)flags
{
  nameCopy = name;
  identifierCopy = identifier;
  categoryCopy = category;
  ssidCopy = ssid;
  idCopy = id;
  v23.receiver = self;
  v23.super_class = HAPWACAccessory;
  v18 = [(HAPWACAccessory *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_wacCategory, category);
    objc_storeStrong(&v19->_ssid, ssid);
    objc_storeStrong(&v19->_deviceId, id);
    [(HAPWACAccessory *)v19 __setupSupportedFlags:flags];
  }

  return v19;
}

- (void)__setupSupportedFlags:(unsigned int)flags
{
  if ((flags & 0x1000) != 0)
  {
    self->_supportsAirPlay = 1;
  }

  if ((flags & 0x20000) != 0)
  {
    self->_supportedWiFiBands |= 1uLL;
  }

  if ((flags & 0x10000) != 0)
  {
    self->_supportedWiFiBands |= 2uLL;
  }

  if ((flags & 0x4000) != 0)
  {
    self->_version = 1;
    if ((flags & 0x2000) == 0)
    {
LABEL_9:
      if ((flags & 0x400000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((flags & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  self->_version = 2;
  if ((flags & 0x400000) == 0)
  {
LABEL_10:
    if ((flags & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_homeKitPaired = 1;
  if ((flags & 0x800) != 0)
  {
LABEL_11:
    self->_pairSetupWAC = 1;
  }

LABEL_12:
  if ((flags & 0x20000400) != 0)
  {
    self->_authFeatures |= 1uLL;
  }

  if ((flags & 0x40000) != 0)
  {
    self->_authFeatures |= 4uLL;
    if ((flags & 0x200) == 0)
    {
LABEL_16:
      if ((flags & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((flags & 0x200) == 0)
  {
    goto LABEL_16;
  }

  self->_authFeatures |= 2uLL;
  if ((flags & 0x100) == 0)
  {
LABEL_17:
    if ((flags & 0x20) == 0)
    {
      return;
    }

LABEL_26:
    self->_requiresOwnershipToken = 1;
    return;
  }

LABEL_25:
  self->_authFeatures |= 8uLL;
  if ((flags & 0x20) != 0)
  {
    goto LABEL_26;
  }
}

- (HAPWACAccessory)initWithWiFiDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v34.receiver = self;
  v34.super_class = HAPWACAccessory;
  v6 = [(HAPWACAccessory *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cuWiFiDevice, device);
    deviceIEName = [deviceCopy deviceIEName];
    name = v7->_name;
    v7->_name = deviceIEName;

    deviceIEModel = [deviceCopy deviceIEModel];
    model = v7->_model;
    v7->_model = deviceIEModel;

    deviceIEManufacturer = [deviceCopy deviceIEManufacturer];
    manufacturer = v7->_manufacturer;
    v7->_manufacturer = deviceIEManufacturer;

    deviceIECategory = [deviceCopy deviceIECategory];
    if (deviceIECategory)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(deviceCopy, "deviceIECategory")}];
    }

    else
    {
      v15 = &unk_283EA9908;
    }

    objc_storeStrong(&v7->_wacCategory, v15);
    if (deviceIECategory)
    {
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deviceCopy, "rssi")}];
    rssi = v7->_rssi;
    v7->_rssi = v16;

    bssid = [deviceCopy bssid];
    bssid = v7->_bssid;
    v7->_bssid = bssid;

    ssid = [deviceCopy ssid];
    ssid = v7->_ssid;
    v7->_ssid = ssid;

    identifier = [deviceCopy identifier];
    identifier = v7->_identifier;
    v7->_identifier = identifier;

    deviceIDSetupHash = [deviceCopy deviceIDSetupHash];
    setupHash = v7->_setupHash;
    v7->_setupHash = deviceIDSetupHash;

    deviceIEDeviceID = [deviceCopy deviceIEDeviceID];
    [deviceIEDeviceID bytes];
    deviceIEDeviceID2 = [deviceCopy deviceIEDeviceID];
    [deviceIEDeviceID2 length];
    HardwareAddressToCString();

    v28 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
    deviceId = v7->_deviceId;
    v7->_deviceId = v28;

    rawScanResult = [deviceCopy rawScanResult];
    rawScanResult = v7->_rawScanResult;
    v7->_rawScanResult = rawScanResult;

    v7->_supportsAirPlay = 0;
    v7->_homeKitPaired = 0;
    v7->_pairSetupWAC = 0;
    v7->_requiresOwnershipToken = 0;
    v7->_supportedWiFiBands = 0;
    v7->_authFeatures = 0;
    -[HAPWACAccessory __setupSupportedFlags:](v7, "__setupSupportedFlags:", [deviceCopy deviceIEFlags]);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v7;
}

@end