@interface MLABInput
- (MLABInput)initWithInput_x:(id)a3 target_lux:(id)a4 target_nits:(id)a5 target_weight:(id)a6;
- (id)featureValueForName:(id)a3;
@end

@implementation MLABInput

- (MLABInput)initWithInput_x:(id)a3 target_lux:(id)a4 target_nits:(id)a5 target_weight:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v6 = v17;
  v17 = 0;
  v12.receiver = v6;
  v12.super_class = MLABInput;
  v17 = [(MLABInput *)&v12 init];
  objc_storeStrong(&v17, v17);
  if (v17)
  {
    objc_storeStrong(&v17->_input_x, location[0]);
    objc_storeStrong(&v17->_target_lux, v15);
    objc_storeStrong(&v17->_target_nits, v14);
    objc_storeStrong(&v17->_target_weight, v13);
  }

  v8 = MEMORY[0x1E69E5928](v17);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v17, 0);
  return v8;
}

- (id)featureValueForName:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"input_x"])
  {
    MLFeatureValueClass_1 = getMLFeatureValueClass_1();
    v12 = [(MLABInput *)v14 input_x];
    v15 = [MLFeatureValueClass_1 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v12);
  }

  else if ([location[0] isEqualToString:@"target_lux"])
  {
    v9 = getMLFeatureValueClass_1();
    v10 = [(MLABInput *)v14 target_lux];
    v15 = [v9 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v10);
  }

  else if ([location[0] isEqualToString:@"target_nits"])
  {
    v7 = getMLFeatureValueClass_1();
    v8 = [(MLABInput *)v14 target_nits];
    v15 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v8);
  }

  else if ([location[0] isEqualToString:@"target_weight"])
  {
    v5 = getMLFeatureValueClass_1();
    v6 = [(MLABInput *)v14 target_weight];
    v15 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v6);
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