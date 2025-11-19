@interface HMBCloudZoneEncodingContext
- (HMBCloudZoneEncodingContext)initWithModelContainer:(id)a3;
@end

@implementation HMBCloudZoneEncodingContext

- (HMBCloudZoneEncodingContext)initWithModelContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMBCloudZoneEncodingContext;
  v3 = [(HMBModelContainerEncodingContext *)&v7 initWithModelContainer:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    createdRecords = v3->_createdRecords;
    v3->_createdRecords = v4;
  }

  return v3;
}

@end