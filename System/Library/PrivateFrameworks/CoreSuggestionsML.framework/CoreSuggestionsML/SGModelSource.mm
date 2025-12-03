@interface SGModelSource
- (SGModelSource)initWithSessionDescriptor:(id)descriptor modelClass:(Class)class;
@end

@implementation SGModelSource

- (SGModelSource)initWithSessionDescriptor:(id)descriptor modelClass:(Class)class
{
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    if (class)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

    if (class)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"modelClass"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = SGModelSource;
  v9 = [(SGModelSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionDescriptor, descriptor);
    objc_storeStrong(&v10->_modelClass, class);
  }

  return v10;
}

@end