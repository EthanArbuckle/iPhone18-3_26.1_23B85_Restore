@interface HAP2AccessoryServerEncodingFactoryThread
- (id)createEncodingWithOperationQueue:(id)queue accessoryServerMetadata:(id)metadata encodingFeatures:(unint64_t)features;
@end

@implementation HAP2AccessoryServerEncodingFactoryThread

- (id)createEncodingWithOperationQueue:(id)queue accessoryServerMetadata:(id)metadata encodingFeatures:(unint64_t)features
{
  v6 = MEMORY[0x277CCACA8];
  metadataCopy = metadata;
  name = [metadataCopy name];
  deviceID = [metadataCopy deviceID];

  v10 = [v6 stringWithFormat:@"%@/%@", name, deviceID];

  v11 = [[HAP2AccessoryServerEncodingThread alloc] initWithEncodingFeatures:features accessoryDescription:v10];

  return v11;
}

@end