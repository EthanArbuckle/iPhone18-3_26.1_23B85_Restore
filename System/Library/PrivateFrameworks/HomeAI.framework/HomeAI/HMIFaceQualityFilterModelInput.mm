@interface HMIFaceQualityFilterModelInput
- (HMIFaceQualityFilterModelInput)initWithInput:(id)input inputName:(id)name;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation HMIFaceQualityFilterModelInput

- (HMIFaceQualityFilterModelInput)initWithInput:(id)input inputName:(id)name
{
  inputCopy = input;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = HMIFaceQualityFilterModelInput;
  v9 = [(HMIFaceQualityFilterModelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_input, input);
    objc_storeStrong(&v10->_inputName, name);
  }

  return v10;
}

- (NSSet)featureNames
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  inputName = [(HMIFaceQualityFilterModelInput *)self inputName];
  v7[0] = inputName;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  inputName = [(HMIFaceQualityFilterModelInput *)self inputName];
  v6 = [nameCopy isEqualToString:inputName];

  if (v6)
  {
    v7 = MEMORY[0x277CBFEF8];
    input = [(HMIFaceQualityFilterModelInput *)self input];
    v9 = [v7 featureValueWithMultiArray:input];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end