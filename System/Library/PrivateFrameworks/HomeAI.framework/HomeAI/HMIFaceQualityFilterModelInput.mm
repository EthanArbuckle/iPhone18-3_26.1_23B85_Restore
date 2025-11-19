@interface HMIFaceQualityFilterModelInput
- (HMIFaceQualityFilterModelInput)initWithInput:(id)a3 inputName:(id)a4;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation HMIFaceQualityFilterModelInput

- (HMIFaceQualityFilterModelInput)initWithInput:(id)a3 inputName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMIFaceQualityFilterModelInput;
  v9 = [(HMIFaceQualityFilterModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, a3);
    objc_storeStrong(&v10->_inputName, a4);
  }

  return v10;
}

- (NSSet)featureNames
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HMIFaceQualityFilterModelInput *)self inputName];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  v5 = [(HMIFaceQualityFilterModelInput *)self inputName];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CBFEF8];
    v8 = [(HMIFaceQualityFilterModelInput *)self input];
    v9 = [v7 featureValueWithMultiArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end