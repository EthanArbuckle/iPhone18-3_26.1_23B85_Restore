@interface UARPAccessoryID
- (BOOL)analyticsIsEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)shareAnalyticsEventsWithThirdParty;
- (NSString)modelAnalytics;
- (NSString)modelIdentifier;
- (NSString)modelName;
- (UARPAccessoryID)initWithCoder:(id)coder;
- (UARPAccessoryID)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version;
- (UARPAccessoryID)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version productGroup:(id)group productNumber:(id)productNumber;
- (UARPAccessoryID)initWithModelNumber:(id)number;
- (UARPAccessoryID)initWithProductGroup:(id)group productNumber:(id)number;
- (UARPAccessoryID)initWithoutUUID;
- (const)assetAvailabilityUpdateNotification;
- (const)supplementalAssetAvailabilityUpdateNotification;
- (id)computeModelIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)countryCode;
- (id)description;
- (id)partnerSerialNumbers;
- (id)uuid;
- (unint64_t)capability;
- (unint64_t)hash;
- (unint64_t)uarpVersion;
- (void)encodeWithCoder:(id)coder;
- (void)initCountryCode;
- (void)setCapability:(unint64_t)capability;
- (void)setCountryCode:(id)code;
- (void)setFirmwareVersion:(id)version;
- (void)setFriendlyName:(id)name;
- (void)setHwFusingType:(id)type;
- (void)setHwRevision:(id)revision;
- (void)setManufacturer:(id)manufacturer;
- (void)setModelName:(id)name;
- (void)setModelNumber:(id)number;
- (void)setPartnerSerialNumbers:(id)numbers;
- (void)setProductGroup:(id)group;
- (void)setProductNumber:(id)number;
- (void)setSerialNumber:(id)number;
- (void)setStagedFirmwareVersion:(id)version;
- (void)setSuppressAutomaticDynamicAssets:(BOOL)assets;
- (void)setSuppressInfoQueries:(BOOL)queries;
- (void)setUarpVersion:(unint64_t)version;
- (void)setUuid:(id)uuid;
@end

@implementation UARPAccessoryID

