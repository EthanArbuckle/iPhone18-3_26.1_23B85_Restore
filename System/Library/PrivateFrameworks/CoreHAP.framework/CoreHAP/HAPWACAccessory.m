@interface HAPWACAccessory
- (BOOL)isAirPlayAccessory;
- (BOOL)isHomeKitAccessory;
- (BOOL)supportsCertAuth;
- (BOOL)supportsLegacyWAC;
- (BOOL)supportsTokenAuth;
- (BOOL)supportsWAC2;
- (HAPWACAccessory)initWithName:(id)a3 identifier:(id)a4 category:(id)a5 ssid:(id)a6 deviceId:(id)a7 flags:(unsigned int)a8;
- (HAPWACAccessory)initWithWiFiDevice:(id)a3;
- (id)description;
- (void)__setupSupportedFlags:(unsigned int)a3;
- (void)updateWithHAPWACAccessory:(id)a3;
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

- (void)updateWithHAPWACAccessory:(id)a3
{
  v30 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v30 cuWiFiDevice];
  cuWiFiDevice = self->_cuWiFiDevice;
  self->_cuWiFiDevice = v4;

  v6 = [v30 name];
  name = self->_name;
  self->_name = v6;

  v8 = [v30 model];
  model = self->_model;
  self->_model = v8;

  v10 = [v30 manufacturer];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v10;

  v12 = [v30 wacCategory];
  wacCategory = self->_wacCategory;
  self->_wacCategory = v12;

  v14 = [v30 rssi];
  rssi = self->_rssi;
  self->_rssi = v14;

  v16 = [v30 bssid];
  bssid = self->_bssid;
  self->_bssid = v16;

  v18 = [v30 ssid];
  ssid = self->_ssid;
  self->_ssid = v18;

  v20 = [v30 identifier];
  identifier = self->_identifier;
  self->_identifier = v20;

  v22 = [v30 setupHash];
  setupHash = self->_setupHash;
  self->_setupHash = v22;

  v24 = [v30 deviceId];
  deviceId = self->_deviceId;
  self->_deviceId = v24;

  v26 = [v30 rawScanResult];
  rawScanResult = self->_rawScanResult;
  self->_rawScanResult = v26;

  self->_supportsAirPlay = 0;
  self->_homeKitPaired = 0;
  self->_pairSetupWAC = 0;
  self->_supportedWiFiBands = 0;
  self->_authFeatures = 0;
  v28 = [v30 cuWiFiDevice];
  -[HAPWACAccessory __setupSupportedFlags:](self, "__setupSupportedFlags:", [v28 deviceIEFlags]);

  [v30 discoveryTime];
  self->_discoveryTime = v29;
  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v29 = HAPIsInternalBuild();
  if (v29)
  {
    v3 = [(HAPWACAccessory *)self name];
  }

  else
  {
    v3 = @"<private>";
  }

  v27 = HAPIsInternalBuild();
  if (v27)
  {
    v4 = [(HAPWACAccessory *)self model];
  }

  else
  {
    v4 = @"<private>";
  }

  v23 = HAPIsInternalBuild();
  if (v23)
  {
    v5 = [(HAPWACAccessory *)self manufacturer];
  }

  else
  {
    v5 = @"<private>";
  }

  v6 = [(HAPWACAccessory *)self wacCategory];
  v20 = HAPIsInternalBuild();
  if (v20)
  {
    v30 = [(HAPWACAccessory *)self bssid];
  }

  else
  {
    v30 = @"<private>";
  }

  v19 = HAPIsInternalBuild();
  v28 = v3;
  v26 = v4;
  v21 = v6;
  v22 = v5;
  if (v19)
  {
    v7 = [(HAPWACAccessory *)self ssid];
  }

  else
  {
    v7 = @"<private>";
  }

  v18 = [(HAPWACAccessory *)self identifier];
  v8 = [(HAPWACAccessory *)self deviceId];
  v9 = [(HAPWACAccessory *)self setupHash];
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
  v25 = [v24 stringWithFormat:@"\n Name: %@\n Model: %@\n Manufacturer: %@\n Category: %@\n BSSID: %@\n SSID: %@\n Identifier: %@\n DeviceId: %@\n setup hash: %@\n AirPlay: %@\n HomeKit Paired: %@\n Pair Setup WAC: %@\n HomeKit Version: %@\n Auth: %@\n Supported WiFi Band(s): %@\n DiscoveryTime: %f sec\n ", v28, v26, v22, v21, v30, v7, v18, v8, v9, v10, v11, v12, v13, v14, v15, v16];

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

