@interface HMBProcessingModelUpdate
- (HMBProcessingModelUpdate)initWithModel:(id)model previousModel:(id)previousModel options:(id)options mirrorOutputFuture:(id)future;
- (id)attributeDescriptions;
@end

@implementation HMBProcessingModelUpdate

- (id)attributeDescriptions
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HMBProcessingModelUpdate;
  attributeDescriptions = [(HMBProcessingModelResult *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  previousModel = [(HMBProcessingModelUpdate *)self previousModel];
  v6 = [v4 initWithName:@"Previous Model" value:previousModel];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [attributeDescriptions arrayByAddingObjectsFromArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMBProcessingModelUpdate)initWithModel:(id)model previousModel:(id)previousModel options:(id)options mirrorOutputFuture:(id)future
{
  modelCopy = model;
  previousModelCopy = previousModel;
  optionsCopy = options;
  futureCopy = future;
  if (previousModelCopy)
  {
    v14 = futureCopy;
    v20.receiver = self;
    v20.super_class = HMBProcessingModelUpdate;
    v15 = [(HMBProcessingModelResult *)&v20 initWithModel:modelCopy options:optionsCopy mirrorOutputFuture:futureCopy];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_previousModel, previousModel);
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