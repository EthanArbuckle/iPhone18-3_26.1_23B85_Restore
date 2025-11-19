@interface SGModelSource
- (SGModelSource)initWithSessionDescriptor:(id)a3 modelClass:(Class)a4;
@end

@implementation SGModelSource

- (SGModelSource)initWithSessionDescriptor:(id)a3 modelClass:(Class)a4
{
  v8 = a3;
  if (v8)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"modelClass"}];

LABEL_3:
  v14.receiver = self;
  v14.super_class = SGModelSource;
  v9 = [(SGModelSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sessionDescriptor, a3);
    objc_storeStrong(&v10->_modelClass, a4);
  }

  return v10;
}

@end