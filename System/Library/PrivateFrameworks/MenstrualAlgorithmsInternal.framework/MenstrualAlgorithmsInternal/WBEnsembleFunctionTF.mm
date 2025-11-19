@interface WBEnsembleFunctionTF
+ (id)URLOfModelInThisBundle;
+ (void)loadContentsOfURL:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
+ (void)loadWithConfiguration:(id)a3 completionHandler:(id)a4;
- (WBEnsembleFunctionTF)init;
- (WBEnsembleFunctionTF)initWithConfiguration:(id)a3 error:(id *)a4;
- (WBEnsembleFunctionTF)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5;
- (WBEnsembleFunctionTF)initWithContentsOfURL:(id)a3 error:(id *)a4;
- (WBEnsembleFunctionTF)initWithMLModel:(id)a3;
- (id)predictionFromFeatures:(id)a3 error:(id *)a4;
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)predictionFromIn:(id)a3 error:(id *)a4;
- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5;
- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4;
- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5;
@end

@implementation WBEnsembleFunctionTF

+ (id)URLOfModelInThisBundle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"WBEnsembleFunctionTF" ofType:@"mlmodelc"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[WBEnsembleFunctionTF URLOfModelInThisBundle];
    }

    v4 = 0;
  }

  return v4;
}

- (WBEnsembleFunctionTF)initWithMLModel:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = WBEnsembleFunctionTF;
    v6 = [(WBEnsembleFunctionTF *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_model, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WBEnsembleFunctionTF)init
{
  v3 = [objc_opt_class() URLOfModelInThisBundle];
  v4 = [(WBEnsembleFunctionTF *)self initWithContentsOfURL:v3 error:0];

  return v4;
}

- (WBEnsembleFunctionTF)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() URLOfModelInThisBundle];
  v8 = [(WBEnsembleFunctionTF *)self initWithContentsOfURL:v7 configuration:v6 error:a4];

  return v8;
}

- (WBEnsembleFunctionTF)initWithContentsOfURL:(id)a3 error:(id *)a4
{
  v5 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 error:a4];
  if (v5)
  {
    self = [(WBEnsembleFunctionTF *)self initWithMLModel:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WBEnsembleFunctionTF)initWithContentsOfURL:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v6 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:a3 configuration:a4 error:a5];
  if (v6)
  {
    self = [(WBEnsembleFunctionTF *)self initWithMLModel:v6];
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
  v10[2] = __74__WBEnsembleFunctionTF_loadContentsOfURL_configuration_completionHandler___block_invoke;
  v10[3] = &unk_2798A89F8;
  v11 = v7;
  v9 = v7;
  [v8 loadContentsOfURL:a3 configuration:a4 completionHandler:v10];
}

void __74__WBEnsembleFunctionTF_loadContentsOfURL_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[WBEnsembleFunctionTF alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)predictionFromFeatures:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBFF68];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = [(WBEnsembleFunctionTF *)self predictionFromFeatures:v7 options:v8 error:a4];

  return v9;
}

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WBEnsembleFunctionTF *)self model];
  v11 = [v10 predictionFromFeatures:v9 options:v8 error:a5];

  if (v11)
  {
    v12 = [WBEnsembleFunctionTFOutput alloc];
    v13 = [v11 featureValueForName:@"out"];
    v14 = [v13 multiArrayValue];
    v15 = [(WBEnsembleFunctionTFOutput *)v12 initWithOut:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)predictionFromFeatures:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WBEnsembleFunctionTF *)self model];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__WBEnsembleFunctionTF_predictionFromFeatures_completionHandler___block_invoke;
  v10[3] = &unk_2798A8A20;
  v11 = v6;
  v9 = v6;
  [v8 predictionFromFeatures:v7 completionHandler:v10];
}

void __65__WBEnsembleFunctionTF_predictionFromFeatures_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [WBEnsembleFunctionTFOutput alloc];
    v7 = [v12 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [(WBEnsembleFunctionTFOutput *)v6 initWithOut:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (void)predictionFromFeatures:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBEnsembleFunctionTF *)self model];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__WBEnsembleFunctionTF_predictionFromFeatures_options_completionHandler___block_invoke;
  v13[3] = &unk_2798A8A20;
  v14 = v8;
  v12 = v8;
  [v11 predictionFromFeatures:v10 options:v9 completionHandler:v13];
}

void __73__WBEnsembleFunctionTF_predictionFromFeatures_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  if (v12)
  {
    v5 = a3;
    v6 = [WBEnsembleFunctionTFOutput alloc];
    v7 = [v12 featureValueForName:@"out"];
    v8 = [v7 multiArrayValue];
    v9 = [(WBEnsembleFunctionTFOutput *)v6 initWithOut:v8];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v9 = a3;
    v11(v10, 0, v9);
  }
}

- (id)predictionFromIn:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[WBEnsembleFunctionTFInput alloc] initWithIn:v6];

  v8 = [(WBEnsembleFunctionTF *)self predictionFromFeatures:v7 error:a4];

  return v8;
}

- (id)predictionsFromInputs:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v8];
  v11 = [(WBEnsembleFunctionTF *)self model];
  v12 = [v11 predictionsFromBatch:v10 options:v9 error:a5];

  if (v12)
  {
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    if ([v12 count] >= 1)
    {
      v21 = v9;
      v22 = v8;
      v14 = 0;
      do
      {
        v15 = [v12 featuresAtIndex:{v14, v21, v22}];
        v16 = [WBEnsembleFunctionTFOutput alloc];
        v17 = [v15 featureValueForName:@"out"];
        v18 = [v17 multiArrayValue];
        v19 = [(WBEnsembleFunctionTFOutput *)v16 initWithOut:v18];

        [v13 addObject:v19];
        ++v14;
      }

      while (v14 < [v12 count]);
      v9 = v21;
      v8 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end