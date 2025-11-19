@interface DEDDevice
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromArrayRepresentation:(SEL)a3;
+ (id)_currentDeviceId;
+ (id)archivedClasses;
+ (id)arrayRepresentationForOperatingSystemVersion:(id *)a3;
+ (id)currentDevice;
+ (id)currentDeviceWithDaemonInfo;
+ (id)deviceForSFDevice:(id)a3 andStatus:(int64_t)a4;
+ (id)deviceForSFDevice:(id)a3 systemInfo:(id)a4 andStatus:(int64_t)a5;
+ (id)deviceWithDictionary:(id)a3;
+ (id)deviceWithIDSDevice:(id)a3 address:(id)a4;
+ (id)nilSafeDevice;
+ (int64_t)deviceTypeFromIDSDeviceType:(int64_t)a3;
+ (int64_t)deviceTypeFromPlatform:(id)a3 deviceClass:(id)a4;
- (BOOL)hasCapabilities:(id)a3;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDevice:(id)a3;
- (BOOL)isLikeDevice:(id)a3;
- (BOOL)isMoreCompleteThan:(id)a3;
- (BOOL)isTemporaryDevice;
- (DEDDevice)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)publicLogSafeIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)hashingKey;
- (id)hashingKeyForTempDevice;
- (id)imageData;
- (id)imageURLForDeviceClass:(id)a3 deviceModel:(id)a4 deviceColor:(id)a5 size:(int64_t)a6 variant:(int64_t)a7 scale:(float)a8;
- (id)imageURLForScale:(float)a3;
- (id)publicLogDescription;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
- (void)fetchIconImageDataForScale:(float)a3 completionCompletion:(id)a4;
@end

@implementation DEDDevice

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DEDDevice *)self address];
  [v4 encodeObject:v5 forKey:@"address"];

  [(DEDDevice *)self operatingSystemVersion];
  v6 = [DEDDevice arrayRepresentationForOperatingSystemVersion:v31];
  [v4 encodeObject:v6 forKey:@"operatingSystemVersion"];

  v7 = [(DEDDevice *)self build];
  [v4 encodeObject:v7 forKey:@"build"];

  v8 = [(DEDDevice *)self color];
  [v4 encodeObject:v8 forKey:@"color"];

  v9 = [(DEDDevice *)self deviceClass];
  [v4 encodeObject:v9 forKey:@"deviceClass"];

  v10 = [(DEDDevice *)self enclosureColor];
  [v4 encodeObject:v10 forKey:@"enclosureColor"];

  v11 = [(DEDDevice *)self identifier];
  [v4 encodeObject:v11 forKey:@"identifier"];

  v12 = [(DEDDevice *)self model];
  [v4 encodeObject:v12 forKey:@"model"];

  v13 = [(DEDDevice *)self name];
  [v4 encodeObject:v13 forKey:@"name"];

  v14 = [(DEDDevice *)self productType];
  [v4 encodeObject:v14 forKey:@"productType"];

  [v4 encodeInteger:-[DEDDevice status](self forKey:{"status"), @"status"}];
  [v4 encodeInteger:-[DEDDevice transport](self forKey:{"transport"), @"transport"}];
  v15 = [(DEDDevice *)self platform];
  [v4 encodeObject:v15 forKey:@"platform"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice deviceType](self, "deviceType")}];
  [v4 encodeObject:v16 forKey:@"deviceType"];

  [v4 encodeInteger:-[DEDDevice remoteTransport](self forKey:{"remoteTransport"), @"remoteTransport"}];
  v17 = [(DEDDevice *)self capabilities];
  v18 = [DEDCapability encodeCapabilitySet:v17];
  [v4 encodeObject:v18 forKey:@"capabilities"];

  v19 = [(DEDDevice *)self hardwareCodename];
  [v4 encodeObject:v19 forKey:@"hardwareCodename"];

  v20 = [(DEDDevice *)self serialNumber];
  [v4 encodeObject:v20 forKey:@"serialNumber"];

  [v4 encodeInteger:-[DEDDevice homeButtonType](self forKey:{"homeButtonType"), @"homeButtonType"}];
  v21 = [(DEDDevice *)self uniformTypeIdentifier];
  [v4 encodeObject:v21 forKey:@"uniformTypeIdentifier"];

  v22 = [(DEDDevice *)self idsIdentifier];
  [v4 encodeObject:v22 forKey:@"idsIdentifier"];

  v23 = [(DEDDevice *)self companionDeviceIdentifier];
  [v4 encodeObject:v23 forKey:@"companionDeviceIdentifier"];

  v24 = [(DEDDevice *)self homeTheaterSystemName];
  [v4 encodeObject:v24 forKey:@"homeTheaterSystemName"];

  v25 = [(DEDDevice *)self homeTheaterSystemIdentifier];
  [v4 encodeObject:v25 forKey:@"homeTheaterSystemIdentifier"];

  v26 = [(DEDDevice *)self mediaSystemName];
  [v4 encodeObject:v26 forKey:@"mediaSystemName"];

  [v4 encodeInteger:-[DEDDevice mediaSystemRole](self forKey:{"mediaSystemRole"), @"mediaSystemRole"}];
  v27 = [(DEDDevice *)self mediaSystemIdentifier];
  [v4 encodeObject:v27 forKey:@"mediaSystemIdentifier"];

  v28 = [(DEDDevice *)self mediaRemoteIdentifier];
  [v4 encodeObject:v28 forKey:@"mediaRemoteIdentifier"];

  v29 = [(DEDDevice *)self homeKitIdentifier];
  [v4 encodeObject:v29 forKey:@"homeKitIdentifier"];

  [v4 encodeBool:-[DEDDevice isHomeKitResident](self forKey:{"isHomeKitResident"), @"isHomeKitResident"}];
  v30 = [(DEDDevice *)self bugSessions];
  [v4 encodeObject:v30 forKey:@"bugSessions"];
}

