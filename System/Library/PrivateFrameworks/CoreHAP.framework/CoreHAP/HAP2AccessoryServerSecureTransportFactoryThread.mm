@interface HAP2AccessoryServerSecureTransportFactoryThread
- (id)createSecureTransportWithTransport:(id)a3 isPaired:(BOOL)a4 encryptedSession:(id)a5;
@end

@implementation HAP2AccessoryServerSecureTransportFactoryThread

- (id)createSecureTransportWithTransport:(id)a3 isPaired:(BOOL)a4 encryptedSession:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = MEMORY[0x277CCACA8];
  v9 = a3;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v8 stringWithFormat:@"%@.operationQueue", v11];

  v13 = [[HAP2SerializedOperationQueue alloc] initWithName:v12];
  if (v5)
  {
    v14 = [(HAP2AccessoryServerSecureTransportPairVerify *)[HAP2AccessoryServerSecureTransportThreadPaired alloc] initWithTransport:v9 operationQueue:v13];
  }

  else
  {
    v14 = [[HAP2AccessoryServerSecureTransportPairSetup alloc] initWithTransport:v9 operationQueue:v13 encryptedSession:v7];
  }

  v15 = v14;

  return v15;
}

@end