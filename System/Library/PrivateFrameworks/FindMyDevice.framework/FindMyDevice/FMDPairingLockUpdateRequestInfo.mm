@interface FMDPairingLockUpdateRequestInfo
- (FMDPairingLockUpdateRequestInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDPairingLockUpdateRequestInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDPairingLockUpdateRequestInfo *)self pairingCheckToken];
  [v4 encodeObject:v5 forKey:@"pairingCheckToken"];

  v6 = [(FMDPairingLockUpdateRequestInfo *)self lostModePubKey];
  [v4 encodeObject:v6 forKey:@"lostModePubKey"];

  v7 = [(FMDPairingLockUpdateRequestInfo *)self userPrivateKey];
  [v4 encodeObject:v7 forKey:@"userPrivateKey"];

  v8 = [(FMDPairingLockUpdateRequestInfo *)self serialNumber];
  [v4 encodeObject:v8 forKey:@"serialNumber"];

  v9 = [(FMDPairingLockUpdateRequestInfo *)self timeStamp];
  [v4 encodeObject:v9 forKey:@"timeStamp"];
}

- (FMDPairingLockUpdateRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FMDPairingLockUpdateRequestInfo;
  v5 = [(FMDPairingLockUpdateRequestInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingCheckToken"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setPairingCheckToken:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModePubKey"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setLostModePubKey:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPrivateKey"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setUserPrivateKey:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setSerialNumber:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setTimeStamp:v10];
  }

  return v5;
}

@end