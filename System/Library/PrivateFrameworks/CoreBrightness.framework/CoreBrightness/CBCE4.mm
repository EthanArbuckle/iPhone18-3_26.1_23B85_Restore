@interface CBCE4
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (CBCE4)init;
- (CBCE4)initWithConfiguration:(id)configuration error:(id *)error;
- (CBCE4)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CBCE4)initWithContentsOfURL:(id)l error:(id *)error;
- (CBCE4)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation CBCE4

+ (id)URLOfModelInThisBundle
{
  v11[2] = self;
  v11[1] = a2;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11[0] = [v7 pathForResource:@"CBCE4" ofType:@"mlmodelc"];
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
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Could not load CBCE4.mlmodelc in the bundle resource", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v3 = v12;

  return v3;
}

- (CBCE4)initWithMLModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = selfCopy;
  selfCopy = 0;
  v5.receiver = v3;
  v5.super_class = CBCE4;
  selfCopy = [(CBCE4 *)&v5 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
    if (*(selfCopy + 1))
    {
      v8 = MEMORY[0x1E69E5928](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (CBCE4)init
{
  selfCopy = self;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [CBCE4 initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (CBCE4)initWithConfiguration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [CBCE4 initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CBCE4)initWithContentsOfURL:(id)l error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v7[1] = error;
  v7[0] = [getMLModelClass_3() modelWithContentsOfURL:location[0] error:error];
  if (v7[0])
  {
    v4 = selfCopy;
    selfCopy = 0;
    selfCopy = [v4 initWithMLModel:v7[0]];
    v10 = MEMORY[0x1E69E5928](selfCopy);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (CBCE4)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  v9[1] = error;
  v9[0] = [getMLModelClass_3() modelWithContentsOfURL:location[0] configuration:v10 error:error];
  if (v9[0])
  {
    v5 = selfCopy;
    selfCopy = 0;
    selfCopy = [v5 initWithMLModel:v9[0]];
    v13 = MEMORY[0x1E69E5928](selfCopy);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [selfCopy URLOfModelInThisBundle];
  [v5 loadContentsOfURL:? configuration:? completionHandler:?];
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v16 = 0;
  objc_storeStrong(&v16, configuration);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  MLModelClass_3 = getMLModelClass_3();
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__CBCE4_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_1E867CCA0;
  v14 = MEMORY[0x1E69E5928](v15);
  [MLModelClass_3 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __59__CBCE4_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [CBCE4 alloc];
    v6[0] = [(CBCE4 *)v3 initWithMLModel:location[0]];
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

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v6 = selfCopy;
  v5 = location[0];
  v7 = objc_alloc_init(getMLPredictionOptionsClass_3());
  v8 = [CBCE4 predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v26 = 0;
  objc_storeStrong(&v26, options);
  v25[1] = error;
  model = [(CBCE4 *)selfCopy model];
  v25[0] = [(MLModel *)model predictionFromFeatures:location[0] options:v26 error:error];
  MEMORY[0x1E69E5920](model);
  if (v25[0])
  {
    v7 = [CBCE4Output alloc];
    v21 = [v25[0] featureValueForName:@"CBCE4_Q0_output"];
    multiArrayValue = [v21 multiArrayValue];
    v19 = [v25[0] featureValueForName:@"CBCE4_Q1_output"];
    multiArrayValue2 = [v19 multiArrayValue];
    v17 = [v25[0] featureValueForName:@"CBCE4_Q2_output"];
    multiArrayValue3 = [v17 multiArrayValue];
    v15 = [v25[0] featureValueForName:@"CBCE4_Q3_output"];
    multiArrayValue4 = [v15 multiArrayValue];
    v13 = [v25[0] featureValueForName:@"CBCE4_Q4_output"];
    multiArrayValue5 = [v13 multiArrayValue];
    v11 = [v25[0] featureValueForName:@"strength_output"];
    multiArrayValue6 = [v11 multiArrayValue];
    v9 = [v25[0] featureValueForName:@"uncertainty"];
    multiArrayValue7 = [v9 multiArrayValue];
    v29 = [(CBCE4Output *)v7 initWithCBCE4_Q0_output:multiArrayValue CBCE4_Q1_output:multiArrayValue2 CBCE4_Q2_output:multiArrayValue3 CBCE4_Q3_output:multiArrayValue4 CBCE4_Q4_output:multiArrayValue5 strength_output:multiArrayValue6 uncertainty:multiArrayValue7];
    MEMORY[0x1E69E5920](multiArrayValue7);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](multiArrayValue6);
    MEMORY[0x1E69E5920](v11);
    MEMORY[0x1E69E5920](multiArrayValue5);
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](multiArrayValue4);
    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](multiArrayValue3);
    MEMORY[0x1E69E5920](v17);
    MEMORY[0x1E69E5920](multiArrayValue2);
    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](multiArrayValue);
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

- (id)predictionFromInput:(id)input error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v8[1] = error;
  v4 = [CBCE4Input alloc];
  v8[0] = [(CBCE4Input *)v4 initWithInput:location[0]];
  v7 = [(CBCE4 *)selfCopy predictionFromFeatures:v8[0] error:error];
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inputs);
  v36 = 0;
  objc_storeStrong(&v36, options);
  v35[1] = error;
  v5 = objc_alloc(getMLArrayBatchProviderClass_3());
  v35[0] = [v5 initWithFeatureProviderArray:location[0]];
  model = [(CBCE4 *)selfCopy model];
  v34 = [(MLModel *)model predictionsFromBatch:v35[0] options:v36 error:error];
  *&v6 = MEMORY[0x1E69E5920](model).n128_u64[0];
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
      v10 = [CBCE4Output alloc];
      v24 = [v30 featureValueForName:@"CBCE4_Q0_output"];
      multiArrayValue = [v24 multiArrayValue];
      v22 = [v30 featureValueForName:@"CBCE4_Q1_output"];
      multiArrayValue2 = [v22 multiArrayValue];
      v20 = [v30 featureValueForName:@"CBCE4_Q2_output"];
      multiArrayValue3 = [v20 multiArrayValue];
      v18 = [v30 featureValueForName:@"CBCE4_Q3_output"];
      multiArrayValue4 = [v18 multiArrayValue];
      v16 = [v30 featureValueForName:@"CBCE4_Q4_output"];
      multiArrayValue5 = [v16 multiArrayValue];
      v14 = [v30 featureValueForName:@"strength_output"];
      multiArrayValue6 = [v14 multiArrayValue];
      v12 = [v30 featureValueForName:@"uncertainty"];
      multiArrayValue7 = [v12 multiArrayValue];
      v29 = [(CBCE4Output *)v10 initWithCBCE4_Q0_output:multiArrayValue CBCE4_Q1_output:multiArrayValue2 CBCE4_Q2_output:multiArrayValue3 CBCE4_Q3_output:multiArrayValue4 CBCE4_Q4_output:multiArrayValue5 strength_output:multiArrayValue6 uncertainty:multiArrayValue7];
      MEMORY[0x1E69E5920](multiArrayValue7);
      MEMORY[0x1E69E5920](v12);
      MEMORY[0x1E69E5920](multiArrayValue6);
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](multiArrayValue5);
      MEMORY[0x1E69E5920](v16);
      MEMORY[0x1E69E5920](multiArrayValue4);
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](multiArrayValue3);
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](multiArrayValue2);
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](multiArrayValue);
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