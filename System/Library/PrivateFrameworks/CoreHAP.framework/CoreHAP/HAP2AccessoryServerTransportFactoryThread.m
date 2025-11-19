@interface HAP2AccessoryServerTransportFactoryThread
- (id)createTransportWithAccessoryInfo:(id)a3 discovery:(id)a4;
@end

@implementation HAP2AccessoryServerTransportFactoryThread

- (id)createTransportWithAccessoryInfo:(id)a3 discovery:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"%@.operationQueue", v9];

  v11 = [[HAP2SerializedOperationQueue alloc] initWithName:v10];
  v12 = [[HAP2AccessoryServerTransportCoAP alloc] initWithAccessoryInfo:v7 discovery:v6 operationQueue:v11];

  return v12;
}

@end