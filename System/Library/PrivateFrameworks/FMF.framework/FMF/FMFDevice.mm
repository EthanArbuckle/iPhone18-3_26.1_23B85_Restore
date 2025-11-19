@interface FMFDevice
- (BOOL)isEqual:(id)a3;
- (FMFDevice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFDevice

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(FMFDevice *)self deviceName];
  [v4 setDeviceName:v5];

  [v4 setIsActiveDevice:{-[FMFDevice isActiveDevice](self, "isActiveDevice")}];
  [v4 setIsAutoMeCapable:{-[FMFDevice isAutoMeCapable](self, "isAutoMeCapable")}];
  v6 = [(FMFDevice *)self idsDeviceId];
  [v4 setIdsDeviceId:v6];

  [v4 setIsThisDevice:{-[FMFDevice isThisDevice](self, "isThisDevice")}];
  [v4 setIsCompanionDevice:{-[FMFDevice isCompanionDevice](self, "isCompanionDevice")}];
  v7 = [(FMFDevice *)self deviceId];
  [v4 setDeviceId:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(FMFDevice *)self deviceId];
  [v7 encodeObject:v4 forKey:@"deviceId"];

  v5 = [(FMFDevice *)self deviceName];
  [v7 encodeObject:v5 forKey:@"deviceName"];

  [v7 encodeBool:-[FMFDevice isActiveDevice](self forKey:{"isActiveDevice"), @"isActiveDevice"}];
  [v7 encodeBool:-[FMFDevice isThisDevice](self forKey:{"isThisDevice"), @"isThisDevice"}];
  [v7 encodeBool:-[FMFDevice isCompanionDevice](self forKey:{"isCompanionDevice"), @"isCompanionDevice"}];
  v6 = [(FMFDevice *)self idsDeviceId];
  [v7 encodeObject:v6 forKey:@"idsDeviceId"];

  [v7 encodeBool:-[FMFDevice isAutoMeCapable](self forKey:{"isAutoMeCapable"), @"isAutoMeCapable"}];
}

- (FMFDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceId"];
  [(FMFDevice *)v5 setDeviceId:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
  [(FMFDevice *)v5 setDeviceName:v7];

  -[FMFDevice setIsActiveDevice:](v5, "setIsActiveDevice:", [v4 decodeBoolForKey:@"isActiveDevice"]);
  -[FMFDevice setIsThisDevice:](v5, "setIsThisDevice:", [v4 decodeBoolForKey:@"isThisDevice"]);
  -[FMFDevice setIsCompanionDevice:](v5, "setIsCompanionDevice:", [v4 decodeBoolForKey:@"isCompanionDevice"]);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceId"];
  [(FMFDevice *)v5 setIdsDeviceId:v8];

  v9 = [v4 decodeBoolForKey:@"isAutoMeCapable"];
  [(FMFDevice *)v5 setIsAutoMeCapable:v9];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMFDevice *)self deviceId];
    v7 = [v5 deviceId];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(FMFDevice *)self deviceName];
      v9 = [v5 deviceName];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(FMFDevice *)self idsDeviceId];
        v11 = [v5 idsDeviceId];
        if ([v10 isEqualToString:v11] && (v12 = -[FMFDevice isAutoMeCapable](self, "isAutoMeCapable"), v12 == objc_msgSend(v5, "isAutoMeCapable")) && (v13 = -[FMFDevice isActiveDevice](self, "isActiveDevice"), v13 == objc_msgSend(v5, "isActiveDevice")) && (v14 = -[FMFDevice isThisDevice](self, "isThisDevice"), v14 == objc_msgSend(v5, "isThisDevice")))
        {
          v17 = [(FMFDevice *)self isCompanionDevice];
          v15 = v17 ^ [v5 isCompanionDevice] ^ 1;
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
  v2 = [(FMFDevice *)self deviceId];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(FMFDevice *)self deviceName];
  v5 = [(FMFDevice *)self deviceId];
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

  v8 = [(FMFDevice *)self idsDeviceId];
  v9 = [v3 stringWithFormat:@"%@ [%@] {meDevice=%@} {thisDevice=%@} {idsDeviceId=%@}", v4, v5, v7, v6, v8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMFDevice *)self deviceId];
  v6 = [(FMFDevice *)self deviceName];
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

  v9 = [(FMFDevice *)self idsDeviceId];
  v10 = [v3 stringWithFormat:@"<%@ %p [%@:%@]> meDevice ? (%@) : thisDevice ? (%@) : idsDeviceId (%@)", v4, self, v5, v6, v8, v7, v9];

  return v10;
}

@end