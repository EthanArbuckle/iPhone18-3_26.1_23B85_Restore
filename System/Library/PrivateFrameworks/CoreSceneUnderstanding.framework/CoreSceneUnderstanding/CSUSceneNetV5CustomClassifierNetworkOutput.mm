@interface CSUSceneNetV5CustomClassifierNetworkOutput
- (CSUSceneNetV5CustomClassifierNetworkOutput)initWithClassificationLikelihoods:(id)likelihoods;
@end

@implementation CSUSceneNetV5CustomClassifierNetworkOutput

- (CSUSceneNetV5CustomClassifierNetworkOutput)initWithClassificationLikelihoods:(id)likelihoods
{
  likelihoodsCopy = likelihoods;
  v9.receiver = self;
  v9.super_class = CSUSceneNetV5CustomClassifierNetworkOutput;
  v6 = [(CSUSceneNetV5CustomClassifierNetworkOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classificationLikelihoods, likelihoods);
  }

  return v7;
}

@end