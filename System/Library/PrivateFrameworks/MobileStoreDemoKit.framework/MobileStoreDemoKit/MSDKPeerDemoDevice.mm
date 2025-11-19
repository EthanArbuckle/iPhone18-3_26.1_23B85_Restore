@interface MSDKPeerDemoDevice
- (BOOL)isEqual:(id)a3;
- (MSDKPeerDemoDevice)initWithCoder:(id)a3;
- (MSDKPeerDemoDevice)initWithDeviceProperties:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)refreshDevicePropertiesUsingProperties:(id)a3;
@end

@implementation MSDKPeerDemoDevice

- (MSDKPeerDemoDevice)initWithDeviceProperties:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSDKPeerDemoDevice;
  v5 = [(MSDKPeerDemoDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSDKPeerDemoDevice *)v5 refreshDevicePropertiesUsingProperties:v4];
  }

  return v6;
}

- (void)refreshDevicePropertiesUsingProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v13 = [MEMORY[0x277CBEB68] null];

        if (v12 == v13)
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

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(MSDKPeerDemoDevice *)self valueForUndefinedKey:v4, v5];
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(MSDKPeerDemoDevice *)self identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MSDKPeerDemoDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoDevice *)self identifier];
  v7 = [(MSDKPeerDemoDevice *)self deviceName];
  v8 = [v3 stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d IsInBubble=%d>", v5, self, v6, v7, -[MSDKPeerDemoDevice pairingMode](self, "pairingMode"), -[MSDKPeerDemoDevice authenticated](self, "authenticated"), -[MSDKPeerDemoDevice isInBubble](self, "isInBubble")];

  return v8;
}

- (id)debugDescription
{
  v3 = [(MSDKPeerDemoDevice *)self ipAddresses];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = @"nil";
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(MSDKPeerDemoDevice *)self ipAddresses];
    v6 = [v5 componentsJoinedByString:@" "];
    v34 = [v4 stringWithFormat:@"[ %@ ]", v6];
  }

  v33 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v32 = NSStringFromClass(v7);
  v31 = [(MSDKPeerDemoDevice *)self identifier];
  v30 = [(MSDKPeerDemoDevice *)self deviceName];
  v29 = [(MSDKPeerDemoDevice *)self pairingMode];
  v28 = [(MSDKPeerDemoDevice *)self authenticated];
  v27 = [(MSDKPeerDemoDevice *)self isInBubble];
  v26 = [(MSDKPeerDemoDevice *)self productType];
  v25 = [(MSDKPeerDemoDevice *)self serialNumber];
  v24 = [(MSDKPeerDemoDevice *)self osVersion];
  v23 = [(MSDKPeerDemoDevice *)self batteryCapacity];
  v22 = [(MSDKPeerDemoDevice *)self batteryCharging];
  v21 = [(MSDKPeerDemoDevice *)self externalPowerSourceConnected];
  v8 = [(MSDKPeerDemoDevice *)self wifiNetworkName];
  v9 = [(MSDKPeerDemoDevice *)self wifiSignalStrength];
  v10 = [(MSDKPeerDemoDevice *)self iCloudAccountName];
  v11 = [(MSDKPeerDemoDevice *)self activeEnvironment];
  [(MSDKPeerDemoDevice *)self mainVolume];
  v13 = v12;
  [(MSDKPeerDemoDevice *)self environmentVolume];
  v15 = v14;
  [(MSDKPeerDemoDevice *)self phoneCallVolume];
  v17 = v16;
  [(MSDKPeerDemoDevice *)self audioVideoVolume];
  v19 = [v33 stringWithFormat:@"<%@[%p]: Identifier=%@ DeviceName=%@ PairingMode=%d Authenticated=%d IsInBubble=%d ProductType=%@ SerialNumber=%@ OSVersion=%@ BatteryCapacity=%lu BatteryCharging=%d ExternalPowerSourceConnected=%d WiFiNetworkName=%@ WiFiSignalStrength=%ld iCloudAccountName=%@ ActiveEnvironment=%@ MainVolume=%f EnvironmentVolume=%f PhoneCallVolume=%f AudioVideoVolume=%f ContentFrozen=%d AirPlayAssistedReady=%d ThermalMitigationNeeded=%d BuddyInProgress=%d IpAddresses=%@ ProtocolVersion=%lu>", v32, self, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v8, v9, v10, v11, *&v13, *&v15, *&v17, v18, -[MSDKPeerDemoDevice contentFrozen](self, "contentFrozen"), -[MSDKPeerDemoDevice airPlayAssistedReady](self, "airPlayAssistedReady"), -[MSDKPeerDemoDevice thermalMitigationNeeded](self, "thermalMitigationNeeded"), -[MSDKPeerDemoDevice buddyInProgress](self, "buddyInProgress"), v34, -[MSDKPeerDemoDevice protocolVersion](self, "protocolVersion")];

  return v19;
}

