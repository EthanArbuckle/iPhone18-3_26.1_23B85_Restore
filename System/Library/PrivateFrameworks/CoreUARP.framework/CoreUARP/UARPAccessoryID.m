@interface UARPAccessoryID
- (BOOL)analyticsIsEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)shareAnalyticsEventsWithThirdParty;
- (NSString)modelAnalytics;
- (NSString)modelIdentifier;
- (NSString)modelName;
- (UARPAccessoryID)initWithCoder:(id)a3;
- (UARPAccessoryID)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6;
- (UARPAccessoryID)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6 productGroup:(id)a7 productNumber:(id)a8;
- (UARPAccessoryID)initWithModelNumber:(id)a3;
- (UARPAccessoryID)initWithProductGroup:(id)a3 productNumber:(id)a4;
- (UARPAccessoryID)initWithoutUUID;
- (const)assetAvailabilityUpdateNotification;
- (const)supplementalAssetAvailabilityUpdateNotification;
- (id)computeModelIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)countryCode;
- (id)description;
- (id)partnerSerialNumbers;
- (id)uuid;
- (unint64_t)capability;
- (unint64_t)hash;
- (unint64_t)uarpVersion;
- (void)encodeWithCoder:(id)a3;
- (void)initCountryCode;
- (void)setCapability:(unint64_t)a3;
- (void)setCountryCode:(id)a3;
- (void)setFirmwareVersion:(id)a3;
- (void)setFriendlyName:(id)a3;
- (void)setHwFusingType:(id)a3;
- (void)setHwRevision:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setModelName:(id)a3;
- (void)setModelNumber:(id)a3;
- (void)setPartnerSerialNumbers:(id)a3;
- (void)setProductGroup:(id)a3;
- (void)setProductNumber:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setStagedFirmwareVersion:(id)a3;
- (void)setSuppressAutomaticDynamicAssets:(BOOL)a3;
- (void)setSuppressInfoQueries:(BOOL)a3;
- (void)setUarpVersion:(unint64_t)a3;
- (void)setUuid:(id)a3;
@end

@implementation UARPAccessoryID

- (BOOL)analyticsIsEqual:(id)a3
{
  v4 = a3;
  v5 = [(UARPAccessoryID *)self modelNumber];
  v6 = [v4 modelNumber];
  if ([v5 isEqual:v6])
  {
    v7 = [(UARPAccessoryID *)self serialNumber];
    v8 = [v4 serialNumber];
    v9 = [v7 isEqual:v8];
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

- (UARPAccessoryID)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UARPAccessoryID *)self initWithoutUUID];
  if (v14)
  {
    v15 = [v10 copy];
    manufacturer = v14->_manufacturer;
    v14->_manufacturer = v15;

    v17 = [v11 copy];
    modelName = v14->_modelName;
    v14->_modelName = v17;

    v19 = [v12 copy];
    serialNumber = v14->_serialNumber;
    v14->_serialNumber = v19;

    v21 = [v13 copy];
    firmwareVersion = v14->_firmwareVersion;
    v14->_firmwareVersion = v21;
  }

  return v14;
}

- (UARPAccessoryID)initWithManufacturer:(id)a3 modelName:(id)a4 serialNumber:(id)a5 firmwareVersion:(id)a6 productGroup:(id)a7 productNumber:(id)a8
{
  v14 = a7;
  v15 = a8;
  v16 = [(UARPAccessoryID *)self initWithManufacturer:a3 modelName:a4 serialNumber:a5 firmwareVersion:a6];
  if (v16)
  {
    v17 = [v14 copy];
    productGroup = v16->_productGroup;
    v16->_productGroup = v17;

    v19 = [v15 copy];
    productNumber = v16->_productNumber;
    v16->_productNumber = v19;
  }

  return v16;
}

- (void)initCountryCode
{
  if (objc_opt_class())
  {
    v6 = [MEMORY[0x277D0EAF8] sharedConfiguration];
    v3 = [v6 countryCode];
    v4 = [v3 copy];
    countryCode = self->_countryCode;
    self->_countryCode = v4;
  }
}

- (UARPAccessoryID)initWithModelNumber:(id)a3
{
  v4 = a3;
  v5 = [(UARPAccessoryID *)self initWithoutUUID];
  if (v5)
  {
    v6 = [v4 copy];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v6;
  }

  return v5;
}

