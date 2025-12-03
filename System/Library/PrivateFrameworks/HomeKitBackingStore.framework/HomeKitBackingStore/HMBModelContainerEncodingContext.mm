@interface HMBModelContainerEncodingContext
- (HMBModelContainerEncodingContext)initWithModelContainer:(id)container;
@end

@implementation HMBModelContainerEncodingContext

- (HMBModelContainerEncodingContext)initWithModelContainer:(id)container
{
  containerCopy = container;
  if (containerCopy)
  {
    v6 = containerCopy;
    v13.receiver = self;
    v13.super_class = HMBModelContainerEncodingContext;
    v7 = [(HMBModelContainerEncodingContext *)&v13 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_modelContainer, container);
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