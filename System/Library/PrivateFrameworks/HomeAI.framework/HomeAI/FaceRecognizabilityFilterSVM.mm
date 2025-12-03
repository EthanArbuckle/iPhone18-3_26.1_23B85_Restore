@interface FaceRecognizabilityFilterSVM
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (FaceRecognizabilityFilterSVM)init;
- (FaceRecognizabilityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error;
- (FaceRecognizabilityFilterSVM)initWithMLModel:(id)model;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromInput:(id)input error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation FaceRecognizabilityFilterSVM

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"FaceRecognizabilityFilterSVM" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[FaceRecognizabilityFilterSVM URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (FaceRecognizabilityFilterSVM)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = FaceRecognizabilityFilterSVM;
    v6 = [(FaceRecognizabilityFilterSVM *)&v10 init];
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

- (FaceRecognizabilityFilterSVM)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(FaceRecognizabilityFilterSVM *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (FaceRecognizabilityFilterSVM)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(FaceRecognizabilityFilterSVM *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(FaceRecognizabilityFilterSVM *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FaceRecognizabilityFilterSVM)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(FaceRecognizabilityFilterSVM *)self initWithMLModel:v6];
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
  v10[2] = __82__FaceRecognizabilityFilterSVM_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_278755E70;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

void __82__FaceRecognizabilityFilterSVM_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[FaceRecognizabilityFilterSVM alloc] initWithMLModel:v4];
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
  v9 = [(FaceRecognizabilityFilterSVM *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [FaceRecognizabilityFilterSVMOutput alloc];
    v13 = [v11 featureValueForName:@"classLabel"];
    int64Value = [v13 int64Value];
    v15 = [v11 featureValueForName:@"classProbability"];
    dictionaryValue = [v15 dictionaryValue];
    v17 = [(FaceRecognizabilityFilterSVMOutput *)v12 initWithClassLabel:int64Value classProbability:dictionaryValue];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)predictionFromFeatures:(id)features completionHandler:(id)handler
{
  handlerCopy = handler;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__FaceRecognizabilityFilterSVM_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_278755E98;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

void __73__FaceRecognizabilityFilterSVM_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(FaceRecognizabilityFilterSVMOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__FaceRecognizabilityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_278755E98;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

void __81__FaceRecognizabilityFilterSVM_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [FaceRecognizabilityFilterSVMOutput alloc];
    v7 = [v14 featureValueForName:@"classLabel"];
    v8 = [v7 int64Value];
    v9 = [v14 featureValueForName:@"classProbability"];
    v10 = [v9 dictionaryValue];
    v11 = [(FaceRecognizabilityFilterSVMOutput *)v6 initWithClassLabel:v8 classProbability:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

- (id)predictionFromInput:(id)input error:(id *)error
{
  inputCopy = input;
  v7 = [[FaceRecognizabilityFilterSVMInput alloc] initWithInput:inputCopy];

  v8 = [(FaceRecognizabilityFilterSVM *)self predictionFromFeatures:v7 error:error];

  return v8;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(FaceRecognizabilityFilterSVM *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v23 = v10;
      v24 = optionsCopy;
      v25 = inputsCopy;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:v14];
        v16 = [FaceRecognizabilityFilterSVMOutput alloc];
        v17 = [v15 featureValueForName:@"classLabel"];
        int64Value = [v17 int64Value];
        v19 = [v15 featureValueForName:@"classProbability"];
        dictionaryValue = [v19 dictionaryValue];
        v21 = [(FaceRecognizabilityFilterSVMOutput *)v16 initWithClassLabel:int64Value classProbability:dictionaryValue];

        [v13 addObject:v21];
        ++v14;
      }

      while (v14 < [v12 count]);
      optionsCopy = v24;
      inputsCopy = v25;
      v10 = v23;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end