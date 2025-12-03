@interface HAP2AccessoryServerTransportFactoryThread
- (id)createTransportWithAccessoryInfo:(id)info discovery:(id)discovery;
@end

@implementation HAP2AccessoryServerTransportFactoryThread

- (id)createTransportWithAccessoryInfo:(id)info discovery:(id)discovery
{
  v5 = MEMORY[0x277CCACA8];
  discoveryCopy = discovery;
  infoCopy = info;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"%@.operationQueue", v9];

  v11 = [[HAP2SerializedOperationQueue alloc] initWithName:v10];
  v12 = [[HAP2AccessoryServerTransportCoAP alloc] initWithAccessoryInfo:infoCopy discovery:discoveryCopy operationQueue:v11];

  return v12;
}

@end