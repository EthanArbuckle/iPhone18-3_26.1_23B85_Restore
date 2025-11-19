@interface CSUSceneNetV5CustomClassifierNetworkOutput
- (CSUSceneNetV5CustomClassifierNetworkOutput)initWithClassificationLikelihoods:(id)a3;
@end

@implementation CSUSceneNetV5CustomClassifierNetworkOutput

- (CSUSceneNetV5CustomClassifierNetworkOutput)initWithClassificationLikelihoods:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSUSceneNetV5CustomClassifierNetworkOutput;
  v6 = [(CSUSceneNetV5CustomClassifierNetworkOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classificationLikelihoods, a3);
  }

  return v7;
}

@end