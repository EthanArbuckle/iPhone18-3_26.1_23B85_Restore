@interface SignificantActivityFcos
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (SignificantActivityFcos)init;
- (SignificantActivityFcos)initWithConfiguration:(id)configuration error:(id *)error;
- (SignificantActivityFcos)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (SignificantActivityFcos)initWithContentsOfURL:(id)l error:(id *)error;
- (SignificantActivityFcos)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation SignificantActivityFcos

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"SignificantActivityFcos" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[SignificantActivityFcos URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (SignificantActivityFcos)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = SignificantActivityFcos;
    v6 = [(SignificantActivityFcos *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, model);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SignificantActivityFcos)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(SignificantActivityFcos *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (SignificantActivityFcos)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(SignificantActivityFcos *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (SignificantActivityFcos)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(SignificantActivityFcos *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SignificantActivityFcos)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(SignificantActivityFcos *)self initWithMLModel:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [self URLOfModelInThisBundle];
  [self loadContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy completionHandler:handlerCopy];
}

+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__SignificantActivityFcos_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_278755E70;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

void __77__SignificantActivityFcos_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[SignificantActivityFcos alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(SignificantActivityFcos *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v37 = [SignificantActivityFcosOutput alloc];
    v47 = [v11 featureValueForName:@"HomeSSD_class_prob0"];
    multiArrayValue = [v47 multiArrayValue];
    v46 = [v11 featureValueForName:@"HomeSSD_box0_offset0"];
    multiArrayValue2 = [v46 multiArrayValue];
    v45 = [v11 featureValueForName:@"HomeSSD_box1_offset0"];
    multiArrayValue3 = [v45 multiArrayValue];
    v44 = [v11 featureValueForName:@"HomeSSD_object_roll0"];
    multiArrayValue4 = [v44 multiArrayValue];
    v43 = [v11 featureValueForName:@"HomeSSD_object_yaw0"];
    multiArrayValue5 = [v43 multiArrayValue];
    v42 = [v11 featureValueForName:@"HomeSSD_class_prob1"];
    multiArrayValue6 = [v42 multiArrayValue];
    v41 = [v11 featureValueForName:@"HomeSSD_box0_offset1"];
    multiArrayValue7 = [v41 multiArrayValue];
    v40 = [v11 featureValueForName:@"HomeSSD_box1_offset1"];
    multiArrayValue8 = [v40 multiArrayValue];
    v39 = [v11 featureValueForName:@"HomeSSD_object_roll1"];
    multiArrayValue9 = [v39 multiArrayValue];
    v38 = [v11 featureValueForName:@"HomeSSD_object_yaw1"];
    multiArrayValue10 = [v38 multiArrayValue];
    v36 = [v11 featureValueForName:@"HomeSSD_class_prob2"];
    multiArrayValue11 = [v36 multiArrayValue];
    v35 = [v11 featureValueForName:@"HomeSSD_box0_offset2"];
    multiArrayValue12 = [v35 multiArrayValue];
    v34 = [v11 featureValueForName:@"HomeSSD_box1_offset2"];
    multiArrayValue13 = [v34 multiArrayValue];
    v33 = [v11 featureValueForName:@"HomeSSD_object_roll2"];
    multiArrayValue14 = [v33 multiArrayValue];
    v32 = [v11 featureValueForName:@"HomeSSD_object_yaw2"];
    multiArrayValue15 = [v32 multiArrayValue];
    v31 = [v11 featureValueForName:@"HomeSSD_class_prob3"];
    multiArrayValue16 = [v31 multiArrayValue];
    v30 = [v11 featureValueForName:@"HomeSSD_box0_offset3"];
    multiArrayValue17 = [v30 multiArrayValue];
    v29 = [v11 featureValueForName:@"HomeSSD_box1_offset3"];
    multiArrayValue18 = [v29 multiArrayValue];
    v28 = [v11 featureValueForName:@"HomeSSD_object_roll3"];
    multiArrayValue19 = [v28 multiArrayValue];
    v27 = [v11 featureValueForName:@"HomeSSD_object_yaw3"];
    multiArrayValue20 = [v27 multiArrayValue];
    v26 = [v11 featureValueForName:@"HomeSSD_class_prob4"];
    multiArrayValue21 = [v26 multiArrayValue];
    v24 = [v11 featureValueForName:@"HomeSSD_box0_offset4"];
    multiArrayValue22 = [v24 multiArrayValue];
    v23 = [v11 featureValueForName:@"HomeSSD_box1_offset4"];
    multiArrayValue23 = [v23 multiArrayValue];
    v15 = [v11 featureValueForName:@"HomeSSD_object_roll4"];
    multiArrayValue24 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"HomeSSD_object_yaw4"];
    multiArrayValue25 = [v17 multiArrayValue];
    v19 = [(SignificantActivityFcosOutput *)v37 initWithHomeSSD_class_prob0:multiArrayValue HomeSSD_box0_offset0:multiArrayValue2 HomeSSD_box1_offset0:multiArrayValue3 HomeSSD_object_roll0:multiArrayValue4 HomeSSD_object_yaw0:multiArrayValue5 HomeSSD_class_prob1:multiArrayValue6 HomeSSD_box0_offset1:multiArrayValue7 HomeSSD_box1_offset1:multiArrayValue8 HomeSSD_object_roll1:multiArrayValue9 HomeSSD_object_yaw1:multiArrayValue10 HomeSSD_class_prob2:multiArrayValue11 HomeSSD_box0_offset2:multiArrayValue12 HomeSSD_box1_offset2:multiArrayValue13 HomeSSD_object_roll2:multiArrayValue14 HomeSSD_object_yaw2:multiArrayValue15 HomeSSD_class_prob3:multiArrayValue16 HomeSSD_box0_offset3:multiArrayValue17 HomeSSD_box1_offset3:multiArrayValue18 HomeSSD_object_roll3:multiArrayValue19 HomeSSD_object_yaw3:multiArrayValue20 HomeSSD_class_prob4:multiArrayValue21 HomeSSD_box0_offset4:multiArrayValue22 HomeSSD_box1_offset4:multiArrayValue23 HomeSSD_object_roll4:multiArrayValue24 HomeSSD_object_yaw4:multiArrayValue25];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SignificantActivityFcos_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_278755E98;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

void __68__SignificantActivityFcos_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = a2;
  if (v62)
  {
    v45 = a1;
    v44 = a3;
    v32 = [SignificantActivityFcosOutput alloc];
    v43 = [v62 featureValueForName:@"HomeSSD_class_prob0"];
    v61 = [v43 multiArrayValue];
    v42 = [v62 featureValueForName:@"HomeSSD_box0_offset0"];
    v60 = [v42 multiArrayValue];
    v41 = [v62 featureValueForName:@"HomeSSD_box1_offset0"];
    v59 = [v41 multiArrayValue];
    v40 = [v62 featureValueForName:@"HomeSSD_object_roll0"];
    v58 = [v40 multiArrayValue];
    v39 = [v62 featureValueForName:@"HomeSSD_object_yaw0"];
    v57 = [v39 multiArrayValue];
    v38 = [v62 featureValueForName:@"HomeSSD_class_prob1"];
    v56 = [v38 multiArrayValue];
    v37 = [v62 featureValueForName:@"HomeSSD_box0_offset1"];
    v55 = [v37 multiArrayValue];
    v36 = [v62 featureValueForName:@"HomeSSD_box1_offset1"];
    v54 = [v36 multiArrayValue];
    v35 = [v62 featureValueForName:@"HomeSSD_object_roll1"];
    v53 = [v35 multiArrayValue];
    v34 = [v62 featureValueForName:@"HomeSSD_object_yaw1"];
    v52 = [v34 multiArrayValue];
    v31 = [v62 featureValueForName:@"HomeSSD_class_prob2"];
    v51 = [v31 multiArrayValue];
    v30 = [v62 featureValueForName:@"HomeSSD_box0_offset2"];
    v50 = [v30 multiArrayValue];
    v29 = [v62 featureValueForName:@"HomeSSD_box1_offset2"];
    v48 = [v29 multiArrayValue];
    v28 = [v62 featureValueForName:@"HomeSSD_object_roll2"];
    v49 = [v28 multiArrayValue];
    v27 = [v62 featureValueForName:@"HomeSSD_object_yaw2"];
    v21 = [v27 multiArrayValue];
    v26 = [v62 featureValueForName:@"HomeSSD_class_prob3"];
    v47 = [v26 multiArrayValue];
    v25 = [v62 featureValueForName:@"HomeSSD_box0_offset3"];
    v19 = [v25 multiArrayValue];
    v24 = [v62 featureValueForName:@"HomeSSD_box1_offset3"];
    v46 = [v24 multiArrayValue];
    v23 = [v62 featureValueForName:@"HomeSSD_object_roll3"];
    v17 = [v23 multiArrayValue];
    v22 = [v62 featureValueForName:@"HomeSSD_object_yaw3"];
    v5 = [v22 multiArrayValue];
    v20 = [v62 featureValueForName:@"HomeSSD_class_prob4"];
    v6 = [v20 multiArrayValue];
    v18 = [v62 featureValueForName:@"HomeSSD_box0_offset4"];
    v16 = [v18 multiArrayValue];
    v7 = [v62 featureValueForName:@"HomeSSD_box1_offset4"];
    v8 = [v7 multiArrayValue];
    v9 = [v62 featureValueForName:@"HomeSSD_object_roll4"];
    v10 = [v9 multiArrayValue];
    v11 = [v62 featureValueForName:@"HomeSSD_object_yaw4"];
    v12 = [v11 multiArrayValue];
    v33 = [(SignificantActivityFcosOutput *)v32 initWithHomeSSD_class_prob0:v61 HomeSSD_box0_offset0:v60 HomeSSD_box1_offset0:v59 HomeSSD_object_roll0:v58 HomeSSD_object_yaw0:v57 HomeSSD_class_prob1:v56 HomeSSD_box0_offset1:v55 HomeSSD_box1_offset1:v54 HomeSSD_object_roll1:v53 HomeSSD_object_yaw1:v52 HomeSSD_class_prob2:v51 HomeSSD_box0_offset2:v50 HomeSSD_box1_offset2:v48 HomeSSD_object_roll2:v49 HomeSSD_object_yaw2:v21 HomeSSD_class_prob3:v47 HomeSSD_box0_offset3:v19 HomeSSD_box1_offset3:v46 HomeSSD_object_roll3:v17 HomeSSD_object_yaw3:v5 HomeSSD_class_prob4:v6 HomeSSD_box0_offset4:v16 HomeSSD_box1_offset4:v8 HomeSSD_object_roll4:v10 HomeSSD_object_yaw4:v12];

    v13 = v33;
    (*(*(v45 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(SignificantActivityFcos *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SignificantActivityFcos_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_278755E98;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

void __76__SignificantActivityFcos_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v62 = a2;
  if (v62)
  {
    v45 = a1;
    v44 = a3;
    v32 = [SignificantActivityFcosOutput alloc];
    v43 = [v62 featureValueForName:@"HomeSSD_class_prob0"];
    v61 = [v43 multiArrayValue];
    v42 = [v62 featureValueForName:@"HomeSSD_box0_offset0"];
    v60 = [v42 multiArrayValue];
    v41 = [v62 featureValueForName:@"HomeSSD_box1_offset0"];
    v59 = [v41 multiArrayValue];
    v40 = [v62 featureValueForName:@"HomeSSD_object_roll0"];
    v58 = [v40 multiArrayValue];
    v39 = [v62 featureValueForName:@"HomeSSD_object_yaw0"];
    v57 = [v39 multiArrayValue];
    v38 = [v62 featureValueForName:@"HomeSSD_class_prob1"];
    v56 = [v38 multiArrayValue];
    v37 = [v62 featureValueForName:@"HomeSSD_box0_offset1"];
    v55 = [v37 multiArrayValue];
    v36 = [v62 featureValueForName:@"HomeSSD_box1_offset1"];
    v54 = [v36 multiArrayValue];
    v35 = [v62 featureValueForName:@"HomeSSD_object_roll1"];
    v53 = [v35 multiArrayValue];
    v34 = [v62 featureValueForName:@"HomeSSD_object_yaw1"];
    v52 = [v34 multiArrayValue];
    v31 = [v62 featureValueForName:@"HomeSSD_class_prob2"];
    v51 = [v31 multiArrayValue];
    v30 = [v62 featureValueForName:@"HomeSSD_box0_offset2"];
    v50 = [v30 multiArrayValue];
    v29 = [v62 featureValueForName:@"HomeSSD_box1_offset2"];
    v48 = [v29 multiArrayValue];
    v28 = [v62 featureValueForName:@"HomeSSD_object_roll2"];
    v49 = [v28 multiArrayValue];
    v27 = [v62 featureValueForName:@"HomeSSD_object_yaw2"];
    v21 = [v27 multiArrayValue];
    v26 = [v62 featureValueForName:@"HomeSSD_class_prob3"];
    v47 = [v26 multiArrayValue];
    v25 = [v62 featureValueForName:@"HomeSSD_box0_offset3"];
    v19 = [v25 multiArrayValue];
    v24 = [v62 featureValueForName:@"HomeSSD_box1_offset3"];
    v46 = [v24 multiArrayValue];
    v23 = [v62 featureValueForName:@"HomeSSD_object_roll3"];
    v17 = [v23 multiArrayValue];
    v22 = [v62 featureValueForName:@"HomeSSD_object_yaw3"];
    v5 = [v22 multiArrayValue];
    v20 = [v62 featureValueForName:@"HomeSSD_class_prob4"];
    v6 = [v20 multiArrayValue];
    v18 = [v62 featureValueForName:@"HomeSSD_box0_offset4"];
    v16 = [v18 multiArrayValue];
    v7 = [v62 featureValueForName:@"HomeSSD_box1_offset4"];
    v8 = [v7 multiArrayValue];
    v9 = [v62 featureValueForName:@"HomeSSD_object_roll4"];
    v10 = [v9 multiArrayValue];
    v11 = [v62 featureValueForName:@"HomeSSD_object_yaw4"];
    v12 = [v11 multiArrayValue];
    v33 = [(SignificantActivityFcosOutput *)v32 initWithHomeSSD_class_prob0:v61 HomeSSD_box0_offset0:v60 HomeSSD_box1_offset0:v59 HomeSSD_object_roll0:v58 HomeSSD_object_yaw0:v57 HomeSSD_class_prob1:v56 HomeSSD_box0_offset1:v55 HomeSSD_box1_offset1:v54 HomeSSD_object_roll1:v53 HomeSSD_object_yaw1:v52 HomeSSD_class_prob2:v51 HomeSSD_box0_offset2:v50 HomeSSD_box1_offset2:v48 HomeSSD_object_roll2:v49 HomeSSD_object_yaw2:v21 HomeSSD_class_prob3:v47 HomeSSD_box0_offset3:v19 HomeSSD_box1_offset3:v46 HomeSSD_object_roll3:v17 HomeSSD_object_yaw3:v5 HomeSSD_class_prob4:v6 HomeSSD_box0_offset4:v16 HomeSSD_box1_offset4:v8 HomeSSD_object_roll4:v10 HomeSSD_object_yaw4:v12];

    v13 = v33;
    (*(*(v45 + 32) + 16))();
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v13 = a3;
    v15(v14, 0, v13);
  }
}

- (id)predictionFromImage_Placeholder:(__CVBuffer *)placeholder error:(id *)error
{
  v6 = [[SignificantActivityFcosInput alloc] initWithImage_Placeholder:placeholder];
  v7 = [(SignificantActivityFcos *)self predictionFromFeatures:v6 error:error];

  return v7;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(SignificantActivityFcos *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = optionsCopy;
      v28 = inputsCopy;
      v29 = v13;
      v14 = 0;
      v30 = v12;
      do
      {
        v75 = v14;
        v15 = [v12 featuresAtIndex:v14];
        v45 = [SignificantActivityFcosOutput alloc];
        v57 = [v15 featureValueForName:@"HomeSSD_class_prob0"];
        multiArrayValue = [v57 multiArrayValue];
        v56 = [v15 featureValueForName:@"HomeSSD_box0_offset0"];
        multiArrayValue2 = [v56 multiArrayValue];
        v55 = [v15 featureValueForName:@"HomeSSD_box1_offset0"];
        multiArrayValue3 = [v55 multiArrayValue];
        v54 = [v15 featureValueForName:@"HomeSSD_object_roll0"];
        multiArrayValue4 = [v54 multiArrayValue];
        v53 = [v15 featureValueForName:@"HomeSSD_object_yaw0"];
        multiArrayValue5 = [v53 multiArrayValue];
        v52 = [v15 featureValueForName:@"HomeSSD_class_prob1"];
        multiArrayValue6 = [v52 multiArrayValue];
        v51 = [v15 featureValueForName:@"HomeSSD_box0_offset1"];
        multiArrayValue7 = [v51 multiArrayValue];
        v50 = [v15 featureValueForName:@"HomeSSD_box1_offset1"];
        multiArrayValue8 = [v50 multiArrayValue];
        v49 = [v15 featureValueForName:@"HomeSSD_object_roll1"];
        multiArrayValue9 = [v49 multiArrayValue];
        v48 = [v15 featureValueForName:@"HomeSSD_object_yaw1"];
        multiArrayValue10 = [v48 multiArrayValue];
        v47 = [v15 featureValueForName:@"HomeSSD_class_prob2"];
        multiArrayValue11 = [v47 multiArrayValue];
        v44 = [v15 featureValueForName:@"HomeSSD_box0_offset2"];
        multiArrayValue12 = [v44 multiArrayValue];
        v43 = [v15 featureValueForName:@"HomeSSD_box1_offset2"];
        multiArrayValue13 = [v43 multiArrayValue];
        v42 = [v15 featureValueForName:@"HomeSSD_object_roll2"];
        multiArrayValue14 = [v42 multiArrayValue];
        v41 = [v15 featureValueForName:@"HomeSSD_object_yaw2"];
        multiArrayValue15 = [v41 multiArrayValue];
        v40 = [v15 featureValueForName:@"HomeSSD_class_prob3"];
        multiArrayValue16 = [v40 multiArrayValue];
        v39 = [v15 featureValueForName:@"HomeSSD_box0_offset3"];
        multiArrayValue17 = [v39 multiArrayValue];
        v38 = [v15 featureValueForName:@"HomeSSD_box1_offset3"];
        multiArrayValue18 = [v38 multiArrayValue];
        v37 = [v15 featureValueForName:@"HomeSSD_object_roll3"];
        multiArrayValue19 = [v37 multiArrayValue];
        v36 = [v15 featureValueForName:@"HomeSSD_object_yaw3"];
        multiArrayValue20 = [v36 multiArrayValue];
        v35 = [v15 featureValueForName:@"HomeSSD_class_prob4"];
        multiArrayValue21 = [v35 multiArrayValue];
        v34 = [v15 featureValueForName:@"HomeSSD_box0_offset4"];
        multiArrayValue22 = [v34 multiArrayValue];
        v32 = [v15 featureValueForName:@"HomeSSD_box1_offset4"];
        multiArrayValue23 = [v32 multiArrayValue];
        v20 = [v15 featureValueForName:@"HomeSSD_object_roll4"];
        multiArrayValue24 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"HomeSSD_object_yaw4"];
        multiArrayValue25 = [v22 multiArrayValue];
        v46 = [(SignificantActivityFcosOutput *)v45 initWithHomeSSD_class_prob0:multiArrayValue HomeSSD_box0_offset0:multiArrayValue2 HomeSSD_box1_offset0:multiArrayValue3 HomeSSD_object_roll0:multiArrayValue4 HomeSSD_object_yaw0:multiArrayValue5 HomeSSD_class_prob1:multiArrayValue6 HomeSSD_box0_offset1:multiArrayValue7 HomeSSD_box1_offset1:multiArrayValue8 HomeSSD_object_roll1:multiArrayValue9 HomeSSD_object_yaw1:multiArrayValue10 HomeSSD_class_prob2:multiArrayValue11 HomeSSD_box0_offset2:multiArrayValue12 HomeSSD_box1_offset2:multiArrayValue13 HomeSSD_object_roll2:multiArrayValue14 HomeSSD_object_yaw2:multiArrayValue15 HomeSSD_class_prob3:multiArrayValue16 HomeSSD_box0_offset3:multiArrayValue17 HomeSSD_box1_offset3:multiArrayValue18 HomeSSD_object_roll3:multiArrayValue19 HomeSSD_object_yaw3:multiArrayValue20 HomeSSD_class_prob4:multiArrayValue21 HomeSSD_box0_offset4:multiArrayValue22 HomeSSD_box1_offset4:multiArrayValue23 HomeSSD_object_roll4:multiArrayValue24 HomeSSD_object_yaw4:multiArrayValue25];

        v13 = v29;
        v12 = v30;

        [v29 addObject:v46];
        v24 = [v30 count];
        v14 = v75 + 1;
      }

      while (v75 + 1 < v24);
      optionsCopy = v27;
      inputsCopy = v28;
      v10 = v26;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end