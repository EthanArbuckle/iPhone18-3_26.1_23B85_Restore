@interface FMDPairingCheckCommandRequestInfo
- (FMDPairingCheckCommandRequestInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDPairingCheckCommandRequestInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDPairingCheckCommandRequestInfo *)self pairingCheckToken];
  [v4 encodeObject:v5 forKey:@"pairingCheckToken"];

  v6 = [(FMDPairingCheckCommandRequestInfo *)self authNonce];
  [v4 encodeObject:v6 forKey:@"authNonce"];

  v7 = [(FMDPairingCheckCommandRequestInfo *)self accessoryType];
  [v4 encodeObject:v7 forKey:@"accessoryType"];

  v8 = [(FMDPairingCheckCommandRequestInfo *)self eraseKeyType];
  [v4 encodeObject:v8 forKey:@"eraseKeyType"];
}

- (FMDPairingCheckCommandRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FMDPairingCheckCommandRequestInfo;
  v5 = [(FMDPairingCheckCommandRequestInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingCheckToken"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setPairingCheckToken:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authNonce"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setAuthNonce:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryType"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setAccessoryType:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eraseKeyType"];
    [(FMDPairingCheckCommandRequestInfo *)v5 setEraseKeyType:v9];
  }

  return v5;
}

@end