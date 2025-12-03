@interface DEDDevice
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromArrayRepresentation:(SEL)representation;
+ (id)_currentDeviceId;
+ (id)archivedClasses;
+ (id)arrayRepresentationForOperatingSystemVersion:(id *)version;
+ (id)currentDevice;
+ (id)currentDeviceWithDaemonInfo;
+ (id)deviceForSFDevice:(id)device andStatus:(int64_t)status;
+ (id)deviceForSFDevice:(id)device systemInfo:(id)info andStatus:(int64_t)status;
+ (id)deviceWithDictionary:(id)dictionary;
+ (id)deviceWithIDSDevice:(id)device address:(id)address;
+ (id)nilSafeDevice;
+ (int64_t)deviceTypeFromIDSDeviceType:(int64_t)type;
+ (int64_t)deviceTypeFromPlatform:(id)platform deviceClass:(id)class;
- (BOOL)hasCapabilities:(id)capabilities;
- (BOOL)isCurrentDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)isLikeDevice:(id)device;
- (BOOL)isMoreCompleteThan:(id)than;
- (BOOL)isTemporaryDevice;
- (DEDDevice)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)publicLogSafeIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hashingKey;
- (id)hashingKeyForTempDevice;
- (id)imageData;
- (id)imageURLForDeviceClass:(id)class deviceModel:(id)model deviceColor:(id)color size:(int64_t)size variant:(int64_t)variant scale:(float)scale;
- (id)imageURLForScale:(float)scale;
- (id)publicLogDescription;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
- (void)fetchIconImageDataForScale:(float)scale completionCompletion:(id)completion;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  address = [(DEDDevice *)self address];
  [coderCopy encodeObject:address forKey:@"address"];

  [(DEDDevice *)self operatingSystemVersion];
  v6 = [DEDDevice arrayRepresentationForOperatingSystemVersion:v31];
  [coderCopy encodeObject:v6 forKey:@"operatingSystemVersion"];

  build = [(DEDDevice *)self build];
  [coderCopy encodeObject:build forKey:@"build"];

  color = [(DEDDevice *)self color];
  [coderCopy encodeObject:color forKey:@"color"];

  deviceClass = [(DEDDevice *)self deviceClass];
  [coderCopy encodeObject:deviceClass forKey:@"deviceClass"];

  enclosureColor = [(DEDDevice *)self enclosureColor];
  [coderCopy encodeObject:enclosureColor forKey:@"enclosureColor"];

  identifier = [(DEDDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  model = [(DEDDevice *)self model];
  [coderCopy encodeObject:model forKey:@"model"];

  name = [(DEDDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  productType = [(DEDDevice *)self productType];
  [coderCopy encodeObject:productType forKey:@"productType"];

  [coderCopy encodeInteger:-[DEDDevice status](self forKey:{"status"), @"status"}];
  [coderCopy encodeInteger:-[DEDDevice transport](self forKey:{"transport"), @"transport"}];
  platform = [(DEDDevice *)self platform];
  [coderCopy encodeObject:platform forKey:@"platform"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice deviceType](self, "deviceType")}];
  [coderCopy encodeObject:v16 forKey:@"deviceType"];

  [coderCopy encodeInteger:-[DEDDevice remoteTransport](self forKey:{"remoteTransport"), @"remoteTransport"}];
  capabilities = [(DEDDevice *)self capabilities];
  v18 = [DEDCapability encodeCapabilitySet:capabilities];
  [coderCopy encodeObject:v18 forKey:@"capabilities"];

  hardwareCodename = [(DEDDevice *)self hardwareCodename];
  [coderCopy encodeObject:hardwareCodename forKey:@"hardwareCodename"];

  serialNumber = [(DEDDevice *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  [coderCopy encodeInteger:-[DEDDevice homeButtonType](self forKey:{"homeButtonType"), @"homeButtonType"}];
  uniformTypeIdentifier = [(DEDDevice *)self uniformTypeIdentifier];
  [coderCopy encodeObject:uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];

  idsIdentifier = [(DEDDevice *)self idsIdentifier];
  [coderCopy encodeObject:idsIdentifier forKey:@"idsIdentifier"];

  companionDeviceIdentifier = [(DEDDevice *)self companionDeviceIdentifier];
  [coderCopy encodeObject:companionDeviceIdentifier forKey:@"companionDeviceIdentifier"];

  homeTheaterSystemName = [(DEDDevice *)self homeTheaterSystemName];
  [coderCopy encodeObject:homeTheaterSystemName forKey:@"homeTheaterSystemName"];

  homeTheaterSystemIdentifier = [(DEDDevice *)self homeTheaterSystemIdentifier];
  [coderCopy encodeObject:homeTheaterSystemIdentifier forKey:@"homeTheaterSystemIdentifier"];

  mediaSystemName = [(DEDDevice *)self mediaSystemName];
  [coderCopy encodeObject:mediaSystemName forKey:@"mediaSystemName"];

  [coderCopy encodeInteger:-[DEDDevice mediaSystemRole](self forKey:{"mediaSystemRole"), @"mediaSystemRole"}];
  mediaSystemIdentifier = [(DEDDevice *)self mediaSystemIdentifier];
  [coderCopy encodeObject:mediaSystemIdentifier forKey:@"mediaSystemIdentifier"];

  mediaRemoteIdentifier = [(DEDDevice *)self mediaRemoteIdentifier];
  [coderCopy encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];

  homeKitIdentifier = [(DEDDevice *)self homeKitIdentifier];
  [coderCopy encodeObject:homeKitIdentifier forKey:@"homeKitIdentifier"];

  [coderCopy encodeBool:-[DEDDevice isHomeKitResident](self forKey:{"isHomeKitResident"), @"isHomeKitResident"}];
  bugSessions = [(DEDDevice *)self bugSessions];
  [coderCopy encodeObject:bugSessions forKey:@"bugSessions"];
}

- (DEDDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v61.receiver = self;
  v61.super_class = DEDDevice;
  v5 = [(DEDDevice *)&v61 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"operatingSystemVersion"];
    [DEDDevice operatingSystemVersionFromArrayRepresentation:v8];
    *(v5 + 264) = v59;
    *(v5 + 35) = v60;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    v10 = *(v5 + 3);
    *(v5 + 3) = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    v12 = *(v5 + 4);
    *(v5 + 4) = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    v14 = *(v5 + 5);
    *(v5 + 5) = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enclosureColor"];
    v16 = *(v5 + 6);
    *(v5 + 6) = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v18 = *(v5 + 7);
    *(v5 + 7) = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    v20 = *(v5 + 8);
    *(v5 + 8) = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v22 = *(v5 + 9);
    *(v5 + 9) = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    v24 = *(v5 + 10);
    *(v5 + 10) = v23;

    *(v5 + 15) = [coderCopy decodeIntegerForKey:@"status"];
    *(v5 + 16) = [coderCopy decodeIntegerForKey:@"transport"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    v26 = *(v5 + 11);
    *(v5 + 11) = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    *(v5 + 12) = [v27 integerValue];

    *(v5 + 17) = [coderCopy decodeIntegerForKey:@"remoteTransport"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capabilities"];
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

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hardwareCodename"];
    v32 = *(v5 + 19);
    *(v5 + 19) = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    v34 = *(v5 + 20);
    *(v5 + 20) = v33;

    *(v5 + 21) = [coderCopy decodeIntegerForKey:@"homeButtonType"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    v36 = *(v5 + 22);
    *(v5 + 22) = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
    v38 = *(v5 + 23);
    *(v5 + 23) = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companionDeviceIdentifier"];
    v40 = *(v5 + 24);
    *(v5 + 24) = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeTheaterSystemName"];
    v42 = *(v5 + 25);
    *(v5 + 25) = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeTheaterSystemIdentifier"];
    v44 = *(v5 + 26);
    *(v5 + 26) = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaSystemName"];
    v46 = *(v5 + 27);
    *(v5 + 27) = v45;

    *(v5 + 28) = [coderCopy decodeIntegerForKey:@"mediaSystemRole"];
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaSystemIdentifier"];
    v48 = *(v5 + 29);
    *(v5 + 29) = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
    v50 = *(v5 + 30);
    *(v5 + 30) = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKitIdentifier"];
    v52 = *(v5 + 31);
    *(v5 + 31) = v51;

    v5[8] = [coderCopy decodeBoolForKey:@"isHomeKitResident"];
    v53 = MEMORY[0x277CBEB98];
    v54 = objc_opt_class();
    v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
    v56 = [coderCopy decodeObjectOfClasses:v55 forKey:@"bugSessions"];
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

+ (id)deviceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"address"];
  v6 = stringIfNil(v5);
  [v4 setAddress:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"operatingSystemVersion"];
  [DEDDevice operatingSystemVersionFromArrayRepresentation:v7];
  v54 = v56;
  v55 = v57;
  [v4 setOperatingSystemVersion:&v54];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"build"];
  v9 = stringIfNil(v8);
  [v4 setBuild:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"color"];
  v11 = stringIfNil(v10);
  [v4 setColor:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"deviceClass"];
  v13 = stringIfNil(v12);
  [v4 setDeviceClass:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"enclosureColor"];
  v15 = stringIfNil(v14);
  [v4 setEnclosureColor:v15];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v17 = stringIfNil(v16);
  [v4 setIdentifier:v17];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"model"];
  v19 = stringIfNil(v18);
  [v4 setModel:v19];

  v20 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v21 = stringIfNil(v20);
  [v4 setName:v21];

  v22 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  v23 = stringIfNil(v22);
  [v4 setProductType:v23];

  v24 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  [v4 setStatus:{objc_msgSend(v24, "integerValue")}];

  v25 = [dictionaryCopy objectForKeyedSubscript:@"transport"];
  [v4 setTransport:{objc_msgSend(v25, "integerValue")}];

  v26 = [dictionaryCopy objectForKeyedSubscript:@"platform"];
  v27 = stringIfNil(v26);
  [v4 setPlatform:v27];

  v28 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
  v29 = v28;
  if (v28)
  {
    [v4 setDeviceType:{objc_msgSend(v28, "integerValue")}];
  }

  else
  {
    platform = [v4 platform];
    deviceClass = [v4 deviceClass];
    [v4 setDeviceType:{+[DEDDevice deviceTypeFromPlatform:deviceClass:](DEDDevice, "deviceTypeFromPlatform:deviceClass:", platform, deviceClass)}];
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:@"remoteTransport"];
  [v4 setRemoteTransport:{objc_msgSend(v32, "integerValue")}];

  v33 = [dictionaryCopy objectForKeyedSubscript:@"capabilities"];
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

  v35 = [dictionaryCopy objectForKeyedSubscript:@"hardwareCodename"];
  [v4 setHardwareCodename:v35];

  v36 = [dictionaryCopy objectForKeyedSubscript:@"serialNumber"];
  [v4 setSerialNumber:v36];

  v37 = [dictionaryCopy objectForKeyedSubscript:@"homeButtonType"];
  [v4 setHomeButtonType:{objc_msgSend(v37, "integerValue")}];

  v38 = [dictionaryCopy objectForKeyedSubscript:@"uniformTypeIdentifier"];
  [v4 setUniformTypeIdentifier:v38];

  v39 = [dictionaryCopy objectForKeyedSubscript:@"idsIdentifier"];
  [v4 setIdsIdentifier:v39];

  v40 = [dictionaryCopy objectForKeyedSubscript:@"companionDeviceIdentifier"];
  [v4 setCompanionDeviceIdentifier:v40];

  v41 = [dictionaryCopy objectForKeyedSubscript:@"homeTheaterSystemName"];
  [v4 setHomeTheaterSystemName:v41];

  v42 = [dictionaryCopy objectForKeyedSubscript:@"homeTheaterSystemIdentifier"];
  [v4 setHomeTheaterSystemIdentifier:v42];

  v43 = [dictionaryCopy objectForKeyedSubscript:@"mediaSystemName"];
  [v4 setMediaSystemName:v43];

  v44 = [dictionaryCopy objectForKeyedSubscript:@"mediaSystemRole"];
  [v4 setMediaSystemRole:{objc_msgSend(v44, "integerValue")}];

  v45 = [dictionaryCopy objectForKeyedSubscript:@"mediaSystemIdentifier"];
  [v4 setMediaSystemIdentifier:v45];

  v46 = [dictionaryCopy objectForKeyedSubscript:@"mediaRemoteIdentifier"];
  [v4 setMediaRemoteIdentifier:v46];

  v47 = [dictionaryCopy objectForKeyedSubscript:@"homeKitIdentifier"];
  [v4 setHomeKitIdentifier:v47];

  v48 = [dictionaryCopy objectForKeyedSubscript:@"isHomeKitResident"];
  [v4 setIsHomeKitResident:{objc_msgSend(v48, "BOOLValue")}];

  v49 = [dictionaryCopy objectForKeyedSubscript:@"bugSessions"];

  if (v49)
  {
    v50 = MEMORY[0x277CBEB98];
    v51 = [dictionaryCopy objectForKeyedSubscript:@"bugSessions"];
    v52 = [v50 setWithArray:v51];
    [v4 setBugSessions:v52];
  }

  return v4;
}

+ (id)deviceForSFDevice:(id)device andStatus:(int64_t)status
{
  deviceCopy = device;
  v6 = +[DEDDevice nilSafeDevice];
  if (v6)
  {
    identifier = [deviceCopy identifier];
    uUIDString = [identifier UUIDString];
    v9 = stringIfNil(uUIDString);
    [v6 setIdentifier:v9];

    identifier2 = [deviceCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    v12 = stringIfNil(uUIDString2);
    [v6 setAddress:v12];

    [v6 setBuild:&stru_285B72378];
    model = [deviceCopy model];
    v14 = [DEDUtils deviceClassForProductType:model];
    [v6 setDeviceClass:v14];

    name = [deviceCopy name];
    v16 = stringIfNil(name);
    [v6 setName:v16];

    model2 = [deviceCopy model];
    v18 = stringIfNil(model2);
    [v6 setModel:v18];

    [v6 setStatus:status];
    [v6 setTransport:3];
    [v6 setRemoteTransport:3];
    v19 = +[DEDCapability defaultCapabilities];
    [v6 setCapabilities:v19];

    [v6 setSfDevice:deviceCopy];
  }

  return v6;
}

+ (id)deviceForSFDevice:(id)device systemInfo:(id)info andStatus:(int64_t)status
{
  deviceCopy = device;
  infoCopy = info;
  v9 = +[DEDDevice nilSafeDevice];
  if (v9)
  {
    identifier = [deviceCopy identifier];
    uUIDString = [identifier UUIDString];
    v12 = stringIfNil(uUIDString);
    [v9 setIdentifier:v12];

    identifier2 = [deviceCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    v15 = stringIfNil(uUIDString2);
    [v9 setAddress:v15];

    v16 = [infoCopy objectForKeyedSubscript:@"osBuild"];
    v17 = stringIfNil(v16);
    [v9 setBuild:v17];

    v18 = [infoCopy objectForKeyedSubscript:@"model"];
    v19 = [DEDUtils deviceClassForProductType:v18];
    [v9 setDeviceClass:v19];

    v20 = [infoCopy objectForKeyedSubscript:@"name"];
    v21 = stringIfNil(v20);
    [v9 setName:v21];

    model = [deviceCopy model];
    if (model && (v23 = model, [deviceCopy model], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v23, v25))
    {
      model2 = [deviceCopy model];
      v27 = stringIfNil(model2);
    }

    else
    {
      model2 = [infoCopy objectForKeyedSubscript:@"model"];
      v27 = [DEDUtils modelForProductType:model2];
    }

    v28 = v27;
    [v9 setModel:v27];

    v29 = [infoCopy objectForKeyedSubscript:@"model"];
    v30 = stringIfNil(v29);
    [v9 setProductType:v30];

    [v9 setTransport:3];
    [v9 setRemoteTransport:3];
    [v9 setStatus:status];
    v31 = +[DEDCapability defaultCapabilities];
    [v9 setCapabilities:v31];

    [v9 setSfDevice:deviceCopy];
  }

  return v9;
}

+ (id)deviceWithIDSDevice:(id)device address:(id)address
{
  deviceCopy = device;
  addressCopy = address;
  v7 = +[DEDDevice nilSafeDevice];
  if (v7)
  {
    v8 = stringIfNil(addressCopy);
    [v7 setIdentifier:v8];

    v9 = stringIfNil(addressCopy);
    [v7 setAddress:v9];

    if (deviceCopy)
    {
      [deviceCopy operatingSystemVersion];
    }

    else
    {
      v29 = 0uLL;
      v30 = 0;
    }

    v27 = v29;
    v28 = v30;
    [v7 setOperatingSystemVersion:&v27];
    productBuildVersion = [deviceCopy productBuildVersion];
    v11 = stringIfNil(productBuildVersion);
    [v7 setBuild:v11];

    modelIdentifier = [deviceCopy modelIdentifier];
    v13 = [DEDUtils deviceClassForProductType:modelIdentifier];
    [v7 setDeviceClass:v13];

    deviceColor = [deviceCopy deviceColor];
    v15 = stringIfNil(deviceColor);
    [v7 setColor:v15];

    enclosureColor = [deviceCopy enclosureColor];
    v17 = stringIfNil(enclosureColor);
    [v7 setEnclosureColor:v17];

    name = [deviceCopy name];
    v19 = stringIfNil(name);
    [v7 setName:v19];

    productName = [deviceCopy productName];
    v21 = stringIfNil(productName);
    [v7 setModel:v21];

    modelIdentifier2 = [deviceCopy modelIdentifier];
    v23 = stringIfNil(modelIdentifier2);
    [v7 setProductType:v23];

    [v7 setTransport:4];
    [v7 setDeviceType:{+[DEDDevice deviceTypeFromIDSDeviceType:](DEDDevice, "deviceTypeFromIDSDeviceType:", objc_msgSend(deviceCopy, "deviceType"))}];
    [v7 setRemoteTransport:4];
    [v7 setStatus:3];
    v24 = +[DEDCapability defaultCapabilities];
    [v7 setCapabilities:v24];

    uniqueIDOverride = [deviceCopy uniqueIDOverride];
    [v7 setIdsIdentifier:uniqueIDOverride];
  }

  return v7;
}

- (id)serialize
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  address = [(DEDDevice *)self address];
  v5 = stringIfNil(address);
  [dictionary setObject:v5 forKeyedSubscript:@"address"];

  [(DEDDevice *)self operatingSystemVersion];
  v6 = [DEDDevice arrayRepresentationForOperatingSystemVersion:v49];
  [dictionary setObject:v6 forKeyedSubscript:@"operatingSystemVersion"];

  build = [(DEDDevice *)self build];
  v8 = stringIfNil(build);
  [dictionary setObject:v8 forKeyedSubscript:@"build"];

  color = [(DEDDevice *)self color];
  v10 = stringIfNil(color);
  [dictionary setObject:v10 forKeyedSubscript:@"color"];

  deviceClass = [(DEDDevice *)self deviceClass];
  v12 = stringIfNil(deviceClass);
  [dictionary setObject:v12 forKeyedSubscript:@"deviceClass"];

  enclosureColor = [(DEDDevice *)self enclosureColor];
  v14 = stringIfNil(enclosureColor);
  [dictionary setObject:v14 forKeyedSubscript:@"enclosureColor"];

  identifier = [(DEDDevice *)self identifier];
  v16 = stringIfNil(identifier);
  [dictionary setObject:v16 forKeyedSubscript:@"identifier"];

  model = [(DEDDevice *)self model];
  v18 = stringIfNil(model);
  [dictionary setObject:v18 forKeyedSubscript:@"model"];

  name = [(DEDDevice *)self name];
  v20 = stringIfNil(name);
  [dictionary setObject:v20 forKeyedSubscript:@"name"];

  productType = [(DEDDevice *)self productType];
  v22 = stringIfNil(productType);
  [dictionary setObject:v22 forKeyedSubscript:@"productType"];

  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice status](self, "status")}];
  [dictionary setObject:v23 forKeyedSubscript:@"status"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice transport](self, "transport")}];
  [dictionary setObject:v24 forKeyedSubscript:@"transport"];

  platform = [(DEDDevice *)self platform];
  v26 = stringIfNil(platform);
  [dictionary setObject:v26 forKeyedSubscript:@"platform"];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice deviceType](self, "deviceType")}];
  [dictionary setObject:v27 forKeyedSubscript:@"deviceType"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice remoteTransport](self, "remoteTransport")}];
  [dictionary setObject:v28 forKeyedSubscript:@"remoteTransport"];

  capabilities = [(DEDDevice *)self capabilities];
  v30 = [DEDCapability encodeCapabilitySet:capabilities];
  [dictionary setObject:v30 forKeyedSubscript:@"capabilities"];

  hardwareCodename = [(DEDDevice *)self hardwareCodename];
  [dictionary setObject:hardwareCodename forKeyedSubscript:@"hardwareCodename"];

  serialNumber = [(DEDDevice *)self serialNumber];
  [dictionary setObject:serialNumber forKeyedSubscript:@"serialNumber"];

  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice homeButtonType](self, "homeButtonType")}];
  [dictionary setObject:v33 forKeyedSubscript:@"homeButtonType"];

  uniformTypeIdentifier = [(DEDDevice *)self uniformTypeIdentifier];
  [dictionary setObject:uniformTypeIdentifier forKeyedSubscript:@"uniformTypeIdentifier"];

  idsIdentifier = [(DEDDevice *)self idsIdentifier];
  [dictionary setObject:idsIdentifier forKeyedSubscript:@"idsIdentifier"];

  companionDeviceIdentifier = [(DEDDevice *)self companionDeviceIdentifier];
  [dictionary setObject:companionDeviceIdentifier forKeyedSubscript:@"companionDeviceIdentifier"];

  homeTheaterSystemName = [(DEDDevice *)self homeTheaterSystemName];
  [dictionary setObject:homeTheaterSystemName forKeyedSubscript:@"homeTheaterSystemName"];

  homeTheaterSystemIdentifier = [(DEDDevice *)self homeTheaterSystemIdentifier];
  [dictionary setObject:homeTheaterSystemIdentifier forKeyedSubscript:@"homeTheaterSystemIdentifier"];

  mediaSystemName = [(DEDDevice *)self mediaSystemName];
  [dictionary setObject:mediaSystemName forKeyedSubscript:@"mediaSystemName"];

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DEDDevice mediaSystemRole](self, "mediaSystemRole")}];
  [dictionary setObject:v40 forKeyedSubscript:@"mediaSystemRole"];

  mediaSystemIdentifier = [(DEDDevice *)self mediaSystemIdentifier];
  [dictionary setObject:mediaSystemIdentifier forKeyedSubscript:@"mediaSystemIdentifier"];

  mediaRemoteIdentifier = [(DEDDevice *)self mediaRemoteIdentifier];
  [dictionary setObject:mediaRemoteIdentifier forKeyedSubscript:@"mediaRemoteIdentifier"];

  homeKitIdentifier = [(DEDDevice *)self homeKitIdentifier];
  [dictionary setObject:homeKitIdentifier forKeyedSubscript:@"homeKitIdentifier"];

  v44 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDDevice isHomeKitResident](self, "isHomeKitResident")}];
  [dictionary setObject:v44 forKeyedSubscript:@"isHomeKitResident"];

  bugSessions = [(DEDDevice *)self bugSessions];

  if (bugSessions)
  {
    bugSessions2 = [(DEDDevice *)self bugSessions];
    allObjects = [bugSessions2 allObjects];
    [dictionary setObject:allObjects forKeyedSubscript:@"bugSessions"];
  }

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  serialize = [(DEDDevice *)self serialize];
  v4 = [DEDDevice deviceWithDictionary:serialize];

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
  identifier = [(DEDDevice *)self identifier];
  _currentDeviceId = [objc_opt_class() _currentDeviceId];
  v4 = [identifier isEqualToString:_currentDeviceId];

  return v4;
}

