@interface HMBCloudZoneEncodingContext
- (HMBCloudZoneEncodingContext)initWithModelContainer:(id)container;
@end

@implementation HMBCloudZoneEncodingContext

- (HMBCloudZoneEncodingContext)initWithModelContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = HMBCloudZoneEncodingContext;
  v3 = [(HMBModelContainerEncodingContext *)&v7 initWithModelContainer:container];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    createdRecords = v3->_createdRecords;
    v3->_createdRecords = dictionary;
  }

  return v3;
}

@end