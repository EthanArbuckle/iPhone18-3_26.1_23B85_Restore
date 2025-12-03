@interface FMDPairingLockUpdateRequestInfo
- (FMDPairingLockUpdateRequestInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDPairingLockUpdateRequestInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pairingCheckToken = [(FMDPairingLockUpdateRequestInfo *)self pairingCheckToken];
  [coderCopy encodeObject:pairingCheckToken forKey:@"pairingCheckToken"];

  lostModePubKey = [(FMDPairingLockUpdateRequestInfo *)self lostModePubKey];
  [coderCopy encodeObject:lostModePubKey forKey:@"lostModePubKey"];

  userPrivateKey = [(FMDPairingLockUpdateRequestInfo *)self userPrivateKey];
  [coderCopy encodeObject:userPrivateKey forKey:@"userPrivateKey"];

  serialNumber = [(FMDPairingLockUpdateRequestInfo *)self serialNumber];
  [coderCopy encodeObject:serialNumber forKey:@"serialNumber"];

  timeStamp = [(FMDPairingLockUpdateRequestInfo *)self timeStamp];
  [coderCopy encodeObject:timeStamp forKey:@"timeStamp"];
}

- (FMDPairingLockUpdateRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = FMDPairingLockUpdateRequestInfo;
  v5 = [(FMDPairingLockUpdateRequestInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingCheckToken"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setPairingCheckToken:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModePubKey"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setLostModePubKey:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userPrivateKey"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setUserPrivateKey:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setSerialNumber:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeStamp"];
    [(FMDPairingLockUpdateRequestInfo *)v5 setTimeStamp:v10];
  }

  return v5;
}

@end