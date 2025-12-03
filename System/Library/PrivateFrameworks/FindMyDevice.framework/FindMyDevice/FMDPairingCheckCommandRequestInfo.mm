@interface FMDPairingCheckCommandRequestInfo
- (FMDPairingCheckCommandRequestInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDPairingCheckCommandRequestInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pairingCheckToken = [(FMDPairingCheckCommandRequestInfo *)self pairingCheckToken];
  [coderCopy encodeObject:pairingCheckToken forKey:@"pairingCheckToken"];

  authNonce = [(FMDPairingCheckCommandRequestInfo *)self authNonce];
  [coderCopy encodeObject:authNonce forKey:@"authNonce"];

  accessoryType = [(FMDPairingCheckCommandRequestInfo *)self accessoryType];
  [coderCopy encodeObject:accessoryType forKey:@"accessoryType"];

  eraseKeyType = [(FMDPairingCheckCommandRequestInfo *)self eraseKeyType];
  [coderCopy encodeObject:eraseKeyType forKey:@"eraseKeyType"];
}

- (FMDPairingCheckCommandRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FMDPairingCheckCommandRequestInfo;
  v5 = [(FMDPairingCheckCommandRequestInfo *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingCheckToken"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setPairingCheckToken:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authNonce"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setAuthNonce:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setAccessoryType:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eraseKeyType"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setEraseKeyType:v9];
  }

  return v5;
}

@end