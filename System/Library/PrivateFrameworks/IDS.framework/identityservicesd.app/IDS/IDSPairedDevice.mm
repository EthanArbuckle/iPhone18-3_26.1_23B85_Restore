@interface IDSPairedDevice
+ (id)iCloudIdentitiesFromIdentities:(id)a3;
+ (id)localIdentitiesFromIdentities:(id)a3;
- (BOOL)hasAllPublicKeys;
- (BOOL)isActive;
- (BOOL)supportIPsec;
- (IDSPairedDevice)initWithCBUUID:(id)a3 pairingType:(int64_t)a4;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 capabilityFlags:(unint64_t)a4;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 deviceInfoPayload:(id)a4;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 deviceUniqueID:(id)a4 pairingProtocolVersion:(unsigned int)a5 minCompatibilityVersion:(unsigned int)a6 maxCompatibilityVersion:(unsigned int)a7 serviceMinCompatibilityVersion:(unsigned __int16)a8 privateData:(id)a9;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 isActive:(BOOL)a4;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 pairingType:(int64_t)a4;
- (IDSPairedDevice)initWithPairedDevice:(id)a3 supportIPsec:(BOOL)a4;
- (IDSPairedDevice)initWithProperties:(id)a3 pairingProtocolVersion:(id)a4 minCompatibilityVersion:(id)a5 maxCompatibilityVersion:(id)a6 serviceMinCompatibilityVersion:(id)a7;
- (IDSPairedDevice)pairedDeviceWithoutSecuredEncryptionKeys;
- (NSArray)iCloudIdentities;
- (NSArray)iCloudURIs;
- (NSArray)localIdentities;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)privateData;
- (NSString)buildVersion;
- (NSString)productName;
- (NSString)productVersion;
- (NSUUID)cbuuidUUID;
- (id)description;
- (id)persistedProperties;
- (int64_t)pairingType;
- (unsigned)maxCompatibilityVersion;
- (unsigned)minCompatibilityVersion;
- (unsigned)pairingProtocolVersion;
- (unsigned)serviceMinCompatibilityVersion;
@end

@implementation IDSPairedDevice

- (int64_t)pairingType
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:IDSDevicePropertyPairingType];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isActive
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:IDSDevicePropertyIsActivePairedDevice];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasAllPublicKeys
{
  v3 = [(IDSPairedDevice *)self publicClassAKey];
  if (v3)
  {
    v4 = [(IDSPairedDevice *)self publicClassCKey];
    if (v4)
    {
      v5 = [(IDSPairedDevice *)self publicClassDKey];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [(NSDictionary *)self->_properties mutableCopy];
  [v3 removeObjectForKey:IDSDevicePropertyEncryptionKey];
  [v3 removeObjectForKey:IDSDevicePropertyEncryptionClassAKey];
  [v3 removeObjectForKey:IDSDevicePropertyEncryptionClassCKey];
  [v3 removeObjectForKey:IDSDevicePropertyIdentifier];
  v4 = [(IDSPairedDevice *)self uniqueID];
  if (v4)
  {
    CFDictionarySetValue(v3, IDSDevicePropertyIdentifierOverride, v4);
  }

  pairingProtocolVersion = self->_pairingProtocolVersion;
  if (pairingProtocolVersion)
  {
    CFDictionarySetValue(v3, IDSDevicePropertyPairingProtocolVersion, pairingProtocolVersion);
  }

  minCompatibilityVersion = self->_minCompatibilityVersion;
  if (minCompatibilityVersion)
  {
    CFDictionarySetValue(v3, IDSDevicePropertyMinCompatibilityVersion, minCompatibilityVersion);
  }

  maxCompatibilityVersion = self->_maxCompatibilityVersion;
  if (maxCompatibilityVersion)
  {
    CFDictionarySetValue(v3, IDSDevicePropertyMaxCompatibilityVersion, maxCompatibilityVersion);
  }

  serviceMinCompatibilityVersion = self->_serviceMinCompatibilityVersion;
  if (serviceMinCompatibilityVersion)
  {
    CFDictionarySetValue(v3, IDSDeviceServicePropertyMinCompatibilityVersion, serviceMinCompatibilityVersion);
  }

  return v3;
}

- (BOOL)supportIPsec
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:IDSDevicePropertySupportIPsec];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)minCompatibilityVersion
{
  minCompatibilityVersion = self->_minCompatibilityVersion;
  if (minCompatibilityVersion)
  {
    return [(NSNumber *)minCompatibilityVersion unsignedIntValue];
  }

  else
  {
    return -1;
  }
}

