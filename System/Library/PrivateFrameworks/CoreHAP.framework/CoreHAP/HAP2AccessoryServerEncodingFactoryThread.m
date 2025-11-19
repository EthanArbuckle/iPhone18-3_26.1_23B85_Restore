@interface HAP2AccessoryServerEncodingFactoryThread
- (id)createEncodingWithOperationQueue:(id)a3 accessoryServerMetadata:(id)a4 encodingFeatures:(unint64_t)a5;
@end

@implementation HAP2AccessoryServerEncodingFactoryThread

- (id)createEncodingWithOperationQueue:(id)a3 accessoryServerMetadata:(id)a4 encodingFeatures:(unint64_t)a5
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [v7 name];
  v9 = [v7 deviceID];

  v10 = [v6 stringWithFormat:@"%@/%@", v8, v9];

  v11 = [[HAP2AccessoryServerEncodingThread alloc] initWithEncodingFeatures:a5 accessoryDescription:v10];

  return v11;
}

@end