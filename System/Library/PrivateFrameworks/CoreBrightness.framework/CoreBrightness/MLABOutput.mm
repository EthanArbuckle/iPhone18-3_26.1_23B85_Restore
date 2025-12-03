@interface MLABOutput
- (MLABOutput)initWithIdentity:(id)identity LTM_output_E:(id)e Identity_10:(id)identity_10 Identity_11:(id)identity_11 Identity_12:(id)identity_12 Identity_13:(id)identity_13 Identity_14:(id)identity_14 LTM_output_L:(id)self0 LTM_output_S:(id)self1 Identity_4:(id)self2 Identity_5:(id)self3 STM_output_E:(id)self4 STM_output_L:(id)self5 STM_output_S:(id)self6 Identity_9:(id)self7;
- (id)featureValueForName:(id)name;
@end

@implementation MLABOutput

- (MLABOutput)initWithIdentity:(id)identity LTM_output_E:(id)e Identity_10:(id)identity_10 Identity_11:(id)identity_11 Identity_12:(id)identity_12 Identity_13:(id)identity_13 Identity_14:(id)identity_14 LTM_output_L:(id)self0 LTM_output_S:(id)self1 Identity_4:(id)self2 Identity_5:(id)self3 STM_output_E:(id)self4 STM_output_L:(id)self5 STM_output_S:(id)self6 Identity_9:(id)self7
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identity);
  v39 = 0;
  objc_storeStrong(&v39, e);
  v38 = 0;
  objc_storeStrong(&v38, identity_10);
  v37 = 0;
  objc_storeStrong(&v37, identity_11);
  v36 = 0;
  objc_storeStrong(&v36, identity_12);
  v35 = 0;
  objc_storeStrong(&v35, identity_13);
  v34 = 0;
  objc_storeStrong(&v34, identity_14);
  v33 = 0;
  objc_storeStrong(&v33, l);
  v32 = 0;
  objc_storeStrong(&v32, s);
  v31 = 0;
  objc_storeStrong(&v31, identity_4);
  v30 = 0;
  objc_storeStrong(&v30, identity_5);
  v29 = 0;
  objc_storeStrong(&v29, m_output_E);
  v28 = 0;
  objc_storeStrong(&v28, m_output_L);
  v27 = 0;
  objc_storeStrong(&v27, m_output_S);
  v26 = 0;
  objc_storeStrong(&v26, identity_9);
  v17 = selfCopy;
  selfCopy = 0;
  v25.receiver = v17;
  v25.super_class = MLABOutput;
  selfCopy = [(MLABOutput *)&v25 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_Identity, location[0]);
    objc_storeStrong(&selfCopy->_LTM_output_E, v39);
    objc_storeStrong(&selfCopy->_Identity_10, v38);
    objc_storeStrong(&selfCopy->_Identity_11, v37);
    objc_storeStrong(&selfCopy->_Identity_12, v36);
    objc_storeStrong(&selfCopy->_Identity_13, v35);
    objc_storeStrong(&selfCopy->_Identity_14, v34);
    objc_storeStrong(&selfCopy->_LTM_output_L, v33);
    objc_storeStrong(&selfCopy->_LTM_output_S, v32);
    objc_storeStrong(&selfCopy->_Identity_4, v31);
    objc_storeStrong(&selfCopy->_Identity_5, v30);
    objc_storeStrong(&selfCopy->_STM_output_E, v29);
    objc_storeStrong(&selfCopy->_STM_output_L, v28);
    objc_storeStrong(&selfCopy->_STM_output_S, v27);
    objc_storeStrong(&selfCopy->_Identity_9, v26);
  }

  v19 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

- (id)featureValueForName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if ([location[0] isEqualToString:@"Identity"])
  {
    MLFeatureValueClass_1 = getMLFeatureValueClass_1();
    identity = [(MLABOutput *)selfCopy Identity];
    v37 = [MLFeatureValueClass_1 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity);
  }

  else if ([location[0] isEqualToString:@"LTM_output_E"])
  {
    v31 = getMLFeatureValueClass_1();
    lTM_output_E = [(MLABOutput *)selfCopy LTM_output_E];
    v37 = [v31 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](lTM_output_E);
  }

  else if ([location[0] isEqualToString:@"Identity_10"])
  {
    v29 = getMLFeatureValueClass_1();
    identity2 = [(MLABOutput *)selfCopy Identity];
    v37 = [v29 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity2);
  }

  else if ([location[0] isEqualToString:@"Identity_11"])
  {
    v27 = getMLFeatureValueClass_1();
    identity3 = [(MLABOutput *)selfCopy Identity];
    v37 = [v27 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity3);
  }

  else if ([location[0] isEqualToString:@"Identity_12"])
  {
    v25 = getMLFeatureValueClass_1();
    identity4 = [(MLABOutput *)selfCopy Identity];
    v37 = [v25 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity4);
  }

  else if ([location[0] isEqualToString:@"Identity_13"])
  {
    v23 = getMLFeatureValueClass_1();
    identity5 = [(MLABOutput *)selfCopy Identity];
    v37 = [v23 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity5);
  }

  else if ([location[0] isEqualToString:@"Identity_14"])
  {
    v21 = getMLFeatureValueClass_1();
    identity6 = [(MLABOutput *)selfCopy Identity];
    v37 = [v21 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity6);
  }

  else if ([location[0] isEqualToString:@"LTM_output_L"])
  {
    v19 = getMLFeatureValueClass_1();
    lTM_output_L = [(MLABOutput *)selfCopy LTM_output_L];
    v37 = [v19 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](lTM_output_L);
  }

  else if ([location[0] isEqualToString:@"LTM_output_S"])
  {
    v17 = getMLFeatureValueClass_1();
    lTM_output_S = [(MLABOutput *)selfCopy LTM_output_S];
    v37 = [v17 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](lTM_output_S);
  }

  else if ([location[0] isEqualToString:@"Identity_4"])
  {
    v15 = getMLFeatureValueClass_1();
    identity7 = [(MLABOutput *)selfCopy Identity];
    v37 = [v15 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity7);
  }

  else if ([location[0] isEqualToString:@"Identity_5"])
  {
    v13 = getMLFeatureValueClass_1();
    identity8 = [(MLABOutput *)selfCopy Identity];
    v37 = [v13 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity8);
  }

  else if ([location[0] isEqualToString:@"STM_output_E"])
  {
    v11 = getMLFeatureValueClass_1();
    sTM_output_E = [(MLABOutput *)selfCopy STM_output_E];
    v37 = [v11 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](sTM_output_E);
  }

  else if ([location[0] isEqualToString:@"STM_output_L"])
  {
    v9 = getMLFeatureValueClass_1();
    sTM_output_L = [(MLABOutput *)selfCopy STM_output_L];
    v37 = [v9 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](sTM_output_L);
  }

  else if ([location[0] isEqualToString:@"STM_output_S"])
  {
    v7 = getMLFeatureValueClass_1();
    sTM_output_S = [(MLABOutput *)selfCopy STM_output_S];
    v37 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](sTM_output_S);
  }

  else if ([location[0] isEqualToString:@"Identity_9"])
  {
    v5 = getMLFeatureValueClass_1();
    identity9 = [(MLABOutput *)selfCopy Identity];
    v37 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](identity9);
  }

  else
  {
    v37 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v37;

  return v3;
}

@end