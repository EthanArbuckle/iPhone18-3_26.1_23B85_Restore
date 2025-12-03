@interface FMDPairingLockRegisterResponseInfo
- (FMDPairingLockRegisterResponseInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDPairingLockRegisterResponseInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialNumber = [(FMDPairingLockRegisterResponseInfo *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  pairingToken = [(FMDPairingLockRegisterResponseInfo *)self pairingToken];
  [coderCopy encodeObject:pairingToken forKey:@"pairingToken"];
}

- (FMDPairingLockRegisterResponseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FMDPairingLockRegisterResponseInfo;
  v5 = [(FMDPairingLockRegisterResponseInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockRegisterResponseInfo *)v5 setSerialNumber:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingToken"];
    [(FMDPairingLockRegisterResponseInfo *)v5 setPairingToken:v7];
  }

  return v5;
}

@end