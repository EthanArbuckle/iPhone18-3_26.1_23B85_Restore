@interface HAP2EncodedResponseThread
- (BOOL)isEncrypted;
- (HAP2EncodedResponseThread)initWithBTLEResponse:(id)a3;
@end

@implementation HAP2EncodedResponseThread

- (BOOL)isEncrypted
{
  v2 = [(HAP2EncodedResponseThread *)self btleResponse];
  v3 = [v2 isEncrypted];

  return v3;
}

- (HAP2EncodedResponseThread)initWithBTLEResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAP2EncodedResponseThread;
  v6 = [(HAP2EncodedResponseThread *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_btleResponse, a3);
  }

  return v7;
}

@end