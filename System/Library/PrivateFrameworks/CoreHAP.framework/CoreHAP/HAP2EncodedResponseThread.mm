@interface HAP2EncodedResponseThread
- (BOOL)isEncrypted;
- (HAP2EncodedResponseThread)initWithBTLEResponse:(id)response;
@end

@implementation HAP2EncodedResponseThread

- (BOOL)isEncrypted
{
  btleResponse = [(HAP2EncodedResponseThread *)self btleResponse];
  isEncrypted = [btleResponse isEncrypted];

  return isEncrypted;
}

- (HAP2EncodedResponseThread)initWithBTLEResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = HAP2EncodedResponseThread;
  v6 = [(HAP2EncodedResponseThread *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_btleResponse, response);
  }

  return v7;
}

@end