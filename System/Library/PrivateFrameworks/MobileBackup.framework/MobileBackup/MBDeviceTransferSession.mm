@interface MBDeviceTransferSession
- (MBDeviceTransferSession)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBDeviceTransferSession

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  fileTransferSession = [(MBDeviceTransferSession *)self fileTransferSession];

  if (fileTransferSession)
  {
    fileTransferSession2 = [(MBDeviceTransferSession *)self fileTransferSession];
    [coderCopy encodeObject:fileTransferSession2 forKey:@"fileTransferSession"];
  }

  objc_autoreleasePoolPop(v4);
}

- (MBDeviceTransferSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = MBDeviceTransferSession;
  v6 = [(MBDeviceTransferSession *)&v10 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileTransferSession"];
    [(MBDeviceTransferSession *)v6 setFileTransferSession:v7];
  }

  v8 = v6;
  objc_autoreleasePoolPop(v5);

  return v8;
}

@end