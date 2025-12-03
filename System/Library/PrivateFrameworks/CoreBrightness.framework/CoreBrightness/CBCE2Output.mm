@interface CBCE2Output
- (CBCE2Output)initWithCBCE2_Q0_output:(id)q0_output CBCE2_Q1_output:(id)q1_output CBCE2_Q2_output:(id)q2_output CBCE2_Q3_output:(id)q3_output CBCE2_Q4_output:(id)q4_output strength_output:(id)strength_output uncertainty:(id)uncertainty;
- (id)featureValueForName:(id)name;
@end

@implementation CBCE2Output

- (CBCE2Output)initWithCBCE2_Q0_output:(id)q0_output CBCE2_Q1_output:(id)q1_output CBCE2_Q2_output:(id)q2_output CBCE2_Q3_output:(id)q3_output CBCE2_Q4_output:(id)q4_output strength_output:(id)strength_output uncertainty:(id)uncertainty
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, q0_output);
  v23 = 0;
  objc_storeStrong(&v23, q1_output);
  v22 = 0;
  objc_storeStrong(&v22, q2_output);
  v21 = 0;
  objc_storeStrong(&v21, q3_output);
  v20 = 0;
  objc_storeStrong(&v20, q4_output);
  v19 = 0;
  objc_storeStrong(&v19, strength_output);
  v18 = 0;
  objc_storeStrong(&v18, uncertainty);
  v9 = selfCopy;
  selfCopy = 0;
  v17.receiver = v9;
  v17.super_class = CBCE2Output;
  selfCopy = [(CBCE2Output *)&v17 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_CBCE2_Q0_output, location[0]);
    objc_storeStrong(&selfCopy->_CBCE2_Q1_output, v23);
    objc_storeStrong(&selfCopy->_CBCE2_Q2_output, v22);
    objc_storeStrong(&selfCopy->_CBCE2_Q3_output, v21);
    objc_storeStrong(&selfCopy->_CBCE2_Q4_output, v20);
    objc_storeStrong(&selfCopy->_strength_output, v19);
    objc_storeStrong(&selfCopy->_uncertainty, v18);
  }

  v11 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"CBCE2_Q0_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_CBCE2_Q0_output];
  }

  else if ([location[0] isEqualToString:@"CBCE2_Q1_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_CBCE2_Q1_output];
  }

  else if ([location[0] isEqualToString:@"CBCE2_Q2_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_CBCE2_Q2_output];
  }

  else if ([location[0] isEqualToString:@"CBCE2_Q3_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_CBCE2_Q3_output];
  }

  else if ([location[0] isEqualToString:@"CBCE2_Q4_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_CBCE2_Q4_output];
  }

  else if ([location[0] isEqualToString:@"strength_output"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_strength_output];
  }

  else if ([location[0] isEqualToString:@"uncertainty"])
  {
    v7 = [getMLFeatureValueClass_0() featureValueWithMultiArray:selfCopy->_uncertainty];
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