@interface FaceRecognizabilityFilterSVMDataScalerInput
- (FaceRecognizabilityFilterSVMDataScalerInput)initWithInput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation FaceRecognizabilityFilterSVMDataScalerInput

- (FaceRecognizabilityFilterSVMDataScalerInput)initWithInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FaceRecognizabilityFilterSVMDataScalerInput;
  v6 = [(FaceRecognizabilityFilterSVMDataScalerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"input"])
  {
    v4 = MEMORY[0x277CBFEF8];
    v5 = [(FaceRecognizabilityFilterSVMDataScalerInput *)self input];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end