@interface MBDeviceLockInfo
- (MBDeviceLockInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDeviceLockInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  deviceUUID = [(MBDeviceLockInfo *)self deviceUUID];
  [coderCopy encodeObject:deviceUUID forKey:@"deviceUUID"];

  deviceName = [(MBDeviceLockInfo *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  ownerDeviceUUID = [(MBDeviceLockInfo *)self ownerDeviceUUID];
  [coderCopy encodeObject:ownerDeviceUUID forKey:@"ownerDeviceUUID"];

  ownerDeviceName = [(MBDeviceLockInfo *)self ownerDeviceName];
  [coderCopy encodeObject:ownerDeviceName forKey:@"ownerDeviceName"];

  creationDate = [(MBDeviceLockInfo *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  expirationDate = [(MBDeviceLockInfo *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  objc_autoreleasePoolPop(v4);
}

- (MBDeviceLockInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MBDeviceLockInfo;
  v6 = [(MBDeviceLockInfo *)&v15 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUUID"];
    [(MBDeviceLockInfo *)v6 setDeviceUUID:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(MBDeviceLockInfo *)v6 setDeviceName:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerDeviceUUID"];
    [(MBDeviceLockInfo *)v6 setOwnerDeviceUUID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerDeviceName"];
    [(MBDeviceLockInfo *)v6 setOwnerDeviceName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(MBDeviceLockInfo *)v6 setCreationDate:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(MBDeviceLockInfo *)v6 setExpirationDate:v12];
  }

  v13 = v6;
  objc_autoreleasePoolPop(v5);

  return v13;
}

@end