@interface MSDKPeerDemoDevice
- (BOOL)isEqual:(id)equal;
- (MSDKPeerDemoDevice)initWithCoder:(id)coder;
- (MSDKPeerDemoDevice)initWithDeviceProperties:(id)properties;
- (id)debugDescription;
- (id)description;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)refreshDevicePropertiesUsingProperties:(id)properties;
@end

@implementation MSDKPeerDemoDevice

- (MSDKPeerDemoDevice)initWithDeviceProperties:(id)properties
{
  propertiesCopy = properties;
  v8.receiver = self;
  v8.super_class = MSDKPeerDemoDevice;
  v5 = [(MSDKPeerDemoDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSDKPeerDemoDevice *)v5 refreshDevicePropertiesUsingProperties:propertiesCopy];
  }

  return v6;
}

- (void)refreshDevicePropertiesUsingProperties:(id)properties
{
  v22 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [propertiesCopy mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = propertiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v6 objectForKey:{v11, v17}];
        null = [MEMORY[0x277CBEB68] null];

        if (v12 == null)
        {
          [(MSDKPeerDemoDevice *)self setValue:0 forKey:v11];
          [v5 removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v6 objectForKey:@"activeEnvironment"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
      [(MSDKPeerDemoDevice *)self setActiveEnvironment:v15];

      [v5 removeObjectForKey:@"activeEnvironment"];
    }
  }

  [(MSDKPeerDemoDevice *)self setValuesForKeysWithDictionary:v5, v17];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(MSDKPeerDemoDevice *)self valueForUndefinedKey:keyCopy, v5];
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(MSDKPeerDemoDevice *)self identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(MSDKPeerDemoDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(MSDKPeerDemoDevice *)self identifier];
  deviceName = [(MSDKPeerDemoDevice *)self deviceName];
  v8 = [v3 stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d IsInBubble=%d>", v5, self, identifier, deviceName, -[MSDKPeerDemoDevice pairingMode](self, "pairingMode"), -[MSDKPeerDemoDevice authenticated](self, "authenticated"), -[MSDKPeerDemoDevice isInBubble](self, "isInBubble")];

  return v8;
}

- (id)debugDescription
{
  ipAddresses = [(MSDKPeerDemoDevice *)self ipAddresses];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = @"nil";
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    ipAddresses2 = [(MSDKPeerDemoDevice *)self ipAddresses];
    v6 = [ipAddresses2 componentsJoinedByString:@" "];
    v34 = [v4 stringWithFormat:@"[ %@ ]", v6];
  }

  v33 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v32 = NSStringFromClass(v7);
  identifier = [(MSDKPeerDemoDevice *)self identifier];
  deviceName = [(MSDKPeerDemoDevice *)self deviceName];
  pairingMode = [(MSDKPeerDemoDevice *)self pairingMode];
  authenticated = [(MSDKPeerDemoDevice *)self authenticated];
  isInBubble = [(MSDKPeerDemoDevice *)self isInBubble];
  productType = [(MSDKPeerDemoDevice *)self productType];
  serialNumber = [(MSDKPeerDemoDevice *)self serialNumber];
  osVersion = [(MSDKPeerDemoDevice *)self osVersion];
  batteryCapacity = [(MSDKPeerDemoDevice *)self batteryCapacity];
  batteryCharging = [(MSDKPeerDemoDevice *)self batteryCharging];
  externalPowerSourceConnected = [(MSDKPeerDemoDevice *)self externalPowerSourceConnected];
  wifiNetworkName = [(MSDKPeerDemoDevice *)self wifiNetworkName];
  wifiSignalStrength = [(MSDKPeerDemoDevice *)self wifiSignalStrength];
  iCloudAccountName = [(MSDKPeerDemoDevice *)self iCloudAccountName];
  activeEnvironment = [(MSDKPeerDemoDevice *)self activeEnvironment];
  [(MSDKPeerDemoDevice *)self mainVolume];
  v13 = v12;
  [(MSDKPeerDemoDevice *)self environmentVolume];
  v15 = v14;
  [(MSDKPeerDemoDevice *)self phoneCallVolume];
  v17 = v16;
  [(MSDKPeerDemoDevice *)self audioVideoVolume];
  v19 = [v33 stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d IsInBubble=%d ProductType=%@ SerialNumber=%@ OSVersion=%@ BatteryCapacity=%lu BatteryCharging=%d ExternalPowerSourceConnected=%d WiFiNetworkName=%@ WiFiSignalStrength=%ld iCloudAccountName=%@ ActiveEnvironment=%@ MainVolume=%f EnvironmentVolume=%f PhoneCallVolume=%f AudioVideoVolume=%f ContentFrozen=%d AirPlayAssistedReady=%d ThermalMitigationNeeded=%d BuddyInProgress=%d IpAddresses=%@ ProtocolVersion=%lu>", v32, self, identifier, deviceName, pairingMode, authenticated, isInBubble, productType, serialNumber, osVersion, batteryCapacity, batteryCharging, externalPowerSourceConnected, wifiNetworkName, wifiSignalStrength, iCloudAccountName, activeEnvironment, *&v13, *&v15, *&v17, v18, -[MSDKPeerDemoDevice contentFrozen](self, "contentFrozen"), -[MSDKPeerDemoDevice airPlayAssistedReady](self, "airPlayAssistedReady"), -[MSDKPeerDemoDevice thermalMitigationNeeded](self, "thermalMitigationNeeded"), -[MSDKPeerDemoDevice buddyInProgress](self, "buddyInProgress"), v34, -[MSDKPeerDemoDevice protocolVersion](self, "protocolVersion")];

  return v19;
}