- (unsigned)pairingProtocolVersion
{
  pairingProtocolVersion = self->_pairingProtocolVersion;
  if (pairingProtocolVersion)
  {
    LODWORD(pairingProtocolVersion) = [(NSNumber *)pairingProtocolVersion unsignedIntValue];
  }

  return pairingProtocolVersion;
}

- (unsigned)maxCompatibilityVersion
{
  maxCompatibilityVersion = self->_maxCompatibilityVersion;
  if (maxCompatibilityVersion)
  {
    return [(NSNumber *)maxCompatibilityVersion unsignedIntValue];
  }

  else
  {
    return -1;
  }
}

- (unsigned)serviceMinCompatibilityVersion
{
  serviceMinCompatibilityVersion = self->_serviceMinCompatibilityVersion;
  if (serviceMinCompatibilityVersion)
  {
    LODWORD(serviceMinCompatibilityVersion) = [(NSNumber *)serviceMinCompatibilityVersion unsignedIntValue];
  }

  return serviceMinCompatibilityVersion;
}

- (NSDictionary)privateData
{
  v2 = [(NSDictionary *)self->_properties objectForKeyedSubscript:IDSDevicePropertyPrivateDeviceData];
  v3 = [v2 copy];

  return v3;
}

- (IDSPairedDevice)initWithProperties:(id)a3 pairingProtocolVersion:(id)a4 minCompatibilityVersion:(id)a5 maxCompatibilityVersion:(id)a6 serviceMinCompatibilityVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = IDSPairedDevice;
  v17 = [(IDSPairedDevice *)&v31 init];
  if (v17)
  {
    v18 = [v12 copy];
    properties = v17->_properties;
    v17->_properties = v18;

    objc_storeStrong(&v17->_pairingProtocolVersion, a4);
    objc_storeStrong(&v17->_minCompatibilityVersion, a5);
    objc_storeStrong(&v17->_maxCompatibilityVersion, a6);
    v20 = IDSDeviceServicePropertyMinCompatibilityVersion;
    v21 = [(NSDictionary *)v17->_properties objectForKeyedSubscript:IDSDeviceServicePropertyMinCompatibilityVersion];

    if (v21)
    {
      v22 = [(NSDictionary *)v17->_properties objectForKeyedSubscript:v20];
    }

    else
    {
      v22 = v16;
    }

    serviceMinCompatibilityVersion = v17->_serviceMinCompatibilityVersion;
    v17->_serviceMinCompatibilityVersion = v22;

    v24 = [v16 unsignedIntValue];
    if (v24 >= [(NSNumber *)v17->_serviceMinCompatibilityVersion unsignedIntValue])
    {
      v30 = v14;
      Mutable = [(NSDictionary *)v17->_properties mutableCopy];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v26 = v13;
      if (v16)
      {
        CFDictionarySetValue(Mutable, v20, v16);
      }

      v27 = v17->_properties;
      v17->_properties = Mutable;
      v28 = Mutable;

      objc_storeStrong(&v17->_serviceMinCompatibilityVersion, a7);
      v13 = v26;
      v14 = v30;
    }
  }

  return v17;
}