- (BOOL)analyticsIsEqual:(id)equal
{
  equalCopy = equal;
  modelNumber = [(UARPAccessoryID *)self modelNumber];
  modelNumber2 = [equalCopy modelNumber];
  if ([modelNumber isEqual:modelNumber2])
  {
    serialNumber = [(UARPAccessoryID *)self serialNumber];
    serialNumber2 = [equalCopy serialNumber];
    v9 = [serialNumber isEqual:serialNumber2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UARPAccessoryID)initWithoutUUID
{
  v6.receiver = self;
  v6.super_class = UARPAccessoryID;
  v2 = [(UARPAccessoryID *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v2->_uarpVersion = 0;
    [(UARPAccessoryID *)v2 initCountryCode];
  }

  return v2;
}

- (UARPAccessoryID)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version
{
  manufacturerCopy = manufacturer;
  nameCopy = name;
  numberCopy = number;
  versionCopy = version;
  initWithoutUUID = [(UARPAccessoryID *)self initWithoutUUID];
  if (initWithoutUUID)
  {
    v15 = [manufacturerCopy copy];
    manufacturer = initWithoutUUID->_manufacturer;
    initWithoutUUID->_manufacturer = v15;

    v17 = [nameCopy copy];
    modelName = initWithoutUUID->_modelName;
    initWithoutUUID->_modelName = v17;

    v19 = [numberCopy copy];
    serialNumber = initWithoutUUID->_serialNumber;
    initWithoutUUID->_serialNumber = v19;

    v21 = [versionCopy copy];
    firmwareVersion = initWithoutUUID->_firmwareVersion;
    initWithoutUUID->_firmwareVersion = v21;
  }

  return initWithoutUUID;
}

- (UARPAccessoryID)initWithManufacturer:(id)manufacturer modelName:(id)name serialNumber:(id)number firmwareVersion:(id)version productGroup:(id)group productNumber:(id)productNumber
{
  groupCopy = group;
  productNumberCopy = productNumber;
  v16 = [(UARPAccessoryID *)self initWithManufacturer:manufacturer modelName:name serialNumber:number firmwareVersion:version];
  if (v16)
  {
    v17 = [groupCopy copy];
    productGroup = v16->_productGroup;
    v16->_productGroup = v17;

    v19 = [productNumberCopy copy];
    productNumber = v16->_productNumber;
    v16->_productNumber = v19;
  }

  return v16;
}

- (void)initCountryCode
{
  if (objc_opt_class())
  {
    mEMORY[0x277D0EAF8] = [MEMORY[0x277D0EAF8] sharedConfiguration];
    countryCode = [mEMORY[0x277D0EAF8] countryCode];
    v4 = [countryCode copy];
    countryCode = self->_countryCode;
    self->_countryCode = v4;
  }
}

- (UARPAccessoryID)initWithModelNumber:(id)number
{
  numberCopy = number;
  initWithoutUUID = [(UARPAccessoryID *)self initWithoutUUID];
  if (initWithoutUUID)
  {
    v6 = [numberCopy copy];
    modelNumber = initWithoutUUID->_modelNumber;
    initWithoutUUID->_modelNumber = v6;
  }

  return initWithoutUUID;
}

- (UARPAccessoryID)initWithProductGroup:(id)group productNumber:(id)number
{
  groupCopy = group;
  numberCopy = number;
  initWithoutUUID = [(UARPAccessoryID *)self initWithoutUUID];
  if (initWithoutUUID)
  {
    v9 = [groupCopy copy];
    productGroup = initWithoutUUID->_productGroup;
    initWithoutUUID->_productGroup = v9;

    v11 = [numberCopy copy];
    productNumber = initWithoutUUID->_productNumber;
    initWithoutUUID->_productNumber = v11;
  }

  return initWithoutUUID;
}

- (UARPAccessoryID)initWithCoder:(id)coder
{
  v44[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = UARPAccessoryID;
  v5 = [(UARPAccessoryID *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productGroup"];
    productGroup = v5->_productGroup;
    v5->_productGroup = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
    productNumber = v5->_productNumber;
    v5->_productNumber = v10;

    v5->_autoDownloadAllowed = [coderCopy decodeBoolForKey:@"autoDownloadAllowed"];
    v5->_downloadOnCellularAllowed = [coderCopy decodeBoolForKey:@"downloadOnCellularAllowed"];
    v5->_transport = [coderCopy decodeIntegerForKey:@"transport"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastAddedDate"];
    lastAddedDate = v5->_lastAddedDate;
    v5->_lastAddedDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFirmwareVersion"];
    stagedFirmwareVersion = v5->_stagedFirmwareVersion;
    v5->_stagedFirmwareVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capability"];
    v5->_capability = [v28 unsignedLongLongValue];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hwFusingType"];
    hwFusingType = v5->_hwFusingType;
    v5->_hwFusingType = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    hwRevision = v5->_hwRevision;
    v5->_hwRevision = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uarpVersion"];
    v5->_uarpVersion = [v35 unsignedLongLongValue];

    v36 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v38 = [v36 setWithArray:v37];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"partnerSerialNumbers"];
    partnerSerialNumbers = v5->_partnerSerialNumbers;
    v5->_partnerSerialNumbers = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_manufacturer forKey:@"manufacturer"];
  [coderCopy encodeObject:selfCopy->_modelName forKey:@"modelName"];
  [coderCopy encodeObject:selfCopy->_modelNumber forKey:@"modelNumber"];
  [coderCopy encodeObject:selfCopy->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:selfCopy->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeObject:selfCopy->_productGroup forKey:@"productGroup"];
  [coderCopy encodeObject:selfCopy->_productNumber forKey:@"productNumber"];
  [coderCopy encodeBool:selfCopy->_autoDownloadAllowed forKey:@"autoDownloadAllowed"];
  [coderCopy encodeBool:selfCopy->_downloadOnCellularAllowed forKey:@"downloadOnCellularAllowed"];
  [coderCopy encodeInteger:selfCopy->_transport forKey:@"transport"];
  [coderCopy encodeObject:selfCopy->_lastAddedDate forKey:@"lastAddedDate"];
  [coderCopy encodeObject:selfCopy->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:selfCopy->_stagedFirmwareVersion forKey:@"stagedFirmwareVersion"];
  [coderCopy encodeObject:selfCopy->_uuid forKey:@"uuid"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:selfCopy->_capability];
  [coderCopy encodeObject:v5 forKey:@"capability"];

  [coderCopy encodeObject:selfCopy->_hwFusingType forKey:@"hwFusingType"];
  [coderCopy encodeObject:selfCopy->_hwRevision forKey:@"hwRevision"];
  [coderCopy encodeObject:selfCopy->_friendlyName forKey:@"friendlyName"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_uarpVersion];
  [coderCopy encodeObject:v6 forKey:@"uarpVersion"];

  [coderCopy encodeObject:selfCopy->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  objc_sync_exit(selfCopy);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UARPAccessoryID);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSUUID *)selfCopy->_uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  v8 = [(NSString *)selfCopy->_manufacturer copy];
  manufacturer = v4->_manufacturer;
  v4->_manufacturer = v8;

  v10 = [(NSString *)selfCopy->_modelName copy];
  modelName = v4->_modelName;
  v4->_modelName = v10;

  v12 = [(NSString *)selfCopy->_modelNumber copy];
  modelNumber = v4->_modelNumber;
  v4->_modelNumber = v12;

  v14 = [(NSString *)selfCopy->_serialNumber copy];
  serialNumber = v4->_serialNumber;
  v4->_serialNumber = v14;

  v16 = [(NSString *)selfCopy->_firmwareVersion copy];
  firmwareVersion = v4->_firmwareVersion;
  v4->_firmwareVersion = v16;

  v18 = [(NSString *)selfCopy->_productGroup copy];
  productGroup = v4->_productGroup;
  v4->_productGroup = v18;

  v20 = [(NSString *)selfCopy->_productNumber copy];
  productNumber = v4->_productNumber;
  v4->_productNumber = v20;

  v4->_autoDownloadAllowed = selfCopy->_autoDownloadAllowed;
  v4->_downloadOnCellularAllowed = selfCopy->_downloadOnCellularAllowed;
  v4->_transport = selfCopy->_transport;
  objc_storeStrong(&v4->_lastAddedDate, selfCopy->_lastAddedDate);
  v22 = [(NSString *)selfCopy->_countryCode copy];
  countryCode = v4->_countryCode;
  v4->_countryCode = v22;

  v24 = [(NSString *)selfCopy->_stagedFirmwareVersion copy];
  stagedFirmwareVersion = v4->_stagedFirmwareVersion;
  v4->_stagedFirmwareVersion = v24;

  v4->_capability = selfCopy->_capability;
  objc_storeStrong(&v4->_hwFusingType, selfCopy->_hwFusingType);
  objc_storeStrong(&v4->_hwRevision, selfCopy->_hwRevision);
  v26 = [(NSString *)selfCopy->_friendlyName copy];
  friendlyName = v4->_friendlyName;
  v4->_friendlyName = v26;

  v4->_uarpVersion = selfCopy->_uarpVersion;
  v28 = [(NSArray *)selfCopy->_partnerSerialNumbers copy];
  partnerSerialNumbers = v4->_partnerSerialNumbers;
  v4->_partnerSerialNumbers = v28;

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)uuid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_uuid;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  obj = self;
  objc_sync_enter(obj);
  uuid = obj->_uuid;
  obj->_uuid = uuidCopy;

  objc_sync_exit(obj);
}

- (void)setCountryCode:(id)code
{
  codeCopy = code;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [codeCopy copy];
  countryCode = selfCopy->_countryCode;
  selfCopy->_countryCode = v5;

  objc_sync_exit(selfCopy);
}

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [manufacturerCopy copy];
  manufacturer = selfCopy->_manufacturer;
  selfCopy->_manufacturer = v5;

  objc_sync_exit(selfCopy);
}

- (NSString)modelName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_modelName;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setModelName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [nameCopy copy];
  modelName = selfCopy->_modelName;
  selfCopy->_modelName = v5;

  objc_sync_exit(selfCopy);
}

- (void)setModelNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [numberCopy copy];
  modelNumber = selfCopy->_modelNumber;
  selfCopy->_modelNumber = v5;

  objc_sync_exit(selfCopy);
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [numberCopy copy];
  serialNumber = selfCopy->_serialNumber;
  selfCopy->_serialNumber = v5;

  objc_sync_exit(selfCopy);
}

