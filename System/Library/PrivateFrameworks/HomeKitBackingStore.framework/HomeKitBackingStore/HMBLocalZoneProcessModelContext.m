@interface HMBLocalZoneProcessModelContext
- (HMBLocalZoneProcessModelContext)initWithModel:(id)a3 outputBlockRow:(id)a4 externalData:(id)a5;
@end

@implementation HMBLocalZoneProcessModelContext

- (HMBLocalZoneProcessModelContext)initWithModel:(id)a3 outputBlockRow:(id)a4 externalData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    v12 = v11;
    v20.receiver = self;
    v20.super_class = HMBLocalZoneProcessModelContext;
    v13 = [(HMBLocalZoneProcessModelContext *)&v20 init];
    v14 = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_model, a3);
      v15 = [v10 copy];
      outputBlockRow = v14->_outputBlockRow;
      v14->_outputBlockRow = v15;

      objc_storeStrong(&v14->_externalData, a5);
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