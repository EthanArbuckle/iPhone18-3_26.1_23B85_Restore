@interface FaceRecognizabilityFilterSVMDataScalerOutput
- (FaceRecognizabilityFilterSVMDataScalerOutput)initWithTransformed_features:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation FaceRecognizabilityFilterSVMDataScalerOutput

- (FaceRecognizabilityFilterSVMDataScalerOutput)initWithTransformed_features:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FaceRecognizabilityFilterSVMDataScalerOutput;
  v6 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transformed_features, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"transformed_features"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(FaceRecognizabilityFilterSVMDataScalerOutput *)self transformed_features];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end