- (void)setProductGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [groupCopy copy];
  productGroup = selfCopy->_productGroup;
  selfCopy->_productGroup = v5;

  objc_sync_exit(selfCopy);
}

- (void)setProductNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [numberCopy copy];
  productNumber = selfCopy->_productNumber;
  selfCopy->_productNumber = v5;

  objc_sync_exit(selfCopy);
}

- (void)setFirmwareVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [versionCopy copy];
  firmwareVersion = selfCopy->_firmwareVersion;
  selfCopy->_firmwareVersion = v5;

  objc_sync_exit(selfCopy);
}

- (void)setStagedFirmwareVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [versionCopy copy];
  stagedFirmwareVersion = selfCopy->_stagedFirmwareVersion;
  selfCopy->_stagedFirmwareVersion = v5;

  objc_sync_exit(selfCopy);
}

- (void)setHwFusingType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [typeCopy copy];
  hwFusingType = selfCopy->_hwFusingType;
  selfCopy->_hwFusingType = v5;

  objc_sync_exit(selfCopy);
}

- (void)setHwRevision:(id)revision
{
  revisionCopy = revision;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [revisionCopy copy];
  hwRevision = selfCopy->_hwRevision;
  selfCopy->_hwRevision = v5;

  objc_sync_exit(selfCopy);
}