- (IDSPairedDevice)initWithCBUUID:(id)a3 pairingType:(int64_t)a4
{
  v21 = IDSDevicePropertyIdentitiesURI;
  v22 = IDSLocalDeviceIdentity;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v19 = IDSPrivateDeviceDataUniqueID;
  v20 = IDSDeviceDefaultPairedDeviceUniqueID;
  v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v9 = +[NSMutableData data];
  [v9 setLength:80];
  v17[0] = IDSDevicePropertyNSUUID;
  v17[1] = IDSDevicePropertyDefaultPairedDevice;
  v18[0] = v6;
  v18[1] = &__kCFBooleanTrue;
  v18[2] = &__kCFBooleanTrue;
  v17[2] = IDSDevicePropertyDefaultLocalDevice;
  v17[3] = IDSDevicePropertyIdentities;
  v16 = v7;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v18[3] = v10;
  v18[4] = v8;
  v17[4] = IDSDevicePropertyPrivateDeviceData;
  v17[5] = IDSDevicePropertyPushToken;
  v18[5] = v9;
  v17[6] = IDSDevicePropertyPairingType;
  v11 = [NSNumber numberWithInteger:a4];
  v18[6] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:7];

  v13 = [v12 mutableCopy];
  v14 = [(IDSPairedDevice *)self initWithProperties:v13];

  return v14;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 deviceUniqueID:(id)a4 pairingProtocolVersion:(unsigned int)a5 minCompatibilityVersion:(unsigned int)a6 maxCompatibilityVersion:(unsigned int)a7 serviceMinCompatibilityVersion:(unsigned __int16)a8 privateData:(id)a9
{
  v9 = a8;
  v10 = *&a7;
  v11 = *&a6;
  v12 = *&a5;
  v15 = a4;
  v16 = a9;
  if (a3)
  {
    v17 = [*(a3 + 1) mutableCopy];
    [v17 setObject:v16 forKeyedSubscript:IDSDevicePropertyPrivateDeviceData];
    if ([v15 length])
    {
      [v17 setObject:v15 forKeyedSubscript:IDSDevicePropertyIdentifier];
    }

    v18 = [NSNumber numberWithUnsignedInt:v12];
    v19 = [NSNumber numberWithUnsignedInt:v11];
    v20 = [NSNumber numberWithUnsignedInt:v10];
    v21 = [NSNumber numberWithUnsignedShort:v9];
    v22 = [(IDSPairedDevice *)self initWithProperties:v17 pairingProtocolVersion:v18 minCompatibilityVersion:v19 maxCompatibilityVersion:v20 serviceMinCompatibilityVersion:v21];

    self = v22;
    v23 = self;
  }

  else
  {
    v24 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_100928214(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    v23 = 0;
  }

  return v23;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 capabilityFlags:(unint64_t)a4
{
  v4 = self;
  if (a3)
  {
    v4 = [(IDSPairedDevice *)self initWithProperties:*(a3 + 1) pairingProtocolVersion:*(a3 + 2) minCompatibilityVersion:*(a3 + 3) maxCompatibilityVersion:*(a3 + 4) serviceMinCompatibilityVersion:*(a3 + 5)];
    v5 = v4;
  }

  else
  {
    v6 = [IMRGLog watchPairing:0];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10092828C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  return v5;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 deviceInfoPayload:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v41 = self;
    v9 = IDSDevicePropertyEncryptionClassAKey;
    v10 = [v7 objectForKeyedSubscript:IDSDevicePropertyEncryptionClassAKey];
    v11 = IDSDevicePropertyEncryptionClassCKey;
    v12 = [v8 objectForKeyedSubscript:IDSDevicePropertyEncryptionClassCKey];
    key = IDSDevicePropertyEncryptionKey;
    v13 = [v8 objectForKeyedSubscript:?];
    v44 = [NSData dataWithBytes:[v10 bytes] length:[v10 length]];
    v43 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v12 bytes], objc_msgSend(v12, "length"));
    v42 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v13 bytes], objc_msgSend(v13, "length"));
    v14 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v44;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Paired device public key A %@", buf, 0xCu);
    }

    v15 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v43;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Paired device public key C %@", buf, 0xCu);
    }

    v16 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v42;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Paired device public key D %@", buf, 0xCu);
    }

    v17 = [v6[1] mutableCopy];
    v18 = v17;
    if (v10)
    {
      CFDictionarySetValue(v17, v9, v10);
    }

    if (v12)
    {
      CFDictionarySetValue(v18, v11, v12);
    }

    if (v13)
    {
      CFDictionarySetValue(v18, key, v13);
    }

    v19 = IDSDevicePropertyIdentifier;
    v20 = [v8 objectForKeyedSubscript:IDSDevicePropertyIdentifier];
    if (v20)
    {
      CFDictionarySetValue(v18, v19, v20);
    }

    v21 = IDSDevicePropertyName;
    v22 = [v8 objectForKeyedSubscript:IDSDevicePropertyName];
    if (v22)
    {
      CFDictionarySetValue(v18, v21, v22);
    }

    v23 = IDSDevicePropertyHardwareVersion;
    v24 = [v8 objectForKeyedSubscript:IDSDevicePropertyHardwareVersion];
    if (v24)
    {
      CFDictionarySetValue(v18, v23, v24);
    }

    v25 = IDSDevicePropertyPushToken;
    v26 = [v8 objectForKeyedSubscript:IDSDevicePropertyPushToken];
    if (v26)
    {
      CFDictionarySetValue(v18, v25, v26);
    }

    v27 = IDSDevicePropertyPrivateDeviceData;
    v28 = [v8 objectForKeyedSubscript:IDSDevicePropertyPrivateDeviceData];
    if ([v28 count])
    {
      v29 = [v6 privateData];
      v30 = [v29 mutableCopy];

      if (!v30)
      {
        v30 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v28, "count")}];
      }

      [v30 addEntriesFromDictionary:v28];
      if (v30)
      {
        CFDictionarySetValue(v18, v27, v30);
      }
    }

    self = [(IDSPairedDevice *)v41 initWithProperties:v18 pairingProtocolVersion:v6[2] minCompatibilityVersion:v6[3] maxCompatibilityVersion:v6[4] serviceMinCompatibilityVersion:v6[5]];

    v31 = self;
  }

  else
  {
    v10 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100928304(v10, v32, v33, v34, v35, v36, v37, v38);
    }

    v31 = 0;
  }

  return v31;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 1) mutableCopy];
    v9 = [NSNumber numberWithBool:v4];
    [v8 setObject:v9 forKeyedSubscript:IDSDevicePropertyIsActivePairedDevice];

    self = [(IDSPairedDevice *)self initWithProperties:v8 pairingProtocolVersion:v7[2] minCompatibilityVersion:v7[3] maxCompatibilityVersion:v7[4] serviceMinCompatibilityVersion:v7[5]];
    v10 = self;
  }

  else
  {
    v11 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10092837C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 supportIPsec:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 1) mutableCopy];
    v9 = [NSNumber numberWithBool:v4];
    [v8 setObject:v9 forKeyedSubscript:IDSDevicePropertySupportIPsec];

    self = [(IDSPairedDevice *)self initWithProperties:v8 pairingProtocolVersion:v7[2] minCompatibilityVersion:v7[3] maxCompatibilityVersion:v7[4] serviceMinCompatibilityVersion:v7[5]];
    v10 = self;
  }

  else
  {
    v11 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1009283F4(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 pairingType:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 1) mutableCopy];
    v9 = [NSNumber numberWithInteger:a4];
    [v8 setObject:v9 forKeyedSubscript:IDSDevicePropertyPairingType];

    self = [(IDSPairedDevice *)self initWithProperties:v8 pairingProtocolVersion:v7[2] minCompatibilityVersion:v7[3] maxCompatibilityVersion:v7[4] serviceMinCompatibilityVersion:v7[5]];
    v10 = self;
  }

  else
  {
    v11 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10092846C(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v10 = 0;
  }

  return v10;
}

