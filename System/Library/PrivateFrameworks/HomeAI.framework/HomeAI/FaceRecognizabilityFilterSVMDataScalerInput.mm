@interface FaceRecognizabilityFilterSVMDataScalerInput
- (FaceRecognizabilityFilterSVMDataScalerInput)initWithInput:(id)input;
- (id)featureValueForName:(id)name;
@end

@implementation FaceRecognizabilityFilterSVMDataScalerInput

- (FaceRecognizabilityFilterSVMDataScalerInput)initWithInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = FaceRecognizabilityFilterSVMDataScalerInput;
  v6 = [(FaceRecognizabilityFilterSVMDataScalerInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input, input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"input"])
  {
    v4 = MEMORY[0x277CBFEF8];
    input = [(FaceRecognizabilityFilterSVMDataScalerInput *)self input];
    v6 = [v4 featureValueWithMultiArray:input];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end