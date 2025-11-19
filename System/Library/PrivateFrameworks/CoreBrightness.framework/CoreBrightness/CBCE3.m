@interface CBCE3
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (CBCE3)init;
- (CBCE3)initWithConfiguration:(id)a3 error:(id *)a4;
- (CBCE3)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (CBCE3)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (CBCE3)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CBCE3

+ (id)URLOfModelInThisBundle
{
  v11[2] = a1;
  v11[1] = a2;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11[0] = [v7 pathForResource:@"CBCE3" ofType:@"mlmodelc"];
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
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Could not load CBCE3.mlmodelc in the bundle resource", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v3 = v12;

  return v3;
}

- (CBCE3)initWithMLModel:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v5.receiver = v3;
  v5.super_class = CBCE3;
  v7 = [(CBCE3 *)&v5 init];
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

- (CBCE3)init
{
  v6 = self;
  v4 = [objc_opt_class() URLOfModelInThisBundle];
  v6 = 0;
  v6 = [CBCE3 initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (CBCE3)initWithConfiguration:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [objc_opt_class() URLOfModelInThisBundle];
  v9 = 0;
  v9 = [CBCE3 initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (CBCE3)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = [getMLModelClass() modelWithContentsOfURL:location[0] error:a4];
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

- (CBCE3)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = [getMLModelClass() modelWithContentsOfURL:location[0] configuration:v10 error:a5];
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
  MLModelClass = getMLModelClass();
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__CBCE3_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_1E867B4D0;
  v14 = MEMORY[0x1E69E5928](v15);
  [MLModelClass loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __59__CBCE3_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [CBCE3 alloc];
    v6[0] = [(CBCE3 *)v3 initWithMLModel:location[0]];
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
  v7 = objc_alloc_init(getMLPredictionOptionsClass());
  v8 = [CBCE3 predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25[1] = a5;
  v24 = [(CBCE3 *)v28 model];
  v25[0] = [(MLModel *)v24 predictionFromFeatures:location[0] options:v26 error:a5];
  MEMORY[0x1E69E5920](v24);
  if (v25[0])
  {
    v7 = [CBCE3Output alloc];
    v21 = [v25[0] featureValueForName:@"CBCE3_Q0_output"];
    v20 = [v21 multiArrayValue];
    v19 = [v25[0] featureValueForName:@"CBCE3_Q1_output"];
    v18 = [v19 multiArrayValue];
    v17 = [v25[0] featureValueForName:@"CBCE3_Q2_output"];
    v16 = [v17 multiArrayValue];
    v15 = [v25[0] featureValueForName:@"CBCE3_Q3_output"];
    v14 = [v15 multiArrayValue];
    v13 = [v25[0] featureValueForName:@"CBCE3_Q4_output"];
    v12 = [v13 multiArrayValue];
    v11 = [v25[0] featureValueForName:@"strength_output"];
    v10 = [v11 multiArrayValue];
    v9 = [v25[0] featureValueForName:@"uncertainty"];
    v8 = [v9 multiArrayValue];
    v29 = [(CBCE3Output *)v7 initWithCBCE3_Q0_output:v20 CBCE3_Q1_output:v18 CBCE3_Q2_output:v16 CBCE3_Q3_output:v14 CBCE3_Q4_output:v12 strength_output:v10 uncertainty:v8];
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
    v29 = 0;
  }

  objc_storeStrong(v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  v5 = v29;

  return v5;
}

- (id)predictionFromInput:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8[1] = a4;
  v4 = [CBCE3Input alloc];
  v8[0] = [(CBCE3Input *)v4 initWithInput:location[0]];
  v7 = [(CBCE3 *)v10 predictionFromFeatures:v8[0] error:a4];
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35[1] = a5;
  v5 = objc_alloc(getMLArrayBatchProviderClass());
  v35[0] = [v5 initWithFeatureProviderArray:location[0]];
  v28 = [(CBCE3 *)v38 model];
  v34 = [(MLModel *)v28 predictionsFromBatch:v35[0] options:v36 error:a5];
  *&v6 = MEMORY[0x1E69E5920](v28).n128_u64[0];
  if (v34)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v34, "count", v6)}];
    for (i = 0; ; ++i)
    {
      v25 = i;
      if (v25 >= [v34 count])
      {
        break;
      }

      v30 = [v34 featuresAtIndex:i];
      v10 = [CBCE3Output alloc];
      v24 = [v30 featureValueForName:@"CBCE3_Q0_output"];
      v23 = [v24 multiArrayValue];
      v22 = [v30 featureValueForName:@"CBCE3_Q1_output"];
      v21 = [v22 multiArrayValue];
      v20 = [v30 featureValueForName:@"CBCE3_Q2_output"];
      v19 = [v20 multiArrayValue];
      v18 = [v30 featureValueForName:@"CBCE3_Q3_output"];
      v17 = [v18 multiArrayValue];
      v16 = [v30 featureValueForName:@"CBCE3_Q4_output"];
      v15 = [v16 multiArrayValue];
      v14 = [v30 featureValueForName:@"strength_output"];
      v13 = [v14 multiArrayValue];
      v12 = [v30 featureValueForName:@"uncertainty"];
      v11 = [v12 multiArrayValue];
      v29 = [(CBCE3Output *)v10 initWithCBCE3_Q0_output:v23 CBCE3_Q1_output:v21 CBCE3_Q2_output:v19 CBCE3_Q3_output:v17 CBCE3_Q4_output:v15 strength_output:v13 uncertainty:v11];
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
      MEMORY[0x1E69E5920](v23);
      *&v7 = MEMORY[0x1E69E5920](v24).n128_u64[0];
      [v32 addObject:{v29, v7}];
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }

    v39 = MEMORY[0x1E69E5928](v32);
    v33 = 1;
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v39 = 0;
    v33 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  v8 = v39;

  return v8;
}

@end