- (DEDDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = DEDDevice;
  v5 = [(DEDDevice *)&v61 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"operatingSystemVersion"];
    [DEDDevice operatingSystemVersionFromArrayRepresentation:v8];
    *(v5 + 264) = v59;
    *(v5 + 35) = v60;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    v10 = *(v5 + 3);
    *(v5 + 3) = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    v12 = *(v5 + 4);
    *(v5 + 4) = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    v14 = *(v5 + 5);
    *(v5 + 5) = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    v16 = *(v5 + 6);
    *(v5 + 6) = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v18 = *(v5 + 7);
    *(v5 + 7) = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    v20 = *(v5 + 8);
    *(v5 + 8) = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v22 = *(v5 + 9);
    *(v5 + 9) = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    v24 = *(v5 + 10);
    *(v5 + 10) = v23;

    *(v5 + 15) = [v4 decodeIntegerForKey:@"status"];
    *(v5 + 16) = [v4 decodeIntegerForKey:@"transport"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    v26 = *(v5 + 11);
    *(v5 + 11) = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    *(v5 + 12) = [v27 integerValue];

    *(v5 + 17) = [v4 decodeIntegerForKey:@"remoteTransport"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
    if (v28)
    {
      [DEDCapability decodeCapabilitiesString:v28];
    }

    else
    {
      +[DEDCapability defaultCapabilities];
    }
    v29 = ;
    v30 = *(v5 + 14);
    *(v5 + 14) = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hardwareCodename"];
    v32 = *(v5 + 19);
    *(v5 + 19) = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v34 = *(v5 + 20);
    *(v5 + 20) = v33;

    *(v5 + 21) = [v4 decodeIntegerForKey:@"homeButtonType"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    v36 = *(v5 + 22);
    *(v5 + 22) = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
    v38 = *(v5 + 23);
    *(v5 + 23) = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companionDeviceIdentifier"];
    v40 = *(v5 + 24);
    *(v5 + 24) = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeTheaterSystemName"];
    v42 = *(v5 + 25);
    *(v5 + 25) = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeTheaterSystemIdentifier"];
    v44 = *(v5 + 26);
    *(v5 + 26) = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaSystemName"];
    v46 = *(v5 + 27);
    *(v5 + 27) = v45;

    *(v5 + 28) = [v4 decodeIntegerForKey:@"mediaSystemRole"];
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaSystemIdentifier"];
    v48 = *(v5 + 29);
    *(v5 + 29) = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
    v50 = *(v5 + 30);
    *(v5 + 30) = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeKitIdentifier"];
    v52 = *(v5 + 31);
    *(v5 + 31) = v51;

    v5[8] = [v4 decodeBoolForKey:@"isHomeKitResident"];
    v53 = MEMORY[0x277CBEB98];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [v4 decodeObjectOfClasses:v55 forKey:@"bugSessions"];
    v57 = *(v5 + 13);
    *(v5 + 13) = v56;
  }

  return v5;
}

+ (id)currentDevice
{
  v2 = objc_opt_new();
  [v2 setAddress:&stru_285B72378];
  v3 = objc_alloc_init(MEMORY[0x277CCAC38]);
  v4 = v3;
  if (v3)
  {
    [v3 operatingSystemVersion];
  }

  else
  {
    v28 = 0uLL;
    v29 = 0;
  }

  v26 = v28;
  v27 = v29;
  [v2 setOperatingSystemVersion:&v26];

  v5 = +[DEDUtils osBuild];
  [v2 setBuild:v5];

  v6 = +[DEDUtils deviceColor];
  v7 = stringIfNil(v6);
  [v2 setColor:v7];

  v8 = +[DEDUtils deviceClass];
  v9 = stringIfNil(v8);
  [v2 setDeviceClass:v9];

  v10 = +[DEDUtils deviceEnclosureColor];
  v11 = stringIfNil(v10);
  [v2 setEnclosureColor:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = +[DEDUtils uniqueDeviceSpecifier];
  v14 = [v12 stringWithFormat:@"ded:%@", v13];
  [v2 setIdentifier:v14];

  v15 = +[DEDUtils deviceModel];
  v16 = stringIfNil(v15);
  [v2 setModel:v16];

  v17 = +[DEDUtils deviceName];
  v18 = stringIfNil(v17);
  [v2 setName:v18];

  v19 = +[DEDUtils deviceProductType];
  v20 = stringIfNil(v19);
  [v2 setProductType:v20];

  [v2 setStatus:1];
  [v2 setTransport:1];
  v21 = +[DEDUtils platform];
  v22 = stringIfNil(v21);
  [v2 setPlatform:v22];

  [v2 setDeviceType:{+[DEDUtils deviceType](DEDUtils, "deviceType")}];
  [v2 setRemoteTransport:1];
  v23 = +[DEDCapability allCapabilities];
  [v2 setCapabilities:v23];

  v24 = +[DEDUtils deviceUniformTypeIdentifier];
  [v2 setUniformTypeIdentifier:v24];

  return v2;
}

+ (id)deviceWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"address"];
  v6 = stringIfNil(v5);
  [v4 setAddress:v6];

  v7 = [v3 objectForKeyedSubscript:@"operatingSystemVersion"];
  [DEDDevice operatingSystemVersionFromArrayRepresentation:v7];
  v54 = v56;
  v55 = v57;
  [v4 setOperatingSystemVersion:&v54];

  v8 = [v3 objectForKeyedSubscript:@"build"];
  v9 = stringIfNil(v8);
  [v4 setBuild:v9];

  v10 = [v3 objectForKeyedSubscript:@"color"];
  v11 = stringIfNil(v10);
  [v4 setColor:v11];

  v12 = [v3 objectForKeyedSubscript:@"deviceClass"];
  v13 = stringIfNil(v12);
  [v4 setDeviceClass:v13];

  v14 = [v3 objectForKeyedSubscript:@"enclosureColor"];
  v15 = stringIfNil(v14);
  [v4 setEnclosureColor:v15];

  v16 = [v3 objectForKeyedSubscript:@"identifier"];
  v17 = stringIfNil(v16);
  [v4 setIdentifier:v17];

  v18 = [v3 objectForKeyedSubscript:@"model"];
  v19 = stringIfNil(v18);
  [v4 setModel:v19];

  v20 = [v3 objectForKeyedSubscript:@"name"];
  v21 = stringIfNil(v20);
  [v4 setName:v21];

  v22 = [v3 objectForKeyedSubscript:@"productType"];
  v23 = stringIfNil(v22);
  [v4 setProductType:v23];

  v24 = [v3 objectForKeyedSubscript:@"status"];
  [v4 setStatus:{objc_msgSend(v24, "integerValue")}];

  v25 = [v3 objectForKeyedSubscript:@"transport"];
  [v4 setTransport:{objc_msgSend(v25, "integerValue")}];

  v26 = [v3 objectForKeyedSubscript:@"platform"];
  v27 = stringIfNil(v26);
  [v4 setPlatform:v27];

  v28 = [v3 objectForKeyedSubscript:@"deviceType"];
  v29 = v28;
  if (v28)
  {
    [v4 setDeviceType:{objc_msgSend(v28, "integerValue")}];
  }

  else
  {
    v30 = [v4 platform];
    v31 = [v4 deviceClass];
    [v4 setDeviceType:{+[DEDDevice deviceTypeFromPlatform:deviceClass:](DEDDevice, "deviceTypeFromPlatform:deviceClass:", v30, v31)}];
  }

  v32 = [v3 objectForKeyedSubscript:@"remoteTransport"];
  [v4 setRemoteTransport:{objc_msgSend(v32, "integerValue")}];

  v33 = [v3 objectForKeyedSubscript:@"capabilities"];
  if (v33)
  {
    [DEDCapability decodeCapabilitiesString:v33];
  }

  else
  {
    +[DEDCapability defaultCapabilities];
  }
  v34 = ;
  [v4 setCapabilities:v34];

  v35 = [v3 objectForKeyedSubscript:@"hardwareCodename"];
  [v4 setHardwareCodename:v35];

  v36 = [v3 objectForKeyedSubscript:@"serialNumber"];
  [v4 setSerialNumber:v36];

  v37 = [v3 objectForKeyedSubscript:@"homeButtonType"];
  [v4 setHomeButtonType:{objc_msgSend(v37, "integerValue")}];

  v38 = [v3 objectForKeyedSubscript:@"uniformTypeIdentifier"];
  [v4 setUniformTypeIdentifier:v38];

  v39 = [v3 objectForKeyedSubscript:@"idsIdentifier"];
  [v4 setIdsIdentifier:v39];

  v40 = [v3 objectForKeyedSubscript:@"companionDeviceIdentifier"];
  [v4 setCompanionDeviceIdentifier:v40];

  v41 = [v3 objectForKeyedSubscript:@"homeTheaterSystemName"];
  [v4 setHomeTheaterSystemName:v41];

  v42 = [v3 objectForKeyedSubscript:@"homeTheaterSystemIdentifier"];
  [v4 setHomeTheaterSystemIdentifier:v42];

  v43 = [v3 objectForKeyedSubscript:@"mediaSystemName"];
  [v4 setMediaSystemName:v43];

  v44 = [v3 objectForKeyedSubscript:@"mediaSystemRole"];
  [v4 setMediaSystemRole:{objc_msgSend(v44, "integerValue")}];

  v45 = [v3 objectForKeyedSubscript:@"mediaSystemIdentifier"];
  [v4 setMediaSystemIdentifier:v45];

  v46 = [v3 objectForKeyedSubscript:@"mediaRemoteIdentifier"];
  [v4 setMediaRemoteIdentifier:v46];

  v47 = [v3 objectForKeyedSubscript:@"homeKitIdentifier"];
  [v4 setHomeKitIdentifier:v47];

  v48 = [v3 objectForKeyedSubscript:@"isHomeKitResident"];
  [v4 setIsHomeKitResident:{objc_msgSend(v48, "BOOLValue")}];

  v49 = [v3 objectForKeyedSubscript:@"bugSessions"];

  if (v49)
  {
    v50 = MEMORY[0x277CBEB98];
    v51 = [v3 objectForKeyedSubscript:@"bugSessions"];
    v52 = [v50 setWithArray:v51];
    [v4 setBugSessions:v52];
  }

  return v4;
}

+ (id)deviceForSFDevice:(id)a3 andStatus:(int64_t)a4
{
  v5 = a3;
  v6 = +[DEDDevice nilSafeDevice];
  if (v6)
  {
    v7 = [v5 identifier];
    v8 = [v7 UUIDString];
    v9 = stringIfNil(v8);
    [v6 setIdentifier:v9];

    v10 = [v5 identifier];
    v11 = [v10 UUIDString];
    v12 = stringIfNil(v11);
    [v6 setAddress:v12];

    [v6 setBuild:&stru_285B72378];
    v13 = [v5 model];
    v14 = [DEDUtils deviceClassForProductType:v13];
    [v6 setDeviceClass:v14];

    v15 = [v5 name];
    v16 = stringIfNil(v15);
    [v6 setName:v16];

    v17 = [v5 model];
    v18 = stringIfNil(v17);
    [v6 setModel:v18];

    [v6 setStatus:a4];
    [v6 setTransport:3];
    [v6 setRemoteTransport:3];
    v19 = +[DEDCapability defaultCapabilities];
    [v6 setCapabilities:v19];

    [v6 setSfDevice:v5];
  }

  return v6;
}

+ (id)deviceForSFDevice:(id)a3 systemInfo:(id)a4 andStatus:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[DEDDevice nilSafeDevice];
  if (v9)
  {
    v10 = [v7 identifier];
    v11 = [v10 UUIDString];
    v12 = stringIfNil(v11);
    [v9 setIdentifier:v12];

    v13 = [v7 identifier];
    v14 = [v13 UUIDString];
    v15 = stringIfNil(v14);
    [v9 setAddress:v15];

    v16 = [v8 objectForKeyedSubscript:@"osBuild"];
    v17 = stringIfNil(v16);
    [v9 setBuild:v17];

    v18 = [v8 objectForKeyedSubscript:@"model"];
    v19 = [DEDUtils deviceClassForProductType:v18];
    [v9 setDeviceClass:v19];

    v20 = [v8 objectForKeyedSubscript:@"name"];
    v21 = stringIfNil(v20);
    [v9 setName:v21];

    v22 = [v7 model];
    if (v22 && (v23 = v22, [v7 model], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v23, v25))
    {
      v26 = [v7 model];
      v27 = stringIfNil(v26);
    }

    else
    {
      v26 = [v8 objectForKeyedSubscript:@"model"];
      v27 = [DEDUtils modelForProductType:v26];
    }

    v28 = v27;
    [v9 setModel:v27];

    v29 = [v8 objectForKeyedSubscript:@"model"];
    v30 = stringIfNil(v29);
    [v9 setProductType:v30];

    [v9 setTransport:3];
    [v9 setRemoteTransport:3];
    [v9 setStatus:a5];
    v31 = +[DEDCapability defaultCapabilities];
    [v9 setCapabilities:v31];

    [v9 setSfDevice:v7];
  }

  return v9;
}