- (void)setSuppressAutomaticDynamicAssets:(BOOL)assets
{
  obj = self;
  objc_sync_enter(obj);
  obj->_suppressAutomaticDynamicAssets = assets;
  objc_sync_exit(obj);
}

- (void)setSuppressInfoQueries:(BOOL)queries
{
  obj = self;
  objc_sync_enter(obj);
  obj->_suppressInfoQueries = queries;
  objc_sync_exit(obj);
}

- (void)setFriendlyName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [nameCopy copy];
  friendlyName = selfCopy->_friendlyName;
  selfCopy->_friendlyName = v5;

  objc_sync_exit(selfCopy);
}

- (unint64_t)uarpVersion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uarpVersion = selfCopy->_uarpVersion;
  objc_sync_exit(selfCopy);

  return uarpVersion;
}

- (void)setUarpVersion:(unint64_t)version
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uarpVersion = version;
  objc_sync_exit(obj);
}

- (id)countryCode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_countryCode;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCapability:(unint64_t)capability
{
  obj = self;
  objc_sync_enter(obj);
  obj->_capability = capability;
  objc_sync_exit(obj);
}

- (unint64_t)capability
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  capability = selfCopy->_capability;
  objc_sync_exit(selfCopy);

  return capability;
}

- (id)computeModelIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_productGroup && selfCopy->_productNumber)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", selfCopy->_productGroup, selfCopy->_productNumber];
LABEL_6:
    v5 = v3;
    goto LABEL_8;
  }

  modelNumber = selfCopy->_modelNumber;
  if (modelNumber)
  {
    v3 = modelNumber;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  objc_sync_exit(selfCopy);

  return v5;
}

- (NSString)modelIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  computeModelIdentifier = [(UARPAccessoryID *)selfCopy computeModelIdentifier];
  objc_sync_exit(selfCopy);

  return computeModelIdentifier;
}

- (NSString)modelAnalytics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  computeModelIdentifier = [(UARPAccessoryID *)selfCopy computeModelIdentifier];
  if (!computeModelIdentifier)
  {
    computeModelIdentifier = selfCopy->_modelName;
  }

  objc_sync_exit(selfCopy);

  return computeModelIdentifier;
}