- (IDSPairedDevice)initWithPairedDevice:(id)a3 iCloudURIs:(id)a4 pushToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v32 = v10;
    v12 = objc_alloc_init(NSMutableArray);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v9;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
    v15 = IDSDevicePropertyIdentitiesURI;
    if (v14)
    {
      v16 = v14;
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v34 + 1) + 8 * v18);
          v40 = v15;
          v41 = v19;
          v20 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1, v32];
          [v12 addObject:v20];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v16);
    }

    v38 = v15;
    v39 = IDSLocalDeviceIdentity;
    v21 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    [v12 addObject:v21];

    v22 = [v8[1] mutableCopy];
    v11 = v32;
    [v22 setObject:v32 forKeyedSubscript:IDSDevicePropertyPushToken];
    [v22 setObject:v12 forKeyedSubscript:IDSDevicePropertyIdentities];
    self = [(IDSPairedDevice *)self initWithProperties:v22 pairingProtocolVersion:v8[2] minCompatibilityVersion:v8[3] maxCompatibilityVersion:v8[4] serviceMinCompatibilityVersion:v8[5]];

    v23 = self;
    v9 = v33;
  }

  else
  {
    v12 = +[IMRGLog watchPairing];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1009284E4(v12, v24, v25, v26, v27, v28, v29, v30);
    }

    v23 = 0;
  }

  return v23;
}

