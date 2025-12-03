@interface CBCE2
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (CBCE2)init;
- (CBCE2)initWithConfiguration:(id)configuration error:(id *)error;
- (CBCE2)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (CBCE2)initWithContentsOfURL:(id)l error:(id *)error;
- (CBCE2)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation CBCE2

+ (id)URLOfModelInThisBundle
{
  v11[2] = self;
  v11[1] = a2;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11[0] = [v7 pathForResource:@"CBCE2" ofType:@"mlmodelc"];
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
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Could not load CBCE2.mlmodelc in the bundle resource", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v3 = v12;

  return v3;
}

- (CBCE2)initWithMLModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = selfCopy;
  selfCopy = 0;
  v5.receiver = v3;
  v5.super_class = CBCE2;
  selfCopy = [(CBCE2 *)&v5 init];
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

- (CBCE2)init
{
  selfCopy = self;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [CBCE2 initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (CBCE2)initWithConfiguration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [CBCE2 initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (CBCE2)initWithContentsOfURL:(id)l error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v7[1] = error;
  v7[0] = [getMLModelClass_0() modelWithContentsOfURL:location[0] error:error];
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

- (CBCE2)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  v9[1] = error;
  v9[0] = [getMLModelClass_0() modelWithContentsOfURL:location[0] configuration:v10 error:error];
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
  MLModelClass_0 = getMLModelClass_0();
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__CBCE2_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_1E867BD20;
  v14 = MEMORY[0x1E69E5928](v15);
  [MLModelClass_0 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __59__CBCE2_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [CBCE2 alloc];
    v6[0] = [(CBCE2 *)v3 initWithMLModel:location[0]];
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
  v7 = objc_alloc_init(getMLPredictionOptionsClass_0());
  v8 = [CBCE2 predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
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
  v25 = 0;
  objc_storeStrong(&v25, options);
  v24[1] = error;
  v24[0] = [(MLModel *)selfCopy->_model predictionFromFeatures:location[0] options:v25 error:error];
  if (v24[0])
  {
    v7 = [CBCE2Output alloc];
    v21 = [v24[0] featureValueForName:@"CBCE2_Q0_output"];
    multiArrayValue = [v21 multiArrayValue];
    v19 = [v24[0] featureValueForName:@"CBCE2_Q1_output"];
    multiArrayValue2 = [v19 multiArrayValue];
    v17 = [v24[0] featureValueForName:@"CBCE2_Q2_output"];
    multiArrayValue3 = [v17 multiArrayValue];
    v15 = [v24[0] featureValueForName:@"CBCE2_Q3_output"];
    multiArrayValue4 = [v15 multiArrayValue];
    v13 = [v24[0] featureValueForName:@"CBCE2_Q4_output"];
    multiArrayValue5 = [v13 multiArrayValue];
    v11 = [v24[0] featureValueForName:@"strength_output"];
    multiArrayValue6 = [v11 multiArrayValue];
    v9 = [v24[0] featureValueForName:@"uncertainty"];
    multiArrayValue7 = [v9 multiArrayValue];
    v28 = [(CBCE2Output *)v7 initWithCBCE2_Q0_output:multiArrayValue CBCE2_Q1_output:multiArrayValue2 CBCE2_Q2_output:multiArrayValue3 CBCE2_Q3_output:multiArrayValue4 CBCE2_Q4_output:multiArrayValue5 strength_output:multiArrayValue6 uncertainty:multiArrayValue7];
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
    v28 = 0;
  }

  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  v5 = v28;

  return v5;
}

- (id)predictionFromInput:(id)input error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v8[1] = error;
  v4 = [CBCE2Input alloc];
  v8[0] = [(CBCE2Input *)v4 initWithInput:location[0]];
  v7 = [(CBCE2 *)selfCopy predictionFromFeatures:v8[0] error:error];
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
  v34 = 0;
  objc_storeStrong(&v34, options);
  v33[1] = error;
  v5 = objc_alloc(getMLArrayBatchProviderClass_0());
  v33[0] = [v5 initWithFeatureProviderArray:location[0]];
  v32 = [(MLModel *)selfCopy->_model predictionsFromBatch:v33[0] options:v34 error:error];
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
      v9 = [CBCE2Output alloc];
      v23 = [v28 featureValueForName:@"CBCE2_Q0_output"];
      multiArrayValue = [v23 multiArrayValue];
      v21 = [v28 featureValueForName:@"CBCE2_Q1_output"];
      multiArrayValue2 = [v21 multiArrayValue];
      v19 = [v28 featureValueForName:@"CBCE2_Q2_output"];
      multiArrayValue3 = [v19 multiArrayValue];
      v17 = [v28 featureValueForName:@"CBCE2_Q3_output"];
      multiArrayValue4 = [v17 multiArrayValue];
      v15 = [v28 featureValueForName:@"CBCE2_Q4_output"];
      multiArrayValue5 = [v15 multiArrayValue];
      v13 = [v28 featureValueForName:@"strength_output"];
      multiArrayValue6 = [v13 multiArrayValue];
      v11 = [v28 featureValueForName:@"uncertainty"];
      multiArrayValue7 = [v11 multiArrayValue];
      v27 = [(CBCE2Output *)v9 initWithCBCE2_Q0_output:multiArrayValue CBCE2_Q1_output:multiArrayValue2 CBCE2_Q2_output:multiArrayValue3 CBCE2_Q3_output:multiArrayValue4 CBCE2_Q4_output:multiArrayValue5 strength_output:multiArrayValue6 uncertainty:multiArrayValue7];
      MEMORY[0x1E69E5920](multiArrayValue7);
      MEMORY[0x1E69E5920](v11);
      MEMORY[0x1E69E5920](multiArrayValue6);
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](multiArrayValue5);
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](multiArrayValue4);
      MEMORY[0x1E69E5920](v17);
      MEMORY[0x1E69E5920](multiArrayValue3);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](multiArrayValue2);
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](multiArrayValue);
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