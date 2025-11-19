@interface CARSessionRequestHost
- (CARSessionRequestHost)initWithCoder:(id)a3;
- (CARSessionRequestHost)initWithDisplayName:(id)a3 wiredIPv6Addresses:(id)a4 wirelessIPv6Addresses:(id)a5 port:(int64_t)a6 carplayWiFiUUID:(id)a7 deviceIdentifier:(id)a8 publicKey:(id)a9 sourceVersion:(id)a10 supportsMutualAuthentication:(BOOL)a11 authenticationCertificateSerial:(id)a12 pairedVehicleIdentifier:(id)a13 wiredCarPlaySimulator:(BOOL)a14 remoteDeviceConnected:(BOOL)a15;
- (CARSessionRequestHost)initWithHostProperties:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CARSessionRequestHost

- (CARSessionRequestHost)initWithDisplayName:(id)a3 wiredIPv6Addresses:(id)a4 wirelessIPv6Addresses:(id)a5 port:(int64_t)a6 carplayWiFiUUID:(id)a7 deviceIdentifier:(id)a8 publicKey:(id)a9 sourceVersion:(id)a10 supportsMutualAuthentication:(BOOL)a11 authenticationCertificateSerial:(id)a12 pairedVehicleIdentifier:(id)a13 wiredCarPlaySimulator:(BOOL)a14 remoteDeviceConnected:(BOOL)a15
{
  v35 = a3;
  v34 = a4;
  v33 = a5;
  v29 = a7;
  v32 = a7;
  v30 = a8;
  v31 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a12;
  v24 = a13;
  v36.receiver = self;
  v36.super_class = CARSessionRequestHost;
  v25 = [(CARSessionRequestHost *)&v36 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_displayName, a3);
    objc_storeStrong(&v26->_wiredIPv6Addresses, a4);
    objc_storeStrong(&v26->_wirelessIPv6Addresses, a5);
    v26->_port = a6;
    objc_storeStrong(&v26->_carplayWiFiUUID, v29);
    objc_storeStrong(&v26->_deviceIdentifier, v30);
    objc_storeStrong(&v26->_publicKey, a9);
    objc_storeStrong(&v26->_sourceVersion, a10);
    v26->_supportsMutualAuthentication = a11;
    objc_storeStrong(&v26->_authenticationCertificateSerial, a12);
    objc_storeStrong(&v26->_pairedVehicleIdentifier, a13);
    v26->_wiredCarPlaySimulator = a14;
    v26->_remoteDeviceConnected = a15;
  }

  return v26;
}

- (CARSessionRequestHost)initWithHostProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"displayName"];
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

  v8 = [v3 objectForKeyedSubscript:@"wiredIPAddresses"];
  v38 = CARVerifyStringArray(v8);

  v9 = [v3 objectForKeyedSubscript:@"wirelessIPAddresses"];
  v37 = CARVerifyStringArray(v9);

  v10 = [v3 objectForKeyedSubscript:@"port"];
  objc_opt_class();
  v11 = CARVerifyClass(v10);

  v36 = v11;
  v12 = [v11 integerValue];
  v13 = [v3 objectForKeyedSubscript:@"carplayWiFiUUID"];
  v34 = v13;
  if (v13)
  {
    v35 = CARVerifyString(v13);
  }

  else
  {
    v35 = 0;
  }

  v14 = [v3 objectForKeyedSubscript:@"deviceID"];
  v33 = CARVerifyString(v14);

  v15 = [v3 objectForKeyedSubscript:@"publicKey"];
  v16 = CARVerifyString(v15);

  v17 = [v3 objectForKeyedSubscript:@"sourceVersion"];
  v18 = CARVerifyString(v17);

  v19 = [v3 objectForKeyedSubscript:@"supportsMutualAuth"];
  v20 = CARVerifyBool(v19);

  v21 = [v3 objectForKeyedSubscript:@"authenticationCertificateSerial"];
  objc_opt_class();
  v22 = CARVerifyClass(v21);

  v23 = [v3 objectForKeyedSubscript:@"pairedVehicleIdentifier"];
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

  v26 = [v3 objectForKeyedSubscript:@"wiredCarPlaySimulator"];
  v27 = CARVerifyBool(v26);

  v28 = [v3 objectForKeyedSubscript:@"remoteDeviceConnected"];
  v29 = CARVerifyBool(v28);

  BYTE1(v32) = v29;
  LOBYTE(v32) = v27;
  LOBYTE(v31) = v20;
  v40 = [(CARSessionRequestHost *)self initWithDisplayName:v41 wiredIPv6Addresses:v38 wirelessIPv6Addresses:v37 port:v12 carplayWiFiUUID:v35 deviceIdentifier:v33 publicKey:v16 sourceVersion:v18 supportsMutualAuthentication:v31 authenticationCertificateSerial:v22 pairedVehicleIdentifier:v25 wiredCarPlaySimulator:v32 remoteDeviceConnected:?];

  return v40;
}