- (MSDKPeerDemoDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = MSDKPeerDemoDevice;
  v5 = [(MSDKPeerDemoDevice *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoDevice *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(MSDKPeerDemoDevice *)v5 setDeviceName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingMode"];
    -[MSDKPeerDemoDevice setPairingMode:](v5, "setPairingMode:", [v8 BOOLValue]);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticated"];
    -[MSDKPeerDemoDevice setAuthenticated:](v5, "setAuthenticated:", [v9 BOOLValue]);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInBubble"];
    -[MSDKPeerDemoDevice setIsInBubble:](v5, "setIsInBubble:", [v10 BOOLValue]);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    [(MSDKPeerDemoDevice *)v5 setProductType:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(MSDKPeerDemoDevice *)v5 setSerialNumber:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(MSDKPeerDemoDevice *)v5 setOsVersion:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryCapacity"];
    -[MSDKPeerDemoDevice setBatteryCapacity:](v5, "setBatteryCapacity:", [v14 integerValue]);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wifiNetworkName"];
    [(MSDKPeerDemoDevice *)v5 setWifiNetworkName:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wifiSignalStrength"];
    -[MSDKPeerDemoDevice setWifiSignalStrength:](v5, "setWifiSignalStrength:", [v16 integerValue]);

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iCloudAccountName"];
    [(MSDKPeerDemoDevice *)v5 setICloudAccountName:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeEnvironment"];
    [(MSDKPeerDemoDevice *)v5 setActiveEnvironment:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainVolume"];
    [v19 floatValue];
    [(MSDKPeerDemoDevice *)v5 setMainVolume:?];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environmentVolume"];
    [v20 floatValue];
    [(MSDKPeerDemoDevice *)v5 setEnvironmentVolume:?];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneCallVolume"];
    [v21 floatValue];
    [(MSDKPeerDemoDevice *)v5 setPhoneCallVolume:?];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioVideoVolume"];
    [v22 floatValue];
    [(MSDKPeerDemoDevice *)v5 setAudioVideoVolume:?];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentFrozen"];
    -[MSDKPeerDemoDevice setContentFrozen:](v5, "setContentFrozen:", [v23 BOOLValue]);

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"airPlayAssistedReady"];
    -[MSDKPeerDemoDevice setAirPlayAssistedReady:](v5, "setAirPlayAssistedReady:", [v24 BOOLValue]);

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thermalMitigationNeeded"];
    -[MSDKPeerDemoDevice setThermalMitigationNeeded:](v5, "setThermalMitigationNeeded:", [v25 BOOLValue]);

    if ([coderCopy containsValueForKey:@"buddyInProgress"])
    {
      v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buddyInProgress"];
      -[MSDKPeerDemoDevice setBuddyInProgress:](v5, "setBuddyInProgress:", [v26 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setBuddyInProgress:0];
    }

    if ([coderCopy containsValueForKey:@"ipAddresses"])
    {
      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"ipAddresses"];
      [(MSDKPeerDemoDevice *)v5 setIpAddresses:v30];
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setIpAddresses:0];
    }

    if ([coderCopy containsValueForKey:@"batteryCharging"])
    {
      v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryCharging"];
      -[MSDKPeerDemoDevice setBatteryCharging:](v5, "setBatteryCharging:", [v31 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setBatteryCharging:0];
    }

    if ([coderCopy containsValueForKey:@"externalPowerSourceConnected"])
    {
      v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalPowerSourceConnected"];
      -[MSDKPeerDemoDevice setExternalPowerSourceConnected:](v5, "setExternalPowerSourceConnected:", [v32 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setExternalPowerSourceConnected:0];
    }

    if ([coderCopy containsValueForKey:@"protocolVersion"])
    {
      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
      -[MSDKPeerDemoDevice setProtocolVersion:](v5, "setProtocolVersion:", [v33 unsignedIntegerValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setProtocolVersion:0];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MSDKPeerDemoDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  deviceName = [(MSDKPeerDemoDevice *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice pairingMode](self, "pairingMode")}];
  [coderCopy encodeObject:v7 forKey:@"pairingMode"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice authenticated](self, "authenticated")}];
  [coderCopy encodeObject:v8 forKey:@"authenticated"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice isInBubble](self, "isInBubble")}];
  [coderCopy encodeObject:v9 forKey:@"isInBubble"];

  productType = [(MSDKPeerDemoDevice *)self productType];
  [coderCopy encodeObject:productType forKey:@"productType"];

  serialNumber = [(MSDKPeerDemoDevice *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  osVersion = [(MSDKPeerDemoDevice *)self osVersion];
  [coderCopy encodeObject:osVersion forKey:@"osVersion"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSDKPeerDemoDevice batteryCapacity](self, "batteryCapacity")}];
  [coderCopy encodeObject:v13 forKey:@"batteryCapacity"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice batteryCharging](self, "batteryCharging")}];
  [coderCopy encodeObject:v14 forKey:@"batteryCharging"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice externalPowerSourceConnected](self, "externalPowerSourceConnected")}];
  [coderCopy encodeObject:v15 forKey:@"externalPowerSourceConnected"];

  wifiNetworkName = [(MSDKPeerDemoDevice *)self wifiNetworkName];
  [coderCopy encodeObject:wifiNetworkName forKey:@"wifiNetworkName"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSDKPeerDemoDevice wifiSignalStrength](self, "wifiSignalStrength")}];
  [coderCopy encodeObject:v17 forKey:@"wifiSignalStrength"];

  iCloudAccountName = [(MSDKPeerDemoDevice *)self iCloudAccountName];
  [coderCopy encodeObject:iCloudAccountName forKey:@"iCloudAccountName"];

  activeEnvironment = [(MSDKPeerDemoDevice *)self activeEnvironment];
  [coderCopy encodeObject:activeEnvironment forKey:@"activeEnvironment"];

  v20 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self mainVolume];
  v21 = [v20 numberWithFloat:?];
  [coderCopy encodeObject:v21 forKey:@"mainVolume"];

  v22 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self environmentVolume];
  v23 = [v22 numberWithFloat:?];
  [coderCopy encodeObject:v23 forKey:@"environmentVolume"];

  v24 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self phoneCallVolume];
  v25 = [v24 numberWithFloat:?];
  [coderCopy encodeObject:v25 forKey:@"phoneCallVolume"];

  v26 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self audioVideoVolume];
  v27 = [v26 numberWithFloat:?];
  [coderCopy encodeObject:v27 forKey:@"audioVideoVolume"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice contentFrozen](self, "contentFrozen")}];
  [coderCopy encodeObject:v28 forKey:@"contentFrozen"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice airPlayAssistedReady](self, "airPlayAssistedReady")}];
  [coderCopy encodeObject:v29 forKey:@"airPlayAssistedReady"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice thermalMitigationNeeded](self, "thermalMitigationNeeded")}];
  [coderCopy encodeObject:v30 forKey:@"thermalMitigationNeeded"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice buddyInProgress](self, "buddyInProgress")}];
  [coderCopy encodeObject:v31 forKey:@"buddyInProgress"];

  ipAddresses = [(MSDKPeerDemoDevice *)self ipAddresses];
  [coderCopy encodeObject:ipAddresses forKey:@"ipAddresses"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoDevice protocolVersion](self, "protocolVersion")}];
  [coderCopy encodeObject:v33 forKey:@"protocolVersion"];
}

- (void)valueForUndefinedKey:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%{public}@: Encountered undefined key: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end