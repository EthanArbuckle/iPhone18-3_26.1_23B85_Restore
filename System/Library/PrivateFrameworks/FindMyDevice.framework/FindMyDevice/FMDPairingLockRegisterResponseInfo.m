@interface FMDPairingLockRegisterResponseInfo
- (FMDPairingLockRegisterResponseInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDPairingLockRegisterResponseInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDPairingLockRegisterResponseInfo *)self serialNumber];
  [v4 encodeObject:v5 forKey:@"serialNumber"];

  v6 = [(FMDPairingLockRegisterResponseInfo *)self pairingToken];
  [v4 encodeObject:v6 forKey:@"pairingToken"];
}

- (FMDPairingLockRegisterResponseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDPairingLockRegisterResponseInfo;
  v5 = [(FMDPairingLockRegisterResponseInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockRegisterResponseInfo *)v5 setSerialNumber:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingToken"];
    [(FMDPairingLockRegisterResponseInfo *)v5 setPairingToken:v7];
  }

  return v5;
}

@end