@interface MBDeviceTransferSession
- (MBDeviceTransferSession)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBDeviceTransferSession

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MBDeviceTransferSession *)self fileTransferSession];

  if (v5)
  {
    v6 = [(MBDeviceTransferSession *)self fileTransferSession];
    [v7 encodeObject:v6 forKey:@"fileTransferSession"];
  }

  objc_autoreleasePoolPop(v4);
}

- (MBDeviceTransferSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = MBDeviceTransferSession;
  v6 = [(MBDeviceTransferSession *)&v10 init];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileTransferSession"];
    [(MBDeviceTransferSession *)v6 setFileTransferSession:v7];
  }

  v8 = v6;
  objc_autoreleasePoolPop(v5);

  return v8;
}

@end