- (CARSessionRequestHost)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CARSessionRequestHost;
  v5 = [(CARSessionRequestHost *)&v36 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"displayName"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
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

    if ([v4 containsValueForKey:@"wiredIPAddresses"])
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = objc_opt_class();
      v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
      v12 = [v4 decodeObjectOfClasses:v11 forKey:@"wiredIPAddresses"];
      wiredIPv6Addresses = v5->_wiredIPv6Addresses;
      v5->_wiredIPv6Addresses = v12;
    }

    if ([v4 containsValueForKey:@"wirelessIPAddresses"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"wirelessIPAddresses"];
      wirelessIPv6Addresses = v5->_wirelessIPv6Addresses;
      v5->_wirelessIPv6Addresses = v17;
    }

    if ([v4 containsValueForKey:@"port"])
    {
      v5->_port = [v4 decodeIntegerForKey:@"port"];
    }

    if ([v4 containsValueForKey:@"carplayWiFiUUID"])
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carplayWiFiUUID"];
      carplayWiFiUUID = v5->_carplayWiFiUUID;
      v5->_carplayWiFiUUID = v19;
    }

    if ([v4 containsValueForKey:@"deviceID"])
    {
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceID"];
      deviceIdentifier = v5->_deviceIdentifier;
      v5->_deviceIdentifier = v21;
    }

    if ([v4 containsValueForKey:@"publicKey"])
    {
      v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
      publicKey = v5->_publicKey;
      v5->_publicKey = v23;
    }

    if ([v4 containsValueForKey:@"sourceVersion"])
    {
      v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceVersion"];
      sourceVersion = v5->_sourceVersion;
      v5->_sourceVersion = v25;
    }

    if ([v4 containsValueForKey:@"supportsMutualAuth"])
    {
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsMutualAuth"];
      v28 = v27;
      if (v27)
      {
        v5->_supportsMutualAuthentication = [v27 BOOLValue];
      }
    }

    if ([v4 containsValueForKey:@"authenticationCertificateSerial"])
    {
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationCertificateSerial"];
      if (v29)
      {
        objc_storeStrong(&v5->_authenticationCertificateSerial, v29);
      }
    }

    if ([v4 containsValueForKey:@"pairedVehicleIdentifier"])
    {
      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairedVehicleIdentifier"];
      if (v30)
      {
        objc_storeStrong(&v5->_pairedVehicleIdentifier, v30);
      }
    }

    if ([v4 containsValueForKey:@"wiredCarPlaySimulator"])
    {
      v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wiredCarPlaySimulator"];
      v32 = v31;
      if (v31)
      {
        v5->_wiredCarPlaySimulator = [v31 BOOLValue];
      }
    }

    if ([v4 containsValueForKey:@"remoteDeviceConnected"])
    {
      v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceConnected"];
      v34 = v33;
      if (v33)
      {
        v5->_remoteDeviceConnected = [v33 BOOLValue];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = a3;
  v4 = [(CARSessionRequestHost *)self displayName];

  if (v4)
  {
    v5 = [(CARSessionRequestHost *)self displayName];
    [v25 encodeObject:v5 forKey:@"displayName"];
  }

  v6 = [(CARSessionRequestHost *)self wiredIPv6Addresses];

  if (v6)
  {
    v7 = [(CARSessionRequestHost *)self wiredIPv6Addresses];
    [v25 encodeObject:v7 forKey:@"wiredIPAddresses"];
  }

  v8 = [(CARSessionRequestHost *)self wirelessIPv6Addresses];

  if (v8)
  {
    v9 = [(CARSessionRequestHost *)self wirelessIPv6Addresses];
    [v25 encodeObject:v9 forKey:@"wirelessIPAddresses"];
  }

  [v25 encodeInteger:-[CARSessionRequestHost port](self forKey:{"port"), @"port"}];
  v10 = [(CARSessionRequestHost *)self carplayWiFiUUID];

  if (v10)
  {
    v11 = [(CARSessionRequestHost *)self carplayWiFiUUID];
    [v25 encodeObject:v11 forKey:@"carplayWiFiUUID"];
  }

  v12 = [(CARSessionRequestHost *)self deviceIdentifier];

  if (v12)
  {
    v13 = [(CARSessionRequestHost *)self deviceIdentifier];
    [v25 encodeObject:v13 forKey:@"deviceID"];
  }

  v14 = [(CARSessionRequestHost *)self publicKey];

  if (v14)
  {
    v15 = [(CARSessionRequestHost *)self publicKey];
    [v25 encodeObject:v15 forKey:@"publicKey"];
  }

  v16 = [(CARSessionRequestHost *)self sourceVersion];

  if (v16)
  {
    v17 = [(CARSessionRequestHost *)self sourceVersion];
    [v25 encodeObject:v17 forKey:@"sourceVersion"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost supportsMutualAuthentication](self, "supportsMutualAuthentication")}];
  [v25 encodeObject:v18 forKey:@"supportsMutualAuth"];

  v19 = [(CARSessionRequestHost *)self authenticationCertificateSerial];

  if (v19)
  {
    v20 = [(CARSessionRequestHost *)self authenticationCertificateSerial];
    [v25 encodeObject:v20 forKey:@"authenticationCertificateSerial"];
  }

  v21 = [(CARSessionRequestHost *)self pairedVehicleIdentifier];

  if (v21)
  {
    v22 = [(CARSessionRequestHost *)self pairedVehicleIdentifier];
    [v25 encodeObject:v22 forKey:@"pairedVehicleIdentifier"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost isWiredCarPlaySimulator](self, "isWiredCarPlaySimulator")}];
  [v25 encodeObject:v23 forKey:@"wiredCarPlaySimulator"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[CARSessionRequestHost isRemoteDeviceConnected](self, "isRemoteDeviceConnected")}];
  [v25 encodeObject:v24 forKey:@"remoteDeviceConnected"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = CARSessionRequestHost;
  v4 = [(CARSessionRequestHost *)&v13 description];
  v5 = [(CARSessionRequestHost *)self displayName];
  v6 = [(CARSessionRequestHost *)self wiredIPv6Addresses];
  v7 = [(CARSessionRequestHost *)self wirelessIPv6Addresses];
  v8 = [(CARSessionRequestHost *)self port];
  v9 = [(CARSessionRequestHost *)self supportsMutualAuthentication];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"%@ [name: %@, wired IPs: %@, wireless IPs: %@, port: %ld, supportsMutualAuth: %@]", v4, v5, v6, v7, v8, v10];

  return v11;
}

@end