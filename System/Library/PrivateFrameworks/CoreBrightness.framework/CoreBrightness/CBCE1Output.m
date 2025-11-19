@interface CBCE1Output
- (CBCE1Output)initWithCBCE1_Q0_output:(id)a3 CBCE1_Q1_output:(id)a4 CBCE1_Q2_output:(id)a5 CBCE1_Q3_output:(id)a6 CBCE1_Q4_output:(id)a7 strength_output:(id)a8 uncertainty:(id)a9;
- (id)featureValueForName:(id)a3;
@end

@implementation CBCE1Output

- (CBCE1Output)initWithCBCE1_Q0_output:(id)a3 CBCE1_Q1_output:(id)a4 CBCE1_Q2_output:(id)a5 CBCE1_Q3_output:(id)a6 CBCE1_Q4_output:(id)a7 strength_output:(id)a8 uncertainty:(id)a9
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
  v17.super_class = CBCE1Output;
  v25 = [(CBCE1Output *)&v17 init];
  objc_storeStrong(&v25, v25);
  if (v25)
  {
    objc_storeStrong(&v25->_CBCE1_Q0_output, location[0]);
    objc_storeStrong(&v25->_CBCE1_Q1_output, v23);
    objc_storeStrong(&v25->_CBCE1_Q2_output, v22);
    objc_storeStrong(&v25->_CBCE1_Q3_output, v21);
    objc_storeStrong(&v25->_CBCE1_Q4_output, v20);
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
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"CBCE1_Q0_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_CBCE1_Q0_output];
  }

  else if ([location[0] isEqualToString:@"CBCE1_Q1_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_CBCE1_Q1_output];
  }

  else if ([location[0] isEqualToString:@"CBCE1_Q2_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_CBCE1_Q2_output];
  }

  else if ([location[0] isEqualToString:@"CBCE1_Q3_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_CBCE1_Q3_output];
  }

  else if ([location[0] isEqualToString:@"CBCE1_Q4_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_CBCE1_Q4_output];
  }

  else if ([location[0] isEqualToString:@"strength_output"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_strength_output];
  }

  else if ([location[0] isEqualToString:@"uncertainty"])
  {
    v7 = [getMLFeatureValueClass_2() featureValueWithMultiArray:v6->_uncertainty];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

@end