+ (id)deviceWithIDSDevice:(id)a3 address:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[DEDDevice nilSafeDevice];
  if (v7)
  {
    v8 = stringIfNil(v6);
    [v7 setIdentifier:v8];

    v9 = stringIfNil(v6);
    [v7 setAddress:v9];

    if (v5)
    {
      [v5 operatingSystemVersion];
    }

    else
    {
      v29 = 0uLL;
      v30 = 0;
    }

    v27 = v29;
    v28 = v30;
    [v7 setOperatingSystemVersion:&v27];
    v10 = [v5 productBuildVersion];
    v11 = stringIfNil(v10);
    [v7 setBuild:v11];

    v12 = [v5 modelIdentifier];
    v13 = [DEDUtils deviceClassForProductType:v12];
    [v7 setDeviceClass:v13];

    v14 = [v5 deviceColor];
    v15 = stringIfNil(v14);
    [v7 setColor:v15];

    v16 = [v5 enclosureColor];
    v17 = stringIfNil(v16);
    [v7 setEnclosureColor:v17];

    v18 = [v5 name];
    v19 = stringIfNil(v18);
    [v7 setName:v19];

    v20 = [v5 productName];
    v21 = stringIfNil(v20);
    [v7 setModel:v21];

    v22 = [v5 modelIdentifier];
    v23 = stringIfNil(v22);
    [v7 setProductType:v23];

    [v7 setTransport:4];
    [v7 setDeviceType:{+[DEDDevice deviceTypeFromIDSDeviceType:](DEDDevice, "deviceTypeFromIDSDeviceType:", objc_msgSend(v5, "deviceType"))}];
    [v7 setRemoteTransport:4];
    [v7 setStatus:3];
    v24 = +[DEDCapability defaultCapabilities];
    [v7 setCapabilities:v24];

    v25 = [v5 uniqueIDOverride];
    [v7 setIdsIdentifier:v25];
  }

  return v7;
}

