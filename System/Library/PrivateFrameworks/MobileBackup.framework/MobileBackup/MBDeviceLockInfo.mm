@interface MBDeviceLockInfo
- (MBDeviceLockInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBDeviceLockInfo

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MBDeviceLockInfo *)self deviceUUID];
  [v11 encodeObject:v5 forKey:@"deviceUUID"];

  v6 = [(MBDeviceLockInfo *)self deviceName];
  [v11 encodeObject:v6 forKey:@"deviceName"];

  v7 = [(MBDeviceLockInfo *)self ownerDeviceUUID];
  [v11 encodeObject:v7 forKey:@"ownerDeviceUUID"];

  v8 = [(MBDeviceLockInfo *)self ownerDeviceName];
  [v11 encodeObject:v8 forKey:@"ownerDeviceName"];

  v9 = [(MBDeviceLockInfo *)self creationDate];
  [v11 encodeObject:v9 forKey:@"creationDate"];

  v10 = [(MBDeviceLockInfo *)self expirationDate];
  [v11 encodeObject:v10 forKey:@"expirationDate"];

  objc_autoreleasePoolPop(v4);
}

- (MBDeviceLockInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v15.receiver = self;
  v15.super_class = MBDeviceLockInfo;
  v6 = [(MBDeviceLockInfo *)&v15 init];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUUID"];
    [(MBDeviceLockInfo *)v6 setDeviceUUID:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    [(MBDeviceLockInfo *)v6 setDeviceName:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerDeviceUUID"];
    [(MBDeviceLockInfo *)v6 setOwnerDeviceUUID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerDeviceName"];
    [(MBDeviceLockInfo *)v6 setOwnerDeviceName:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(MBDeviceLockInfo *)v6 setCreationDate:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    [(MBDeviceLockInfo *)v6 setExpirationDate:v12];
  }

  v13 = v6;
  objc_autoreleasePoolPop(v5);

  return v13;
}

@end