@interface FMDPairingCheckCommandResponseInfo
- (FMDPairingCheckCommandResponseInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDPairingCheckCommandResponseInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signature = [(FMDPairingCheckCommandResponseInfo *)self signature];
  [coderCopy encodeObject:signature forKey:@"signature"];

  serverNonce = [(FMDPairingCheckCommandResponseInfo *)self serverNonce];
  [coderCopy encodeObject:serverNonce forKey:@"serverNonce"];

  phoneNumber = [(FMDPairingCheckCommandResponseInfo *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];

  statusCode = [(FMDPairingCheckCommandResponseInfo *)self statusCode];
  [coderCopy encodeObject:statusCode forKey:@"statusCode"];

  lostModeInfo = [(FMDPairingCheckCommandResponseInfo *)self lostModeInfo];
  [coderCopy encodeObject:lostModeInfo forKey:@"lostModeInfo"];

  useEraseKeyType = [(FMDPairingCheckCommandResponseInfo *)self useEraseKeyType];
  [coderCopy encodeObject:useEraseKeyType forKey:@"useEraseKeyType"];
}

- (FMDPairingCheckCommandResponseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FMDPairingCheckCommandResponseInfo;
  v5 = [(FMDPairingCheckCommandResponseInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setSignature:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverNonce"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setServerNonce:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setPhoneNumber:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setStatusCode:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lostModeInfo"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setLostModeInfo:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"useEraseKeyType"];
    [(FMDPairingCheckCommandResponseInfo *)v5 setUseEraseKeyType:v11];
  }

  return v5;
}

@end