- (id)serialize
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(DEDDevice *)self address];
  v5 = stringIfNil(v4);
  [v3 setObject:v5 forKeyedSubscript:@"address"];

  [(DEDDevice *)self operatingSystemVersion];
  v6 = [DEDDevice arrayRepresentationForOperatingSystemVersion:v49];
  [v3 setObject:v6 forKeyedSubscript:@"operatingSystemVersion"];

  v7 = [(DEDDevice *)self build];
  v8 = stringIfNil(v7);
  [v3 setObject:v8 forKeyedSubscript:@"build"];

  v9 = [(DEDDevice *)self color];
  v10 = stringIfNil(v9);
  [v3 setObject:v10 forKeyedSubscript:@"color"];

  v11 = [(DEDDevice *)self deviceClass];
  v12 = stringIfNil(v11);
  [v3 setObject:v12 forKeyedSubscript:@"deviceClass"];

  v13 = [(DEDDevice *)self enclosureColor];
  v14 = stringIfNil(v13);
  [v3 setObject:v14 forKeyedSubscript:@"enclosureColor"];

  v15 = [(DEDDevice *)self identifier];
  v16 = stringIfNil(v15);
  [v3 setObject:v16 forKeyedSubscript:@"identifier"];

  v17 = [(DEDDevice *)self model];
  v18 = stringIfNil(v17);
  [v3 setObject:v18 forKeyedSubscript:@"model"];

  v19 = [(DEDDevice *)self name];
  v20 = stringIfNil(v19);
  [v3 setObject:v20 forKeyedSubscript:@"name"];

  v21 = [(DEDDevice *)self productType];
  v22 = stringIfNil(v21);
  [v3 setObject:v22 forKeyedSubscript:@"productType"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice status](self, "status")}];
  [v3 setObject:v23 forKeyedSubscript:@"status"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice transport](self, "transport")}];
  [v3 setObject:v24 forKeyedSubscript:@"transport"];

  v25 = [(DEDDevice *)self platform];
  v26 = stringIfNil(v25);
  [v3 setObject:v26 forKeyedSubscript:@"platform"];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice deviceType](self, "deviceType")}];
  [v3 setObject:v27 forKeyedSubscript:@"deviceType"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice remoteTransport](self, "remoteTransport")}];
  [v3 setObject:v28 forKeyedSubscript:@"remoteTransport"];

  v29 = [(DEDDevice *)self capabilities];
  v30 = [DEDCapability encodeCapabilitySet:v29];
  [v3 setObject:v30 forKeyedSubscript:@"capabilities"];

  v31 = [(DEDDevice *)self hardwareCodename];
  [v3 setObject:v31 forKeyedSubscript:@"hardwareCodename"];

  v32 = [(DEDDevice *)self serialNumber];
  [v3 setObject:v32 forKeyedSubscript:@"serialNumber"];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice homeButtonType](self, "homeButtonType")}];
  [v3 setObject:v33 forKeyedSubscript:@"homeButtonType"];

  v34 = [(DEDDevice *)self uniformTypeIdentifier];
  [v3 setObject:v34 forKeyedSubscript:@"uniformTypeIdentifier"];

  v35 = [(DEDDevice *)self idsIdentifier];
  [v3 setObject:v35 forKeyedSubscript:@"idsIdentifier"];

  v36 = [(DEDDevice *)self companionDeviceIdentifier];
  [v3 setObject:v36 forKeyedSubscript:@"companionDeviceIdentifier"];

  v37 = [(DEDDevice *)self homeTheaterSystemName];
  [v3 setObject:v37 forKeyedSubscript:@"homeTheaterSystemName"];

  v38 = [(DEDDevice *)self homeTheaterSystemIdentifier];
  [v3 setObject:v38 forKeyedSubscript:@"homeTheaterSystemIdentifier"];

  v39 = [(DEDDevice *)self mediaSystemName];
  [v3 setObject:v39 forKeyedSubscript:@"mediaSystemName"];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice mediaSystemRole](self, "mediaSystemRole")}];
  [v3 setObject:v40 forKeyedSubscript:@"mediaSystemRole"];

  v41 = [(DEDDevice *)self mediaSystemIdentifier];
  [v3 setObject:v41 forKeyedSubscript:@"mediaSystemIdentifier"];

  v42 = [(DEDDevice *)self mediaRemoteIdentifier];
  [v3 setObject:v42 forKeyedSubscript:@"mediaRemoteIdentifier"];

  v43 = [(DEDDevice *)self homeKitIdentifier];
  [v3 setObject:v43 forKeyedSubscript:@"homeKitIdentifier"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDDevice isHomeKitResident](self, "isHomeKitResident")}];
  [v3 setObject:v44 forKeyedSubscript:@"isHomeKitResident"];

  v45 = [(DEDDevice *)self bugSessions];

  if (v45)
  {
    v46 = [(DEDDevice *)self bugSessions];
    v47 = [v46 allObjects];
    [v3 setObject:v47 forKeyedSubscript:@"bugSessions"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(DEDDevice *)self serialize];
  v4 = [DEDDevice deviceWithDictionary:v3];

  return v4;
}