- (MSDKPeerDemoDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = MSDKPeerDemoDevice;
  v5 = [(MSDKPeerDemoDevice *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoDevice *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(MSDKPeerDemoDevice *)v5 setDeviceName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingMode"];
    -[MSDKPeerDemoDevice setPairingMode:](v5, "setPairingMode:", [v8 BOOLValue]);

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticated"];
    -[MSDKPeerDemoDevice setAuthenticated:](v5, "setAuthenticated:", [v9 BOOLValue]);

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInBubble"];
    -[MSDKPeerDemoDevice setIsInBubble:](v5, "setIsInBubble:", [v10 BOOLValue]);

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    [(MSDKPeerDemoDevice *)v5 setProductType:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(MSDKPeerDemoDevice *)v5 setSerialNumber:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    [(MSDKPeerDemoDevice *)v5 setOsVersion:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryCapacity"];
    -[MSDKPeerDemoDevice setBatteryCapacity:](v5, "setBatteryCapacity:", [v14 integerValue]);

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wifiNetworkName"];
    [(MSDKPeerDemoDevice *)v5 setWifiNetworkName:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wifiSignalStrength"];
    -[MSDKPeerDemoDevice setWifiSignalStrength:](v5, "setWifiSignalStrength:", [v16 integerValue]);

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iCloudAccountName"];
    [(MSDKPeerDemoDevice *)v5 setICloudAccountName:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeEnvironment"];
    [(MSDKPeerDemoDevice *)v5 setActiveEnvironment:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainVolume"];
    [v19 floatValue];
    [(MSDKPeerDemoDevice *)v5 setMainVolume:?];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environmentVolume"];
    [v20 floatValue];
    [(MSDKPeerDemoDevice *)v5 setEnvironmentVolume:?];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneCallVolume"];
    [v21 floatValue];
    [(MSDKPeerDemoDevice *)v5 setPhoneCallVolume:?];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioVideoVolume"];
    [v22 floatValue];
    [(MSDKPeerDemoDevice *)v5 setAudioVideoVolume:?];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentFrozen"];
    -[MSDKPeerDemoDevice setContentFrozen:](v5, "setContentFrozen:", [v23 BOOLValue]);

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"airPlayAssistedReady"];
    -[MSDKPeerDemoDevice setAirPlayAssistedReady:](v5, "setAirPlayAssistedReady:", [v24 BOOLValue]);

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thermalMitigationNeeded"];
    -[MSDKPeerDemoDevice setThermalMitigationNeeded:](v5, "setThermalMitigationNeeded:", [v25 BOOLValue]);

    if ([v4 containsValueForKey:@"buddyInProgress"])
    {
      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buddyInProgress"];
      -[MSDKPeerDemoDevice setBuddyInProgress:](v5, "setBuddyInProgress:", [v26 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setBuddyInProgress:0];
    }

    if ([v4 containsValueForKey:@"ipAddresses"])
    {
      v27 = MEMORY[0x277CBEB98];
      v28 = objc_opt_class();
      v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
      v30 = [v4 decodeObjectOfClasses:v29 forKey:@"ipAddresses"];
      [(MSDKPeerDemoDevice *)v5 setIpAddresses:v30];
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setIpAddresses:0];
    }

    if ([v4 containsValueForKey:@"batteryCharging"])
    {
      v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batteryCharging"];
      -[MSDKPeerDemoDevice setBatteryCharging:](v5, "setBatteryCharging:", [v31 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setBatteryCharging:0];
    }

    if ([v4 containsValueForKey:@"externalPowerSourceConnected"])
    {
      v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalPowerSourceConnected"];
      -[MSDKPeerDemoDevice setExternalPowerSourceConnected:](v5, "setExternalPowerSourceConnected:", [v32 BOOLValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setExternalPowerSourceConnected:0];
    }

    if ([v4 containsValueForKey:@"protocolVersion"])
    {
      v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocolVersion"];
      -[MSDKPeerDemoDevice setProtocolVersion:](v5, "setProtocolVersion:", [v33 unsignedIntegerValue]);
    }

    else
    {
      [(MSDKPeerDemoDevice *)v5 setProtocolVersion:0];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoDevice *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(MSDKPeerDemoDevice *)self deviceName];
  [v4 encodeObject:v6 forKey:@"deviceName"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice pairingMode](self, "pairingMode")}];
  [v4 encodeObject:v7 forKey:@"pairingMode"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice authenticated](self, "authenticated")}];
  [v4 encodeObject:v8 forKey:@"authenticated"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice isInBubble](self, "isInBubble")}];
  [v4 encodeObject:v9 forKey:@"isInBubble"];

  v10 = [(MSDKPeerDemoDevice *)self productType];
  [v4 encodeObject:v10 forKey:@"productType"];

  v11 = [(MSDKPeerDemoDevice *)self serialNumber];
  [v4 encodeObject:v11 forKey:@"serialNumber"];

  v12 = [(MSDKPeerDemoDevice *)self osVersion];
  [v4 encodeObject:v12 forKey:@"osVersion"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSDKPeerDemoDevice batteryCapacity](self, "batteryCapacity")}];
  [v4 encodeObject:v13 forKey:@"batteryCapacity"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice batteryCharging](self, "batteryCharging")}];
  [v4 encodeObject:v14 forKey:@"batteryCharging"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice externalPowerSourceConnected](self, "externalPowerSourceConnected")}];
  [v4 encodeObject:v15 forKey:@"externalPowerSourceConnected"];

  v16 = [(MSDKPeerDemoDevice *)self wifiNetworkName];
  [v4 encodeObject:v16 forKey:@"wifiNetworkName"];

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[MSDKPeerDemoDevice wifiSignalStrength](self, "wifiSignalStrength")}];
  [v4 encodeObject:v17 forKey:@"wifiSignalStrength"];

  v18 = [(MSDKPeerDemoDevice *)self iCloudAccountName];
  [v4 encodeObject:v18 forKey:@"iCloudAccountName"];

  v19 = [(MSDKPeerDemoDevice *)self activeEnvironment];
  [v4 encodeObject:v19 forKey:@"activeEnvironment"];

  v20 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self mainVolume];
  v21 = [v20 numberWithFloat:?];
  [v4 encodeObject:v21 forKey:@"mainVolume"];

  v22 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self environmentVolume];
  v23 = [v22 numberWithFloat:?];
  [v4 encodeObject:v23 forKey:@"environmentVolume"];

  v24 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self phoneCallVolume];
  v25 = [v24 numberWithFloat:?];
  [v4 encodeObject:v25 forKey:@"phoneCallVolume"];

  v26 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoDevice *)self audioVideoVolume];
  v27 = [v26 numberWithFloat:?];
  [v4 encodeObject:v27 forKey:@"audioVideoVolume"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice contentFrozen](self, "contentFrozen")}];
  [v4 encodeObject:v28 forKey:@"contentFrozen"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice airPlayAssistedReady](self, "airPlayAssistedReady")}];
  [v4 encodeObject:v29 forKey:@"airPlayAssistedReady"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice thermalMitigationNeeded](self, "thermalMitigationNeeded")}];
  [v4 encodeObject:v30 forKey:@"thermalMitigationNeeded"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[MSDKPeerDemoDevice buddyInProgress](self, "buddyInProgress")}];
  [v4 encodeObject:v31 forKey:@"buddyInProgress"];

  v32 = [(MSDKPeerDemoDevice *)self ipAddresses];
  [v4 encodeObject:v32 forKey:@"ipAddresses"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSDKPeerDemoDevice protocolVersion](self, "protocolVersion")}];
  [v4 encodeObject:v33 forKey:@"protocolVersion"];
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