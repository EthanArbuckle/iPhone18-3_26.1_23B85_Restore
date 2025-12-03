@interface CARSessionRequestHost
- (CARSessionRequestHost)initWithCoder:(id)coder;
- (CARSessionRequestHost)initWithDisplayName:(id)name wiredIPv6Addresses:(id)addresses wirelessIPv6Addresses:(id)pv6Addresses port:(int64_t)port carplayWiFiUUID:(id)d deviceIdentifier:(id)identifier publicKey:(id)key sourceVersion:(id)self0 supportsMutualAuthentication:(BOOL)self1 authenticationCertificateSerial:(id)self2 pairedVehicleIdentifier:(id)self3 wiredCarPlaySimulator:(BOOL)self4 remoteDeviceConnected:(BOOL)self5;
- (CARSessionRequestHost)initWithHostProperties:(id)properties;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CARSessionRequestHost

- (CARSessionRequestHost)initWithDisplayName:(id)name wiredIPv6Addresses:(id)addresses wirelessIPv6Addresses:(id)pv6Addresses port:(int64_t)port carplayWiFiUUID:(id)d deviceIdentifier:(id)identifier publicKey:(id)key sourceVersion:(id)self0 supportsMutualAuthentication:(BOOL)self1 authenticationCertificateSerial:(id)self2 pairedVehicleIdentifier:(id)self3 wiredCarPlaySimulator:(BOOL)self4 remoteDeviceConnected:(BOOL)self5
{
  nameCopy = name;
  addressesCopy = addresses;
  pv6AddressesCopy = pv6Addresses;
  dCopy = d;
  dCopy2 = d;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  keyCopy = key;
  versionCopy = version;
  serialCopy = serial;
  vehicleIdentifierCopy = vehicleIdentifier;
  v36.receiver = self;
  v36.super_class = CARSessionRequestHost;
  v25 = [(CARSessionRequestHost *)&v36 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_displayName, name);
    objc_storeStrong(&v26->_wiredIPv6Addresses, addresses);
    objc_storeStrong(&v26->_wirelessIPv6Addresses, pv6Addresses);
    v26->_port = port;
    objc_storeStrong(&v26->_carplayWiFiUUID, dCopy);
    objc_storeStrong(&v26->_deviceIdentifier, identifierCopy);
    objc_storeStrong(&v26->_publicKey, key);
    objc_storeStrong(&v26->_sourceVersion, version);
    v26->_supportsMutualAuthentication = authentication;
    objc_storeStrong(&v26->_authenticationCertificateSerial, serial);
    objc_storeStrong(&v26->_pairedVehicleIdentifier, vehicleIdentifier);
    v26->_wiredCarPlaySimulator = simulator;
    v26->_remoteDeviceConnected = connected;
  }

  return v26;
}

- (CARSessionRequestHost)initWithHostProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:@"displayName"];
  v5 = CARVerifyString(v4);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = CRLocalizedStringForKey(@"CARPLAY");
  }

  v41 = v7;

  v8 = [propertiesCopy objectForKeyedSubscript:@"wiredIPAddresses"];
  v38 = CARVerifyStringArray(v8);

  v9 = [propertiesCopy objectForKeyedSubscript:@"wirelessIPAddresses"];
  v37 = CARVerifyStringArray(v9);

  v10 = [propertiesCopy objectForKeyedSubscript:@"port"];
  objc_opt_class();
  v11 = CARVerifyClass(v10);

  v36 = v11;
  integerValue = [v11 integerValue];
  v13 = [propertiesCopy objectForKeyedSubscript:@"carplayWiFiUUID"];
  v34 = v13;
  if (v13)
  {
    v35 = CARVerifyString(v13);
  }

  else
  {
    v35 = 0;
  }

  v14 = [propertiesCopy objectForKeyedSubscript:@"deviceID"];
  v33 = CARVerifyString(v14);

  v15 = [propertiesCopy objectForKeyedSubscript:@"publicKey"];
  v16 = CARVerifyString(v15);

  v17 = [propertiesCopy objectForKeyedSubscript:@"sourceVersion"];
  v18 = CARVerifyString(v17);

  v19 = [propertiesCopy objectForKeyedSubscript:@"supportsMutualAuth"];
  v20 = CARVerifyBool(v19);

  v21 = [propertiesCopy objectForKeyedSubscript:@"authenticationCertificateSerial"];
  objc_opt_class();
  v22 = CARVerifyClass(v21);

  v23 = [propertiesCopy objectForKeyedSubscript:@"pairedVehicleIdentifier"];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    v25 = CARVerifyClass(v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = [propertiesCopy objectForKeyedSubscript:@"wiredCarPlaySimulator"];
  v27 = CARVerifyBool(v26);

  v28 = [propertiesCopy objectForKeyedSubscript:@"remoteDeviceConnected"];
  v29 = CARVerifyBool(v28);

  BYTE1(v32) = v29;
  LOBYTE(v32) = v27;
  LOBYTE(v31) = v20;
  v40 = [(CARSessionRequestHost *)self initWithDisplayName:v41 wiredIPv6Addresses:v38 wirelessIPv6Addresses:v37 port:integerValue carplayWiFiUUID:v35 deviceIdentifier:v33 publicKey:v16 sourceVersion:v18 supportsMutualAuthentication:v31 authenticationCertificateSerial:v22 pairedVehicleIdentifier:v25 wiredCarPlaySimulator:v32 remoteDeviceConnected:?];

  return v40;
}