- (BOOL)shareAnalyticsEventsWithThirdParty
{
  productGroup = [(UARPAccessoryID *)self productGroup];
  if (productGroup)
  {
    productNumber = [(UARPAccessoryID *)self productNumber];
    v5 = productNumber != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (const)assetAvailabilityUpdateNotification
{
  v2 = MEMORY[0x277CCACA8];
  uuid = [(UARPAccessoryID *)self uuid];
  v4 = [v2 stringWithFormat:@"com.apple.uarp.aau.%@", uuid];
  uTF8String = [v4 UTF8String];

  return uTF8String;
}

- (const)supplementalAssetAvailabilityUpdateNotification
{
  v2 = MEMORY[0x277CCACA8];
  uuid = [(UARPAccessoryID *)self uuid];
  v4 = [v2 stringWithFormat:@"com.apple.uarp.saau.%@", uuid];
  uTF8String = [v4 UTF8String];

  return uTF8String;
}

- (void)setPartnerSerialNumbers:(id)numbers
{
  numbersCopy = numbers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [numbersCopy copy];
  partnerSerialNumbers = selfCopy->_partnerSerialNumbers;
  selfCopy->_partnerSerialNumbers = v5;

  objc_sync_exit(selfCopy);
}

- (id)partnerSerialNumbers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSArray *)selfCopy->_partnerSerialNumbers containsObject:selfCopy->_serialNumber])
  {
    v3 = 0;
  }

  else
  {
    v3 = selfCopy->_partnerSerialNumbers;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v8 = 1;
    }

    else
    {
      v5 = equalCopy;
      uuid = [(UARPAccessoryID *)self uuid];
      uuid2 = [(UARPAccessoryID *)v5 uuid];

      v8 = [uuid isEqual:uuid2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  uuid = [(UARPAccessoryID *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uuid = [(UARPAccessoryID *)self uuid];
  v7 = [v3 stringWithFormat:@"<%@: uuid=%@ ", v5, uuid];

  manufacturer = [(UARPAccessoryID *)self manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [(UARPAccessoryID *)self manufacturer];
    [v7 appendFormat:@"manufacturer=%@ ", manufacturer2];
  }

  modelName = [(UARPAccessoryID *)self modelName];

  if (modelName)
  {
    modelName2 = [(UARPAccessoryID *)self modelName];
    [v7 appendFormat:@"model=%@ ", modelName2];
  }

  modelNumber = [(UARPAccessoryID *)self modelNumber];

  if (modelNumber)
  {
    modelNumber2 = [(UARPAccessoryID *)self modelNumber];
    [v7 appendFormat:@"modelNumber=%@ ", modelNumber2];
  }

  friendlyName = [(UARPAccessoryID *)self friendlyName];

  if (friendlyName)
  {
    friendlyName2 = [(UARPAccessoryID *)self friendlyName];
    [v7 appendFormat:@"friendlyName=%@ ", friendlyName2];
  }

  hwFusingType = [(UARPAccessoryID *)self hwFusingType];

  if (hwFusingType)
  {
    hwFusingType2 = [(UARPAccessoryID *)self hwFusingType];
    [v7 appendFormat:@"hwFusing=%@ ", hwFusingType2];
  }

  hwRevision = [(UARPAccessoryID *)self hwRevision];

  if (hwRevision)
  {
    hwRevision2 = [(UARPAccessoryID *)self hwRevision];
    [v7 appendFormat:@"hwRevision=%@ ", hwRevision2];
  }

  serialNumber = [(UARPAccessoryID *)self serialNumber];
  firmwareVersion = [(UARPAccessoryID *)self firmwareVersion];
  [v7 appendFormat:@"sn=%@ fw=%@ ", serialNumber, firmwareVersion];

  stagedFirmwareVersion = [(UARPAccessoryID *)self stagedFirmwareVersion];

  if (stagedFirmwareVersion)
  {
    stagedFirmwareVersion2 = [(UARPAccessoryID *)self stagedFirmwareVersion];
    [v7 appendFormat:@"stagedFW=%@ ", stagedFirmwareVersion2];
  }

  productGroup = [(UARPAccessoryID *)self productGroup];

  if (productGroup)
  {
    productGroup2 = [(UARPAccessoryID *)self productGroup];
    [v7 appendFormat:@"pg=%@ ", productGroup2];
  }

  productNumber = [(UARPAccessoryID *)self productNumber];

  if (productNumber)
  {
    productNumber2 = [(UARPAccessoryID *)self productNumber];
    [v7 appendFormat:@"pn=%@ ", productNumber2];
  }

  [v7 appendString:@">"];
  v28 = [MEMORY[0x277CCACA8] stringWithString:v7];

  return v28;
}

@end