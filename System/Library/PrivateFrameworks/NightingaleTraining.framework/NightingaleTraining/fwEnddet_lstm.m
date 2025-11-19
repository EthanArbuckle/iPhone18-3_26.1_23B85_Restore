@interface fwEnddet_lstm
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (fwEnddet_lstm)init;
- (fwEnddet_lstm)initWithConfiguration:(id)a3 error:(id *)a4;
- (fwEnddet_lstm)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (fwEnddet_lstm)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (fwEnddet_lstm)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromIn:(id)a3 lstm_1_h_in:(id)a4 lstm_1_c_in:(id)a5 error:(id *)a6;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation fwEnddet_lstm

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"fwEnddet_lstm" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[fwEnddet_lstm URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (fwEnddet_lstm)initWithMLModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = fwEnddet_lstm;
  v6 = [(fwEnddet_lstm *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_model, a3), v7->_model))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (fwEnddet_lstm)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(fwEnddet_lstm *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (fwEnddet_lstm)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(fwEnddet_lstm *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (fwEnddet_lstm)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(fwEnddet_lstm *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (fwEnddet_lstm)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(fwEnddet_lstm *)self initWithMLModel:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 URLOfModelInThisBundle];
  [a1 loadContentsOfURL:v8 configuration:v7 completionHandler:v6];
}

+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBFF20];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__fwEnddet_lstm_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2799AB420;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(fwEnddet_lstm *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(fwEnddet_lstm *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [fwEnddet_lstmOutput alloc];
    v13 = [v11 featureValueForName:@"out"];
    v14 = [v13 multiArrayValue];
    v15 = [v11 featureValueForName:@"lstm_1_h_out"];
    v16 = [v15 multiArrayValue];
    v17 = [v11 featureValueForName:@"lstm_1_c_out"];
    v18 = [v17 multiArrayValue];
    v19 = [(fwEnddet_lstmOutput *)v12 initWithOut:v14 lstm_1_h_out:v16 lstm_1_c_out:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(fwEnddet_lstm *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__fwEnddet_lstm_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2799AB448;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(fwEnddet_lstm *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__fwEnddet_lstm_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2799AB448;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

- (id)predictionFromIn:(id)a3 lstm_1_h_in:(id)a4 lstm_1_c_in:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[fwEnddet_lstmInput alloc] initWithIn:v12 lstm_1_h_in:v11 lstm_1_c_in:v10];

  v14 = [(fwEnddet_lstm *)self predictionFromFeatures:v13 error:a6];

  return v14;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(fwEnddet_lstm *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v26 = v10;
      v27 = v9;
      v28 = v8;
      v29 = v12;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v26, v27, v28}];
        v16 = [fwEnddet_lstmOutput alloc];
        [v15 featureValueForName:@"out"];
        v18 = v17 = v13;
        v19 = [v18 multiArrayValue];
        v20 = [v15 featureValueForName:@"lstm_1_h_out"];
        v21 = [v20 multiArrayValue];
        v22 = [v15 featureValueForName:@"lstm_1_c_out"];
        v23 = [v22 multiArrayValue];
        v24 = [(fwEnddet_lstmOutput *)v16 initWithOut:v19 lstm_1_h_out:v21 lstm_1_c_out:v23];

        v13 = v17;
        v12 = v29;
        [v13 addObject:v24];

        ++v14;
      }

      while (v14 < [v29 count]);
      v9 = v27;
      v8 = v28;
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