- (CARSessionRequestHost)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = CARSessionRequestHost;
  v5 = [(CARSessionRequestHost *)&v36 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"displayName"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &stru_1F47DECC0;
      }

      objc_storeStrong(&v5->_displayName, v8);
    }

    if ([coderCopy containsValueForKey:@"wiredIPAddresses"])
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"wiredIPAddresses"];
      wiredIPv6Addresses = v5->_wiredIPv6Addresses;
      v5->_wiredIPv6Addresses = v12;
    }

    if ([coderCopy containsValueForKey:@"wirelessIPAddresses"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"wirelessIPAddresses"];
      wirelessIPv6Addresses = v5->_wirelessIPv6Addresses;
      v5->_wirelessIPv6Addresses = v17;
    }

    if ([coderCopy containsValueForKey:@"port"])
    {
      v5->_port = [coderCopy decodeIntegerForKey:@"port"];
    }

    if ([coderCopy containsValueForKey:@"carplayWiFiUUID"])
    {
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carplayWiFiUUID"];
      carplayWiFiUUID = v5->_carplayWiFiUUID;
      v5->_carplayWiFiUUID = v19;
    }

    if ([coderCopy containsValueForKey:@"deviceID"])
    {
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
      deviceIdentifier = v5->_deviceIdentifier;
      v5->_deviceIdentifier = v21;
    }

    if ([coderCopy containsValueForKey:@"publicKey"])
    {
      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
      publicKey = v5->_publicKey;
      v5->_publicKey = v23;
    }

    if ([coderCopy containsValueForKey:@"sourceVersion"])
    {
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceVersion"];
      sourceVersion = v5->_sourceVersion;
      v5->_sourceVersion = v25;
    }

    if ([coderCopy containsValueForKey:@"supportsMutualAuth"])
    {
      v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsMutualAuth"];
      v28 = v27;
      if (v27)
      {
        v5->_supportsMutualAuthentication = [v27 BOOLValue];
      }
    }

    if ([coderCopy containsValueForKey:@"authenticationCertificateSerial"])
    {
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationCertificateSerial"];
      if (v29)
      {
        objc_storeStrong(&v5->_authenticationCertificateSerial, v29);
      }
    }

    if ([coderCopy containsValueForKey:@"pairedVehicleIdentifier"])
    {
      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairedVehicleIdentifier"];
      if (v30)
      {
        objc_storeStrong(&v5->_pairedVehicleIdentifier, v30);
      }
    }

    if ([coderCopy containsValueForKey:@"wiredCarPlaySimulator"])
    {
      v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wiredCarPlaySimulator"];
      v32 = v31;
      if (v31)
      {
        v5->_wiredCarPlaySimulator = [v31 BOOLValue];
      }
    }

    if ([coderCopy containsValueForKey:@"remoteDeviceConnected"])
    {
      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceConnected"];
      v34 = v33;
      if (v33)
      {
        v5->_remoteDeviceConnected = [v33 BOOLValue];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(CARSessionRequestHost *)self displayName];

  if (displayName)
  {
    displayName2 = [(CARSessionRequestHost *)self displayName];
    [coderCopy encodeObject:displayName2 forKey:@"displayName"];
  }

  wiredIPv6Addresses = [(CARSessionRequestHost *)self wiredIPv6Addresses];

  if (wiredIPv6Addresses)
  {
    wiredIPv6Addresses2 = [(CARSessionRequestHost *)self wiredIPv6Addresses];
    [coderCopy encodeObject:wiredIPv6Addresses2 forKey:@"wiredIPAddresses"];
  }

  wirelessIPv6Addresses = [(CARSessionRequestHost *)self wirelessIPv6Addresses];

  if (wirelessIPv6Addresses)
  {
    wirelessIPv6Addresses2 = [(CARSessionRequestHost *)self wirelessIPv6Addresses];
    [coderCopy encodeObject:wirelessIPv6Addresses2 forKey:@"wirelessIPAddresses"];
  }

  [coderCopy encodeInteger:-[CARSessionRequestHost port](self forKey:{"port"), @"port"}];
  carplayWiFiUUID = [(CARSessionRequestHost *)self carplayWiFiUUID];

  if (carplayWiFiUUID)
  {
    carplayWiFiUUID2 = [(CARSessionRequestHost *)self carplayWiFiUUID];
    [coderCopy encodeObject:carplayWiFiUUID2 forKey:@"carplayWiFiUUID"];
  }

  deviceIdentifier = [(CARSessionRequestHost *)self deviceIdentifier];

  if (deviceIdentifier)
  {
    deviceIdentifier2 = [(CARSessionRequestHost *)self deviceIdentifier];
    [coderCopy encodeObject:deviceIdentifier2 forKey:@"deviceID"];
  }

  publicKey = [(CARSessionRequestHost *)self publicKey];

  if (publicKey)
  {
    publicKey2 = [(CARSessionRequestHost *)self publicKey];
    [coderCopy encodeObject:publicKey2 forKey:@"publicKey"];
  }

  sourceVersion = [(CARSessionRequestHost *)self sourceVersion];

  if (sourceVersion)
  {
    sourceVersion2 = [(CARSessionRequestHost *)self sourceVersion];
    [coderCopy encodeObject:sourceVersion2 forKey:@"sourceVersion"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost supportsMutualAuthentication](self, "supportsMutualAuthentication")}];
  [coderCopy encodeObject:v18 forKey:@"supportsMutualAuth"];

  authenticationCertificateSerial = [(CARSessionRequestHost *)self authenticationCertificateSerial];

  if (authenticationCertificateSerial)
  {
    authenticationCertificateSerial2 = [(CARSessionRequestHost *)self authenticationCertificateSerial];
    [coderCopy encodeObject:authenticationCertificateSerial2 forKey:@"authenticationCertificateSerial"];
  }

  pairedVehicleIdentifier = [(CARSessionRequestHost *)self pairedVehicleIdentifier];

  if (pairedVehicleIdentifier)
  {
    pairedVehicleIdentifier2 = [(CARSessionRequestHost *)self pairedVehicleIdentifier];
    [coderCopy encodeObject:pairedVehicleIdentifier2 forKey:@"pairedVehicleIdentifier"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost isWiredCarPlaySimulator](self, "isWiredCarPlaySimulator")}];
  [coderCopy encodeObject:v23 forKey:@"wiredCarPlaySimulator"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost isRemoteDeviceConnected](self, "isRemoteDeviceConnected")}];
  [coderCopy encodeObject:v24 forKey:@"remoteDeviceConnected"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = CARSessionRequestHost;
  v4 = [(CARSessionRequestHost *)&v13 description];
  displayName = [(CARSessionRequestHost *)self displayName];
  wiredIPv6Addresses = [(CARSessionRequestHost *)self wiredIPv6Addresses];
  wirelessIPv6Addresses = [(CARSessionRequestHost *)self wirelessIPv6Addresses];
  port = [(CARSessionRequestHost *)self port];
  supportsMutualAuthentication = [(CARSessionRequestHost *)self supportsMutualAuthentication];
  v10 = @"NO";
  if (supportsMutualAuthentication)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@ [name: %@, wired IPs: %@, wireless IPs: %@, port: %ld, supportsMutualAuth: %@]", v4, displayName, wiredIPv6Addresses, wirelessIPv6Addresses, port, v10];

  return v11;
}

@end