- (UARPAccessoryID)initWithProductGroup:(id)a3 productNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPAccessoryID *)self initWithoutUUID];
  if (v8)
  {
    v9 = [v6 copy];
    productGroup = v8->_productGroup;
    v8->_productGroup = v9;

    v11 = [v7 copy];
    productNumber = v8->_productNumber;
    v8->_productNumber = v11;
  }

  return v8;
}

- (UARPAccessoryID)initWithCoder:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = UARPAccessoryID;
  v5 = [(UARPAccessoryID *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productGroup"];
    productGroup = v5->_productGroup;
    v5->_productGroup = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
    productNumber = v5->_productNumber;
    v5->_productNumber = v10;

    v5->_autoDownloadAllowed = [v4 decodeBoolForKey:@"autoDownloadAllowed"];
    v5->_downloadOnCellularAllowed = [v4 decodeBoolForKey:@"downloadOnCellularAllowed"];
    v5->_transport = [v4 decodeIntegerForKey:@"transport"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastAddedDate"];
    lastAddedDate = v5->_lastAddedDate;
    v5->_lastAddedDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFirmwareVersion"];
    stagedFirmwareVersion = v5->_stagedFirmwareVersion;
    v5->_stagedFirmwareVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturer"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelName"];
    modelName = v5->_modelName;
    v5->_modelName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v5->_modelNumber;
    v5->_modelNumber = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firmwareVersion"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capability"];
    v5->_capability = [v28 unsignedLongLongValue];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hwFusingType"];
    hwFusingType = v5->_hwFusingType;
    v5->_hwFusingType = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    hwRevision = v5->_hwRevision;
    v5->_hwRevision = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uarpVersion"];
    v5->_uarpVersion = [v35 unsignedLongLongValue];

    v36 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v38 = [v36 setWithArray:v37];
    v39 = [v4 decodeObjectOfClasses:v38 forKey:@"partnerSerialNumbers"];
    partnerSerialNumbers = v5->_partnerSerialNumbers;
    v5->_partnerSerialNumbers = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v7 encodeObject:v4->_manufacturer forKey:@"manufacturer"];
  [v7 encodeObject:v4->_modelName forKey:@"modelName"];
  [v7 encodeObject:v4->_modelNumber forKey:@"modelNumber"];
  [v7 encodeObject:v4->_serialNumber forKey:@"serialNumber"];
  [v7 encodeObject:v4->_firmwareVersion forKey:@"firmwareVersion"];
  [v7 encodeObject:v4->_productGroup forKey:@"productGroup"];
  [v7 encodeObject:v4->_productNumber forKey:@"productNumber"];
  [v7 encodeBool:v4->_autoDownloadAllowed forKey:@"autoDownloadAllowed"];
  [v7 encodeBool:v4->_downloadOnCellularAllowed forKey:@"downloadOnCellularAllowed"];
  [v7 encodeInteger:v4->_transport forKey:@"transport"];
  [v7 encodeObject:v4->_lastAddedDate forKey:@"lastAddedDate"];
  [v7 encodeObject:v4->_countryCode forKey:@"countryCode"];
  [v7 encodeObject:v4->_stagedFirmwareVersion forKey:@"stagedFirmwareVersion"];
  [v7 encodeObject:v4->_uuid forKey:@"uuid"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4->_capability];
  [v7 encodeObject:v5 forKey:@"capability"];

  [v7 encodeObject:v4->_hwFusingType forKey:@"hwFusingType"];
  [v7 encodeObject:v4->_hwRevision forKey:@"hwRevision"];
  [v7 encodeObject:v4->_friendlyName forKey:@"friendlyName"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4->_uarpVersion];
  [v7 encodeObject:v6 forKey:@"uarpVersion"];

  [v7 encodeObject:v4->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  objc_sync_exit(v4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UARPAccessoryID);
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSUUID *)v5->_uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  v8 = [(NSString *)v5->_manufacturer copy];
  manufacturer = v4->_manufacturer;
  v4->_manufacturer = v8;

  v10 = [(NSString *)v5->_modelName copy];
  modelName = v4->_modelName;
  v4->_modelName = v10;

  v12 = [(NSString *)v5->_modelNumber copy];
  modelNumber = v4->_modelNumber;
  v4->_modelNumber = v12;

  v14 = [(NSString *)v5->_serialNumber copy];
  serialNumber = v4->_serialNumber;
  v4->_serialNumber = v14;

  v16 = [(NSString *)v5->_firmwareVersion copy];
  firmwareVersion = v4->_firmwareVersion;
  v4->_firmwareVersion = v16;

  v18 = [(NSString *)v5->_productGroup copy];
  productGroup = v4->_productGroup;
  v4->_productGroup = v18;

  v20 = [(NSString *)v5->_productNumber copy];
  productNumber = v4->_productNumber;
  v4->_productNumber = v20;

  v4->_autoDownloadAllowed = v5->_autoDownloadAllowed;
  v4->_downloadOnCellularAllowed = v5->_downloadOnCellularAllowed;
  v4->_transport = v5->_transport;
  objc_storeStrong(&v4->_lastAddedDate, v5->_lastAddedDate);
  v22 = [(NSString *)v5->_countryCode copy];
  countryCode = v4->_countryCode;
  v4->_countryCode = v22;

  v24 = [(NSString *)v5->_stagedFirmwareVersion copy];
  stagedFirmwareVersion = v4->_stagedFirmwareVersion;
  v4->_stagedFirmwareVersion = v24;

  v4->_capability = v5->_capability;
  objc_storeStrong(&v4->_hwFusingType, v5->_hwFusingType);
  objc_storeStrong(&v4->_hwRevision, v5->_hwRevision);
  v26 = [(NSString *)v5->_friendlyName copy];
  friendlyName = v4->_friendlyName;
  v4->_friendlyName = v26;

  v4->_uarpVersion = v5->_uarpVersion;
  v28 = [(NSArray *)v5->_partnerSerialNumbers copy];
  partnerSerialNumbers = v4->_partnerSerialNumbers;
  v4->_partnerSerialNumbers = v28;

  objc_sync_exit(v5);
  return v4;
}

