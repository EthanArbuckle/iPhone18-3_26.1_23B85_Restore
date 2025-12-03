@interface MLABInput
- (MLABInput)initWithInput_x:(id)input_x target_lux:(id)target_lux target_nits:(id)target_nits target_weight:(id)target_weight;
- (id)featureValueForName:(id)name;
@end

@implementation MLABInput

- (MLABInput)initWithInput_x:(id)input_x target_lux:(id)target_lux target_nits:(id)target_nits target_weight:(id)target_weight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input_x);
  v15 = 0;
  objc_storeStrong(&v15, target_lux);
  v14 = 0;
  objc_storeStrong(&v14, target_nits);
  v13 = 0;
  objc_storeStrong(&v13, target_weight);
  v6 = selfCopy;
  selfCopy = 0;
  v12.receiver = v6;
  v12.super_class = MLABInput;
  selfCopy = [(MLABInput *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_input_x, location[0]);
    objc_storeStrong(&selfCopy->_target_lux, v15);
    objc_storeStrong(&selfCopy->_target_nits, v14);
    objc_storeStrong(&selfCopy->_target_weight, v13);
  }

  v8 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"input_x"])
  {
    MLFeatureValueClass_1 = getMLFeatureValueClass_1();
    input_x = [(MLABInput *)selfCopy input_x];
    v15 = [MLFeatureValueClass_1 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](input_x);
  }

  else if ([location[0] isEqualToString:@"target_lux"])
  {
    v9 = getMLFeatureValueClass_1();
    target_lux = [(MLABInput *)selfCopy target_lux];
    v15 = [v9 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](target_lux);
  }

  else if ([location[0] isEqualToString:@"target_nits"])
  {
    v7 = getMLFeatureValueClass_1();
    target_nits = [(MLABInput *)selfCopy target_nits];
    v15 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](target_nits);
  }

  else if ([location[0] isEqualToString:@"target_weight"])
  {
    v5 = getMLFeatureValueClass_1();
    target_weight = [(MLABInput *)selfCopy target_weight];
    v15 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](target_weight);
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v15;

  return v3;
}

@end