+ (id)_currentDeviceId
{
  if (_currentDeviceId_onceToken != -1)
  {
    +[DEDDevice _currentDeviceId];
  }

  v3 = _currentDeviceId_selfIdentifier;

  return v3;
}

void __29__DEDDevice__currentDeviceId__block_invoke()
{
  v2 = +[DEDDevice currentDevice];
  v0 = [v2 identifier];
  v1 = _currentDeviceId_selfIdentifier;
  _currentDeviceId_selfIdentifier = v0;
}

- (BOOL)isCurrentDevice
{
  v2 = [(DEDDevice *)self identifier];
  v3 = [objc_opt_class() _currentDeviceId];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(DEDDevice *)self platform];
  v5 = [(DEDDevice *)self deviceType]- 1;
  if (v5 > 6)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_278F65FD0[v5];
  }

  v7 = [(DEDDevice *)self build];
  v8 = [(DEDDevice *)self productType];
  v9 = [(DEDDevice *)self status];
  if ((v9 - 1) > 3)
  {
    v10 = "Unknown";
  }

  else
  {
    v10 = off_278F66008[v9 - 1];
  }

  [v3 appendFormat:@"\nDEDDevice: %@ %s %@ (%@) -- %s", v4, v6, v7, v8, v10];

  v11 = [(DEDDevice *)self transport];
  if (v11 > 4)
  {
    v12 = "Unknown";
  }

  else
  {
    v12 = off_278F66028[v11];
  }

  v13 = [(DEDDevice *)self publicLogSafeIdentifier];
  [v3 appendFormat:@"\n%s (%@)", v12, v13];

  v14 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v14;
}