- (NSString)description
{
  string = [MEMORY[0x277CCAB68] string];
  platform = [(DEDDevice *)self platform];
  v5 = [(DEDDevice *)self deviceType]- 1;
  if (v5 > 6)
  {
    v6 = "Unknown";
  }

  else
  {
    v6 = off_278F65FD0[v5];
  }

  build = [(DEDDevice *)self build];
  productType = [(DEDDevice *)self productType];
  status = [(DEDDevice *)self status];
  if ((status - 1) > 3)
  {
    v10 = "Unknown";
  }

  else
  {
    v10 = off_278F66008[status - 1];
  }

  [string appendFormat:@"\nDEDDevice: %@ %s %@ (%@) -- %s", platform, v6, build, productType, v10];

  transport = [(DEDDevice *)self transport];
  if (transport > 4)
  {
    v12 = "Unknown";
  }

  else
  {
    v12 = off_278F66028[transport];
  }

  publicLogSafeIdentifier = [(DEDDevice *)self publicLogSafeIdentifier];
  [string appendFormat:@"\n%s (%@)", v12, publicLogSafeIdentifier];

  v14 = [MEMORY[0x277CCACA8] stringWithString:string];

  return v14;
}

- (id)publicLogDescription
{
  v3 = MEMORY[0x277CCACA8];
  productType = [(DEDDevice *)self productType];
  name = [(DEDDevice *)self name];
  v6 = [v3 stringWithFormat:@"%@ - %@", productType, name];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DEDDevice *)self isEqualToDevice:equalCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DEDDevice;
    v5 = [(DEDDevice *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToDevice:(id)device
{
  if (self == device)
  {
    return 1;
  }

  identifier = [device identifier];
  identifier2 = [(DEDDevice *)self identifier];
  v6 = [identifier isEqualToString:identifier2];

  return v6;
}

- (id)hashingKey
{
  _hashingKey = [(DEDDevice *)self _hashingKey];

  if (!_hashingKey)
  {
    if ([(DEDDevice *)self isCurrentDevice])
    {
      identifier = [(DEDDevice *)self identifier];
      _hashingKey2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", 1, identifier];
    }

    else
    {
      isTemporaryDevice = [(DEDDevice *)self isTemporaryDevice];
      identifier = [(DEDDevice *)self identifier];
      remoteTransport = [(DEDDevice *)self remoteTransport];
      _hashingKey2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", remoteTransport, identifier];
      if (isTemporaryDevice)
      {

        goto LABEL_8;
      }
    }

    [(DEDDevice *)self set_hashingKey:_hashingKey2];
  }

  _hashingKey2 = [(DEDDevice *)self _hashingKey];
LABEL_8:

  return _hashingKey2;
}

- (BOOL)isLikeDevice:(id)device
{
  deviceCopy = device;
  deviceClass = [deviceCopy deviceClass];
  if (![deviceClass length])
  {
    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  name = [deviceCopy name];
  if (![name length])
  {
    goto LABEL_8;
  }

  build = [deviceCopy build];
  v8 = [build length];

  if (v8)
  {
    deviceClass = [(DEDDevice *)self deviceClass];
    name = [deviceCopy deviceClass];
    if ([deviceClass isEqualToString:name])
    {
      name2 = [(DEDDevice *)self name];
      name3 = [deviceCopy name];
      if ([name2 isEqualToString:name3])
      {
        build2 = [(DEDDevice *)self build];
        build3 = [deviceCopy build];
        v13 = [build2 isEqualToString:build3];
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

- (BOOL)isMoreCompleteThan:(id)than
{
  thanCopy = than;
  isTemporaryDevice = [(DEDDevice *)self isTemporaryDevice];
  LODWORD(v6) = [thanCopy isTemporaryDevice];
  if (isTemporaryDevice == v6)
  {
    serialize = [(DEDDevice *)self serialize];
    v6 = __32__DEDDevice_isMoreCompleteThan___block_invoke(serialize, serialize);
    serialize2 = [thanCopy serialize];
    LOBYTE(v6) = v6 > __32__DEDDevice_isMoreCompleteThan___block_invoke(serialize2, serialize2);
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

- (BOOL)hasCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  capabilities = [(DEDDevice *)self capabilities];
  v6 = [capabilitiesCopy isSubsetOfSet:capabilities];

  return v6;
}

- (NSString)publicLogSafeIdentifier
{
  if ([(DEDDevice *)self status]== 3 && ([(DEDDevice *)self transport]== 4 || [(DEDDevice *)self remoteTransport]== 4))
  {
    idsIdentifier = [(DEDDevice *)self idsIdentifier];
  }

  else
  {
    idsIdentifier = [(DEDDevice *)self identifier];
  }

  return idsIdentifier;
}

- (BOOL)isTemporaryDevice
{
  identifier = [(DEDDevice *)self identifier];
  address = [(DEDDevice *)self address];
  v5 = [identifier isEqualToString:address];

  return v5;
}

- (id)hashingKeyForTempDevice
{
  address = [(DEDDevice *)self address];
  remoteTransport = [(DEDDevice *)self remoteTransport];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i-%@", remoteTransport, address];

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

  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v10 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BC30]];

  if (v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ded:%@", v10];
    [v2 setCompanionDeviceIdentifier:v11];
  }

  v12 = +[DEDHomeKitManager sharedInstance];
  homeTheaterSystemName = [v12 homeTheaterSystemName];
  [v2 setHomeTheaterSystemName:homeTheaterSystemName];

  v14 = +[DEDHomeKitManager sharedInstance];
  homeTheaterSystemIdentifier = [v14 homeTheaterSystemIdentifier];
  [v2 setHomeTheaterSystemIdentifier:homeTheaterSystemIdentifier];

  v16 = +[DEDRapportManager sharedInstance];
  mediaSystemName = [v16 mediaSystemName];
  [v2 setMediaSystemName:mediaSystemName];

  v18 = +[DEDRapportManager sharedInstance];
  [v2 setMediaSystemRole:{objc_msgSend(v18, "mediaSystemRole")}];

  v19 = +[DEDRapportManager sharedInstance];
  mediaSystemIdentifier = [v19 mediaSystemIdentifier];
  [v2 setMediaSystemIdentifier:mediaSystemIdentifier];

  v21 = +[DEDRapportManager sharedInstance];
  mediaRemoteIdentifier = [v21 mediaRemoteIdentifier];
  [v2 setMediaRemoteIdentifier:mediaRemoteIdentifier];

  v23 = +[DEDHomeKitManager sharedInstance];
  homeKitIdentifier = [v23 homeKitIdentifier];
  [v2 setHomeKitIdentifier:homeKitIdentifier];

  v25 = +[DEDHomeKitManager sharedInstance];
  [v2 setIsHomeKitResident:{objc_msgSend(v25, "isHomeKitResident")}];

  v26 = +[DEDPersistence sharedInstance];
  bugSessionIdentifiers = [v26 bugSessionIdentifiers];
  [v2 setBugSessions:bugSessionIdentifiers];

  return v2;
}

+ (id)arrayRepresentationForOperatingSystemVersion:(id *)version
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:version->var0];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{version->var1, v4}];
  v10[1] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:version->var2];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersionFromArrayRepresentation:(SEL)representation
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

+ (int64_t)deviceTypeFromIDSDeviceType:(int64_t)type
{
  if ((type - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_248B52FD8[type - 1];
  }
}

+ (int64_t)deviceTypeFromPlatform:(id)platform deviceClass:(id)class
{
  platformCopy = platform;
  classCopy = class;
  if ([platformCopy isEqualToString:@"macos"])
  {
    v7 = 1;
  }

  else if ([platformCopy isEqualToString:@"ios"])
  {
    if ([classCopy isEqualToString:@"iPad"])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else if ([platformCopy isEqualToString:@"tvos"])
  {
    v7 = 4;
  }

  else if ([platformCopy isEqualToString:@"watchos"])
  {
    v7 = 5;
  }

  else if ([platformCopy isEqualToString:@"homepod"])
  {
    v7 = 6;
  }

  else if ([platformCopy isEqualToString:@"visionos"])
  {
    v7 = 7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchIconImageDataForScale:(float)scale completionCompletion:(id)completion
{
  completionCopy = completion;
  imageData = [(DEDDevice *)self imageData];

  if (imageData)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__DEDDevice_UI__fetchIconImageDataForScale_completionCompletion___block_invoke;
    block[3] = &unk_278F653F8;
    block[4] = self;
    v16 = completionCopy;
    v8 = completionCopy;
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
    scaleCopy = scale;
    v12[4] = self;
    v13 = completionCopy;
    v11 = completionCopy;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [(DEDDevice *)selfCopy identifier];

  if (identifier)
  {
    v4 = +[DEDImageResourceManager sharedInstance];
    identifier2 = [(DEDDevice *)selfCopy identifier];
    v6 = [v4 cachedImageFromKey:identifier2];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)imageURLForScale:(float)scale
{
  color = [(DEDDevice *)self color];
  if ([color length])
  {
    enclosureColor = [(DEDDevice *)self enclosureColor];
    v7 = [enclosureColor length];

    if (!v7)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v8 = MEMORY[0x277CCACA8];
    color2 = [(DEDDevice *)self color];
    enclosureColor2 = [(DEDDevice *)self enclosureColor];
    color = [v8 stringWithFormat:@"%@-%@", color2, enclosureColor2];

    color3 = [(DEDDevice *)self color];
    if ([color3 isEqualToString:@"unknown"])
    {
    }

    else
    {
      enclosureColor3 = [(DEDDevice *)self enclosureColor];
      v14 = [enclosureColor3 isEqualToString:@"unknown"];

      if ((v14 & 1) == 0)
      {
        enclosureColor4 = [(DEDDevice *)self enclosureColor];
        intValue = [enclosureColor4 intValue];

        if (intValue)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"%@-0", color];
        }

        else
        {
          [color stringByReplacingOccurrencesOfString:@"#" withString:&stru_285B72378];
        }
        v12 = ;
        goto LABEL_8;
      }
    }
  }

  v12 = 0;
LABEL_8:

LABEL_9:
  deviceClass = [(DEDDevice *)self deviceClass];
  productType = [(DEDDevice *)self productType];
  *&v17 = scale;
  v18 = [(DEDDevice *)self imageURLForDeviceClass:deviceClass deviceModel:productType deviceColor:v12 size:0 variant:0 scale:v17];

  return v18;
}

- (id)imageURLForDeviceClass:(id)class deviceModel:(id)model deviceColor:(id)color size:(int64_t)size variant:(int64_t)variant scale:(float)scale
{
  classCopy = class;
  modelCopy = model;
  colorCopy = color;
  v16 = [MEMORY[0x277CBEBC0] URLWithString:@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/"];
  absoluteString = [v16 absoluteString];
  v18 = [absoluteString mutableCopy];

  if (size > 2)
  {
    v19 = @"nolocation-ipad";
  }

  else
  {
    v19 = off_278F66598[size];
  }

  if ([(__CFString *)classCopy isEqualToString:@"AudioAccessory"])
  {

    classCopy = @"HomePod";
  }

  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v21 = [(__CFString *)classCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  [v18 appendFormat:@"%@/", v21];

  uRLPathAllowedCharacterSet2 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v23 = [modelCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet2];
  [v18 appendFormat:@"%@", v23];

  if (colorCopy && [colorCopy length])
  {
    uRLPathAllowedCharacterSet3 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v25 = [colorCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet3];
    [v18 appendFormat:@"-%@", v25];
  }

  [v18 appendString:@"/"];
  if ((variant - 1) > 2)
  {
    v26 = @"online";
  }

  else
  {
    v26 = off_278F665B0[variant - 1];
  }

  if (scale <= 1.0)
  {
    scale = &stru_285B72378;
  }

  else
  {
    scale = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"__%.0fx", scale];
  }

  if ([(__CFString *)classCopy isEqualToString:@"RealityDevice"])
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://appleid.cdn-apple.com/static/deviceImages-12.0/RealityDevice/%@/online-sourcelist%@.png", modelCopy, scale];
    v29 = [MEMORY[0x277CBEBC0] URLWithString:v28];
  }

  else
  {
    [v18 appendFormat:@"%@-%@%@.png", v26, v19, scale];
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