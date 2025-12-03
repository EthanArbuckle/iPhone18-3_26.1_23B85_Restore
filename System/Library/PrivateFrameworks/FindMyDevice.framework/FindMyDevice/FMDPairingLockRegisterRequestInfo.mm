@interface FMDPairingLockRegisterRequestInfo
- (FMDPairingLockRegisterRequestInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDPairingLockRegisterRequestInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = [(FMDPairingLockRegisterRequestInfo *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];

  serialNumber = [(FMDPairingLockRegisterRequestInfo *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  lostModePublicKey = [(FMDPairingLockRegisterRequestInfo *)self lostModePublicKey];
  [coderCopy encodeObject:lostModePublicKey forKey:@"lostModePublicKey"];
}

- (FMDPairingLockRegisterRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDPairingLockRegisterRequestInfo;
  v5 = [(FMDPairingLockRegisterRequestInfo *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setAccessoryType:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setSerialNumber:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModePublicKey"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setLostModePublicKey:v8];
  }

  return v5;
}

@end