- (id)publicLogDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DEDDevice *)self productType];
  v5 = [(DEDDevice *)self name];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DEDDevice *)self isEqualToDevice:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DEDDevice;
    v5 = [(DEDDevice *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToDevice:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = [a3 identifier];
  v5 = [(DEDDevice *)self identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (id)hashingKey
{
  v3 = [(DEDDevice *)self _hashingKey];

  if (!v3)
  {
    if ([(DEDDevice *)self isCurrentDevice])
    {
      v4 = [(DEDDevice *)self identifier];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", 1, v4];
    }

    else
    {
      v6 = [(DEDDevice *)self isTemporaryDevice];
      v4 = [(DEDDevice *)self identifier];
      v7 = [(DEDDevice *)self remoteTransport];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", v7, v4];
      if (v6)
      {

        goto LABEL_8;
      }
    }

    [(DEDDevice *)self set_hashingKey:v5];
  }

  v5 = [(DEDDevice *)self _hashingKey];
LABEL_8:

  return v5;
}

- (BOOL)isLikeDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceClass];
  if (![v5 length])
  {
    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v6 = [v4 name];
  if (![v6 length])
  {
    goto LABEL_8;
  }

  v7 = [v4 build];
  v8 = [v7 length];

  if (v8)
  {
    v5 = [(DEDDevice *)self deviceClass];
    v6 = [v4 deviceClass];
    if ([v5 isEqualToString:v6])
    {
      v9 = [(DEDDevice *)self name];
      v10 = [v4 name];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(DEDDevice *)self build];
        v12 = [v4 build];
        v13 = [v11 isEqualToString:v12];
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_12;
    }

LABEL_8:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)isMoreCompleteThan:(id)a3
{
  v4 = a3;
  v5 = [(DEDDevice *)self isTemporaryDevice];
  LODWORD(v6) = [v4 isTemporaryDevice];
  if (v5 == v6)
  {
    v7 = [(DEDDevice *)self serialize];
    v6 = __32__DEDDevice_isMoreCompleteThan___block_invoke(v7, v7);
    v8 = [v4 serialize];
    LOBYTE(v6) = v6 > __32__DEDDevice_isMoreCompleteThan___block_invoke(v8, v8);
  }

  return v6;
}

uint64_t __32__DEDDevice_isMoreCompleteThan___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = a2;
  v2 = [v13 allValues];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;

          if (([v10 isEqualToString:@"unspecified"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"unknown") & 1) == 0)
          {
            v6 += [v10 length];
          }

          v5 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)nilSafeDevice
{
  v2 = objc_opt_new();
  [v2 setAddress:&stru_285B72378];
  [v2 setBuild:&stru_285B72378];
  [v2 setColor:&stru_285B72378];
  [v2 setDeviceClass:&stru_285B72378];
  [v2 setEnclosureColor:&stru_285B72378];
  [v2 setIdentifier:&stru_285B72378];
  [v2 setModel:&stru_285B72378];
  [v2 setName:&stru_285B72378];
  [v2 setProductType:&stru_285B72378];
  [v2 setPlatform:&stru_285B72378];
  [v2 setSfDevice:0];
  v3 = +[DEDCapability allCapabilities];
  [v2 setCapabilities:v3];

  return v2;
}

- (BOOL)hasCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(DEDDevice *)self capabilities];
  v6 = [v4 isSubsetOfSet:v5];

  return v6;
}

