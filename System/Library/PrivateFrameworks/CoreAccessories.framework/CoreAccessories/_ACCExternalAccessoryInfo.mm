@interface _ACCExternalAccessoryInfo
+ (id)filterAccessoryInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (_ACCExternalAccessoryInfo)initWithAccessoryInfoDictionary:(id)dictionary;
- (id)copyAccessoryInfo;
- (id)description;
- (unint64_t)hash;
- (void)updateAccessoryInfo:(id)info;
@end

@implementation _ACCExternalAccessoryInfo

- (_ACCExternalAccessoryInfo)initWithAccessoryInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = _ACCExternalAccessoryInfo;
  v5 = [(_ACCExternalAccessoryInfo *)&v35 init];
  if (v5)
  {
    v6 = [_ACCExternalAccessoryInfo filterAccessoryInfo:dictionaryCopy];
    fullAccessoryInfo = v5->_fullAccessoryInfo;
    v5->_fullAccessoryInfo = v6;

    v8 = [dictionaryCopy objectForKey:@"IAPAppAccessoryTransportType"];
    transportType = v5->_transportType;
    v5->_transportType = v8;

    v10 = [dictionaryCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    primaryUUID = v5->_primaryUUID;
    v5->_primaryUUID = v10;

    v12 = [dictionaryCopy objectForKey:@"IAPAppAccessoryNameKey"];
    name = v5->_name;
    v5->_name = v12;

    v14 = [dictionaryCopy objectForKey:@"IAPAppAccessoryManufacturerKey"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v14;

    v16 = [dictionaryCopy objectForKey:@"IAPAppAccessoryModelNumberKey"];
    model = v5->_model;
    v5->_model = v16;

    v18 = [dictionaryCopy objectForKey:@"IAPAppAccessorySerialNumberKey"];
    serial = v5->_serial;
    v5->_serial = v18;

    v20 = [dictionaryCopy objectForKey:@"IAPAppAccessoryFirmwareRevisionKey"];
    firmwareRevisionActive = v5->_firmwareRevisionActive;
    v5->_firmwareRevisionActive = v20;

    v22 = [dictionaryCopy objectForKey:@"IAPAppAccessoryFirmwareRevisionPendingKey"];
    firmwareRevisionPending = v5->_firmwareRevisionPending;
    v5->_firmwareRevisionPending = v22;

    v24 = [dictionaryCopy objectForKey:@"IAPAppAccessoryHardwareRevisionKey"];
    hardwareRevision = v5->_hardwareRevision;
    v5->_hardwareRevision = v24;

    v26 = [dictionaryCopy objectForKey:@"ACCExternalAccessoryPPIDKey"];
    ppid = v5->_ppid;
    v5->_ppid = v26;

    v28 = [dictionaryCopy objectForKey:@"ACCExternalAccessoryVendorIDKey"];
    vendorID = v5->_vendorID;
    v5->_vendorID = v28;

    v30 = [dictionaryCopy objectForKey:@"ACCExternalAccessoryProductIDKey"];
    productID = v5->_productID;
    v5->_productID = v30;

    v5->_destinationSharingOptions = 0;
    v32 = [dictionaryCopy objectForKey:@"ACCExternalAccessoryIsMFiChargerKey"];
    isMFiCharger = v5->_isMFiCharger;
    v5->_isMFiCharger = v32;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  primaryUUID = [(_ACCExternalAccessoryInfo *)self primaryUUID];
  name = [(_ACCExternalAccessoryInfo *)self name];
  manufacturer = [(_ACCExternalAccessoryInfo *)self manufacturer];
  model = [(_ACCExternalAccessoryInfo *)self model];
  serial = [(_ACCExternalAccessoryInfo *)self serial];
  firmwareRevisionActive = [(_ACCExternalAccessoryInfo *)self firmwareRevisionActive];
  firmwareRevisionPending = [(_ACCExternalAccessoryInfo *)self firmwareRevisionPending];
  hardwareRevision = [(_ACCExternalAccessoryInfo *)self hardwareRevision];
  ppid = [(_ACCExternalAccessoryInfo *)self ppid];
  v13 = [v3 stringWithFormat:@"<_ACCExternalAccessoryInfo>[%@ name='%@' manu='%@' model='%@' serial='%@' fw(active)='%@', fw(pending)='%@', hw='%@' ppid='%@']", primaryUUID, name, manufacturer, model, serial, firmwareRevisionActive, firmwareRevisionPending, hardwareRevision, ppid];

  return v13;
}

- (void)updateAccessoryInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v5 = [_ACCExternalAccessoryInfo filterAccessoryInfo:infoCopy];
    [(_ACCExternalAccessoryInfo *)self setFullAccessoryInfo:v5];

    v6 = [infoCopy objectForKey:@"IAPAppAccessoryTransportType"];
    [(_ACCExternalAccessoryInfo *)self setTransportType:v6];

    v7 = [infoCopy objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    [(_ACCExternalAccessoryInfo *)self setPrimaryUUID:v7];

    v8 = [infoCopy objectForKey:@"IAPAppAccessoryNameKey"];
    [(_ACCExternalAccessoryInfo *)self setName:v8];

    v9 = [infoCopy objectForKey:@"IAPAppAccessoryManufacturerKey"];
    [(_ACCExternalAccessoryInfo *)self setManufacturer:v9];

    v10 = [infoCopy objectForKey:@"IAPAppAccessoryModelNumberKey"];
    [(_ACCExternalAccessoryInfo *)self setModel:v10];

    v11 = [infoCopy objectForKey:@"IAPAppAccessorySerialNumberKey"];
    [(_ACCExternalAccessoryInfo *)self setSerial:v11];

    v12 = [infoCopy objectForKey:@"IAPAppAccessoryFirmwareRevisionKey"];
    [(_ACCExternalAccessoryInfo *)self setFirmwareRevisionActive:v12];

    v13 = [infoCopy objectForKey:@"IAPAppAccessoryFirmwareRevisionPendingKey"];
    [(_ACCExternalAccessoryInfo *)self setFirmwareRevisionPending:v13];

    v14 = [infoCopy objectForKey:@"IAPAppAccessoryHardwareRevisionKey"];
    [(_ACCExternalAccessoryInfo *)self setHardwareRevision:v14];

    v15 = [infoCopy objectForKey:@"ACCExternalAccessoryPPIDKey"];
    [(_ACCExternalAccessoryInfo *)self setPpid:v15];

    v16 = [infoCopy objectForKey:@"ACCExternalAccessoryVendorIDKey"];
    [(_ACCExternalAccessoryInfo *)self setVendorID:v16];

    v17 = [infoCopy objectForKey:@"ACCExternalAccessoryProductIDKey"];
    [(_ACCExternalAccessoryInfo *)self setProductID:v17];

    [(_ACCExternalAccessoryInfo *)self setDestinationSharingOptions:0];
    v18 = [infoCopy objectForKey:@"ACCExternalAccessoryIsMFiChargerKey"];

    [(_ACCExternalAccessoryInfo *)self setIsMFiCharger:v18];
  }
}

- (id)copyAccessoryInfo
{
  v3 = MEMORY[0x277CBEB38];
  fullAccessoryInfo = [(_ACCExternalAccessoryInfo *)self fullAccessoryInfo];
  v5 = [v3 dictionaryWithDictionary:fullAccessoryInfo];

  v6 = [v5 objectForKey:@"IAPAppAccessoryCertDataKey"];

  if (v6)
  {
    [v5 removeObjectForKey:@"IAPAppAccessoryCertDataKey"];
  }

  v7 = [v5 objectForKey:@"IAPAppAccessoryCertSerialNumberKey"];

  if (v7)
  {
    [v5 removeObjectForKey:@"IAPAppAccessoryCertSerialNumberKey"];
  }

  if ([(_ACCExternalAccessoryInfo *)self destinationSharingOptions])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[_ACCExternalAccessoryInfo destinationSharingOptions](self, "destinationSharingOptions")}];
    [v5 setObject:v8 forKey:kACCDestinationSharingOptionsKey];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    primaryUUID = [(_ACCExternalAccessoryInfo *)self primaryUUID];
    primaryUUID2 = [v5 primaryUUID];

    v8 = [primaryUUID isEqualToString:primaryUUID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  primaryUUID = [(_ACCExternalAccessoryInfo *)self primaryUUID];
  v3 = [primaryUUID hash];

  return v3;
}

+ (id)filterAccessoryInfo:(id)info
{
  if (info)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKey:@"IAPAppAccessoryTransportType"];
      v6 = [v4 objectForKey:@"ACCExternalAccessoryIsMFiChargerKey"];
      if ([v5 intValue] == 12 && (objc_msgSend(v6, "BOOLValue") & 1) == 0)
      {
        [v4 removeObjectForKey:@"IAPAppAccessoryHardwareRevisionKey"];
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end