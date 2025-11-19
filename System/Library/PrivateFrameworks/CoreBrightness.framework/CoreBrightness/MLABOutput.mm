@interface MLABOutput
- (MLABOutput)initWithIdentity:(id)a3 LTM_output_E:(id)a4 Identity_10:(id)a5 Identity_11:(id)a6 Identity_12:(id)a7 Identity_13:(id)a8 Identity_14:(id)a9 LTM_output_L:(id)a10 LTM_output_S:(id)a11 Identity_4:(id)a12 Identity_5:(id)a13 STM_output_E:(id)a14 STM_output_L:(id)a15 STM_output_S:(id)a16 Identity_9:(id)a17;
- (id)featureValueForName:(id)a3;
@end

@implementation MLABOutput

- (MLABOutput)initWithIdentity:(id)a3 LTM_output_E:(id)a4 Identity_10:(id)a5 Identity_11:(id)a6 Identity_12:(id)a7 Identity_13:(id)a8 Identity_14:(id)a9 LTM_output_L:(id)a10 LTM_output_S:(id)a11 Identity_4:(id)a12 Identity_5:(id)a13 STM_output_E:(id)a14 STM_output_L:(id)a15 STM_output_S:(id)a16 Identity_9:(id)a17
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v38 = 0;
  objc_storeStrong(&v38, a5);
  v37 = 0;
  objc_storeStrong(&v37, a6);
  v36 = 0;
  objc_storeStrong(&v36, a7);
  v35 = 0;
  objc_storeStrong(&v35, a8);
  v34 = 0;
  objc_storeStrong(&v34, a9);
  v33 = 0;
  objc_storeStrong(&v33, a10);
  v32 = 0;
  objc_storeStrong(&v32, a11);
  v31 = 0;
  objc_storeStrong(&v31, a12);
  v30 = 0;
  objc_storeStrong(&v30, a13);
  v29 = 0;
  objc_storeStrong(&v29, a14);
  v28 = 0;
  objc_storeStrong(&v28, a15);
  v27 = 0;
  objc_storeStrong(&v27, a16);
  v26 = 0;
  objc_storeStrong(&v26, a17);
  v17 = v41;
  v41 = 0;
  v25.receiver = v17;
  v25.super_class = MLABOutput;
  v41 = [(MLABOutput *)&v25 init];
  objc_storeStrong(&v41, v41);
  if (v41)
  {
    objc_storeStrong(&v41->_Identity, location[0]);
    objc_storeStrong(&v41->_LTM_output_E, v39);
    objc_storeStrong(&v41->_Identity_10, v38);
    objc_storeStrong(&v41->_Identity_11, v37);
    objc_storeStrong(&v41->_Identity_12, v36);
    objc_storeStrong(&v41->_Identity_13, v35);
    objc_storeStrong(&v41->_Identity_14, v34);
    objc_storeStrong(&v41->_LTM_output_L, v33);
    objc_storeStrong(&v41->_LTM_output_S, v32);
    objc_storeStrong(&v41->_Identity_4, v31);
    objc_storeStrong(&v41->_Identity_5, v30);
    objc_storeStrong(&v41->_STM_output_E, v29);
    objc_storeStrong(&v41->_STM_output_L, v28);
    objc_storeStrong(&v41->_STM_output_S, v27);
    objc_storeStrong(&v41->_Identity_9, v26);
  }

  v19 = MEMORY[0x1E69E5928](v41);
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
  objc_storeStrong(&v41, 0);
  return v19;
}

- (id)featureValueForName:(id)a3
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] isEqualToString:@"Identity"])
  {
    MLFeatureValueClass_1 = getMLFeatureValueClass_1();
    v34 = [(MLABOutput *)v36 Identity];
    v37 = [MLFeatureValueClass_1 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v34);
  }

  else if ([location[0] isEqualToString:@"LTM_output_E"])
  {
    v31 = getMLFeatureValueClass_1();
    v32 = [(MLABOutput *)v36 LTM_output_E];
    v37 = [v31 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v32);
  }

  else if ([location[0] isEqualToString:@"Identity_10"])
  {
    v29 = getMLFeatureValueClass_1();
    v30 = [(MLABOutput *)v36 Identity];
    v37 = [v29 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v30);
  }

  else if ([location[0] isEqualToString:@"Identity_11"])
  {
    v27 = getMLFeatureValueClass_1();
    v28 = [(MLABOutput *)v36 Identity];
    v37 = [v27 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v28);
  }

  else if ([location[0] isEqualToString:@"Identity_12"])
  {
    v25 = getMLFeatureValueClass_1();
    v26 = [(MLABOutput *)v36 Identity];
    v37 = [v25 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v26);
  }

  else if ([location[0] isEqualToString:@"Identity_13"])
  {
    v23 = getMLFeatureValueClass_1();
    v24 = [(MLABOutput *)v36 Identity];
    v37 = [v23 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v24);
  }

  else if ([location[0] isEqualToString:@"Identity_14"])
  {
    v21 = getMLFeatureValueClass_1();
    v22 = [(MLABOutput *)v36 Identity];
    v37 = [v21 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v22);
  }

  else if ([location[0] isEqualToString:@"LTM_output_L"])
  {
    v19 = getMLFeatureValueClass_1();
    v20 = [(MLABOutput *)v36 LTM_output_L];
    v37 = [v19 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v20);
  }

  else if ([location[0] isEqualToString:@"LTM_output_S"])
  {
    v17 = getMLFeatureValueClass_1();
    v18 = [(MLABOutput *)v36 LTM_output_S];
    v37 = [v17 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v18);
  }

  else if ([location[0] isEqualToString:@"Identity_4"])
  {
    v15 = getMLFeatureValueClass_1();
    v16 = [(MLABOutput *)v36 Identity];
    v37 = [v15 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v16);
  }

  else if ([location[0] isEqualToString:@"Identity_5"])
  {
    v13 = getMLFeatureValueClass_1();
    v14 = [(MLABOutput *)v36 Identity];
    v37 = [v13 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v14);
  }

  else if ([location[0] isEqualToString:@"STM_output_E"])
  {
    v11 = getMLFeatureValueClass_1();
    v12 = [(MLABOutput *)v36 STM_output_E];
    v37 = [v11 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v12);
  }

  else if ([location[0] isEqualToString:@"STM_output_L"])
  {
    v9 = getMLFeatureValueClass_1();
    v10 = [(MLABOutput *)v36 STM_output_L];
    v37 = [v9 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v10);
  }

  else if ([location[0] isEqualToString:@"STM_output_S"])
  {
    v7 = getMLFeatureValueClass_1();
    v8 = [(MLABOutput *)v36 STM_output_S];
    v37 = [v7 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v8);
  }

  else if ([location[0] isEqualToString:@"Identity_9"])
  {
    v5 = getMLFeatureValueClass_1();
    v6 = [(MLABOutput *)v36 Identity];
    v37 = [v5 featureValueWithMultiArray:?];
    MEMORY[0x1E69E5920](v6);
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