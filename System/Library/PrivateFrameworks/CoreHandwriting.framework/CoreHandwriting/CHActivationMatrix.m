@interface CHActivationMatrix
- (CHActivationMatrix)initWithActivations:(id)a3;
@end

@implementation CHActivationMatrix

- (CHActivationMatrix)initWithActivations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHActivationMatrix;
  v6 = [(CHActivationMatrix *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activations, a3);
    v7->_unlikelyHasLatinContents = 0;
  }

  return v7;
}

@end