@interface HMBLocalZoneProcessModelContext
- (HMBLocalZoneProcessModelContext)initWithModel:(id)model outputBlockRow:(id)row externalData:(id)data;
@end

@implementation HMBLocalZoneProcessModelContext

- (HMBLocalZoneProcessModelContext)initWithModel:(id)model outputBlockRow:(id)row externalData:(id)data
{
  modelCopy = model;
  rowCopy = row;
  dataCopy = data;
  if (modelCopy)
  {
    v12 = dataCopy;
    v20.receiver = self;
    v20.super_class = HMBLocalZoneProcessModelContext;
    v13 = [(HMBLocalZoneProcessModelContext *)&v20 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_model, model);
      v15 = [rowCopy copy];
      outputBlockRow = v14->_outputBlockRow;
      v14->_outputBlockRow = v15;

      objc_storeStrong(&v14->_externalData, data);
    }

    return v14;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    [(HMBLocalZoneProcessTuple *)v18 .cxx_destruct];
  }

  return result;
}

@end