- (id)uuid
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_uuid;
  objc_sync_exit(v2);

  return v3;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  uuid = obj->_uuid;
  obj->_uuid = v4;

  objc_sync_exit(obj);
}

- (void)setCountryCode:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  countryCode = v4->_countryCode;
  v4->_countryCode = v5;

  objc_sync_exit(v4);
}

- (void)setManufacturer:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  manufacturer = v4->_manufacturer;
  v4->_manufacturer = v5;

  objc_sync_exit(v4);
}

- (NSString)modelName
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_modelName;
  objc_sync_exit(v2);

  return v3;
}

- (void)setModelName:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  modelName = v4->_modelName;
  v4->_modelName = v5;

  objc_sync_exit(v4);
}

- (void)setModelNumber:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  modelNumber = v4->_modelNumber;
  v4->_modelNumber = v5;

  objc_sync_exit(v4);
}

- (void)setSerialNumber:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  serialNumber = v4->_serialNumber;
  v4->_serialNumber = v5;

  objc_sync_exit(v4);
}

- (void)setProductGroup:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  productGroup = v4->_productGroup;
  v4->_productGroup = v5;

  objc_sync_exit(v4);
}

- (void)setProductNumber:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  productNumber = v4->_productNumber;
  v4->_productNumber = v5;

  objc_sync_exit(v4);
}

- (void)setFirmwareVersion:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  firmwareVersion = v4->_firmwareVersion;
  v4->_firmwareVersion = v5;

  objc_sync_exit(v4);
}

- (void)setStagedFirmwareVersion:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  stagedFirmwareVersion = v4->_stagedFirmwareVersion;
  v4->_stagedFirmwareVersion = v5;

  objc_sync_exit(v4);
}

- (void)setHwFusingType:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  hwFusingType = v4->_hwFusingType;
  v4->_hwFusingType = v5;

  objc_sync_exit(v4);
}

- (void)setHwRevision:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  hwRevision = v4->_hwRevision;
  v4->_hwRevision = v5;

  objc_sync_exit(v4);
}

- (void)setSuppressAutomaticDynamicAssets:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_suppressAutomaticDynamicAssets = a3;
  objc_sync_exit(obj);
}

- (void)setSuppressInfoQueries:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_suppressInfoQueries = a3;
  objc_sync_exit(obj);
}

- (void)setFriendlyName:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  friendlyName = v4->_friendlyName;
  v4->_friendlyName = v5;

  objc_sync_exit(v4);
}

- (unint64_t)uarpVersion
{
  v2 = self;
  objc_sync_enter(v2);
  uarpVersion = v2->_uarpVersion;
  objc_sync_exit(v2);

  return uarpVersion;
}

- (void)setUarpVersion:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_uarpVersion = a3;
  objc_sync_exit(obj);
}

- (id)countryCode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_countryCode;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCapability:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_capability = a3;
  objc_sync_exit(obj);
}

- (unint64_t)capability
{
  v2 = self;
  objc_sync_enter(v2);
  capability = v2->_capability;
  objc_sync_exit(v2);

  return capability;
}

