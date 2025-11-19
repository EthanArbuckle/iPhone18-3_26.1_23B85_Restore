@interface FMDPairingLockRegisterRequestInfo
- (FMDPairingLockRegisterRequestInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDPairingLockRegisterRequestInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDPairingLockRegisterRequestInfo *)self accessoryType];
  [v4 encodeObject:v5 forKey:@"accessoryType"];

  v6 = [(FMDPairingLockRegisterRequestInfo *)self serialNumber];
  [v4 encodeObject:v6 forKey:@"serialNumber"];

  v7 = [(FMDPairingLockRegisterRequestInfo *)self lostModePublicKey];
  [v4 encodeObject:v7 forKey:@"lostModePublicKey"];
}

- (FMDPairingLockRegisterRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDPairingLockRegisterRequestInfo;
  v5 = [(FMDPairingLockRegisterRequestInfo *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setAccessoryType:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setSerialNumber:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModePublicKey"];
    [(FMDPairingLockRegisterRequestInfo *)v5 setLostModePublicKey:v8];
  }

  return v5;
}

@end