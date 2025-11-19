@interface MLAB
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (MLAB)init;
- (MLAB)initWithConfiguration:(id)a3 error:(id *)a4;
- (MLAB)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (MLAB)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (MLAB)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromInput_x:(id)a3 target_lux:(id)a4 target_nits:(id)a5 target_weight:(id)a6 error:(id *)a7;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation MLAB

+ (id)URLOfModelInThisBundle
{
  v11[2] = a1;
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

- (MLAB)initWithMLModel:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v7;
  v7 = 0;
  v5.receiver = v3;
  v5.super_class = MLAB;
  v7 = [(MLAB *)&v5 init];
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

- (MLAB)init
{
  v6 = self;
  v4 = [objc_opt_class() URLOfModelInThisBundle];
  v6 = 0;
  v6 = [MLAB initWithContentsOfURL:"initWithContentsOfURL:error:" error:?];
  v5 = MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(&v6, 0);
  return v5;
}

- (MLAB)initWithConfiguration:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v6 = [objc_opt_class() URLOfModelInThisBundle];
  v9 = 0;
  v9 = [MLAB initWithContentsOfURL:v5 configuration:"initWithContentsOfURL:configuration:error:" error:?];
  v7 = MEMORY[0x1E69E5928](v9);
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (MLAB)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = [getMLModelClass_1() modelWithContentsOfURL:location[0] error:a4];
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

- (MLAB)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9[1] = a5;
  v9[0] = [getMLModelClass_1() modelWithContentsOfURL:location[0] configuration:v10 error:a5];
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

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = v10;
  v5 = location[0];
  v7 = objc_alloc_init(getMLPredictionOptionsClass_1());
  v8 = [MLAB predictionFromFeatures:v6 options:"predictionFromFeatures:options:error:" error:v5];
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v41 = a4;
  v42 = a5;
  v48 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = 0;
  objc_storeStrong(&v46, v41);
  v45[1] = v42;
  v43 = [(MLAB *)v48 model];
  v45[0] = [(MLModel *)v43 predictionFromFeatures:location[0] options:v46 error:v42];
  MEMORY[0x1E69E5920](v43);
  if (v45[0])
  {
    v9 = [MLABOutput alloc];
    v40 = [v45[0] featureValueForName:@"Identity"];
    v39 = [v40 multiArrayValue];
    v38 = [v45[0] featureValueForName:@"LTM_output_E"];
    v37 = [v38 multiArrayValue];
    v36 = [v45[0] featureValueForName:@"Identity_10"];
    v35 = [v36 multiArrayValue];
    v34 = [v45[0] featureValueForName:@"Identity_11"];
    v33 = [v34 multiArrayValue];
    v32 = [v45[0] featureValueForName:@"Identity_12"];
    v31 = [v32 multiArrayValue];
    v30 = [v45[0] featureValueForName:@"Identity_13"];
    v29 = [v30 multiArrayValue];
    v28 = [v45[0] featureValueForName:@"Identity_14"];
    v27 = [v28 multiArrayValue];
    v26 = [v45[0] featureValueForName:@"LTM_output_L"];
    v25 = [v26 multiArrayValue];
    v24 = [v45[0] featureValueForName:@"LTM_output_S"];
    v23 = [v24 multiArrayValue];
    v22 = [v45[0] featureValueForName:@"Identity_4"];
    v21 = [v22 multiArrayValue];
    v20 = [v45[0] featureValueForName:@"Identity_5"];
    v19 = [v20 multiArrayValue];
    v18 = [v45[0] featureValueForName:@"STM_output_E"];
    v17 = [v18 multiArrayValue];
    v16 = [v45[0] featureValueForName:@"STM_output_L"];
    v15 = [v16 multiArrayValue];
    v14 = [v45[0] featureValueForName:@"STM_output_S"];
    v13 = [v14 multiArrayValue];
    v12 = [v45[0] featureValueForName:@"Identity_9"];
    v11 = [v12 multiArrayValue];
    v10 = &v7;
    v49 = [(MLABOutput *)v9 initWithIdentity:v39 LTM_output_E:v37 Identity_10:v35 Identity_11:v33 Identity_12:v31 Identity_13:v29 Identity_14:v27 LTM_output_L:v25 LTM_output_S:v23 Identity_4:v21 Identity_5:v19 STM_output_E:v17 STM_output_L:v15 STM_output_S:v13 Identity_9:v11];
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
    MEMORY[0x1E69E5920](v24);
    MEMORY[0x1E69E5920](v25);
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v27);
    MEMORY[0x1E69E5920](v28);
    MEMORY[0x1E69E5920](v29);
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v31);
    MEMORY[0x1E69E5920](v32);
    MEMORY[0x1E69E5920](v33);
    MEMORY[0x1E69E5920](v34);
    MEMORY[0x1E69E5920](v35);
    MEMORY[0x1E69E5920](v36);
    MEMORY[0x1E69E5920](v37);
    MEMORY[0x1E69E5920](v38);
    MEMORY[0x1E69E5920](v39);
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