- (id)computeModelIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_productGroup && v2->_productNumber)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", v2->_productGroup, v2->_productNumber];
LABEL_6:
    v5 = v3;
    goto LABEL_8;
  }

  modelNumber = v2->_modelNumber;
  if (modelNumber)
  {
    v3 = modelNumber;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_8:
  objc_sync_exit(v2);

  return v5;
}

- (NSString)modelIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UARPAccessoryID *)v2 computeModelIdentifier];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)modelAnalytics
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UARPAccessoryID *)v2 computeModelIdentifier];
  if (!v3)
  {
    v3 = v2->_modelName;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)shareAnalyticsEventsWithThirdParty
{
  v3 = [(UARPAccessoryID *)self productGroup];
  if (v3)
  {
    v4 = [(UARPAccessoryID *)self productNumber];
    v5 = v4 != 0;
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
  v3 = [(UARPAccessoryID *)self uuid];
  v4 = [v2 stringWithFormat:@"com.apple.uarp.aau.%@", v3];
  v5 = [v4 UTF8String];

  return v5;
}

- (const)supplementalAssetAvailabilityUpdateNotification
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(UARPAccessoryID *)self uuid];
  v4 = [v2 stringWithFormat:@"com.apple.uarp.saau.%@", v3];
  v5 = [v4 UTF8String];

  return v5;
}

- (void)setPartnerSerialNumbers:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  partnerSerialNumbers = v4->_partnerSerialNumbers;
  v4->_partnerSerialNumbers = v5;

  objc_sync_exit(v4);
}

- (id)partnerSerialNumbers
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSArray *)v2->_partnerSerialNumbers containsObject:v2->_serialNumber])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2->_partnerSerialNumbers;
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(UARPAccessoryID *)self uuid];
      v7 = [(UARPAccessoryID *)v5 uuid];

      v8 = [v6 isEqual:v7];
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
  v2 = [(UARPAccessoryID *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UARPAccessoryID *)self uuid];
  v7 = [v3 stringWithFormat:@"<%@: uuid=%@ ", v5, v6];

  v8 = [(UARPAccessoryID *)self manufacturer];

  if (v8)
  {
    v9 = [(UARPAccessoryID *)self manufacturer];
    [v7 appendFormat:@"manufacturer=%@ ", v9];
  }

  v10 = [(UARPAccessoryID *)self modelName];

  if (v10)
  {
    v11 = [(UARPAccessoryID *)self modelName];
    [v7 appendFormat:@"model=%@ ", v11];
  }

  v12 = [(UARPAccessoryID *)self modelNumber];

  if (v12)
  {
    v13 = [(UARPAccessoryID *)self modelNumber];
    [v7 appendFormat:@"modelNumber=%@ ", v13];
  }

  v14 = [(UARPAccessoryID *)self friendlyName];

  if (v14)
  {
    v15 = [(UARPAccessoryID *)self friendlyName];
    [v7 appendFormat:@"friendlyName=%@ ", v15];
  }

  v16 = [(UARPAccessoryID *)self hwFusingType];

  if (v16)
  {
    v17 = [(UARPAccessoryID *)self hwFusingType];
    [v7 appendFormat:@"hwFusing=%@ ", v17];
  }

  v18 = [(UARPAccessoryID *)self hwRevision];

  if (v18)
  {
    v19 = [(UARPAccessoryID *)self hwRevision];
    [v7 appendFormat:@"hwRevision=%@ ", v19];
  }

  v20 = [(UARPAccessoryID *)self serialNumber];
  v21 = [(UARPAccessoryID *)self firmwareVersion];
  [v7 appendFormat:@"sn=%@ fw=%@ ", v20, v21];

  v22 = [(UARPAccessoryID *)self stagedFirmwareVersion];

  if (v22)
  {
    v23 = [(UARPAccessoryID *)self stagedFirmwareVersion];
    [v7 appendFormat:@"stagedFW=%@ ", v23];
  }

  v24 = [(UARPAccessoryID *)self productGroup];

  if (v24)
  {
    v25 = [(UARPAccessoryID *)self productGroup];
    [v7 appendFormat:@"pg=%@ ", v25];
  }

  v26 = [(UARPAccessoryID *)self productNumber];

  if (v26)
  {
    v27 = [(UARPAccessoryID *)self productNumber];
    [v7 appendFormat:@"pn=%@ ", v27];
  }

  [v7 appendString:@">"];
  v28 = [MEMORY[0x277CCACA8] stringWithString:v7];

  return v28;
}

@end