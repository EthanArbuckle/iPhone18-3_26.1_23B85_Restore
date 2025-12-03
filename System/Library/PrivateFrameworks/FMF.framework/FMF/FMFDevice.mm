@interface FMFDevice
- (BOOL)isEqual:(id)equal;
- (FMFDevice)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFDevice

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  deviceName = [(FMFDevice *)self deviceName];
  [v4 setDeviceName:deviceName];

  [v4 setIsActiveDevice:{-[FMFDevice isActiveDevice](self, "isActiveDevice")}];
  [v4 setIsAutoMeCapable:{-[FMFDevice isAutoMeCapable](self, "isAutoMeCapable")}];
  idsDeviceId = [(FMFDevice *)self idsDeviceId];
  [v4 setIdsDeviceId:idsDeviceId];

  [v4 setIsThisDevice:{-[FMFDevice isThisDevice](self, "isThisDevice")}];
  [v4 setIsCompanionDevice:{-[FMFDevice isCompanionDevice](self, "isCompanionDevice")}];
  deviceId = [(FMFDevice *)self deviceId];
  [v4 setDeviceId:deviceId];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceId = [(FMFDevice *)self deviceId];
  [coderCopy encodeObject:deviceId forKey:@"deviceId"];

  deviceName = [(FMFDevice *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  [coderCopy encodeBool:-[FMFDevice isActiveDevice](self forKey:{"isActiveDevice"), @"isActiveDevice"}];
  [coderCopy encodeBool:-[FMFDevice isThisDevice](self forKey:{"isThisDevice"), @"isThisDevice"}];
  [coderCopy encodeBool:-[FMFDevice isCompanionDevice](self forKey:{"isCompanionDevice"), @"isCompanionDevice"}];
  idsDeviceId = [(FMFDevice *)self idsDeviceId];
  [coderCopy encodeObject:idsDeviceId forKey:@"idsDeviceId"];

  [coderCopy encodeBool:-[FMFDevice isAutoMeCapable](self forKey:{"isAutoMeCapable"), @"isAutoMeCapable"}];
}

- (FMFDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceId"];
  [(FMFDevice *)v5 setDeviceId:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  [(FMFDevice *)v5 setDeviceName:v7];

  -[FMFDevice setIsActiveDevice:](v5, "setIsActiveDevice:", [coderCopy decodeBoolForKey:@"isActiveDevice"]);
  -[FMFDevice setIsThisDevice:](v5, "setIsThisDevice:", [coderCopy decodeBoolForKey:@"isThisDevice"]);
  -[FMFDevice setIsCompanionDevice:](v5, "setIsCompanionDevice:", [coderCopy decodeBoolForKey:@"isCompanionDevice"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
  [(FMFDevice *)v5 setIdsDeviceId:v8];

  v9 = [coderCopy decodeBoolForKey:@"isAutoMeCapable"];
  [(FMFDevice *)v5 setIsAutoMeCapable:v9];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    deviceId = [(FMFDevice *)self deviceId];
    deviceId2 = [v5 deviceId];
    if ([deviceId isEqualToString:deviceId2])
    {
      deviceName = [(FMFDevice *)self deviceName];
      deviceName2 = [v5 deviceName];
      if ([deviceName isEqualToString:deviceName2])
      {
        idsDeviceId = [(FMFDevice *)self idsDeviceId];
        idsDeviceId2 = [v5 idsDeviceId];
        if ([idsDeviceId isEqualToString:idsDeviceId2] && (v12 = -[FMFDevice isAutoMeCapable](self, "isAutoMeCapable"), v12 == objc_msgSend(v5, "isAutoMeCapable")) && (v13 = -[FMFDevice isActiveDevice](self, "isActiveDevice"), v13 == objc_msgSend(v5, "isActiveDevice")) && (v14 = -[FMFDevice isThisDevice](self, "isThisDevice"), v14 == objc_msgSend(v5, "isThisDevice")))
        {
          isCompanionDevice = [(FMFDevice *)self isCompanionDevice];
          v15 = isCompanionDevice ^ [v5 isCompanionDevice] ^ 1;
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  deviceId = [(FMFDevice *)self deviceId];
  v3 = [deviceId hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  deviceName = [(FMFDevice *)self deviceName];
  deviceId = [(FMFDevice *)self deviceId];
  v6 = @"NO";
  if ([(FMFDevice *)self isActiveDevice])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(FMFDevice *)self isThisDevice])
  {
    v6 = @"YES";
  }

  idsDeviceId = [(FMFDevice *)self idsDeviceId];
  v9 = [v3 stringWithFormat:@"%@ [%@] {meDevice=%@} {thisDevice=%@} {idsDeviceId=%@}", deviceName, deviceId, v7, v6, idsDeviceId];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  deviceId = [(FMFDevice *)self deviceId];
  deviceName = [(FMFDevice *)self deviceName];
  v7 = @"YES";
  if ([(FMFDevice *)self isActiveDevice])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (![(FMFDevice *)self isThisDevice])
  {
    v7 = @"NO";
  }

  idsDeviceId = [(FMFDevice *)self idsDeviceId];
  v10 = [v3 stringWithFormat:@"<%@ %p [%@:%@]> meDevice ? (%@) : thisDevice ? (%@) : idsDeviceId (%@)", v4, self, deviceId, deviceName, v8, v7, idsDeviceId];

  return v10;
}

@end