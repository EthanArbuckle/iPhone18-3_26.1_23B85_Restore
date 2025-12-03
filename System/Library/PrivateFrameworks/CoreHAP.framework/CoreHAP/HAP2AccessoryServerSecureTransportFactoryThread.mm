@interface HAP2AccessoryServerSecureTransportFactoryThread
- (id)createSecureTransportWithTransport:(id)transport isPaired:(BOOL)paired encryptedSession:(id)session;
@end

@implementation HAP2AccessoryServerSecureTransportFactoryThread

- (id)createSecureTransportWithTransport:(id)transport isPaired:(BOOL)paired encryptedSession:(id)session
{
  pairedCopy = paired;
  sessionCopy = session;
  v8 = MEMORY[0x277CCACA8];
  transportCopy = transport;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v8 stringWithFormat:@"%@.operationQueue", v11];

  v13 = [[HAP2SerializedOperationQueue alloc] initWithName:v12];
  if (pairedCopy)
  {
    v14 = [(HAP2AccessoryServerSecureTransportPairVerify *)[HAP2AccessoryServerSecureTransportThreadPaired alloc] initWithTransport:transportCopy operationQueue:v13];
  }

  else
  {
    v14 = [[HAP2AccessoryServerSecureTransportPairSetup alloc] initWithTransport:transportCopy operationQueue:v13 encryptedSession:sessionCopy];
  }

  v15 = v14;

  return v15;
}

@end