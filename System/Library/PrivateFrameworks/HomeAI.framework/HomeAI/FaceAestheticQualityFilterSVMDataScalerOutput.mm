@interface FaceAestheticQualityFilterSVMDataScalerOutput
- (FaceAestheticQualityFilterSVMDataScalerOutput)initWithTransformed_features:(id)transformed_features;
- (id)featureValueForName:(id)name;
@end

@implementation FaceAestheticQualityFilterSVMDataScalerOutput

- (FaceAestheticQualityFilterSVMDataScalerOutput)initWithTransformed_features:(id)transformed_features
{
  transformed_featuresCopy = transformed_features;
  v9.receiver = self;
  v9.super_class = FaceAestheticQualityFilterSVMDataScalerOutput;
  v6 = [(FaceAestheticQualityFilterSVMDataScalerOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transformed_features, transformed_features);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"transformed_features"])
  {
    v4 = MEMORY[0x277CBFEF8];
    transformed_features = [(FaceAestheticQualityFilterSVMDataScalerOutput *)self transformed_features];
    v6 = [v4 featureValueWithMultiArray:transformed_features];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end