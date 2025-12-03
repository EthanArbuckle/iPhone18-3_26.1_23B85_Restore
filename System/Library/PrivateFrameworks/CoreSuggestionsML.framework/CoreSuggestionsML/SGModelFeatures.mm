@interface SGModelFeatures
- (SGModelFeatures)initWithSource:(id)source vector:(id)vector;
@end

@implementation SGModelFeatures

- (SGModelFeatures)initWithSource:(id)source vector:(id)vector
{
  sourceCopy = source;
  vectorCopy = vector;
  v10 = vectorCopy;
  if (sourceCopy)
  {
    if (vectorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"source"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGModelFeatures.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"vector"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = SGModelFeatures;
  v11 = [(SGModelFeatures *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_source, source);
    objc_storeStrong(&v12->_vector, vector);
  }

  return v12;
}

@end