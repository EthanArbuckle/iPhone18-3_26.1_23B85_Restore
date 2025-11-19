@interface HMBModelContainerEncodingContext
- (HMBModelContainerEncodingContext)initWithModelContainer:(id)a3;
@end

@implementation HMBModelContainerEncodingContext

- (HMBModelContainerEncodingContext)initWithModelContainer:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v13.receiver = self;
    v13.super_class = HMBModelContainerEncodingContext;
    v7 = [(HMBModelContainerEncodingContext *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_modelContainer, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMBLocalZone *)v10 createMirrorInputWithError:v11, v12];
  }
}

@end