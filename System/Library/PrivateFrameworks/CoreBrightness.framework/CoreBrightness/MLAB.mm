@interface MLAB
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (MLAB)init;
- (MLAB)initWithConfiguration:(id)configuration error:(id *)error;
- (MLAB)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (MLAB)initWithContentsOfURL:(id)l error:(id *)error;
- (MLAB)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput_x:(id)input_x target_lux:(id)target_lux target_nits:(id)target_nits target_weight:(id)target_weight error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
@end

@implementation MLAB

+ (id)URLOfModelInThisBundle
{
  v11[2] = self;
  v11[1] = a2;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v11[0] = [v7 pathForResource:@"MLAB" ofType:@"mlmodelc"];
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
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Could not load MLAB.mlmodelc in the bundle resource", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v3 = v12;

  return v3;
}

- (MLAB)initWithMLModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v3 = selfCopy;
  selfCopy = 0;
  v5.receiver = v3;
  v5.super_class = MLAB;
  selfCopy = [(MLAB *)&v5 init];
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

- (MLAB)init
{
  selfCopy = self;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [MLAB initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (MLAB)initWithConfiguration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v5 = selfCopy;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  selfCopy = 0;
  selfCopy = [MLAB initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](selfCopy);
  MEMORY[0x1E69E5920](uRLOfModelInThisBundle);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (MLAB)initWithContentsOfURL:(id)l error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v7[1] = error;
  v7[0] = [getMLModelClass_1() modelWithContentsOfURL:location[0] error:error];
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

- (MLAB)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v10 = 0;
  objc_storeStrong(&v10, configuration);
  v9[1] = error;
  v9[0] = [getMLModelClass_1() modelWithContentsOfURL:location[0] configuration:v10 error:error];
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
  MLModelClass_1 = getMLModelClass_1();
  v7 = location[0];
  v8 = v16;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__MLAB_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v13 = &unk_1E867C328;
  v14 = MEMORY[0x1E69E5928](v15);
  [MLModelClass_1 loadContentsOfURL:v7 configuration:v8 completionHandler:?];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __58__MLAB_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [MLAB alloc];
    v6[0] = [(MLAB *)v3 initWithMLModel:location[0]];
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
  v7 = objc_alloc_init(getMLPredictionOptionsClass_1());
  v8 = [MLAB predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  errorCopy = error;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, features);
  v46 = 0;
  objc_storeStrong(&v46, optionsCopy);
  v45[1] = errorCopy;
  model = [(MLAB *)selfCopy model];
  v45[0] = [(MLModel *)model predictionFromFeatures:location[0] options:v46 error:errorCopy];
  MEMORY[0x1E69E5920](model);
  if (v45[0])
  {
    v9 = [MLABOutput alloc];
    v40 = [v45[0] featureValueForName:@"Identity"];
    multiArrayValue = [v40 multiArrayValue];
    v38 = [v45[0] featureValueForName:@"LTM_output_E"];
    multiArrayValue2 = [v38 multiArrayValue];
    v36 = [v45[0] featureValueForName:@"Identity_10"];
    multiArrayValue3 = [v36 multiArrayValue];
    v34 = [v45[0] featureValueForName:@"Identity_11"];
    multiArrayValue4 = [v34 multiArrayValue];
    v32 = [v45[0] featureValueForName:@"Identity_12"];
    multiArrayValue5 = [v32 multiArrayValue];
    v30 = [v45[0] featureValueForName:@"Identity_13"];
    multiArrayValue6 = [v30 multiArrayValue];
    v28 = [v45[0] featureValueForName:@"Identity_14"];
    multiArrayValue7 = [v28 multiArrayValue];
    v26 = [v45[0] featureValueForName:@"LTM_output_L"];
    multiArrayValue8 = [v26 multiArrayValue];
    v24 = [v45[0] featureValueForName:@"LTM_output_S"];
    multiArrayValue9 = [v24 multiArrayValue];
    v22 = [v45[0] featureValueForName:@"Identity_4"];
    multiArrayValue10 = [v22 multiArrayValue];
    v20 = [v45[0] featureValueForName:@"Identity_5"];
    multiArrayValue11 = [v20 multiArrayValue];
    v18 = [v45[0] featureValueForName:@"STM_output_E"];
    multiArrayValue12 = [v18 multiArrayValue];
    v16 = [v45[0] featureValueForName:@"STM_output_L"];
    multiArrayValue13 = [v16 multiArrayValue];
    v14 = [v45[0] featureValueForName:@"STM_output_S"];
    multiArrayValue14 = [v14 multiArrayValue];
    v12 = [v45[0] featureValueForName:@"Identity_9"];
    multiArrayValue15 = [v12 multiArrayValue];
    v10 = &v7;
    v49 = [(MLABOutput *)v9 initWithIdentity:multiArrayValue LTM_output_E:multiArrayValue2 Identity_10:multiArrayValue3 Identity_11:multiArrayValue4 Identity_12:multiArrayValue5 Identity_13:multiArrayValue6 Identity_14:multiArrayValue7 LTM_output_L:multiArrayValue8 LTM_output_S:multiArrayValue9 Identity_4:multiArrayValue10 Identity_5:multiArrayValue11 STM_output_E:multiArrayValue12 STM_output_L:multiArrayValue13 STM_output_S:multiArrayValue14 Identity_9:multiArrayValue15];
    MEMORY[0x1E69E5920](multiArrayValue15);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](multiArrayValue14);
    MEMORY[0x1E69E5920](v14);
    MEMORY[0x1E69E5920](multiArrayValue13);
    MEMORY[0x1E69E5920](v16);
    MEMORY[0x1E69E5920](multiArrayValue12);
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](multiArrayValue11);
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](multiArrayValue10);
    MEMORY[0x1E69E5920](v22);
    MEMORY[0x1E69E5920](multiArrayValue9);
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](multiArrayValue8);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](multiArrayValue7);
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](multiArrayValue6);
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](multiArrayValue5);
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](multiArrayValue4);
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](multiArrayValue3);
    MEMORY[0x1E69E5920](v36);
    MEMORY[0x1E69E5920](multiArrayValue2);
    MEMORY[0x1E69E5920](v38);
    MEMORY[0x1E69E5920](multiArrayValue);
    MEMORY[0x1E69E5920](v40);
  }

  else
  {
    v49 = 0;
  }

  v44 = 1;
  obj = 0;
  objc_storeStrong(v45, 0);
  objc_storeStrong(&v46, obj);
  objc_storeStrong(location, obj);
  v5 = v49;

  return v5;
}

