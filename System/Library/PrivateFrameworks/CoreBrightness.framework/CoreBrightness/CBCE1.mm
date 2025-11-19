@interface CBCE1
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (CBCE1)init;
- (CBCE1)initWithConfiguration:(id)a3 error:(id *)a4;
- (CBCE1)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (CBCE1)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (CBCE1)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CBCE1

+ (id)URLOfModelInThisBundle
{
  v11[2] = a1;
  v11[1] = a2;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11[0] = [v7 pathForResource:@"CBCE1" ofType:@"mlmodelc"];
  *&v2 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  if (v11[0])
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:{v11[0], v2}];
  }

  else
  {
    location = MEMORY[0x1E69E5928](MEMORY[0x1E69E9C10]);
    v9 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Could not load CBCE1.mlmodelc in the bundle resource", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v3 = v12;

  return v3;
}

- (CBCE1)initWithMLModel:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v5.receiver = v3;
  v5.super_class = CBCE1;
  v7 = [(CBCE1 *)&v5 init];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    objc_storeStrong(v7 + 1, location[0]);
    if (*(v7 + 1))
    {
      v8 = MEMORY[0x1E69E5928](v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v7, 0);
  return v8;
}

- (CBCE1)init
{
  v6 = self;
  v4 = [objc_opt_class() URLOfModelInThisBundle];
  v6 = 0;
  v6 = [CBCE1 initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (CBCE1)initWithConfiguration:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [objc_opt_class() URLOfModelInThisBundle];
  v9 = 0;
  v9 = [CBCE1 initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (CBCE1)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = [getMLModelClass_2() modelWithContentsOfURL:location[0] error:a4];
  if (v7[0])
  {
    v4 = v9;
    v9 = 0;
    v9 = [v4 initWithMLModel:v7[0]];
    v10 = MEMORY[0x1E69E5928](v9);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v10;
}

- (CBCE1)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = [getMLModelClass_2() modelWithContentsOfURL:location[0] configuration:v10 error:a5];
  if (v9[0])
  {
    v5 = v12;
    v12 = 0;
    v12 = [v5 initWithMLModel:v9[0]];
    v13 = MEMORY[0x1E69E5928](v12);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v13;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v9;
  v6 = [v9 URLOfModelInThisBundle];
  [v5 loadContentsOfURL:? configuration:? completionHandler:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  MLModelClass_2 = getMLModelClass_2();
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__CBCE1_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_1E867C7D8;
  v14 = MEMORY[0x1E69E5928](v15);
  [MLModelClass_2 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __59__CBCE1_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [CBCE1 alloc];
    v6[0] = [(CBCE1 *)v3 initWithMLModel:location[0]];
    (*(a1[4] + 16))();
    objc_storeStrong(v6, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v10;
  v5 = location[0];
  v7 = objc_alloc_init(getMLPredictionOptionsClass_2());
  v8 = [CBCE1 predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a5;
  v24[0] = [(MLModel *)v27->_model predictionFromFeatures:location[0] options:v25 error:a5];
  if (v24[0])
  {
    v7 = [CBCE1Output alloc];
    v21 = [v24[0] featureValueForName:@"CBCE1_Q0_output"];
    v20 = [v21 multiArrayValue];
    v19 = [v24[0] featureValueForName:@"CBCE1_Q1_output"];
    v18 = [v19 multiArrayValue];
    v17 = [v24[0] featureValueForName:@"CBCE1_Q2_output"];
    v16 = [v17 multiArrayValue];
    v15 = [v24[0] featureValueForName:@"CBCE1_Q3_output"];
    v14 = [v15 multiArrayValue];
    v13 = [v24[0] featureValueForName:@"CBCE1_Q4_output"];
    v12 = [v13 multiArrayValue];
    v11 = [v24[0] featureValueForName:@"strength_output"];
    v10 = [v11 multiArrayValue];
    v9 = [v24[0] featureValueForName:@"uncertainty"];
    v8 = [v9 multiArrayValue];
    v28 = [(CBCE1Output *)v7 initWithCBCE1_Q0_output:v20 CBCE1_Q1_output:v18 CBCE1_Q2_output:v16 CBCE1_Q3_output:v14 CBCE1_Q4_output:v12 strength_output:v10 uncertainty:v8];
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    v28 = 0;
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  v5 = v28;

  return v5;
}

- (id)predictionFromInput:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8[1] = a4;
  v4 = [CBCE1Input alloc];
  v8[0] = [(CBCE1Input *)v4 initWithInput:location[0]];
  v7 = [(CBCE1 *)v10 predictionFromFeatures:v8[0] error:a4];
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33[1] = a5;
  v5 = objc_alloc(getMLArrayBatchProviderClass_2());
  v33[0] = [v5 initWithFeatureProviderArray:location[0]];
  v32 = [(MLModel *)v36->_model predictionsFromBatch:v33[0] options:v34 error:a5];
  if (v32)
  {
    v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
    for (i = 0; ; ++i)
    {
      v24 = i;
      if (v24 >= [v32 count])
      {
        break;
      }

      v28 = [v32 featuresAtIndex:i];
      v9 = [CBCE1Output alloc];
      v23 = [v28 featureValueForName:@"CBCE1_Q0_output"];
      v22 = [v23 multiArrayValue];
      v21 = [v28 featureValueForName:@"CBCE1_Q1_output"];
      v20 = [v21 multiArrayValue];
      v19 = [v28 featureValueForName:@"CBCE1_Q2_output"];
      v18 = [v19 multiArrayValue];
      v17 = [v28 featureValueForName:@"CBCE1_Q3_output"];
      v16 = [v17 multiArrayValue];
      v15 = [v28 featureValueForName:@"CBCE1_Q4_output"];
      v14 = [v15 multiArrayValue];
      v13 = [v28 featureValueForName:@"strength_output"];
      v12 = [v13 multiArrayValue];
      v11 = [v28 featureValueForName:@"uncertainty"];
      v10 = [v11 multiArrayValue];
      v27 = [(CBCE1Output *)v9 initWithCBCE1_Q0_output:v22 CBCE1_Q1_output:v20 CBCE1_Q2_output:v18 CBCE1_Q3_output:v16 CBCE1_Q4_output:v14 strength_output:v12 uncertainty:v10];
      MEMORY[0x1E69E5920](v10);
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v16);
      MEMORY[0x1E69E5920](v17);
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v22);
      *&v6 = MEMORY[0x1E69E5920](v23).n128_u64[0];
      [v30 addObject:{v27, v6}];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }

    v37 = MEMORY[0x1E69E5928](v30);
    v31 = 1;
    objc_storeStrong(&v30, 0);
  }

  else
  {
    v37 = 0;
    v31 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  v7 = v37;

  return v7;
}

@end