- (HAPWACAccessory)initWithName:(id)a3 identifier:(id)a4 category:(id)a5 ssid:(id)a6 deviceId:(id)a7 flags:(unsigned int)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = HAPWACAccessory;
  v18 = [(HAPWACAccessory *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v19->_identifier, a4);
    objc_storeStrong(&v19->_wacCategory, a5);
    objc_storeStrong(&v19->_ssid, a6);
    objc_storeStrong(&v19->_deviceId, a7);
    [(HAPWACAccessory *)v19 __setupSupportedFlags:a8];
  }

  return v19;
}

- (void)__setupSupportedFlags:(unsigned int)a3
{
  if ((a3 & 0x1000) != 0)
  {
    self->_supportsAirPlay = 1;
  }

  if ((a3 & 0x20000) != 0)
  {
    self->_supportedWiFiBands |= 1uLL;
  }

  if ((a3 & 0x10000) != 0)
  {
    self->_supportedWiFiBands |= 2uLL;
  }

  if ((a3 & 0x4000) != 0)
  {
    self->_version = 1;
    if ((a3 & 0x2000) == 0)
    {
LABEL_9:
      if ((a3 & 0x400000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((a3 & 0x2000) == 0)
  {
    goto LABEL_9;
  }

  self->_version = 2;
  if ((a3 & 0x400000) == 0)
  {
LABEL_10:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  self->_homeKitPaired = 1;
  if ((a3 & 0x800) != 0)
  {
LABEL_11:
    self->_pairSetupWAC = 1;
  }

LABEL_12:
  if ((a3 & 0x20000400) != 0)
  {
    self->_authFeatures |= 1uLL;
  }

  if ((a3 & 0x40000) != 0)
  {
    self->_authFeatures |= 4uLL;
    if ((a3 & 0x200) == 0)
    {
LABEL_16:
      if ((a3 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((a3 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  self->_authFeatures |= 2uLL;
  if ((a3 & 0x100) == 0)
  {
LABEL_17:
    if ((a3 & 0x20) == 0)
    {
      return;
    }

LABEL_26:
    self->_requiresOwnershipToken = 1;
    return;
  }

LABEL_25:
  self->_authFeatures |= 8uLL;
  if ((a3 & 0x20) != 0)
  {
    goto LABEL_26;
  }
}

- (HAPWACAccessory)initWithWiFiDevice:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v34.receiver = self;
  v34.super_class = HAPWACAccessory;
  v6 = [(HAPWACAccessory *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cuWiFiDevice, a3);
    v8 = [v5 deviceIEName];
    name = v7->_name;
    v7->_name = v8;

    v10 = [v5 deviceIEModel];
    model = v7->_model;
    v7->_model = v10;

    v12 = [v5 deviceIEManufacturer];
    manufacturer = v7->_manufacturer;
    v7->_manufacturer = v12;

    v14 = [v5 deviceIECategory];
    if (v14)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v5, "deviceIECategory")}];
    }

    else
    {
      v15 = &unk_283EA9908;
    }

    objc_storeStrong(&v7->_wacCategory, v15);
    if (v14)
    {
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "rssi")}];
    rssi = v7->_rssi;
    v7->_rssi = v16;

    v18 = [v5 bssid];
    bssid = v7->_bssid;
    v7->_bssid = v18;

    v20 = [v5 ssid];
    ssid = v7->_ssid;
    v7->_ssid = v20;

    v22 = [v5 identifier];
    identifier = v7->_identifier;
    v7->_identifier = v22;

    v24 = [v5 deviceIDSetupHash];
    setupHash = v7->_setupHash;
    v7->_setupHash = v24;

    v26 = [v5 deviceIEDeviceID];
    [v26 bytes];
    v27 = [v5 deviceIEDeviceID];
    [v27 length];
    HardwareAddressToCString();

    v28 = [MEMORY[0x277CCACA8] stringWithCString:v35 encoding:4];
    deviceId = v7->_deviceId;
    v7->_deviceId = v28;

    v30 = [v5 rawScanResult];
    rawScanResult = v7->_rawScanResult;
    v7->_rawScanResult = v30;

    v7->_supportsAirPlay = 0;
    v7->_homeKitPaired = 0;
    v7->_pairSetupWAC = 0;
    v7->_requiresOwnershipToken = 0;
    v7->_supportedWiFiBands = 0;
    v7->_authFeatures = 0;
    -[HAPWACAccessory __setupSupportedFlags:](v7, "__setupSupportedFlags:", [v5 deviceIEFlags]);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v7;
}

@end