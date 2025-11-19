@interface HMBProcessingModelUpdate
- (HMBProcessingModelUpdate)initWithModel:(id)a3 previousModel:(id)a4 options:(id)a5 mirrorOutputFuture:(id)a6;
- (id)attributeDescriptions;
@end

@implementation HMBProcessingModelUpdate

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMBProcessingModelUpdate;
  v3 = [(HMBProcessingModelResult *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMBProcessingModelUpdate *)self previousModel];
  v6 = [v4 initWithName:@"Previous Model" value:v5];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v3 arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMBProcessingModelUpdate)initWithModel:(id)a3 previousModel:(id)a4 options:(id)a5 mirrorOutputFuture:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = v13;
    v20.receiver = self;
    v20.super_class = HMBProcessingModelUpdate;
    v15 = [(HMBProcessingModelResult *)&v20 initWithModel:v10 options:v12 mirrorOutputFuture:v13];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_previousModel, a4);
    }

    return v16;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    [(HMBCloudZoneFetchRecordsContext *)v18 .cxx_destruct];
  }

  return result;
}

@end