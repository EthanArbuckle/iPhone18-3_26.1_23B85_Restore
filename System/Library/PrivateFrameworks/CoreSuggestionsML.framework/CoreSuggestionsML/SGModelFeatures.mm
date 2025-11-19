@interface SGModelFeatures
- (SGModelFeatures)initWithSource:(id)a3 vector:(id)a4;
@end

@implementation SGModelFeatures

- (SGModelFeatures)initWithSource:(id)a3 vector:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"vector"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGModelFeatures;
  v11 = [(SGModelFeatures *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_source, a3);
    objc_storeStrong(&v12->_vector, a4);
  }

  return v12;
}

@end