- (NSString)publicLogSafeIdentifier
{
  if ([(DEDDevice *)self status]== 3 && ([(DEDDevice *)self transport]== 4 || [(DEDDevice *)self remoteTransport]== 4))
  {
    v3 = [(DEDDevice *)self idsIdentifier];
  }

  else
  {
    v3 = [(DEDDevice *)self identifier];
  }

  return v3;
}

- (BOOL)isTemporaryDevice
{
  v3 = [(DEDDevice *)self identifier];
  v4 = [(DEDDevice *)self address];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)hashingKeyForTempDevice
{
  v3 = [(DEDDevice *)self address];
  v4 = [(DEDDevice *)self remoteTransport];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", v4, v3];

  return v5;
}

+ (id)currentDeviceWithDaemonInfo
{
  v2 = +[DEDDevice currentDevice];
  v3 = +[DEDUtils deviceHardwareCodename];
  [v2 setHardwareCodename:v3];

  v4 = +[DEDUtils deviceSerialNumber];
  [v2 setSerialNumber:v4];

  v5 = +[DEDUtils deviceHomeButtonType];
  if (v5 < 3)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  [v2 setHomeButtonType:v6];
  v7 = IDSCopyLocalDeviceUniqueID();
  [v2 setIdsIdentifier:v7];

  v8 = [MEMORY[0x277D2BCF8] sharedInstance];
  v9 = [v8 getActivePairedDevice];
  v10 = [v9 valueForProperty:*MEMORY[0x277D2BC30]];

  if (v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ded:%@", v10];
    [v2 setCompanionDeviceIdentifier:v11];
  }

  v12 = +[DEDHomeKitManager sharedInstance];
  v13 = [v12 homeTheaterSystemName];
  [v2 setHomeTheaterSystemName:v13];

  v14 = +[DEDHomeKitManager sharedInstance];
  v15 = [v14 homeTheaterSystemIdentifier];
  [v2 setHomeTheaterSystemIdentifier:v15];

  v16 = +[DEDRapportManager sharedInstance];
  v17 = [v16 mediaSystemName];
  [v2 setMediaSystemName:v17];

  v18 = +[DEDRapportManager sharedInstance];
  [v2 setMediaSystemRole:{objc_msgSend(v18, "mediaSystemRole")}];

  v19 = +[DEDRapportManager sharedInstance];
  v20 = [v19 mediaSystemIdentifier];
  [v2 setMediaSystemIdentifier:v20];

  v21 = +[DEDRapportManager sharedInstance];
  v22 = [v21 mediaRemoteIdentifier];
  [v2 setMediaRemoteIdentifier:v22];

  v23 = +[DEDHomeKitManager sharedInstance];
  v24 = [v23 homeKitIdentifier];
  [v2 setHomeKitIdentifier:v24];

  v25 = +[DEDHomeKitManager sharedInstance];
  [v2 setIsHomeKitResident:{objc_msgSend(v25, "isHomeKitResident")}];

  v26 = +[DEDPersistence sharedInstance];
  v27 = [v26 bugSessionIdentifiers];
  [v2 setBugSessions:v27];

  return v2;
}

+ (id)arrayRepresentationForOperatingSystemVersion:(id *)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3->var0];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{a3->var1, v4}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3->var2];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromArrayRepresentation:(SEL)a3
{
  v5 = a4;
  if (v5 && (v11 = v5, v6 = [v5 count] > 2, v5 = v11, v6))
  {
    v7 = [v11 objectAtIndexedSubscript:0];
    retstr->var0 = [v7 integerValue];
    v8 = [v11 objectAtIndexedSubscript:1];
    retstr->var1 = [v8 integerValue];
    v9 = [v11 objectAtIndexedSubscript:2];
    retstr->var2 = [v9 integerValue];

    v5 = v11;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

+ (int64_t)deviceTypeFromIDSDeviceType:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_248B52FD8[a3 - 1];
  }
}