- (IDSPairedDevice)pairedDeviceWithoutSecuredEncryptionKeys
{
  v3 = [(NSDictionary *)self->_properties mutableCopy];
  v7[0] = IDSDevicePropertyEncryptionClassAKey;
  v7[1] = IDSDevicePropertyEncryptionClassCKey;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  [v3 removeObjectsForKeys:v4];

  v5 = [objc_alloc(objc_opt_class()) initWithProperties:v3 pairingProtocolVersion:self->_pairingProtocolVersion minCompatibilityVersion:self->_minCompatibilityVersion maxCompatibilityVersion:self->_maxCompatibilityVersion serviceMinCompatibilityVersion:self->_serviceMinCompatibilityVersion];

  return v5;
}

- (id)persistedProperties
{
  v2 = [(NSDictionary *)self->_properties copy];

  return v2;
}

- (NSUUID)cbuuidUUID
{
  v3 = [NSUUID alloc];
  v4 = [(IDSPairedDevice *)self cbuuid];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

+ (id)iCloudIdentitiesFromIdentities:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = IDSDevicePropertyIdentitiesURI;
    v10 = IDSLocalDeviceIdentity;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{v9, v16}];
        v14 = [v13 isEqualToString:v10];

        if ((v14 & 1) == 0)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)localIdentitiesFromIdentities:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = IDSDevicePropertyIdentitiesURI;
    v10 = IDSLocalDeviceIdentity;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{v9, v16}];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)iCloudIdentities
{
  v2 = [(IDSPairedDevice *)self identities];
  v3 = [IDSPairedDevice iCloudIdentitiesFromIdentities:v2];

  return v3;
}

- (NSArray)localIdentities
{
  v2 = [(IDSPairedDevice *)self identities];
  v3 = [IDSPairedDevice localIdentitiesFromIdentities:v2];

  return v3;
}

- (NSArray)iCloudURIs
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(IDSPairedDevice *)self iCloudIdentities];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = IDSDevicePropertyIdentitiesURI;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:v8];
        if (v10)
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)buildVersion
{
  v2 = [(IDSPairedDevice *)self privateData];
  v3 = [v2 objectForKey:IDSPrivateDeviceDataProductBuildVersion];

  return v3;
}

- (NSString)productVersion
{
  v2 = [(IDSPairedDevice *)self privateData];
  v3 = [v2 objectForKey:IDSPrivateDeviceDataProductVersion];

  return v3;
}

- (NSString)productName
{
  v2 = [(IDSPairedDevice *)self privateData];
  v3 = [v2 objectForKey:IDSPrivateDeviceDataProductName];

  return v3;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = IDSPairedDevice;
  v3 = [(IDSPairedDevice *)&v9 description];
  v4 = [(IDSPairedDevice *)self uniqueID];
  v5 = [(IDSPairedDevice *)self cbuuid];
  if ([(IDSPairedDevice *)self isActive])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"%@ uniqueID = %@, cbuuid = %@, isActive = %@, supportsIPSec = %d, pairingType = %ld", v3, v4, v5, v6, [(IDSPairedDevice *)self supportIPsec], [(IDSPairedDevice *)self pairingType]];

  return v7;
}

@end