- (id)predictionFromInput_x:(id)input_x target_lux:(id)target_lux target_nits:(id)target_nits target_weight:(id)target_weight error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input_x);
  v17 = 0;
  objc_storeStrong(&v17, target_lux);
  v16 = 0;
  objc_storeStrong(&v16, target_nits);
  v15 = 0;
  objc_storeStrong(&v15, target_weight);
  v14[1] = error;
  v7 = [MLABInput alloc];
  v14[0] = [(MLABInput *)v7 initWithInput_x:location[0] target_lux:v17 target_nits:v16 target_weight:v15];
  v13 = [(MLAB *)selfCopy predictionFromFeatures:v14[0] error:error];
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  optionsCopy = options;
  errorCopy = error;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, inputs);
  v63 = 0;
  objc_storeStrong(&v63, optionsCopy);
  v62[1] = errorCopy;
  v5 = objc_alloc(getMLArrayBatchProviderClass_1());
  v62[0] = [v5 initWithFeatureProviderArray:location[0]];
  model = [(MLAB *)selfCopy model];
  v61 = [(MLModel *)model predictionsFromBatch:v62[0] options:v63 error:errorCopy];
  *&v6 = MEMORY[0x1E69E5920](model).n128_u64[0];
  if (v61)
  {
    v52 = MEMORY[0x1E695DF70];
    v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v61, "count", v6)}];
    for (i = 0; ; ++i)
    {
      v51 = i;
      v7 = [v61 count];
      if (v51 >= v7)
      {
        break;
      }

      v8 = [v61 featuresAtIndex:i];
      v49 = &v57;
      v57 = v8;
      v16 = [MLABOutput alloc];
      v47 = [v57 featureValueForName:@"Identity"];
      multiArrayValue = [v47 multiArrayValue];
      v45 = [v57 featureValueForName:@"LTM_output_E"];
      multiArrayValue2 = [v45 multiArrayValue];
      v43 = [v57 featureValueForName:@"Identity_10"];
      multiArrayValue3 = [v43 multiArrayValue];
      v41 = [v57 featureValueForName:@"Identity_11"];
      multiArrayValue4 = [v41 multiArrayValue];
      v39 = [v57 featureValueForName:@"Identity_12"];
      multiArrayValue5 = [v39 multiArrayValue];
      v37 = [v57 featureValueForName:@"Identity_13"];
      multiArrayValue6 = [v37 multiArrayValue];
      v35 = [v57 featureValueForName:@"Identity_14"];
      multiArrayValue7 = [v35 multiArrayValue];
      v33 = [v57 featureValueForName:@"LTM_output_L"];
      multiArrayValue8 = [v33 multiArrayValue];
      v31 = [v57 featureValueForName:@"LTM_output_S"];
      multiArrayValue9 = [v31 multiArrayValue];
      v29 = [v57 featureValueForName:@"Identity_4"];
      multiArrayValue10 = [v29 multiArrayValue];
      v27 = [v57 featureValueForName:@"Identity_5"];
      multiArrayValue11 = [v27 multiArrayValue];
      v25 = [v57 featureValueForName:@"STM_output_E"];
      multiArrayValue12 = [v25 multiArrayValue];
      v23 = [v57 featureValueForName:@"STM_output_L"];
      multiArrayValue13 = [v23 multiArrayValue];
      v21 = [v57 featureValueForName:@"STM_output_S"];
      multiArrayValue14 = [v21 multiArrayValue];
      v19 = [v57 featureValueForName:@"Identity_9"];
      multiArrayValue15 = [v19 multiArrayValue];
      v17 = &v13;
      v9 = [(MLABOutput *)v16 initWithIdentity:multiArrayValue LTM_output_E:multiArrayValue2 Identity_10:multiArrayValue3 Identity_11:multiArrayValue4 Identity_12:multiArrayValue5 Identity_13:multiArrayValue6 Identity_14:multiArrayValue7 LTM_output_L:multiArrayValue8 LTM_output_S:multiArrayValue9 Identity_4:multiArrayValue10 Identity_5:multiArrayValue11 STM_output_E:multiArrayValue12 STM_output_L:multiArrayValue13 STM_output_S:multiArrayValue14 Identity_9:multiArrayValue15];
      v48 = &v56;
      v56 = v9;
      MEMORY[0x1E69E5920](multiArrayValue15);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](multiArrayValue14);
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](multiArrayValue13);
      MEMORY[0x1E69E5920](v23);
      MEMORY[0x1E69E5920](multiArrayValue12);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](multiArrayValue11);
      MEMORY[0x1E69E5920](v27);
      MEMORY[0x1E69E5920](multiArrayValue10);
      MEMORY[0x1E69E5920](v29);
      MEMORY[0x1E69E5920](multiArrayValue9);
      MEMORY[0x1E69E5920](v31);
      MEMORY[0x1E69E5920](multiArrayValue8);
      MEMORY[0x1E69E5920](v33);
      MEMORY[0x1E69E5920](multiArrayValue7);
      MEMORY[0x1E69E5920](v35);
      MEMORY[0x1E69E5920](multiArrayValue6);
      MEMORY[0x1E69E5920](v37);
      MEMORY[0x1E69E5920](multiArrayValue5);
      MEMORY[0x1E69E5920](v39);
      MEMORY[0x1E69E5920](multiArrayValue4);
      MEMORY[0x1E69E5920](v41);
      MEMORY[0x1E69E5920](multiArrayValue3);
      MEMORY[0x1E69E5920](v43);
      MEMORY[0x1E69E5920](multiArrayValue2);
      MEMORY[0x1E69E5920](v45);
      MEMORY[0x1E69E5920](multiArrayValue);
      *&v10 = MEMORY[0x1E69E5920](v47).n128_u64[0];
      [v59 addObject:{v56, v10}];
      v50 = 0;
      objc_storeStrong(v48, 0);
      objc_storeStrong(v49, v50);
    }

    v15 = &v59;
    v66 = MEMORY[0x1E69E5928](v59);
    v60 = 1;
    objc_storeStrong(v15, 0);
  }

  else
  {
    v66 = 0;
    v60 = 1;
  }

  obj = 0;
  objc_storeStrong(&v61, 0);
  objc_storeStrong(v62, obj);
  objc_storeStrong(&v63, obj);
  objc_storeStrong(location, obj);
  v11 = v66;

  return v11;
}

@end