+ (int64_t)deviceTypeFromPlatform:(id)a3 deviceClass:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"macos"])
  {
    v7 = 1;
  }

  else if ([v5 isEqualToString:@"ios"])
  {
    if ([v6 isEqualToString:@"iPad"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else if ([v5 isEqualToString:@"tvos"])
  {
    v7 = 4;
  }

  else if ([v5 isEqualToString:@"watchos"])
  {
    v7 = 5;
  }

  else if ([v5 isEqualToString:@"homepod"])
  {
    v7 = 6;
  }

  else if ([v5 isEqualToString:@"visionos"])
  {
    v7 = 7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchIconImageDataForScale:(float)a3 completionCompletion:(id)a4
{
  v6 = a4;
  v7 = [(DEDDevice *)self imageData];

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke;
    block[3] = &unk_278F653F8;
    block[4] = self;
    v16 = v6;
    v8 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v9 = v16;
  }

  else
  {
    v10 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke_2;
    v12[3] = &unk_278F66578;
    v14 = a3;
    v12[4] = self;
    v13 = v6;
    v11 = v6;
    dispatch_async(v10, v12);

    v9 = v13;
  }
}

void __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageData];
  (*(v1 + 16))(v1, v2);
}

void __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke_2(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 48);
  v3 = [*(a1 + 32) imageURLForScale:a2];
  v4 = +[DEDImageResourceManager sharedInstance];
  v5 = [*(a1 + 32) identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke_3;
  v6[3] = &unk_278F66550;
  v7 = *(a1 + 40);
  [v4 asynchronousDataFromURL:v3 key:v5 completionBlock:v6];
}

void __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke_4;
  v6[3] = &unk_278F653F8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (id)imageData
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(DEDDevice *)v2 identifier];

  if (v3)
  {
    v4 = +[DEDImageResourceManager sharedInstance];
    v5 = [(DEDDevice *)v2 identifier];
    v6 = [v4 cachedImageFromKey:v5];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)imageURLForScale:(float)a3
{
  v5 = [(DEDDevice *)self color];
  if ([v5 length])
  {
    v6 = [(DEDDevice *)self enclosureColor];
    v7 = [v6 length];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = [(DEDDevice *)self color];
    v10 = [(DEDDevice *)self enclosureColor];
    v5 = [v8 stringWithFormat:@"%@-%@", v9, v10];

    v11 = [(DEDDevice *)self color];
    if ([v11 isEqualToString:@"unknown"])
    {
    }

    else
    {
      v13 = [(DEDDevice *)self enclosureColor];
      v14 = [v13 isEqualToString:@"unknown"];

      if ((v14 & 1) == 0)
      {
        v20 = [(DEDDevice *)self enclosureColor];
        v21 = [v20 intValue];

        if (v21)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-0", v5];
        }

        else
        {
          [v5 stringByReplacingOccurrencesOfString:@"#" withString:&stru_285B72378];
        }
        v12 = ;
        goto LABEL_8;
      }
    }
  }

  v12 = 0;
LABEL_8:

LABEL_9:
  v15 = [(DEDDevice *)self deviceClass];
  v16 = [(DEDDevice *)self productType];
  *&v17 = a3;
  v18 = [(DEDDevice *)self imageURLForDeviceClass:v15 deviceModel:v16 deviceColor:v12 size:0 variant:0 scale:v17];

  return v18;
}

- (id)imageURLForDeviceClass:(id)a3 deviceModel:(id)a4 deviceColor:(id)a5 size:(int64_t)a6 variant:(int64_t)a7 scale:(float)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = [MEMORY[0x277CBEBC0] URLWithString:@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/"];
  v17 = [v16 absoluteString];
  v18 = [v17 mutableCopy];

  if (a6 > 2)
  {
    v19 = @"nolocation-ipad";
  }

  else
  {
    v19 = off_278F66598[a6];
  }

  if ([(__CFString *)v13 isEqualToString:@"AudioAccessory"])
  {

    v13 = @"HomePod";
  }

  v20 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v21 = [(__CFString *)v13 stringByAddingPercentEncodingWithAllowedCharacters:v20];
  [v18 appendFormat:@"%@/", v21];

  v22 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v23 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:v22];
  [v18 appendFormat:@"%@", v23];

  if (v15 && [v15 length])
  {
    v24 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v25 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v24];
    [v18 appendFormat:@"-%@", v25];
  }

  [v18 appendString:@"/"];
  if ((a7 - 1) > 2)
  {
    v26 = @"online";
  }

  else
  {
    v26 = off_278F665B0[a7 - 1];
  }

  if (a8 <= 1.0)
  {
    v27 = &stru_285B72378;
  }

  else
  {
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"__%.0fx", a8];
  }

  if ([(__CFString *)v13 isEqualToString:@"RealityDevice"])
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://appleid.cdn-apple.com/static/deviceImages-12.0/RealityDevice/%@/online-sourcelist%@.png", v14, v27];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:v28];
  }

  else
  {
    [v18 appendFormat:@"%@-%@%@.png", v26, v19, v27];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:v18];
  }

  v30 = +[DEDUtils sharedLog];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [DEDDevice(UI) imageURLForDeviceClass:v29 deviceModel:v30 deviceColor:? size:? variant:? scale:?];
  }

  return v29;
}

@end