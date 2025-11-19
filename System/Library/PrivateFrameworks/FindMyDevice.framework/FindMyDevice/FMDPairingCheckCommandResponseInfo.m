@interface FMDPairingCheckCommandResponseInfo
- (FMDPairingCheckCommandResponseInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDPairingCheckCommandResponseInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDPairingCheckCommandResponseInfo *)self signature];
  [v4 encodeObject:v5 forKey:@"signature"];

  v6 = [(FMDPairingCheckCommandResponseInfo *)self serverNonce];
  [v4 encodeObject:v6 forKey:@"serverNonce"];

  v7 = [(FMDPairingCheckCommandResponseInfo *)self phoneNumber];
  [v4 encodeObject:v7 forKey:@"phoneNumber"];

  v8 = [(FMDPairingCheckCommandResponseInfo *)self statusCode];
  [v4 encodeObject:v8 forKey:@"statusCode"];

  v9 = [(FMDPairingCheckCommandResponseInfo *)self lostModeInfo];
  [v4 encodeObject:v9 forKey:@"lostModeInfo"];

  v10 = [(FMDPairingCheckCommandResponseInfo *)self useEraseKeyType];
  [v4 encodeObject:v10 forKey:@"useEraseKeyType"];
}

- (FMDPairingCheckCommandResponseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FMDPairingCheckCommandResponseInfo;
  v5 = [(FMDPairingCheckCommandResponseInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setSignature:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverNonce"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setServerNonce:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setPhoneNumber:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setStatusCode:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setLostModeInfo:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"useEraseKeyType"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setUseEraseKeyType:v11];
  }

  return v5;
}

@end