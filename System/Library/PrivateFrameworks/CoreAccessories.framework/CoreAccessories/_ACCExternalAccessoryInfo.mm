@interface _ACCExternalAccessoryInfo
+ (id)filterAccessoryInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_ACCExternalAccessoryInfo)initWithAccessoryInfoDictionary:(id)a3;
- (id)copyAccessoryInfo;
- (id)description;
- (unint64_t)hash;
- (void)updateAccessoryInfo:(id)a3;
@end

@implementation _ACCExternalAccessoryInfo

- (_ACCExternalAccessoryInfo)initWithAccessoryInfoDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _ACCExternalAccessoryInfo;
  v5 = [(_ACCExternalAccessoryInfo *)&v35 init];
  if (v5)
  {
    v6 = [_ACCExternalAccessoryInfo filterAccessoryInfo:v4];
    fullAccessoryInfo = v5->_fullAccessoryInfo;
    v5->_fullAccessoryInfo = v6;

    v8 = [v4 objectForKey:@"IAPAppAccessoryTransportType"];
    transportType = v5->_transportType;
    v5->_transportType = v8;

    v10 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    primaryUUID = v5->_primaryUUID;
    v5->_primaryUUID = v10;

    v12 = [v4 objectForKey:@"IAPAppAccessoryNameKey"];
    name = v5->_name;
    v5->_name = v12;

    v14 = [v4 objectForKey:@"IAPAppAccessoryManufacturerKey"];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v14;

    v16 = [v4 objectForKey:@"IAPAppAccessoryModelNumberKey"];
    model = v5->_model;
    v5->_model = v16;

    v18 = [v4 objectForKey:@"IAPAppAccessorySerialNumberKey"];
    serial = v5->_serial;
    v5->_serial = v18;

    v20 = [v4 objectForKey:@"IAPAppAccessoryFirmwareRevisionKey"];
    firmwareRevisionActive = v5->_firmwareRevisionActive;
    v5->_firmwareRevisionActive = v20;

    v22 = [v4 objectForKey:@"IAPAppAccessoryFirmwareRevisionPendingKey"];
    firmwareRevisionPending = v5->_firmwareRevisionPending;
    v5->_firmwareRevisionPending = v22;

    v24 = [v4 objectForKey:@"IAPAppAccessoryHardwareRevisionKey"];
    hardwareRevision = v5->_hardwareRevision;
    v5->_hardwareRevision = v24;

    v26 = [v4 objectForKey:@"ACCExternalAccessoryPPIDKey"];
    ppid = v5->_ppid;
    v5->_ppid = v26;

    v28 = [v4 objectForKey:@"ACCExternalAccessoryVendorIDKey"];
    vendorID = v5->_vendorID;
    v5->_vendorID = v28;

    v30 = [v4 objectForKey:@"ACCExternalAccessoryProductIDKey"];
    productID = v5->_productID;
    v5->_productID = v30;

    v5->_destinationSharingOptions = 0;
    v32 = [v4 objectForKey:@"ACCExternalAccessoryIsMFiChargerKey"];
    isMFiCharger = v5->_isMFiCharger;
    v5->_isMFiCharger = v32;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_ACCExternalAccessoryInfo *)self primaryUUID];
  v5 = [(_ACCExternalAccessoryInfo *)self name];
  v6 = [(_ACCExternalAccessoryInfo *)self manufacturer];
  v7 = [(_ACCExternalAccessoryInfo *)self model];
  v8 = [(_ACCExternalAccessoryInfo *)self serial];
  v9 = [(_ACCExternalAccessoryInfo *)self firmwareRevisionActive];
  v10 = [(_ACCExternalAccessoryInfo *)self firmwareRevisionPending];
  v11 = [(_ACCExternalAccessoryInfo *)self hardwareRevision];
  v12 = [(_ACCExternalAccessoryInfo *)self ppid];
  v13 = [v3 stringWithFormat:@"<_ACCExternalAccessoryInfo>[%@ name='%@' manu='%@' model='%@' serial='%@' fw(active)='%@', fw(pending)='%@', hw='%@' ppid='%@']", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (void)updateAccessoryInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [_ACCExternalAccessoryInfo filterAccessoryInfo:v4];
    [(_ACCExternalAccessoryInfo *)self setFullAccessoryInfo:v5];

    v6 = [v4 objectForKey:@"IAPAppAccessoryTransportType"];
    [(_ACCExternalAccessoryInfo *)self setTransportType:v6];

    v7 = [v4 objectForKey:@"ACCExternalAccessoryPrimaryUUID"];
    [(_ACCExternalAccessoryInfo *)self setPrimaryUUID:v7];

    v8 = [v4 objectForKey:@"IAPAppAccessoryNameKey"];
    [(_ACCExternalAccessoryInfo *)self setName:v8];

    v9 = [v4 objectForKey:@"IAPAppAccessoryManufacturerKey"];
    [(_ACCExternalAccessoryInfo *)self setManufacturer:v9];

    v10 = [v4 objectForKey:@"IAPAppAccessoryModelNumberKey"];
    [(_ACCExternalAccessoryInfo *)self setModel:v10];

    v11 = [v4 objectForKey:@"IAPAppAccessorySerialNumberKey"];
    [(_ACCExternalAccessoryInfo *)self setSerial:v11];

    v12 = [v4 objectForKey:@"IAPAppAccessoryFirmwareRevisionKey"];
    [(_ACCExternalAccessoryInfo *)self setFirmwareRevisionActive:v12];

    v13 = [v4 objectForKey:@"IAPAppAccessoryFirmwareRevisionPendingKey"];
    [(_ACCExternalAccessoryInfo *)self setFirmwareRevisionPending:v13];

    v14 = [v4 objectForKey:@"IAPAppAccessoryHardwareRevisionKey"];
    [(_ACCExternalAccessoryInfo *)self setHardwareRevision:v14];

    v15 = [v4 objectForKey:@"ACCExternalAccessoryPPIDKey"];
    [(_ACCExternalAccessoryInfo *)self setPpid:v15];

    v16 = [v4 objectForKey:@"ACCExternalAccessoryVendorIDKey"];
    [(_ACCExternalAccessoryInfo *)self setVendorID:v16];

    v17 = [v4 objectForKey:@"ACCExternalAccessoryProductIDKey"];
    [(_ACCExternalAccessoryInfo *)self setProductID:v17];

    [(_ACCExternalAccessoryInfo *)self setDestinationSharingOptions:0];
    v18 = [v4 objectForKey:@"ACCExternalAccessoryIsMFiChargerKey"];

    [(_ACCExternalAccessoryInfo *)self setIsMFiCharger:v18];
  }
}

- (id)copyAccessoryInfo
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(_ACCExternalAccessoryInfo *)self fullAccessoryInfo];
  v5 = [v3 dictionaryWithDictionary:v4];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_ACCExternalAccessoryInfo *)self primaryUUID];
    v7 = [v5 primaryUUID];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(_ACCExternalAccessoryInfo *)self primaryUUID];
  v3 = [v2 hash];

  return v3;
}

+ (id)filterAccessoryInfo:(id)a3
{
  if (a3)
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