- (id)predictionFromInput_x:(id)a3 target_lux:(id)a4 target_nits:(id)a5 target_weight:(id)a6 error:(id *)a7
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  v14[1] = a7;
  v7 = [MLABInput alloc];
  v14[0] = [(MLABInput *)v7 initWithInput_x:location[0] target_lux:v17 target_nits:v16 target_weight:v15];
  v13 = [(MLAB *)v19 predictionFromFeatures:v14[0] error:a7];
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v53 = a4;
  v54 = a5;
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, v53);
  v62[1] = v54;
  v5 = objc_alloc(getMLArrayBatchProviderClass_1());
  v62[0] = [v5 initWithFeatureProviderArray:location[0]];
  v55 = [(MLAB *)v65 model];
  v61 = [(MLModel *)v55 predictionsFromBatch:v62[0] options:v63 error:v54];
  *&v6 = MEMORY[0x1E69E5920](v55).n128_u64[0];
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
      v46 = [v47 multiArrayValue];
      v45 = [v57 featureValueForName:@"LTM_output_E"];
      v44 = [v45 multiArrayValue];
      v43 = [v57 featureValueForName:@"Identity_10"];
      v42 = [v43 multiArrayValue];
      v41 = [v57 featureValueForName:@"Identity_11"];
      v40 = [v41 multiArrayValue];
      v39 = [v57 featureValueForName:@"Identity_12"];
      v38 = [v39 multiArrayValue];
      v37 = [v57 featureValueForName:@"Identity_13"];
      v36 = [v37 multiArrayValue];
      v35 = [v57 featureValueForName:@"Identity_14"];
      v34 = [v35 multiArrayValue];
      v33 = [v57 featureValueForName:@"LTM_output_L"];
      v32 = [v33 multiArrayValue];
      v31 = [v57 featureValueForName:@"LTM_output_S"];
      v30 = [v31 multiArrayValue];
      v29 = [v57 featureValueForName:@"Identity_4"];
      v28 = [v29 multiArrayValue];
      v27 = [v57 featureValueForName:@"Identity_5"];
      v26 = [v27 multiArrayValue];
      v25 = [v57 featureValueForName:@"STM_output_E"];
      v24 = [v25 multiArrayValue];
      v23 = [v57 featureValueForName:@"STM_output_L"];
      v22 = [v23 multiArrayValue];
      v21 = [v57 featureValueForName:@"STM_output_S"];
      v20 = [v21 multiArrayValue];
      v19 = [v57 featureValueForName:@"Identity_9"];
      v18 = [v19 multiArrayValue];
      v17 = &v13;
      v9 = [(MLABOutput *)v16 initWithIdentity:v46 LTM_output_E:v44 Identity_10:v42 Identity_11:v40 Identity_12:v38 Identity_13:v36 Identity_14:v34 LTM_output_L:v32 LTM_output_S:v30 Identity_4:v28 Identity_5:v26 STM_output_E:v24 STM_output_L:v22 STM_output_S:v20 Identity_9:v18];
      v48 = &v56;
      v56 = v9;
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v23);
      MEMORY[0x1E69E5920](v24);
      MEMORY[0x1E69E5920](v25);
      MEMORY[0x1E69E5920](v26);
      MEMORY[0x1E69E5920](v27);
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v29);
      MEMORY[0x1E69E5920](v30);
      MEMORY[0x1E69E5920](v31);
      MEMORY[0x1E69E5920](v32);
      MEMORY[0x1E69E5920](v33);
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v35);
      MEMORY[0x1E69E5920](v36);
      MEMORY[0x1E69E5920](v37);
      MEMORY[0x1E69E5920](v38);
      MEMORY[0x1E69E5920](v39);
      MEMORY[0x1E69E5920](v40);
      MEMORY[0x1E69E5920](v41);
      MEMORY[0x1E69E5920](v42);
      MEMORY[0x1E69E5920](v43);
      MEMORY[0x1E69E5920](v44);
      MEMORY[0x1E69E5920](v45);
      MEMORY[0x1E69E5920](v46);
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