@interface FaceAestheticQualityFilterSVMInput
- (FaceAestheticQualityFilterSVMInput)initWithInput:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation FaceAestheticQualityFilterSVMInput

- (FaceAestheticQualityFilterSVMInput)initWithInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FaceAestheticQualityFilterSVMInput;
  v6 = [(FaceAestheticQualityFilterSVMInput *)&v9 init];
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
    v5 = [(FaceAestheticQualityFilterSVMInput *)self input];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end