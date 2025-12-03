@interface period_lstm
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)l configuration:(id)configuration completionHandler:(id)handler;
+ (void)loadWithConfiguration:(id)configuration completionHandler:(id)handler;
- (id)predictionFromFeatures:(id)features error:(id *)error;
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
- (id)predictionFromIn:(id)in lstm_1_h_in:(id)lstm_1_h_in lstm_1_c_in:(id)lstm_1_c_in error:(id *)error;
- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error;
- (period_lstm)init;
- (period_lstm)initWithConfiguration:(id)configuration error:(id *)error;
- (period_lstm)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error;
- (period_lstm)initWithContentsOfURL:(id)l error:(id *)error;
- (period_lstm)initWithMLModel:(id)model;
- (void)predictionFromFeatures:(id)features completionHandler:(id)handler;
- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler;
@end

@implementation period_lstm

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"period_lstm" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[period_lstm URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (period_lstm)initWithMLModel:(id)model
{
  modelCopy = model;
  if (modelCopy)
  {
    v10.receiver = self;
    v10.super_class = period_lstm;
    v6 = [(period_lstm *)&v10 init];
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

- (period_lstm)init
{
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(period_lstm *)self initWithContentsOfURL:uRLOfModelInThisBundle error:0];

  return v4;
}

- (period_lstm)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  uRLOfModelInThisBundle = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(period_lstm *)self initWithContentsOfURL:uRLOfModelInThisBundle configuration:configurationCopy error:error];

  return v8;
}

- (period_lstm)initWithContentsOfURL:(id)l error:(id *)error
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l error:error];
  if (v5)
  {
    self = [(period_lstm *)self initWithMLModel:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (period_lstm)initWithContentsOfURL:(id)l configuration:(id)configuration error:(id *)error
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:l configuration:configuration error:error];
  if (v6)
  {
    self = [(period_lstm *)self initWithMLModel:v6];
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
  v10[2] = __65__period_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2798A89F8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 loadContentsOfURL:l configuration:configuration completionHandler:v10];
}

- (id)predictionFromFeatures:(id)features error:(id *)error
{
  v6 = MEMORY[0x277CBFF68];
  featuresCopy = features;
  v8 = objc_alloc_init(v6);
  v9 = [(period_lstm *)self predictionFromFeatures:featuresCopy options:v8 error:error];

  return v9;
}

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  optionsCopy = options;
  featuresCopy = features;
  model = [(period_lstm *)self model];
  v11 = [model predictionFromFeatures:featuresCopy options:optionsCopy error:error];

  if (v11)
  {
    v12 = [period_lstmOutput alloc];
    v13 = [v11 featureValueForName:@"out"];
    multiArrayValue = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"lstm_1_h_out"];
    multiArrayValue2 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"lstm_1_c_out"];
    multiArrayValue3 = [v17 multiArrayValue];
    v19 = [(period_lstmOutput *)v12 initWithOut:multiArrayValue lstm_1_h_out:multiArrayValue2 lstm_1_c_out:multiArrayValue3];
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
  model = [(period_lstm *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__period_lstm_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2798A8A20;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [model predictionFromFeatures:featuresCopy completionHandler:v10];
}

- (void)predictionFromFeatures:(id)features options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  featuresCopy = features;
  model = [(period_lstm *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__period_lstm_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2798A8A20;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [model predictionFromFeatures:featuresCopy options:optionsCopy completionHandler:v13];
}

- (id)predictionFromIn:(id)in lstm_1_h_in:(id)lstm_1_h_in lstm_1_c_in:(id)lstm_1_c_in error:(id *)error
{
  lstm_1_c_inCopy = lstm_1_c_in;
  lstm_1_h_inCopy = lstm_1_h_in;
  inCopy = in;
  v13 = [[period_lstmInput alloc] initWithIn:inCopy lstm_1_h_in:lstm_1_h_inCopy lstm_1_c_in:lstm_1_c_inCopy];

  v14 = [(period_lstm *)self predictionFromFeatures:v13 error:error];

  return v14;
}

- (id)predictionsFromInputs:(id)inputs options:(id)options error:(id *)error
{
  inputsCopy = inputs;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:inputsCopy];
  model = [(period_lstm *)self model];
  v12 = [model predictionsFromBatch:v10 options:optionsCopy error:error];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = optionsCopy;
      v28 = inputsCopy;
      v29 = v12;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v26, v27, v28}];
        v16 = [period_lstmOutput alloc];
        [v15 featureValueForName:@"out"];
        v18 = v17 = v13;
        multiArrayValue = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"lstm_1_h_out"];
        multiArrayValue2 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"lstm_1_c_out"];
        multiArrayValue3 = [v22 multiArrayValue];
        v24 = [(period_lstmOutput *)v16 initWithOut:multiArrayValue lstm_1_h_out:multiArrayValue2 lstm_1_c_out:multiArrayValue3];

        v13 = v17;
        v12 = v29;
        [v13 addObject:v24];

        ++v14;
      }

      while (v14 < [v29 count]);
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