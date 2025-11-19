@interface CBCE3Output
- (CBCE3Output)initWithCBCE3_Q0_output:(id)a3 CBCE3_Q1_output:(id)a4 CBCE3_Q2_output:(id)a5 CBCE3_Q3_output:(id)a6 CBCE3_Q4_output:(id)a7 strength_output:(id)a8 uncertainty:(id)a9;
- (id)featureValueForName:(id)a3;
@end

@implementation CBCE3Output

- (CBCE3Output)initWithCBCE3_Q0_output:(id)a3 CBCE3_Q1_output:(id)a4 CBCE3_Q2_output:(id)a5 CBCE3_Q3_output:(id)a6 CBCE3_Q4_output:(id)a7 strength_output:(id)a8 uncertainty:(id)a9
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = 0;
  objc_storeStrong(&v22, a5);
  v21 = 0;
  objc_storeStrong(&v21, a6);
  v20 = 0;
  objc_storeStrong(&v20, a7);
  v19 = 0;
  objc_storeStrong(&v19, a8);
  v18 = 0;
  objc_storeStrong(&v18, a9);
  v9 = v25;
  v25 = 0;
  v17.receiver = v9;
  v17.super_class = CBCE3Output;
  v25 = [(CBCE3Output *)&v17 init];
  objc_storeStrong(&v25, v25);
  if (v25)
  {
    objc_storeStrong(&v25->_CBCE3_Q0_output, location[0]);
    objc_storeStrong(&v25->_CBCE3_Q1_output, v23);
    objc_storeStrong(&v25->_CBCE3_Q2_output, v22);
    objc_storeStrong(&v25->_CBCE3_Q3_output, v21);
    objc_storeStrong(&v25->_CBCE3_Q4_output, v20);
    objc_storeStrong(&v25->_strength_output, v19);
    objc_storeStrong(&v25->_uncertainty, v18);
  }

  v11 = MEMORY[0x1E69E5928](v25);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v25, 0);
  return v11;
}

- (id)featureValueForName:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"CBCE3_Q0_output"])
  {
    MLFeatureValueClass = getMLFeatureValueClass();
    v18 = [(CBCE3Output *)v20 CBCE3_Q0_output];
    v21 = [MLFeatureValueClass featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v18);
  }

  else if ([location[0] isEqualToString:@"CBCE3_Q1_output"])
  {
    v15 = getMLFeatureValueClass();
    v16 = [(CBCE3Output *)v20 CBCE3_Q1_output];
    v21 = [v15 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v16);
  }

  else if ([location[0] isEqualToString:@"CBCE3_Q2_output"])
  {
    v13 = getMLFeatureValueClass();
    v14 = [(CBCE3Output *)v20 CBCE3_Q2_output];
    v21 = [v13 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v14);
  }

  else if ([location[0] isEqualToString:@"CBCE3_Q3_output"])
  {
    v11 = getMLFeatureValueClass();
    v12 = [(CBCE3Output *)v20 CBCE3_Q3_output];
    v21 = [v11 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v12);
  }

  else if ([location[0] isEqualToString:@"CBCE3_Q4_output"])
  {
    v9 = getMLFeatureValueClass();
    v10 = [(CBCE3Output *)v20 CBCE3_Q4_output];
    v21 = [v9 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v10);
  }

  else if ([location[0] isEqualToString:@"strength_output"])
  {
    v7 = getMLFeatureValueClass();
    v8 = [(CBCE3Output *)v20 strength_output];
    v21 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v8);
  }

  else if ([location[0] isEqualToString:@"uncertainty"])
  {
    v5 = getMLFeatureValueClass();
    v6 = [(CBCE3Output *)v20 uncertainty];
    v21 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v21;

  return v3;
}

@end